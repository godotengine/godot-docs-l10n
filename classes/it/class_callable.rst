:github_url: hide

.. _class_Callable:

Callable
========

Un tipo integrato che rappresenta un metodo o una funzione autonoma.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**Callable** is a built-in :ref:`Variant<class_Variant>` type that represents a function. It can either be a method within an :ref:`Object<class_Object>` instance, or a custom callable used for different purposes (see :ref:`is_custom()<class_Callable_method_is_custom>`). Like all :ref:`Variant<class_Variant>` types, it can be stored in variables and passed to other functions. It is most commonly used for signal callbacks.


.. tabs::

 .. code-tab:: gdscript

    func print_args(arg1, arg2, arg3 = ""):
        prints(arg1, arg2, arg3)

    func test():
        var callable = Callable(self, "print_args")
        callable.call("hello", "world")  # Prints "hello world ".
        callable.call(Vector2.UP, 42, callable)  # Prints "(0.0, -1.0) 42 Node(node.gd)::print_args"
        callable.call("invalid")  # Invalid call, should have at least 2 arguments.

 .. code-tab:: csharp

    // Default parameter values are not supported.
    public void PrintArgs(Variant arg1, Variant arg2, Variant arg3 = default)
    {
        GD.PrintS(arg1, arg2, arg3);
    }

    public void Test()
    {
        // Invalid calls fail silently.
        Callable callable = new Callable(this, MethodName.PrintArgs);
        callable.Call("hello", "world"); // Default parameter values are not supported, should have 3 arguments.
        callable.Call(Vector2.Up, 42, callable); // Prints "(0, -1) 42 Node(Node.cs)::PrintArgs"
        callable.Call("invalid"); // Invalid call, should have 3 arguments.
    }



In GDScript, it's possible to create lambda functions within a method. Lambda functions are custom callables that are not associated with an :ref:`Object<class_Object>` instance. Optionally, lambda functions can also be named. The name will be displayed in the debugger, or when calling :ref:`get_method()<class_Callable_method_get_method>`.

::

    func _init():
        var my_lambda = func (message):
            print(message)

        # Prints "Hello everyone!"
        my_lambda.call("Hello everyone!")

        # Prints "Attack!", when the button_pressed signal is emitted.
        button_pressed.connect(func(): print("Attack!"))

In GDScript, you can access methods and global functions as **Callable**\ s:

::

    tween.tween_callback(node.queue_free)  # Object methods.
    tween.tween_callback(array.clear)  # Methods of built-in types.
    tween.tween_callback(print.bind("Test"))  # Global functions.

\ **Note:** :ref:`Dictionary<class_Dictionary>` does not support the above due to ambiguity with keys.

::

    var dictionary = { "hello": "world" }

    # This will not work, `clear` is treated as a key.
    tween.tween_callback(dictionary.clear)

    # This will work.
    tween.tween_callback(Callable.create(dictionary, "clear"))

\ **Note:** In a boolean context, a callable will evaluate to ``false`` if it's null (see :ref:`is_null()<class_Callable_method_is_null>`). Otherwise, a callable will always evaluate to ``true``.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-reftable-group

Costruttori
----------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ )                                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ from\: :ref:`Callable<class_Callable>`\ )                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`bind<class_Callable_method_bind>`\ (\ ...\ ) |vararg| |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`bindv<class_Callable_method_bindv>`\ (\ arguments\: :ref:`Array<class_Array>`\ )                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`call<class_Callable_method_call>`\ (\ ...\ ) |vararg| |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`call_deferred<class_Callable_method_call_deferred>`\ (\ ...\ ) |vararg| |const|                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`callv<class_Callable_method_callv>`\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const|                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`create<class_Callable_method_create>`\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_argument_count<class_Callable_method_get_argument_count>`\ (\ ) |const|                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_bound_arguments<class_Callable_method_get_bound_arguments>`\ (\ ) |const|                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_bound_arguments_count<class_Callable_method_get_bound_arguments_count>`\ (\ ) |const|                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_method<class_Callable_method_get_method>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Callable_method_get_object>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Callable_method_get_object_id>`\ (\ ) |const|                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_unbound_arguments_count<class_Callable_method_get_unbound_arguments_count>`\ (\ ) |const|                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_Callable_method_hash>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_custom<class_Callable_method_is_custom>`\ (\ ) |const|                                                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Callable_method_is_null>`\ (\ ) |const|                                                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_standard<class_Callable_method_is_standard>`\ (\ ) |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_valid<class_Callable_method_is_valid>`\ (\ ) |const|                                                                                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`rpc<class_Callable_method_rpc>`\ (\ ...\ ) |vararg| |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`rpc_id<class_Callable_method_rpc_id>`\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const|                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`unbind<class_Callable_method_unbind>`\ (\ argcount\: :ref:`int<class_int>`\ ) |const|                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operatori
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Callable_operator_neq_Callable>`\ (\ right\: :ref:`Callable<class_Callable>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Callable_operator_eq_Callable>`\ (\ right\: :ref:`Callable<class_Callable>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Callable_constructor_Callable:

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ ) :ref:`🔗<class_Callable_constructor_Callable>`

Costruisce un **Callable** vuoto, senza oggetto né metodo associato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ from\: :ref:`Callable<class_Callable>`\ )

Costruisce un **Callable** come copia del **Callable** specificato.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ )

Crea un nuovo **Callable** per il metodo con nome ``method`` nell'oggetto ``object`` specificato.

\ **Nota:** Per i metodi di tipi :ref:`Variant<class_Variant>` incorporati, utilizza :ref:`create()<class_Callable_method_create>` invece.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Callable_method_bind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bind**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_bind>`

Restituisce una copia di questo **Callable** con uno o più argomenti associati. Quando è chiamato, gli argomenti associati sono passati *dopo* gli argomenti forniti da :ref:`call()<class_Callable_method_call>`. Vedi anche :ref:`unbind()<class_Callable_method_unbind>`.

\ **Nota:** Quando questo metodo è concatenato con altri metodi simili, l'ordine in cui la lista degli argomenti è modificata è letto da destra a sinistra.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_bindv:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bindv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Callable_method_bindv>`

Restituisce una copia di questo **Callable** con uno o più argomenti associati, leggendoli da un array. Quando è chiamato, gli argomenti associati sono passati *dopo* gli argomenti forniti da :ref:`call()<class_Callable_method_call>`. Vedi anche :ref:`unbind()<class_Callable_method_unbind>`.

\ **Nota:** Quando questo metodo è concatenato con altri metodi simili, l'ordine in cui la lista degli argomenti è modificata è letto da destra a sinistra.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call>`

Chiama il metodo rappresentato da questo **Callable**. Argomenti aggiuntivi possono essere passati e devono corrispondere alla firma del metodo.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call_deferred:

.. rst-class:: classref-method

|void| **call_deferred**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call_deferred>`

Chiama il metodo rappresentato da questo **Callable** in modalità differita, cioè alla fine del frame corrente. Argomenti aggiuntivi possono essere passati e devono corrispondere alla firma del metodo.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        grab_focus.call_deferred()

 .. code-tab:: csharp

    public override void _Ready()
    {
        Callable.From(GrabFocus).CallDeferred();
    }



\ **Nota:** Le chiamate differite sono elaborate nei periodi di inattività. Il tempo di inattività avviene principalmente alla fine dei frame di processo e di fisica. Durante esso, le chiamate differite saranno eseguite finché non ne resterà più nessuna, il che significa che puoi rinviare le chiamate da altre chiamate differite e saranno comunque eseguite nel ciclo di inattività attuale. Ciò significa che non dovresti chiamare un metodo differito da se stesso (o da un metodo chiamato da esso), poiché ciò porta a una ricorsione infinita come se avessi chiamato il metodo direttamente.

Vedi anche :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Callable_method_callv>`

Chiama il metodo rappresentato da questo **Callable**. A differenza di :ref:`call()<class_Callable_method_call>`, questo metodo prevede che tutti gli argomenti siano contenuti all'interno di dell':ref:`Array<class_Array>` ``arguments``.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_create:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **create**\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_Callable_method_create>`

Crea un nuovo **Callable** per il metodo con nome ``method`` nel ``variant`` specificato. Per rappresentare un metodo di tipo :ref:`Variant<class_Variant>` integrato, è utilizzato un chiamabile personalizzato (vedi :ref:`is_custom()<class_Callable_method_is_custom>`). Se ``variant`` è :ref:`Object<class_Object>`, sarà invece creato un chiamabile standard.

\ **Nota:** Questo metodo è sempre necessario per il tipo :ref:`Dictionary<class_Dictionary>`, poiché la sintassi della proprietà è utilizzata per accedere alle sue voci. Puoi anche utilizzare questo metodo quando il tipo di ``variant`` non è conosciuto in anticipo (per il polimorfismo).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_argument_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_argument_count>`

Restituisce il numero totale di argomenti che questo **Callable** dovrebbe accettare, inclusi gli argomenti facoltativi. Ciò significa che qualsiasi argomento associato con :ref:`bind()<class_Callable_method_bind>` è *sottratto* dal risultato, e qualsiasi argomento disassociato con :ref:`unbind()<class_Callable_method_unbind>` è *aggiunto* al risultato.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bound_arguments**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments>`

Restituisce l'array di argomenti associati tramite successive chiamate a :ref:`bind()<class_Callable_method_bind>` o :ref:`unbind()<class_Callable_method_unbind>`. Questi argomenti saranno aggiunti *dopo* gli argomenti passati alla chiamata, da cui il numero restituito di argomenti da :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` sulla destra sono stati precedentemente esclusi.

::

    func get_effective_arguments(callable, call_args):
        assert(call_args.size() - callable.get_unbound_arguments_count() >= 0)
        var result = call_args.slice(0, call_args.size() - callable.get_unbound_arguments_count())
        result.append_array(callable.get_bound_arguments())
        return result

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments_count>`

Restituisce la quantità totale di argomenti associati tramite successive chiamate a :ref:`bind()<class_Callable_method_bind>` o :ref:`unbind()<class_Callable_method_unbind>`. È la stessa dimensione dell'array restituito da :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`. Vedi :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>` per i dettagli.

\ **Nota:** I metodi :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` e :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` possono entrambi restituire valori positivi.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_method**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_method>`

Restituisce il nome del metodo rappresentato da questo **Callable**. Se il chiamabile è una funzione lambda di GDScript, restituisce il nome della funzione o ``"<anonymous lambda>"``.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object>`

Restituisce l'oggetto su cui si chiama questo **Callable**.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object_id>`

Restituisce l'ID dell'oggetto di questo **Callable** (vedi :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_unbound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unbound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_unbound_arguments_count>`

Restituisce la quantità totale di argomenti disassociati tramite chiamate successive a :ref:`bind()<class_Callable_method_bind>` o :ref:`unbind()<class_Callable_method_unbind>`. Vedi :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>` per i dettagli.

\ **Note:** I metodi :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` e :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` possono entrambi restituire valori positivi.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Callable_method_hash>`

Restituisce il valore hash a 32 bit dell'oggetto di questo **Callable**.

\ **Nota:** I **Callable** con lo stesso contenuto produrranno sempre valori hash identici. Tuttavia, non è vero il contrario. Restituire valori hash identici *non* implica che i chiamabili siano uguali, perché chiamabili diversi possono avere valori hash identici a causa di collisioni di hash. Il motore utilizza un algoritmo hash a 32 bit per :ref:`hash()<class_Callable_method_hash>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_custom:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_custom**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_custom>`

Restituisce ``true`` se questo **Callable** è un chiamabile personalizzato. I chiamabili personalizzati sono utilizzati:

- per associare o disassociare argomenti (vedi :ref:`bind()<class_Callable_method_bind>` e :ref:`unbind()<class_Callable_method_unbind>`);

- per rappresentare metodi di tipi :ref:`Variant<class_Variant>` incorporati (vedi :ref:`create()<class_Callable_method_create>`);

- per rappresentare funzioni globali, lambda, e RPC in GDScript;

- per altri scopi nel core, GDExtension, e C#.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_null>`

Restituisce ``true`` se questo **Callable** non ha una destinazione su cui chiamare il metodo. Equivale a ``callable == Callable()``.

\ **Nota:** Questo *non* è lo stesso di ``not is_valid()`` e usare ``not is_null()`` *non* garantirà che questo chiamabile possa essere chiamato. Usa invece :ref:`is_valid()<class_Callable_method_is_valid>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_standard:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_standard**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_standard>`

Restituisce ``true`` se questo **Callable** è un chiamabile standard. Questo metodo è l'opposto di :ref:`is_custom()<class_Callable_method_is_custom>`. Restituisce ``false`` se questa chiamabile è una funzione lambda.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_valid>`

Restituisce ``true`` se l'oggetto del chiamabile esiste e ha un nome di metodo valido assegnato, o è un chiamabile personalizzato.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc:

.. rst-class:: classref-method

|void| **rpc**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc>`

Eseguisce una RPC (Chiamata di procedura remota) su tutti i peer connessi. Questo è utilizzato per il multiplayer e normalmente non è disponibile, a meno che la funzione richiamata non sia stata contrassegnata come *RPC* (usando :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` o :ref:`Node.rpc_config()<class_Node_method_rpc_config>`). Chiamare questo metodo su funzioni non supportate genererà un errore. Vedi :ref:`Node.rpc()<class_Node_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc_id:

.. rst-class:: classref-method

|void| **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc_id>`

Eseguisce una RPC (Chiamata di procedura remota) su un ID peer specifico (vedi la documentazione sul multiplayer per riferimento). Questo è utilizzato per il multiplayer e normalmente non è disponibile, a meno che la funzione richiamata non sia stata contrassegnata come *RPC* (usando :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` o :ref:`Node.rpc_config()<class_Node_method_rpc_config>`). Chiamare questo metodo su funzioni non supportate genererà un errore. Vedi :ref:`Node.rpc()<class_Node_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_unbind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **unbind**\ (\ argcount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Callable_method_unbind>`

Restituisce una copia di questo **Callable** con un numero di argomenti disassociati. In altre parole, quando viene chiamato il nuovo chiamabile, gli ultimi argomenti forniti dall'utente saranno ignorati, secondo ``argcount``. Gli argomenti rimanenti sono passati al chiamabile. Ciò consente di utilizzare il chiamabile originale in un contesto che tenta di passare più argomenti di quelli che questo chiamabile può gestire, ad esempio per un segnale con un numero fisso di argomenti. Vedi anche :ref:`bind()<class_Callable_method_bind>`.

\ **Nota:** Quando questo metodo è concatenato con altri metodi simili, l'ordine in cui la lista degli argomenti è modificata è letto da destra a sinistra.

::

    func _ready():
        foo.unbind(1).call(1, 2) # Calls foo(1).
        foo.bind(3, 4).unbind(1).call(1, 2) # Chiama foo(1, 3, 4), tieni conto che non cambia gli argomenti dalla funzione bind.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Callable_operator_neq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_neq_Callable>`

Restituisce ``true`` se entrambi i **Callable** invocano obiettivi diversi.

.. rst-class:: classref-item-separator

----

.. _class_Callable_operator_eq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_eq_Callable>`

Restituisce ``true`` se entrambi i **Callable** invocano lo stesso obiettivo personalizzato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
