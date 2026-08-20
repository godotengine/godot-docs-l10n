:github_url: hide

.. _class_EditorUndoRedoManager:

EditorUndoRedoManager
=====================

**Eredita:** :ref:`Object<class_Object>`

Gestisce la cronologia degli annullamenti delle scene aperte nell'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**EditorUndoRedoManager** è un gestore per gli oggetti :ref:`UndoRedo<class_UndoRedo>` associati alle scene modificate. Ogni scena ha la sua cronologia di annullamento e **EditorUndoRedoManager** assicura che ogni azione effettuata nell'editor sia associata a una scena appropriata. Per le azioni che non riguardano le scene (modifiche in :ref:`ProjectSettings<class_ProjectSettings>`, risorse esterne, ecc.), viene utilizzata una cronologia globale separata.

L'utilizzo è per lo più lo stesso di :ref:`UndoRedo<class_UndoRedo>`. Crea e commetti le azioni e il gestore decide automaticamente a quali scene appartengono. La scena viene dedotta in base alla prima operazione in un'azione, tramite l'oggetto dall'operazione. Le regole sono le seguenti:

- Se l'oggetto è un :ref:`Node<class_Node>`, utilizza la scena attualmente in fase di modifica;

- Se l'oggetto è una risorsa integrata, utilizza la scena dal suo percorso;

- Se l'oggetto è una risorsa esterna o qualsiasi altra cosa, utilizza la cronologia globale.

Questa assunzione può talvolta produrre risultati sbagliati, perciò è possibile fornire un oggetto di contesto personalizzato quando si crea un'azione.

\ **EditorUndoRedoManager** è pensato all'uso dalle estensioni dell'editor Godot. È possibile ottenerlo attraverso :ref:`EditorPlugin.get_undo_redo()<class_EditorPlugin_method_get_undo_redo>`. Per usi oltre all'editor o estensioni che non hanno bisogno di integrarsi con la cronologia di annullamento dell'editor, usa invece :ref:`UndoRedo<class_UndoRedo>`.

L'API del gestore è per lo più la stessa di :ref:`UndoRedo<class_UndoRedo>`, quindi è possibile fare riferimento alla sua documentazione per altri esempi. La differenza principale è che **EditorUndoRedoManager** utilizza un oggetto più il nome del metodo per le azioni, invece di un :ref:`Callable<class_Callable>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_do_method<class_EditorUndoRedoManager_method_add_do_method>`\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                                                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_do_property<class_EditorUndoRedoManager_method_add_do_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                         |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_do_reference<class_EditorUndoRedoManager_method_add_do_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_undo_method<class_EditorUndoRedoManager_method_add_undo_method>`\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                                                                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_undo_property<class_EditorUndoRedoManager_method_add_undo_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                     |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_undo_reference<class_EditorUndoRedoManager_method_add_undo_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`clear_history<class_EditorUndoRedoManager_method_clear_history>`\ (\ id\: :ref:`int<class_int>` = -99, increase_version\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                     |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`commit_action<class_EditorUndoRedoManager_method_commit_action>`\ (\ execute\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`create_action<class_EditorUndoRedoManager_method_create_action>`\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, custom_context\: :ref:`Object<class_Object>` = null, backward_undo_ops\: :ref:`bool<class_bool>` = false, mark_unsaved\: :ref:`bool<class_bool>` = true\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`force_fixed_history<class_EditorUndoRedoManager_method_force_fixed_history>`\ (\ )                                                                                                                                                                                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`UndoRedo<class_UndoRedo>` | :ref:`get_history_undo_redo<class_EditorUndoRedoManager_method_get_history_undo_redo>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                      |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_object_history_id<class_EditorUndoRedoManager_method_get_object_history_id>`\ (\ object\: :ref:`Object<class_Object>`\ ) |const|                                                                                                                                                                                            |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_committing_action<class_EditorUndoRedoManager_method_is_committing_action>`\ (\ ) |const|                                                                                                                                                                                                                                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_EditorUndoRedoManager_signal_history_changed:

.. rst-class:: classref-signal

**history_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_history_changed>`

Emesso quando la lista delle azioni in una cronologia è cambiata, sia quando un'azione è stata confermata, sia quando una cronologia è stata pulita.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_version_changed>`

Emesso quando la versione di una qualsiasi cronologia è cambiata a seguito di una chiamata di annullamento o ripetizione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorUndoRedoManager_SpecialHistory:

.. rst-class:: classref-enumeration

enum **SpecialHistory**: :ref:`🔗<enum_EditorUndoRedoManager_SpecialHistory>`

.. _class_EditorUndoRedoManager_constant_GLOBAL_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **GLOBAL_HISTORY** = ``0``

Cronologia globale non associata ad alcuna scena, ma a risorse esterne ecc.

.. _class_EditorUndoRedoManager_constant_REMOTE_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **REMOTE_HISTORY** = ``-9``

Cronologia associata all'ispettore remoto. Utilizzata quando si modifica in tempo reale un progetto in esecuzione.

.. _class_EditorUndoRedoManager_constant_INVALID_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **INVALID_HISTORY** = ``-99``

Cronologia "null" non valida. È un valore speciale, non associato ad alcun oggetto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorUndoRedoManager_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_do_method>`

Registra un metodo che verrà chiamato quando l'azione viene commessa (ovvero l'azione per "fare").

Se questa è la prima operazione, l'oggetto ``object`` verrà utilizzato per dedurre la cronologia di destinazione degli annullamenti.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_property>`

Registra una modifica del valore di una proprietà per "fare".

Se questa è la prima operazione, l'oggetto ``object`` verrà utilizzato per dedurre la cronologia di destinazione degli annullamenti.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_reference>`

Registra un riferimento per "fare" che verrà cancellato se la cronologia per "fare" viene persa. Questo è utile soprattutto per i nuovi nodi creati nella chiamata per "fare". Non lo utilizzare per le risorse.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_method>`

Registra un metodo che verrà chiamato quando l'azione viene annullata (ovvero l'azione per "annullare").

Se questa è la prima operazione, l'oggetto ``object`` verrà utilizzato per dedurre la cronologia di destinazione degli annullamenti.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_property>`

Registra una modifica del valore di una proprietà per "annullare".

Se questa è la prima operazione, l'oggetto ``object`` verrà utilizzato per dedurre la cronologia di destinazione degli annullamenti.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_reference>`

Registra un riferimento per "annullare" che verrà cancellato se la cronologia per "annullare" viene persa. Questo è utile soprattutto per i nodi rimossi con la chiamata per "fare" (non la chiamata per "annullare"!).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ id\: :ref:`int<class_int>` = -99, increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_clear_history>`

Cancella la cronologia degli annullamenti specificata. È possibile cancellare la cronologia per una scena specifica, la cronologia globale o per tutte le cronologie alla volta (tranne :ref:`REMOTE_HISTORY<class_EditorUndoRedoManager_constant_REMOTE_HISTORY>`) se ``id`` è :ref:`INVALID_HISTORY<class_EditorUndoRedoManager_constant_INVALID_HISTORY>`.

Se ``increase_version`` è ``true``, la versione della cronologia degli annullamenti verrà aumentata, contrassegnandola come non salvata. Utile per le operazioni che modificano la scena, ma non supportano l'annullamento.

::

    var scene_root = EditorInterface.get_edited_scene_root()
    var undo_redo = EditorInterface.get_editor_undo_redo()
    undo_redo.clear_history(undo_redo.get_object_history_id(scene_root))

\ **Nota:** Se di desidera contrassegnare una scena modificata come non salvata senza cancellarne la cronologia, usa invece :ref:`EditorInterface.mark_scene_as_unsaved()<class_EditorInterface_method_mark_scene_as_unsaved>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_commit_action>`

Commette l'azione. Se ``execute`` è ``true`` (predefinito), tutti i metodi e proprietà da "fare" vengono chiamati e impostati quando viene chiamata questa funzione.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, custom_context\: :ref:`Object<class_Object>` = null, backward_undo_ops\: :ref:`bool<class_bool>` = false, mark_unsaved\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_create_action>`

Crea una nuova azione. Dopo che questo metodo è stata chiamato, esegui tutte le chiamate a :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`, :ref:`add_undo_method()<class_EditorUndoRedoManager_method_add_undo_method>`, :ref:`add_do_property()<class_EditorUndoRedoManager_method_add_do_property>` e :ref:`add_undo_property()<class_EditorUndoRedoManager_method_add_undo_property>`, quindi commetti l'azione con :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`.

Il modo in cui le azioni vengono unite è dettato dall'argomento ``merge_mode``. Consulta :ref:`MergeMode<enum_UndoRedo_MergeMode>` per i dettagli.

Se l'oggetto ``custom_context`` viene fornito, verrà usato per dedurre la cronologia di destinazione (invece di usare la prima operazione).

Il modo in cui le operazioni di annullamento sono ordinate nelle azioni è dettato da ``backward_undo_ops``. Quando ``backward_undo_ops`` è ``false`` le opzioni di annullamento saranno ordinate nello stesso ordine in cui sono state aggiunte. Ciò significa che la prima operazione che è stata aggiunta sarà la prima a essere annullata.

Se ``mark_unsaved`` è ``false``, l'azione non segnerà la cronologia come non salvata. Questo è utile, ad esempio, per le azioni che modificano una selezione o un'impostazione che sarà salvata automaticamente. Altrimenti, lascia su ``true`` se l'azione richiede il salvataggio dall'utente o se può causare la perdita di dati se non viene salvata.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_force_fixed_history:

.. rst-class:: classref-method

|void| **force_fixed_history**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_method_force_fixed_history>`

Forza l'operazione successiva (ad esempio :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`) a usare la cronologia dell'azione anziché assumerla dall'oggetto. Ciò è a volte necessario quando una cronologia non può essere determinata correttamente, come per una risorsa innestata che non ha ancora un percorso.

Questo metodo dovrebbe essere usato solo quando assolutamente necessario, altrimenti potrebbe causare uno stato di cronologia non valido. Per la maggior parte dei casi complessi, il parametro ``custom_context`` di :ref:`create_action()<class_EditorUndoRedoManager_method_create_action>` è sufficiente.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_history_undo_redo:

.. rst-class:: classref-method

:ref:`UndoRedo<class_UndoRedo>` **get_history_undo_redo**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_history_undo_redo>`

Restituisce l'oggetto :ref:`UndoRedo<class_UndoRedo>` associato alla cronologia specificata dall'``id``.

Gli ``id`` superiori a ``0`` sono mappati alle schede di scene aperte (ma non corrispondono al loro ordine). Gli ``id`` inferiori o uguali a ``0`` hanno un significato speciale (vedi :ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>`).

Meglio utilizzato con :ref:`get_object_history_id()<class_EditorUndoRedoManager_method_get_object_history_id>`. Questo metodo è fornito solo nel caso in cui siano necessari metodi più avanzati di :ref:`UndoRedo<class_UndoRedo>` (ma tieni presente che operare direttamente sull'oggetto :ref:`UndoRedo<class_UndoRedo>` potrebbe rendere l'editor meno stabile).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_object_history_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_history_id**\ (\ object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_object_history_id>`

Restituisce l'ID della cronologia dedotto dall'``object`` fornito. Può essere utilizzato con :ref:`get_history_undo_redo()<class_EditorUndoRedoManager_method_get_history_undo_redo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_is_committing_action>`

Restituisce ``true`` se **EditorUndoRedoManager** sta attualmente compiendo l'azione, ovvero sta eseguendo il suo metodo "do" o la modifica della proprietà (vedi :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
