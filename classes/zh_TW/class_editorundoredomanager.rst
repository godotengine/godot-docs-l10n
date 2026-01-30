:github_url: hide

.. _class_EditorUndoRedoManager:

EditorUndoRedoManager
=====================

**繼承：** :ref:`Object<class_Object>`

管理編輯器中打開場景的撤銷歷史。

.. rst-class:: classref-introduction-group

說明
----

**EditorUndoRedoManager** 是將 :ref:`UndoRedo<class_UndoRedo>` 物件與編輯場景相關聯的管理器。每個場景都有自己的撤銷歷史，\ **EditorUndoRedoManager** 能夠確保編輯器中執行的每個動作都與正確的場景相關聯。與場景無關的動作（對 :ref:`ProjectSettings<class_ProjectSettings>`\ 、外部資源等物件的編輯）使用單獨的全域歷史。

用法與 :ref:`UndoRedo<class_UndoRedo>` 基本一致。需要建立並提交動作，然後管理器會自動決定這個動作屬於哪個場景。場景是根據該動作中第一個操作所使用的物件來推斷的。規則如下：

- 如果該物件為 :ref:`Node<class_Node>`\ ，則使用目前編輯的場景；

- 如果該物件為內建資源，則使用其路徑上的場景；

- 如果該物件為外部資源或任何其他物件，則使用全域歷史。

推斷的結果有時並不準確，所以在建立動作時你可以提供自訂的本文物件。

\ **EditorUndoRedoManager** 是為 Godot 編輯器外掛程式使用而設計的。你可以使用 :ref:`EditorPlugin.get_undo_redo()<class_EditorPlugin_method_get_undo_redo>` 獲取。對於非編輯器使用場景或者不需要與編輯器撤銷歷史記錄集成的外掛程式，請改用 :ref:`UndoRedo<class_UndoRedo>`\ 。

管理器的 API 與 :ref:`UndoRedo<class_UndoRedo>` 基本一致，它的文件中有更多範例。主要區別在於 **EditorUndoRedoManager** 的動作使用物件 + 方法名，而不是 :ref:`Callable<class_Callable>`\ 。

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

訊號
----

.. _class_EditorUndoRedoManager_signal_history_changed:

.. rst-class:: classref-signal

**history_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_history_changed>`

當任何歷史中的動作列表發生變化時發出，無論是當一個動作被提交或一個歷史被清除時。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_EditorUndoRedoManager_signal_version_changed>`

當任何歷史記錄的版本因撤銷或重做呼叫而變化時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorUndoRedoManager_SpecialHistory:

.. rst-class:: classref-enumeration

enum **SpecialHistory**: :ref:`🔗<enum_EditorUndoRedoManager_SpecialHistory>`

.. _class_EditorUndoRedoManager_constant_GLOBAL_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **GLOBAL_HISTORY** = ``0``

全域歷史不與任何場景相關聯，但與外部資源等相關聯。

.. _class_EditorUndoRedoManager_constant_REMOTE_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **REMOTE_HISTORY** = ``-9``

與遠程屬性檢視器相關的歷史。在即時編輯正在運作的遊戲專案時使用。

.. _class_EditorUndoRedoManager_constant_INVALID_HISTORY:

.. rst-class:: classref-enumeration-constant

:ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>` **INVALID_HISTORY** = ``-99``

無效歷史“null”。這是一個特殊值，不與任何物件相關聯。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorUndoRedoManager_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_do_method>`

註冊一個方法，當動作被提交（即“做”的動作）時將被呼叫。

如果這是第一次操作，\ ``object`` 將被用於推斷目標撤銷歷史。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_property>`

為“做”註冊一個屬性值變更。

如果這是第一次操作，\ ``object`` 將被用於推斷目標撤銷歷史。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_do_reference>`

為“做”註冊一個引用，如果“做”歷史丟失，則該引用將被擦除。這主要用於為“做”呼叫而建立的新節點。請不要用於資源。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_method>`

註冊一個方法，當動作被撤銷時（即“撤銷”動作）將被呼叫。

如果這是第一次操作，\ ``object`` 將被用於推斷目標撤銷歷史。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_property>`

為“撤銷”註冊一個屬性值變更。

如果這是第一次操作，\ ``object`` 將被用於推斷目標撤銷歷史。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_EditorUndoRedoManager_method_add_undo_reference>`

為“撤銷”註冊一個引用，如果“撤銷”歷史丟失，則該引用將被擦除。這主要用於通過“做”呼叫（而不是“撤銷”呼叫！）而移除的節點。

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

返回與給定歷史 ``id`` 關聯的 :ref:`UndoRedo<class_UndoRedo>` 對象。

\ ``0`` 以上的 ``id`` 被對應到打開的場景分頁（但它與它們的順序不配對）。\ ``0`` 或更低的 ``id`` 具有特殊含義（參閱 :ref:`SpecialHistory<enum_EditorUndoRedoManager_SpecialHistory>`\ ）。

最好與 :ref:`get_object_history_id()<class_EditorUndoRedoManager_method_get_object_history_id>` 一起使用。該方法被提供，只是以防需要 :ref:`UndoRedo<class_UndoRedo>` 的一些更高級的方法的情況（但請記住，直接操作 :ref:`UndoRedo<class_UndoRedo>` 物件可能會影響編輯器的穩定性）。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_get_object_history_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_history_id**\ (\ object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_get_object_history_id>`

返回從給定的 ``object`` 推匯出的歷史 ID。它可以與 :ref:`get_history_undo_redo()<class_EditorUndoRedoManager_method_get_history_undo_redo>` 一起使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorUndoRedoManager_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_EditorUndoRedoManager_method_is_committing_action>`

如果 **EditorUndoRedoManager** 目前正在提交該動作，即運作其“做”方法或屬性更改（請參閱 :ref:`commit_action()<class_EditorUndoRedoManager_method_commit_action>`\ ）時，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
