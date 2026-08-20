:github_url: hide

.. _class_Signal:

Signal
======

Un tipo integrato che rappresenta un segnale di un :ref:`Object<class_Object>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Signal** è un tipo :ref:`Variant<class_Variant>` integrato che rappresenta un segnale di un'istanza di :ref:`Object<class_Object>`. Come tutti i tipi di :ref:`Variant<class_Variant>`, può essere memorizzato nelle variabili e passato alle funzioni. I segnali consentono a tutti i :ref:`Callable<class_Callable>` connessi (e per estensione ai rispettivi oggetti) di ascoltare e reagire agli eventi, senza fare riferimento diretto l'uno all'altro. Questo mantiene il codice flessibile e più facile da gestire. È possibile verificare se un :ref:`Object<class_Object>` ha il nome di un segnale specifico tramite :ref:`Object.has_signal()<class_Object_method_has_signal>`.

In GDScript, è possibile dichiarare i segnali con la parola chiave ``signal``. In C#, è possibile utilizzare l'attributo ``[Signal]`` su un delegato.


.. tabs::

 .. code-tab:: gdscript

    signal attacked

    # È possibile dichiarare argomenti aggiuntivi.
    # Questi argomenti devono essere passati quando viene emesso il segnale.
    signal item_dropped(item_name, amount)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // È possibile dichiarare argomenti aggiuntivi.
    // Questi argomenti devono essere passati quando viene emesso il segnale.
    [Signal]
    delegate void ItemDroppedEventHandler(string itemName, int amount);



La connessione dei segnali è una delle operazioni più comuni in Godot e l'API offre numerose opzioni per farlo, descritte più avanti. Il blocco di codice seguente mostra l'approccio consigliato.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # `button_down` qui è un tipo Variant di Signal. Pertanto, chiamiamo il metodo Signal.connect(), non Object.connect().
        # Vedi la discussione seguente per una panoramica più approfondita dell'API.
        button.button_down.connect(_on_button_down)

        # Questo presuppone che esista una classe `Player`, che definisce un segnale `hit`.
        var player = Player.new()
        # # Usiamo di nuovo Signal.connect() e anche il metodo Callable.bind(),
        # che restituisce un nuovo Callable con il parametro binds.
        player.hit.connect(_on_player_hit.bind("sword", 100))

    func _on_button_down():
        print("Button down!")

    func _on_player_hit(weapon_type, damage):
        print("Hit with weapon %s for %d damage." % [weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // C# consente di passare i segnali come eventi, quindi possiamo usare questo costrutto idiomatico:
        button.ButtonDown += OnButtonDown;

        // Questo presuppone che esista una classe `Player`, che definisce un segnale `Hit`.
        var player = new Player();
        // Possiamo usare le lambda quando dobbiamo associare parametri aggiuntivi.
        player.Hit += () => OnPlayerHit("sword", 100);
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }

    private void OnPlayerHit(string weaponType, int damage)
    {
        GD.Print($"Hit with weapon {weaponType} for {damage} damage.");
    }



\ ``Object.connect()`` **o** ``Signal.connect()``\ **?**\ 

Come visto in precedenza, il metodo consigliato per connettere i segnali non è :ref:`Object.connect()<class_Object_method_connect>`. Il blocco di codice seguente mostra le quattro opzioni per connettere i segnali, utilizzando questo metodo legacy o il :ref:`connect()<class_Signal_method_connect>` consigliato, e utilizzando un :ref:`Callable<class_Callable>` implicito o uno definito manualmente.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # Opzione 1: Object.connect() con un Callable implicito per la funzione definita.
        button.connect("button_down", _on_button_down)
        # Opzione 2: Object.connect() con un Callable costruito con un oggetto di destinazione e il nome di un metodo.
        button.connect("button_down", Callable(self, "_on_button_down"))
        # Opzione 3: Signal.connect() con un Callable implicito per la funzione definita.
        button.button_down.connect(_on_button_down)
        # Opzione 4: Signal.connect() con un Callable costruito con un oggetto di destinazione e il nome di un metodo.
        button.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
        print("Button down!")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // Opzione 1: In C#, possiamo usare i segnali come eventi e connetterlicon questa sintassi idiomatica:
        button.ButtonDown += OnButtonDown;
        // Opzione 2: GodotObject.Connect() con un Callable costruito da un gruppo di metodi.
        button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // Opzione 3: GodotObject.Connect() con un Callable costruito con un oggetto di destinazione e il nome di un metodo.
        button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }



Sebbene tutte le opzioni abbiano lo stesso risultato (il segnale :ref:`BaseButton.button_down<class_BaseButton_signal_button_down>` di ``button`` sarà connesso a ``_on_button_down``), l'**opzione 3** offre la migliore validazione: stamperà un errore in fase di compilazione se il **Signal** ``button_down`` o il :ref:`Callable<class_Callable>` ``_on_button_down`` non sono definiti. D'altra parte, l'**opzione 2** dipende solo dai nomi in stringa e sarà in grado di validare solo uno dei due nomi in fase di esecuzione: genererà un errore in fase di esecuzione se ``"button_down"`` non è un segnale, o se ``"_on_button_down"`` non è un metodo nell'oggetto ``self``. Il motivo principale per utilizzare le opzioni 1, 2 o 4 è quando le stringhe servono effettivamente (ad esempio, per connettere segnali in modo programmatico, in base a stringhe lette da un file di configurazione). Altrimenti, l'opzione 3 è il metodo consigliato (e il più veloce).

\ **Associazione e passaggio di parametri:**\ 

La sintassi per l'associazione dei parametri è tramite :ref:`Callable.bind()<class_Callable_method_bind>`, che restituisce una copia del :ref:`Callable<class_Callable>` con i suoi parametri associati.

Quando si chiama :ref:`emit()<class_Signal_method_emit>` o :ref:`Object.emit_signal()<class_Object_method_emit_signal>`, è possibile passare anche i parametri di un segnale. Gli esempi seguenti mostrano la relazione tra questi parametri di un segnale e i parametri associati.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Questo presuppone che esista una classe `Player`, che definisce un segnale `hit`.
        var player = Player.new()
        # Tramite Callable.bind().
        player.hit.connect(_on_player_hit.bind("sword", 100))

        # I parametri aggiunti al l'emissione del segnale vengono passati per primi.
        player.hit.emit("Dark lord", 5)

    # Passiamo due argomenti all'emissione (`hit_by`, `level`),
    # e ne associamo altri due alla connessione (`weapon_type`, `damage`).
    func _on_player_hit(hit_by, level, weapon_type, damage):
        print("Hit by %s (level %d) with weapon %s for %d damage." % [hit_by, level, weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Questo presuppone che esista una classe `Player`, che definisce un segnale `Hit`.
        var player = new Player();
        // Tramite espressioni lambda che creano una chiusura che cattura i parametri aggiuntivi.
        // La lambda riceve solo i parametri definiti dal delegato del segnale.
        player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100);

        // I parametri aggiunti al l'emissione del segnale vengono passati per primi.
        player.EmitSignal(SignalName.Hit, "Dark lord", 5);
    }

    // Passiamo due argomenti all'emissione (`hit_by`, `level`),
    // e ne associamo altri due alla connessione (`weapon_type`, `damage`).
    private void OnPlayerHit(string hitBy, int level, string weaponType, int damage)
    {
        GD.Print($"Hit by {hitBy} (level {level}) with weapon {weaponType} for {damage} damage.");
    }



\ **Nota:** In un contesto booleano, un segnale verrà valutato come ``false`` se è nullo (vedi :ref:`is_null()<class_Signal_method_is_null>`). Altrimenti, un segnale verrà sempre valutato come ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei segnali <../getting_started/step_by_step/signals>`

- `Le basi di GDScript <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ )                                                                                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ from\: :ref:`Signal<class_Signal>`\ )                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`connect<class_Signal_method_connect>`\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`disconnect<class_Signal_method_disconnect>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit<class_Signal_method_emit>`\ (\ ...\ ) |vararg| |const|                                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_connections<class_Signal_method_get_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_Signal_method_get_name>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Signal_method_get_object>`\ (\ ) |const|                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Signal_method_get_object_id>`\ (\ ) |const|                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has_connections<class_Signal_method_has_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_connected<class_Signal_method_is_connected>`\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const|                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Signal_method_is_null>`\ (\ ) |const|                                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Signal_operator_neq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Signal_operator_eq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

Costruisce un **Signal** vuoto senza oggetto né nome di segnale associato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

Costruisce un **Signal** come copia del **Signal** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

Crea un nuovo oggetto **Signal** che fa riferimento a un segnale denominato ``signal`` nell'oggetto ``object``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

Collega questo segnale al chiamabile ``callable``. È possibile aggiungere anche ``flags`` facoltativi per configurare il comportamento della connessione (vedi le costanti di :ref:`ConnectFlags<enum_Object_ConnectFlags>`). È possibile fornire argomenti aggiuntivi al ``callable`` connesso tramite :ref:`Callable.bind()<class_Callable_method_bind>`.

Un segnale può essere connesso solo una volta allo stesso :ref:`Callable<class_Callable>`. Se il segnale è già connesso, restituisce :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` e invia un messaggio di errore, a meno che il segnale non sia connesso con :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>`. Per evitare ciò, usa prima :ref:`is_connected()<class_Signal_method_is_connected>` per verificare le connessioni esistenti.

::

    for button in $Buttons.get_children():
        button.pressed.connect(_on_pressed.bind(button))

    func _on_pressed(button):
        print(button.name, " was pressed")

\ **Nota:** Se l'oggetto del ``callable`` è liberato, la connessione sarà persa.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

Disconnette questo segnale dal :ref:`Callable<class_Callable>` specificato. Se la connessione non esiste, genera un errore. Usa :ref:`is_connected()<class_Signal_method_is_connected>` per assicurarti che la connessione esista.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

Emette questo segnale. Tutti i :ref:`Callable<class_Callable>` connessi a questo segnale verranno attivati. Questo metodo supporta un numero variabile di argomenti, quindi i parametri possono essere passati come un elenco separato da virgole.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

Restituisce un :ref:`Array<class_Array>` di connessioni per questo segnale. Ogni connessione è rappresentata come :ref:`Dictionary<class_Dictionary>` che contiene tre voci:

- ``signal`` è un riferimento a questo segnale;

- ``callable`` è un riferimento al :ref:`Callable<class_Callable>` connesso;

- ``flags`` è una combinazione di :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

Restituisce il nome di questo segnale.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

Restituisce l'oggetto che emette questo segnale.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

Restituisce l'ID dell'oggetto che emette questo segnale (vedi :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

Restituisce ``true`` se qualsiasi :ref:`Callable<class_Callable>` è collegato a questo segnale.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

Restituisce ``true`` se il :ref:`Callable<class_Callable>` specificato è collegato a questo segnale.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

Restituisce ``true`` se questo **Signal** non ha un oggetto e il nome del segnale è vuoto. Equivale a ``signal == Signal()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

Restituisce ``true`` se i segnali non condividono lo stesso oggetto e nome.

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

Restituisce ``true`` se entrambi i segnali condividono lo stesso oggetto e nome.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
