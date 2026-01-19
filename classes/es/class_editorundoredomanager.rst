:github_url: hide

.. _class_EditorUndoRedoManager:

EditorUndoRedoManager
=====================

**Hereda:** :ref:`Object<class_Object>`

Gestiona el historial de deshacer de las escenas abiertas en el editor.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**EditorUndoRedoManager** is a manager for :ref:`UndoRedo<class_UndoRedo>` objects associated with edited scenes. Each scene has its own undo history and **EditorUndoRedoManager** ensures that each action performed in the editor gets associated with a proper scene. For actions not related to scenes (:ref:`ProjectSettings<class_ProjectSettings>` edits, external resources, etc.), a separate global history is used.

The usage is mostly the same as :ref:`UndoRedo<class_UndoRedo>`. You create and commit actions and the manager automatically decides under-the-hood what scenes it belongs to. The scene is deduced based on the first operation in an action, using the object from the operation. The rules are as follows:

- If the object is a :ref:`Node<class_Node>`, use the currently edited scene;

- If the object is a built-in resource, use the scene from its path;

- If the object is external resource or anything else, use global history.

This guessing can sometimes yield false results, so you can provide a custom context object when creating an action.

\ **EditorUndoRedoManager** is intended to be used by Godot editor plugins. You can obtain it using :ref:`EditorPlugin.get_undo_redo()<class_EditorPlugin_method_get_undo_redo>`. For non-editor uses or plugins that don't need to integrate with the editor's undo history, use :ref:`UndoRedo<class_UndoRedo>` instead.

The manager's API is mostly the same as in :ref:`UndoRedo<class_UndoRedo>`, so you can refer to its documentation for more examples. The main difference is that **EditorUndoRedoManager** uses object + method name for actions, instead of :ref:`Callable<class_Callable>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Señales
--------------

.. _class_EditorUndoRedoManager_signal_history_changed:

.. rst-class:: classref-signal

**history_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_history_changed>`

Se emite cuando la lista de acciones en cualquier historial ha cambiado, ya sea cuando se confirma una acción o se borra un historial.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_version_changed>`

Se emite cuando la versión de cualquier historial ha cambiado como resultado de una llamada de deshacer o rehacer.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_EditorUndoRedoManager_SpecialHistory:

.. rst-class:: classref-enumeration

enum **SpecialHistory**: :ref:`🔗<enum_EditorUndoRedoManager_SpecialHistory>`

.. _class_EditorUndoRedoManager_constant_GLOBAL_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **GLOBAL_HISTORY** = ``0``

Historial global no asociado a ninguna escena, sino a recursos externos, etc.

.. _class_EditorUndoRedoManager_constant_REMOTE_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **REMOTE_HISTORY** = ``-9``

Historial asociado con el inspector remoto. Se utiliza cuando se edita en vivo un proyecto en ejecución.

.. _class_EditorUndoRedoManager_constant_INVALID_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **INVALID_HISTORY** = ``-99``

Historial "nulo" inválido. Es un valor especial, no asociado a ningún objeto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorUndoRedoManager_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_do_method>`

Registra un método que se llamará cuando se confirme la acción (es decir, la acción "do").

Si esta es la primera operación, el ``object`` se utilizará para deducir el historial de deshacer objetivo.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_property>`

Registra un cambio de valor de propiedad para "do".

Si esta es la primera operación, el ``object`` se utilizará para deducir el historial de deshacer objetivo.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_reference>`

Registra una referencia para "hacer" que se borrará si se pierde la historia de "hacer". Esto es útil sobre todo para los nuevos nodos creados para la llamada "hacer". No lo utilices para los recursos.

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

Registra una referencia para "deshacer" que se borrará si se pierde la historia de "deshacer". Esto es útil sobre todo para los nodos eliminados con la llamada "hacer" (¡no la llamada "deshacer"!).

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

Confirma la acción. Si ``execute`` es ``true`` (por defecto), todos los métodos/propiedades "do" son llamados/establecidos cuando se llama a esta función.

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

Fuerza a que la siguiente operación (p. ej. :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`) use el historial de la acción en lugar de adivinarlo del objeto. Esto a veces es necesario cuando no se puede determinar correctamente un historial, como para un recurso anidado que aún no tiene una ruta.

Este método solo debe usarse cuando sea absolutamente necesario, de lo contrario, podría causar un estado de historial no válido. Para la mayoría de los casos complejos, el parámetro ``custom_context`` de :ref:`create_action()<class_EditorUndoRedoManager_method_create_action>` es suficiente.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_history_undo_redo:

.. rst-class:: classref-method

:ref:`UndoRedo<class_UndoRedo>` **get_history_undo_redo**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_history_undo_redo>`

Devuelve el objeto :ref:`UndoRedo<class_UndoRedo>` asociado con el ``id`` del historial dado.

\ ``id`` por encima de ``0`` se asignan a las pestañas de escena abiertas (pero no coinciden con su orden). ``id`` de ``0`` o inferior tienen un significado especial (véase :ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>`).

Se utiliza mejor con :ref:`get_object_history_id()<class_EditorUndoRedoManager_method_get_object_history_id>`. Este método solo se proporciona en caso de que necesites algunos métodos más avanzados de :ref:`UndoRedo<class_UndoRedo>` (pero ten en cuenta que operar directamente en el objeto :ref:`UndoRedo<class_UndoRedo>` podría afectar la estabilidad del editor).

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_object_history_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_history_id**\ (\ object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_object_history_id>`

Devuelve el ID del historial deducido del ``object`` dado. Se puede usar con :ref:`get_history_undo_redo()<class_EditorUndoRedoManager_method_get_history_undo_redo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_is_committing_action>`

Devuelve ``true`` si el **EditorUndoRedoManager** está actualmente confirmando la acción, es decir, ejecutando su método "do" o el cambio de propiedad (véase :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
