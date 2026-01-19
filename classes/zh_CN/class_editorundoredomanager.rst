:github_url: hide

.. _class_EditorUndoRedoManager:

EditorUndoRedoManager
=====================

**继承：** :ref:`Object<class_Object>`

管理编辑器中打开场景的撤销历史。

.. rst-class:: classref-introduction-group

描述
----

**EditorUndoRedoManager** 是将 :ref:`UndoRedo<class_UndoRedo>` 对象与编辑场景相关联的管理器。每个场景都有自己的撤销历史，\ **EditorUndoRedoManager** 能够确保编辑器中执行的每个动作都与正确的场景相关联。与场景无关的动作（对 :ref:`ProjectSettings<class_ProjectSettings>`\ 、外部资源等对象的编辑）使用单独的全局历史。

用法与 :ref:`UndoRedo<class_UndoRedo>` 基本一致。需要创建并提交动作，然后管理器会自动决定这个动作属于哪个场景。场景是根据该动作中第一个操作所使用的对象来推断的。规则如下：

- 如果该对象为 :ref:`Node<class_Node>`\ ，则使用当前编辑的场景；

- 如果该对象为内置资源，则使用其路径上的场景；

- 如果该对象为外部资源或任何其他对象，则使用全局历史。

推断的结果有时并不准确，所以在创建动作时你可以提供自定义的上下文对象。

\ **EditorUndoRedoManager** 是为 Godot 编辑器插件使用而设计的。你可以使用 :ref:`EditorPlugin.get_undo_redo()<class_EditorPlugin_method_get_undo_redo>` 获取。对于非编辑器使用场景或者不需要与编辑器撤销历史记录集成的插件，请改用 :ref:`UndoRedo<class_UndoRedo>`\ 。

管理器的 API 与 :ref:`UndoRedo<class_UndoRedo>` 基本一致，它的文档中有更多示例。主要区别在于 **EditorUndoRedoManager** 的动作使用对象 + 方法名，而不是 :ref:`Callable<class_Callable>`\ 。

.. rst-class:: classref-reftable-group

方法
----

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

信号
----

.. _class_EditorUndoRedoManager_signal_history_changed:

.. rst-class:: classref-signal

**history_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_history_changed>`

当任何历史中的动作列表发生变化时发出，无论是当一个动作被提交或一个历史被清除时。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_version_changed>`

当任何历史记录的版本因撤消或重做调用而变化时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_EditorUndoRedoManager_SpecialHistory:

.. rst-class:: classref-enumeration

enum **SpecialHistory**: :ref:`🔗<enum_EditorUndoRedoManager_SpecialHistory>`

.. _class_EditorUndoRedoManager_constant_GLOBAL_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **GLOBAL_HISTORY** = ``0``

全局历史不与任何场景相关联，但与外部资源等相关联。

.. _class_EditorUndoRedoManager_constant_REMOTE_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **REMOTE_HISTORY** = ``-9``

与远程检查器相关的历史。在实时编辑正在运行的游戏项目时使用。

.. _class_EditorUndoRedoManager_constant_INVALID_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **INVALID_HISTORY** = ``-99``

无效历史“null”。这是一个特殊值，不与任何对象相关联。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorUndoRedoManager_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_do_method>`

注册一个方法，当动作被提交（即“做”的动作）时将被调用。

如果这是第一次操作，\ ``object`` 将被用于推断目标撤消历史。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_property>`

为“做”注册一个属性值变更。

如果这是第一次操作，\ ``object`` 将被用于推断目标撤消历史。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_reference>`

为“做”注册一个引用，如果“做”历史丢失，则该引用将被擦除。这主要用于为“做”调用而创建的新节点。请不要用于资源。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_method>`

注册一个方法，当动作被撤销时（即“撤销”动作）将被调用。

如果这是第一次操作，\ ``object`` 将被用于推断目标撤消历史。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_property>`

为“撤销”注册一个属性值变更。

如果这是第一次操作，\ ``object`` 将被用于推断目标撤消历史。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_reference>`

为“撤消”注册一个引用，如果“撤消”历史丢失，则该引用将被擦除。这主要用于通过“做”调用（而不是“撤销”调用！）而移除的节点。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ id\: :ref:`int<class_int>` = -99, increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_clear_history>`

清空给定的撤销历史。你可以只清空特定场景的历史或全局历史，如果 ``id`` 为 :ref:`INVALID_HISTORY<class_EditorUndoRedoManager_constant_INVALID_HISTORY>` 则会清空所有场景的历史。

如果 ``increase_version`` 为 ``true``\ ，则会增加撤销历史版本并将其设为未保存。适合会修改场景但不支持撤销的操作。

::

    var scene_root = EditorInterface.get_edited_scene_root()
    var undo_redo = EditorInterface.get_editor_undo_redo()
    undo_redo.clear_history(undo_redo.get_object_history_id(scene_root))

\ **注意：**\ 如果想要将编辑过的场景标记为未保存且不清除历史记录，请改用 :ref:`EditorInterface.mark_scene_as_unsaved()<class_EditorInterface_method_mark_scene_as_unsaved>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_commit_action>`

提交该动作。如果 ``execute`` 为 ``true``\ （默认值），则该函数被调用时所有“做”方法/属性将被调用/设置。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, custom_context\: :ref:`Object<class_Object>` = null, backward_undo_ops\: :ref:`bool<class_bool>` = false, mark_unsaved\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorUndoRedoManager_method_create_action>`

创建一个新的动作。调用后，请执行所有你需要的 :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`\ 、\ :ref:`add_undo_method()<class_EditorUndoRedoManager_method_add_undo_method>`\ 、\ :ref:`add_do_property()<class_EditorUndoRedoManager_method_add_do_property>` 和 :ref:`add_undo_property()<class_EditorUndoRedoManager_method_add_undo_property>` 调用，然后再用 :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>` 提交这个动作。

动作的合并方式由 ``merge_mode`` 参数决定。

如果提供了 ``custom_context`` 对象，则它将被用于推断目标历史（而不是使用第一个操作）。

动作中撤销操作的顺序由 ``backward_undo_ops`` 决定。\ ``backward_undo_ops`` 为 ``false`` 时，撤销选项的顺序和添加顺序一致。也就是说，先添加的操作会先撤销。

如果 ``mark_unsaved`` 为 ``false``\ ，则该动作不会将历史标记为未保存。例如，适用于修改选中项的动作，或自动保存的设置项。否则，如果动作需要用户进行保存或不保存可能导致数据丢失，请将其保持为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_force_fixed_history:

.. rst-class:: classref-method

|void| **force_fixed_history**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_method_force_fixed_history>`

强制下一个操作（例如 :ref:`add_do_method()<class_EditorUndoRedoManager_method_add_do_method>`\ ）使用操作的历史记录，而不是从对象中猜测。当无法正确确定历史记录时，有时需要这样做，例如对于尚未有路径的嵌套资源。

仅应在绝对必要时使用该方法，否则可能会导致无效的历史记录状态。对于大多数复杂情况，\ :ref:`create_action()<class_EditorUndoRedoManager_method_create_action>` 的 ``custom_context`` 参数就足够了。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_history_undo_redo:

.. rst-class:: classref-method

:ref:`UndoRedo<class_UndoRedo>` **get_history_undo_redo**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_history_undo_redo>`

返回与给定历史 ``id`` 关联的 :ref:`UndoRedo<class_UndoRedo>` 对象。

\ ``0`` 以上的 ``id`` 被映射到打开的场景选项卡（但它与它们的顺序不匹配）。\ ``0`` 或更低的 ``id`` 具有特殊含义（参阅 :ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>`\ ）。

最好与 :ref:`get_object_history_id()<class_EditorUndoRedoManager_method_get_object_history_id>` 一起使用。该方法被提供，只是以防需要 :ref:`UndoRedo<class_UndoRedo>` 的一些更高级的方法的情况（但请记住，直接操作 :ref:`UndoRedo<class_UndoRedo>` 对象可能会影响编辑器的稳定性）。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_object_history_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_history_id**\ (\ object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_object_history_id>`

返回从给定的 ``object`` 推导出的历史 ID。它可以与 :ref:`get_history_undo_redo()<class_EditorUndoRedoManager_method_get_history_undo_redo>` 一起使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_is_committing_action>`

如果 **EditorUndoRedoManager** 当前正在提交该动作，即运行其“做”方法或属性更改（请参阅 :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`\ ）时，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
