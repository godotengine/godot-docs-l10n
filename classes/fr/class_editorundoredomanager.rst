:github_url: hide

.. _class_EditorUndoRedoManager:

EditorUndoRedoManager
=====================

**Hérite de :** :ref:`Object<class_Object>`

Manages undo history of scenes opened in the editor.

.. rst-class:: classref-introduction-group

Description
-----------

**EditorUndoRedoManager** is a manager for :ref:`UndoRedo<class_UndoRedo>` objects associated with edited scenes. Each scene has its own undo history and **EditorUndoRedoManager** ensures that each action performed in the editor gets associated with a proper scene. For actions not related to scenes (:ref:`ProjectSettings<class_ProjectSettings>` edits, external resources, etc.), a separate global history is used.

The usage is mostly the same as :ref:`UndoRedo<class_UndoRedo>`. You create and commit actions and the manager automatically decides under-the-hood what scenes it belongs to. The scene is deduced based on the first operation in an action, using the object from the operation. The rules are as follows:

- If the object is a :ref:`Node<class_Node>`, use the currently edited scene;

- If the object is a built-in resource, use the scene from its path;

- If the object is external resource or anything else, use global history.

This guessing can sometimes yield false results, so you can provide a custom context object when creating an action.

\ **EditorUndoRedoManager** is intended to be used by Godot editor plugins. You can obtain it using :ref:`EditorPlugin.get_undo_redo()<class_EditorPlugin_method_get_undo_redo>`. For non-editor uses or plugins that don't need to integrate with the editor's undo history, use :ref:`UndoRedo<class_UndoRedo>` instead.

The manager's API is mostly the same as in :ref:`UndoRedo<class_UndoRedo>`, so you can refer to its documentation for more examples. The main difference is that **EditorUndoRedoManager** uses object + method name for actions, instead of :ref:`Callable<class_Callable>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Signaux
--------------

.. _class_EditorUndoRedoManager_signal_history_changed:

.. rst-class:: classref-signal

**history_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_history_changed>`

Emitted when the list of actions in any history has changed, either when an action is committed or a history is cleared.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_version_changed>`

Émis quand la version de n'importe quel historique a changé à cause d'un appel d'annulation ou de retour en arrière.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_EditorUndoRedoManager_SpecialHistory:

.. rst-class:: classref-enumeration

enum **SpecialHistory**: :ref:`🔗<enum_EditorUndoRedoManager_SpecialHistory>`

.. _class_EditorUndoRedoManager_constant_GLOBAL_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **GLOBAL_HISTORY** = ``0``

Global history not associated with any scene, but with external resources etc.

.. _class_EditorUndoRedoManager_constant_REMOTE_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **REMOTE_HISTORY** = ``-9``

History associated with remote inspector. Used when live editing a running project.

.. _class_EditorUndoRedoManager_constant_INVALID_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **INVALID_HISTORY** = ``-99``

Invalid "null" history. It's a special value, not associated with any object.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorUndoRedoManager_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_do_method>`

Register a method that will be called when the action is committed (i.e. the "do" action).

If this is the first operation, the ``object`` will be used to deduce target undo history.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_property>`

Register a property value change for "do".

If this is the first operation, the ``object`` will be used to deduce target undo history.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_reference>`

Enregistre une référence pour "faire" qui sera effacée si l'historique de "faire" est perdue. Ceci est utile surtout pour les nouveaux nœuds créés avec l'appel "faire". Ne pas l'utiliser pour les ressources.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_method>`

Register a method that will be called when the action is undone (i.e. the "undo" action).

If this is the first operation, the ``object`` will be used to deduce target undo history.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_property>`

Register a property value change for "undo".

If this is the first operation, the ``object`` will be used to deduce target undo history.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_reference>`

Enregistre une référence pour "annuler" qui sera effacée si l'historique "annuler" est perdue. Ceci est utile surtout pour les nœuds retirés avec l'appel "faire" (et non pas l'appel "annuler" !).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ id\: :ref:`int<class_int>` = -99, increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_clear_history>`

Clears the given undo history. You can clear history for a specific scene, global history, or for all histories at once (except :ref:`REMOTE_HISTORY<class_EditorUndoRedoManager_constant_REMOTE_HISTORY>`) if ``id`` is :ref:`INVALID_HISTORY<class_EditorUndoRedoManager_constant_INVALID_HISTORY>`.

If ``increase_version`` is ``true``, the undo history version will be increased, marking it as unsaved. Useful for operations that modify the scene, but don't support undo.

::

    var scene_root = EditorInterface.get_edited_scene_root()
    var undo_redo = EditorInterface.get_editor_undo_redo()
    undo_redo.clear_history(undo_redo.get_object_history_id(scene_root))

\ **Note:** If you want to mark an edited scene as unsaved without clearing its history, use :ref:`EditorInterface.mark_scene_as_unsaved()<class_EditorInterface_method_mark_scene_as_unsaved>` instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_commit_action>`

Commits the action. If ``execute`` is ``true`` (default), all "do" methods/properties are called/set when this function is called.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, custom_context\: :ref:`Object<class_Object>` = null, backward_undo_ops\: :ref:`bool<class_bool>` = false, mark_unsaved\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_create_action>`

Create a new action. After this is called, do all your calls to :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`, :ref:`add_undo_method()<class_EditorUndoRedoManager_method_add_undo_method>`, :ref:`add_do_property()<class_EditorUndoRedoManager_method_add_do_property>`, and :ref:`add_undo_property()<class_EditorUndoRedoManager_method_add_undo_property>`, then commit the action with :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`.

The way actions are merged is dictated by the ``merge_mode`` argument.

If ``custom_context`` object is provided, it will be used for deducing target history (instead of using the first operation).

The way undo operation are ordered in actions is dictated by ``backward_undo_ops``. When ``backward_undo_ops`` is ``false`` undo option are ordered in the same order they were added. Which means the first operation to be added will be the first to be undone.

If ``mark_unsaved`` is ``false``, the action will not mark the history as unsaved. This is useful for example for actions that change a selection, or a setting that will be saved automatically. Otherwise, this should be left to ``true`` if the action requires saving by the user or if it can cause data loss when left unsaved.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_force_fixed_history:

.. rst-class:: classref-method

|void| **force_fixed_history**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_method_force_fixed_history>`

Forces the next operation (e.g. :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`) to use the action's history rather than guessing it from the object. This is sometimes needed when a history can't be correctly determined, like for a nested resource that doesn't have a path yet.

This method should only be used when absolutely necessary, otherwise it might cause invalid history state. For most of complex cases, the ``custom_context`` parameter of :ref:`create_action()<class_EditorUndoRedoManager_method_create_action>` is sufficient.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_history_undo_redo:

.. rst-class:: classref-method

:ref:`UndoRedo<class_UndoRedo>` **get_history_undo_redo**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_history_undo_redo>`

Returns the :ref:`UndoRedo<class_UndoRedo>` object associated with the given history ``id``.

\ ``id`` above ``0`` are mapped to the opened scene tabs (but it doesn't match their order). ``id`` of ``0`` or lower have special meaning (see :ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>`).

Best used with :ref:`get_object_history_id()<class_EditorUndoRedoManager_method_get_object_history_id>`. This method is only provided in case you need some more advanced methods of :ref:`UndoRedo<class_UndoRedo>` (but keep in mind that directly operating on the :ref:`UndoRedo<class_UndoRedo>` object might affect editor's stability).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_object_history_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_history_id**\ (\ object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_object_history_id>`

Returns the history ID deduced from the given ``object``. It can be used with :ref:`get_history_undo_redo()<class_EditorUndoRedoManager_method_get_history_undo_redo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_is_committing_action>`

Returns ``true`` if the **EditorUndoRedoManager** is currently committing the action, i.e. running its "do" method or property change (see :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
