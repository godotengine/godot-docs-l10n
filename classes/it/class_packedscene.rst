:github_url: hide

.. _class_PackedScene:

PackedScene
===========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un'astrazione di una scena serializzata.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'interfaccia semplificata per un file di scena. Fornisce accesso alle operazioni e alle verifiche che si possono effettuare sulla risorsa scena stessa.

Può servire per salvare un nodo in un file. Durante il salvataggio, il nodo e tutti i nodi posseduti da esso sono salvati (vedi la proprietà :ref:`Node.owner<class_Node_property_owner>`).

\ **Nota:** Il nodo non deve possedere se stesso.

\ **Esempio:** Carica una scena salvata:


.. tabs::

 .. code-tab:: gdscript

    # Usa load() invece di preload() se il percorso non è noto in fase di compilazione.
    var scene = preload("res://scene.tscn").instantiate()
    # Aggiunge il nodo come figlio del nodo a cui è associato lo script.
    add_child(scene)

 .. code-tab:: csharp

    // C# non ha preload, quindi è necessario usare sempre ResourceLoader.Load<PackedScene>().
    var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
    // Aggiunge il nodo come figlio del nodo a cui è associato lo script.
    AddChild(scene);



\ **Esempio:** Salva un nodo con proprietari diversi: L'esempio seguente crea 3 oggetti: :ref:`Node2D<class_Node2D>` (``node``), :ref:`RigidBody2D<class_RigidBody2D>` (``body``) e :ref:`CollisionObject2D<class_CollisionObject2D>` (``collision``). ``collision`` è un figlio di ``body`` che è un figlio di ``node``. Solo ``body`` è posseduto da ``node`` e :ref:`pack()<class_PackedScene_method_pack>` salverà quindi solo quei due nodi, ma non ``collision``.


.. tabs::

 .. code-tab:: gdscript

    # Crea gli oggetti.
    var node = Node2D.new()
    var body = RigidBody2D.new()
    var collision = CollisionShape2D.new()

    # Crea la gerarchia degli oggetti.
    body.add_child(collision)
    node.add_child(body)

    # Cambia il proprietario di `body`, ma non di `collision`.
    body.owner = node
    var scene = PackedScene.new()

    # Solo `node` e `body` sono ora impacchettati.
    var result = scene.pack(node)
    if result == OK:
        var error = ResourceSaver.save(scene, "res://path/name.tscn")  # Or "user://..."
        if error != OK:
            push_error("Si è verificato un errore durante il salvataggio della scena su disco.")

 .. code-tab:: csharp

    // Crea gli oggetti.
    var node = new Node2D();
    var body = new RigidBody2D();
    var collision = new CollisionShape2D();

    // Crea la gerarchia degli oggetti.
    body.AddChild(collision);
    node.AddChild(body);

    // Cambia il proprietario di `body`, ma non di `collision`.
    body.Owner = node;
    var scene = new PackedScene();

    // Solo `node` e `body` sono ora impacchettati.
    Error result = scene.Pack(node);
    if (result == Error.Ok)
    {
        Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Or "user://..."
        if (error != Error.Ok)
        {
            GD.PushError("Si è verificato un errore durante il salvataggio della scena su disco.");
        }
    }



.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di gioco di ruolo (RPG) 2D <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`can_instantiate<class_PackedScene_method_can_instantiate>`\ (\ ) |const|                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneState<class_SceneState>`   | :ref:`get_state<class_PackedScene_method_get_state>`\ (\ ) |const|                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`               | :ref:`instantiate<class_PackedScene_method_instantiate>`\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedScene_method_pack>`\ (\ path\: :ref:`Node<class_Node>`\ )                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_PackedScene_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_PackedScene_GenEditState>`

.. _class_PackedScene_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

Se passato a :ref:`instantiate()<class_PackedScene_method_instantiate>`, blocca le modifiche allo stato della scena.

.. _class_PackedScene_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

Se passato a :ref:`instantiate()<class_PackedScene_method_instantiate>`, fornisce risorse di scena locali alla scena locale.

\ **Nota:** Disponibile solo nelle build dell'editor.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

Se passato a :ref:`instantiate()<class_PackedScene_method_instantiate>`, fornisce risorse di scena locali alla scena locale. Solo la scena principale dovrebbe ricevere lo stato di modifica principale.

\ **Nota:** Disponibile solo nelle build dell'editor.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

È simile a :ref:`GEN_EDIT_STATE_MAIN<class_PackedScene_constant_GEN_EDIT_STATE_MAIN>`, ma per il caso in cui la scena viene istanziata per essere la base di un'altra.

\ **Nota:** Disponibile solo nelle build dell'editor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PackedScene_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_can_instantiate>`

Restituisce ``true`` se il file di scena contiene nodi.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_get_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_state**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_get_state>`

Restituisce il :ref:`SceneState<class_SceneState>` che rappresenta il contenuto del file di scena.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_instantiate:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **instantiate**\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| :ref:`🔗<class_PackedScene_method_instantiate>`

Crea un'istanza della gerarchia dei nodi della scena. Attiva le istanziazioni delle scene figlio. Attiva una notifica :ref:`Node.NOTIFICATION_SCENE_INSTANTIATED<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>` sul nodo radice.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ path\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PackedScene_method_pack>`

Impacchetta il nodo ``path`` e tutti i suoi sottonodi posseduti in questo **PackedScene**. Tutti i dati esistenti saranno cancellati. Vedi :ref:`Node.owner<class_Node_property_owner>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
