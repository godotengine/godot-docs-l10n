:github_url: hide

.. _class_UndoRedo:

UndoRedo
========

**Eredita:** :ref:`Object<class_Object>`

Fornisce un'interfaccia di alto livello per implementare le operazioni di annullamento e ripetizione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

UndoRedo funziona registrando metodi e modifiche di proprietà all'interno di "azioni". È possibile creare un'azione, quindi fornire modi per eseguire e annullare l'azione attraverso le chiamate di funzione e modifiche di proprietà, quindi confermare l'azione.

Quando un'azione è eseguita, tutti i metodi ``do_*`` saranno eseguiti. Se è usato il metodo :ref:`undo()<class_UndoRedo_method_undo>`, i metodi ``undo_*`` saranno eseguiti. Se è usato il metodo :ref:`redo()<class_UndoRedo_method_redo>`, ancora una volta, tutti i metodi ``do_*`` saranno eseguiti.

Ecco un esempio su come aggiungere un'azione:


.. tabs::

 .. code-tab:: gdscript

    var undo_redo = UndoRedo.new()

    func do_something():
        pass # Inserisci qui il codice.

    func undo_something():
        pass # Inserisci qui il codice che annulla quanto eseguito da "do_something()".

    func _on_my_button_pressed():
        var node = get_node("MyNode2D")
        undo_redo.create_action("Move the node")
        undo_redo.add_do_method(do_something)
        undo_redo.add_undo_method(undo_something)
        undo_redo.add_do_property(node, "position", Vector2(100, 100))
        undo_redo.add_undo_property(node, "position", node.position)
        undo_redo.commit_action()

 .. code-tab:: csharp

    private UndoRedo _undoRedo;

    public override void _Ready()
    {
        _undoRedo = new UndoRedo();
    }

    public void DoSomething()
    {
        // Inserisci qui il codice.
    }

    public void UndoSomething()
    {
        // Inserisci qui il codice che annulla quanto eseguito da "DoSomething()".
    }

    private void OnMyButtonPressed()
    {
        var node = GetNode<Node2D>("MyNode2D");
        _undoRedo.CreateAction("Move the node");
        _undoRedo.AddDoMethod(new Callable(this, MethodName.DoSomething));
        _undoRedo.AddUndoMethod(new Callable(this, MethodName.UndoSomething));
        _undoRedo.AddDoProperty(node, "position", new Vector2(100, 100));
        _undoRedo.AddUndoProperty(node, "position", node.Position);
        _undoRedo.CommitAction();
    }



Prima di chiamare uno qualsiasi dei metodi ``add_(un)do_*``, bisogna prima chiamare :ref:`create_action()<class_UndoRedo_method_create_action>`. Dopodiché bisogna chiamare :ref:`commit_action()<class_UndoRedo_method_commit_action>`.

Se non c'è bisogno di registrare un metodo, è possibile omettere :ref:`add_do_method()<class_UndoRedo_method_add_do_method>` e :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>`; lo stesso vale per le proprietà. È possibile anche registrare più di un metodo/proprietà.

Se stai creando un :ref:`EditorPlugin<class_EditorPlugin>` e vuoi integrarlo nella cronologia degli annullamenti dell'editor, usa invece :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`.

Se stai registrando più proprietà/metodi che dipendono l'uno dall'altro, tieni presente che per impostazione predefinita le operazioni di annullamento sono chiamate nello stesso ordine in cui sono state aggiunte. Pertanto, invece di raggruppare le operazioni di ripetizione con le relative operazioni di annullamento, è meglio raggruppare le ripetizioni da un lato e gli annullamenti dall'altro come mostrato di seguito.


.. tabs::

 .. code-tab:: gdscript

    undo_redo.create_action("Add object")

    # DO (Esegui/Ripeti)
    undo_redo.add_do_method(_create_object)
    undo_redo.add_do_method(_add_object_to_singleton)

    # UNDO (Annulla)
    undo_redo.add_undo_method(_remove_object_from_singleton)
    undo_redo.add_undo_method(_destroy_that_object)

    undo_redo.commit_action()

 .. code-tab:: csharp

    _undo_redo.CreateAction("Add object");

    // DO (Esegui/Ripeti)
    _undo_redo.AddDoMethod(new Callable(this, MethodName.CreateObject));
    _undo_redo.AddDoMethod(new Callable(this, MethodName.AddObjectToSingleton));

    // UNDO (Annulla)
    _undo_redo.AddUndoMethod(new Callable(this, MethodName.RemoveObjectFromSingleton));
    _undo_redo.AddUndoMethod(new Callable(this, MethodName.DestroyThatObject));

    _undo_redo.CommitAction();



.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`max_steps<class_UndoRedo_property_max_steps>` | ``0`` |
   +-----------------------+-----------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_method<class_UndoRedo_method_add_do_method>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_property<class_UndoRedo_method_add_do_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_reference<class_UndoRedo_method_add_do_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_method<class_UndoRedo_method_add_undo_method>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_property<class_UndoRedo_method_add_undo_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                 |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_reference<class_UndoRedo_method_add_undo_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_history<class_UndoRedo_method_clear_history>`\ (\ increase_version\: :ref:`bool<class_bool>` = true\ )                                                                                                   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`commit_action<class_UndoRedo_method_commit_action>`\ (\ execute\: :ref:`bool<class_bool>` = true\ )                                                                                                            |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`create_action<class_UndoRedo_method_create_action>`\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, backward_undo_ops\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`end_force_keep_in_merge_ends<class_UndoRedo_method_end_force_keep_in_merge_ends>`\ (\ )                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_action_name<class_UndoRedo_method_get_action_name>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_current_action<class_UndoRedo_method_get_current_action>`\ (\ )                                                                                                                                            |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_current_action_name<class_UndoRedo_method_get_current_action_name>`\ (\ ) |const|                                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_history_count<class_UndoRedo_method_get_history_count>`\ (\ )                                                                                                                                              |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_version<class_UndoRedo_method_get_version>`\ (\ ) |const|                                                                                                                                                  |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_redo<class_UndoRedo_method_has_redo>`\ (\ ) |const|                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_undo<class_UndoRedo_method_has_undo>`\ (\ ) |const|                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_committing_action<class_UndoRedo_method_is_committing_action>`\ (\ ) |const|                                                                                                                                |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`redo<class_UndoRedo_method_redo>`\ (\ )                                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`start_force_keep_in_merge_ends<class_UndoRedo_method_start_force_keep_in_merge_ends>`\ (\ )                                                                                                                    |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`undo<class_UndoRedo_method_undo>`\ (\ )                                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_UndoRedo_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_UndoRedo_signal_version_changed>`

Chiamato quando :ref:`undo()<class_UndoRedo_method_undo>` o :ref:`redo()<class_UndoRedo_method_redo>` sono stati chiamati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_UndoRedo_MergeMode:

.. rst-class:: classref-enumeration

enum **MergeMode**: :ref:`🔗<enum_UndoRedo_MergeMode>`

.. _class_UndoRedo_constant_MERGE_DISABLE:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_DISABLE** = ``0``

Fa sì che le operazioni "do"/"undo" rimangano in azioni separate.

.. _class_UndoRedo_constant_MERGE_ENDS:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ENDS** = ``1``

Unisce questa azione con quella precedente se hanno lo stesso nome. Mantiene solo le operazioni "undo" della prima azione e le operazioni "do" dell'ultima azione. Utile per modifiche sequenziali a un singolo valore.

.. _class_UndoRedo_constant_MERGE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ALL** = ``2``

Unisce questa azione a quella precedente se hanno lo stesso nome.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_UndoRedo_property_max_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_steps** = ``0`` :ref:`🔗<class_UndoRedo_property_max_steps>`

.. rst-class:: classref-property-setget

- |void| **set_max_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_steps**\ (\ )

Il numero massimo di passaggi che possono essere memorizzati nella cronologia di annullamento/ripetizione. Se il numero di passaggi memorizzati supera questo limite, i passaggi più vecchi sono rimossi dalla cronologia e non possono più essere raggiunti chiamando :ref:`undo()<class_UndoRedo_method_undo>`. Un valore di ``0`` o inferiore significa nessun limite.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_UndoRedo_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_method>`

Registra un :ref:`Callable<class_Callable>` che sarà chiamato quando l'azione viene eseguita.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_property>`

Registra una proprietà denominata ``property`` che cambierà il suo valore in ``value`` quando l'azione viene eseguita.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_reference>`

Registra un riferimento a un oggetto che sarà cancellato se la cronologia "do" viene eliminata. Questo è utile per gli oggetti aggiunti dall'azione "do" e rimossi dall'azione "undo".

Quando la cronologia "do" viene eliminata, se l'oggetto è un :ref:`RefCounted<class_RefCounted>`, non verrà più referenziato. Altrimenti, verrà liberato. Non usarlo per le risorse.

::

    var node = Node2D.new()
    undo_redo.create_action("Add node")
    undo_redo.add_do_method(add_child.bind(node))
    undo_redo.add_do_reference(node)
    undo_redo.add_undo_method(remove_child.bind(node))
    undo_redo.commit_action()

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_method>`

Registra un :ref:`Callable<class_Callable>` che verrà chiamato quando l'azione viene annullata.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_property>`

Registra una proprietà denominata ``property`` che cambierà il suo valore in ``value`` quando l'azione viene annullata.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_reference>`

Registra un riferimento a un oggetto che sarà cancellato se la cronologia "undo" viene eliminata. Questo è utile per gli oggetti aggiunti dall'azione "undo" e rimossi dall'azione "do".

Quando la cronologia "undo" viene eliminata, se l'oggetto è un :ref:`RefCounted<class_RefCounted>`, non verrà più referenziato. Altrimenti, verrà liberato. Non usarlo per le risorse.

::

    var node = $Node2D
    undo_redo.create_action("Remove node")
    undo_redo.add_do_method(remove_child.bind(node))
    undo_redo.add_undo_method(add_child.bind(node))
    undo_redo.add_undo_reference(node)
    undo_redo.commit_action()

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_UndoRedo_method_clear_history>`

Cancella la cronologia annulla/ripeti e i riferimenti associati.

Passando ``false`` a ``increase_version`` si impedirà che il numero di versione aumenti quando la cronologia viene cancellata.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_UndoRedo_method_commit_action>`

Esegue l'azione. Se ``execute`` è ``true`` (che è di default), tutti i metodi/proprietà "do" vengono chiamati/impostati quando questa funzione viene chiamata.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, backward_undo_ops\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_UndoRedo_method_create_action>`

Crea una nuova azione. Dopo che questa è stata chiamata, esegui tutte le chiamate a :ref:`add_do_method()<class_UndoRedo_method_add_do_method>`, :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>`, :ref:`add_do_property()<class_UndoRedo_method_add_do_property>` e :ref:`add_undo_property()<class_UndoRedo_method_add_undo_property>`, quindi compi l'azione con :ref:`commit_action()<class_UndoRedo_method_commit_action>`.

Il modo in cui le azioni sono unite è dettato da ``merge_mode``.

Il modo in cui le operazioni di annullamento sono ordinate nelle azioni è dettato da ``backward_undo_ops``. Quando ``backward_undo_ops`` è ``false`` le opzioni di annullamento sono ordinate nello stesso ordine in cui sono state aggiunte. Ciò significa che la prima operazione a essere aggiunta sarà la prima a essere annullata.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_end_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **end_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_end_force_keep_in_merge_ends>`

Smette di contrassegnare le operazioni come da elaborare anche se l'azione viene unita a un'altra nella modalità :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>`. Vedi :ref:`start_force_keep_in_merge_ends()<class_UndoRedo_method_start_force_keep_in_merge_ends>`.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_name**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_UndoRedo_method_get_action_name>`

Ottiene il nome dell'azione dal suo indice.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_action**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_current_action>`

Ottiene l'indice dell'azione attuale.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_action_name**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_current_action_name>`

Ottiene il nome dell'azione attuale, equivalente a ``get_action_name(get_current_action())``.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_history_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_history_count**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_history_count>`

Restituisce quanti elementi sono presenti nella cronologia.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_version**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_version>`

Ottiene la versione. Ogni volta che viene compiuta una nuova azione, il numero di versione di **UndoRedo** viene incrementato automaticamente.

Questo è utile soprattutto per controllare se qualcosa è cambiato rispetto a una versione salvata.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_has_redo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_redo**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_has_redo>`

Restituisce ``true`` se un'azione "ripeti" è disponibile.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_has_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_undo**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_has_undo>`

Restituisce ``true`` se un'azione "annulla" è disponibile.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_is_committing_action>`

Restituisce ``true`` se **UndoRedo** sta attualmente eseguendo l'azione, ovvero sta eseguendo il suo metodo "do" o la modifica della proprietà (vedi :ref:`commit_action()<class_UndoRedo_method_commit_action>`).

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_redo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **redo**\ (\ ) :ref:`🔗<class_UndoRedo_method_redo>`

Ripete l'ultima azione. Restituisce ``false`` se non c'era alcuna azione da ripetere.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_start_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **start_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_start_force_keep_in_merge_ends>`

Contrassegna le prossime operazioni "do" e "undo" da elaborare anche se l'azione viene unita a un'altra nella modalità :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>`. Ritorna al normale funzionamento usando :ref:`end_force_keep_in_merge_ends()<class_UndoRedo_method_end_force_keep_in_merge_ends>`.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **undo**\ (\ ) :ref:`🔗<class_UndoRedo_method_undo>`

Annulla l'ultima azione. Restituisce ``false`` se non c'era alcuna azione da annulla.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
