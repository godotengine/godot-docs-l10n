:github_url: hide

.. _class_UndoRedo:

UndoRedo
========

**繼承：** :ref:`Object<class_Object>`

為實作撤銷和重做操作提供高階介面。

.. rst-class:: classref-introduction-group

說明
----

UndoRedo works by registering methods and property changes inside "actions". You can create an action, then provide ways to do and undo this action using function calls and property changes, then commit the action.

When an action is committed, all of the ``do_*`` methods will run. If the :ref:`undo()<class_UndoRedo_method_undo>` method is used, the ``undo_*`` methods will run. If the :ref:`redo()<class_UndoRedo_method_redo>` method is used, once again, all of the ``do_*`` methods will run.

Here's an example on how to add an action:


.. tabs::

 .. code-tab:: gdscript

    var undo_redo = UndoRedo.new()

    func do_something():
        pass # Put your code here.

    func undo_something():
        pass # Put here the code that reverts what's done by "do_something()".

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
        // Put your code here.
    }

    public void UndoSomething()
    {
        // Put here the code that reverts what's done by "DoSomething()".
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



Before calling any of the ``add_(un)do_*`` methods, you need to first call :ref:`create_action()<class_UndoRedo_method_create_action>`. Afterwards you need to call :ref:`commit_action()<class_UndoRedo_method_commit_action>`.

If you don't need to register a method, you can leave :ref:`add_do_method()<class_UndoRedo_method_add_do_method>` and :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>` out; the same goes for properties. You can also register more than one method/property.

If you are making an :ref:`EditorPlugin<class_EditorPlugin>` and want to integrate into the editor's undo history, use :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>` instead.

If you are registering multiple properties/method which depend on one another, be aware that by default undo operation are called in the same order they have been added. Therefore instead of grouping do operation with their undo operations it is better to group do on one side and undo on the other as shown below.


.. tabs::

 .. code-tab:: gdscript

    undo_redo.create_action("Add object")

    # DO
    undo_redo.add_do_method(_create_object)
    undo_redo.add_do_method(_add_object_to_singleton)

    # UNDO
    undo_redo.add_undo_method(_remove_object_from_singleton)
    undo_redo.add_undo_method(_destroy_that_object)

    undo_redo.commit_action()

 .. code-tab:: csharp

    _undo_redo.CreateAction("Add object");

    // DO
    _undo_redo.AddDoMethod(new Callable(this, MethodName.CreateObject));
    _undo_redo.AddDoMethod(new Callable(this, MethodName.AddObjectToSingleton));

    // UNDO
    _undo_redo.AddUndoMethod(new Callable(this, MethodName.RemoveObjectFromSingleton));
    _undo_redo.AddUndoMethod(new Callable(this, MethodName.DestroyThatObject));

    _undo_redo.CommitAction();



.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`max_steps<class_UndoRedo_property_max_steps>` | ``0`` |
   +-----------------------+-----------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

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

訊號
----

.. _class_UndoRedo_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_UndoRedo_signal_version_changed>`

當 :ref:`undo()<class_UndoRedo_method_undo>` 或 :ref:`redo()<class_UndoRedo_method_redo>` 被呼叫時呼叫。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_UndoRedo_MergeMode:

.. rst-class:: classref-enumeration

enum **MergeMode**: :ref:`🔗<enum_UndoRedo_MergeMode>`

.. _class_UndoRedo_constant_MERGE_DISABLE:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_DISABLE** = ``0``

使“do”/“undo”操作保持在單獨的動作中。

.. _class_UndoRedo_constant_MERGE_ENDS:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ENDS** = ``1``

Merges this action with the previous one if they have the same name. Keeps only the first action's "undo" operations and the last action's "do" operations. Useful for sequential changes to a single value.

.. _class_UndoRedo_constant_MERGE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ALL** = ``2``

Merges this action with the previous one if they have the same name.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_UndoRedo_property_max_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_steps** = ``0`` :ref:`🔗<class_UndoRedo_property_max_steps>`

.. rst-class:: classref-property-setget

- |void| **set_max_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_steps**\ (\ )

The maximum number of steps that can be stored in the undo/redo history. If the number of stored steps exceeds this limit, older steps are removed from history and can no longer be reached by calling :ref:`undo()<class_UndoRedo_method_undo>`. A value of ``0`` or lower means no limit.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_UndoRedo_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_method>`

註冊 :ref:`Callable<class_Callable>`\ ，會在提交動作時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_property>`

註冊 ``property``\ ，會在提交動作時將其值更改為 ``value``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_reference>`

Register a reference to an object that will be erased if the "do" history is deleted. This is useful for objects added by the "do" action and removed by the "undo" action.

When the "do" history is deleted, if the object is a :ref:`RefCounted<class_RefCounted>`, it will be unreferenced. Otherwise, it will be freed. Do not use for resources.

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

註冊 :ref:`Callable<class_Callable>`\ ，會在撤銷動作時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_property>`

註冊 ``property``\ ，會在撤銷動作時將其值更改為 ``value``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_reference>`

Register a reference to an object that will be erased if the "undo" history is deleted. This is useful for objects added by the "undo" action and removed by the "do" action.

When the "undo" history is deleted, if the object is a :ref:`RefCounted<class_RefCounted>`, it will be unreferenced. Otherwise, it will be freed. Do not use for resources.

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

清除撤銷/重做歷史和相關的引用。

將 ``false`` 傳遞給 ``increase_version`` 將防止在清除歷史記錄時增加版本號。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_UndoRedo_method_commit_action>`

提交動作。如果 ``execute`` 為 ``true``\ （預設情況），則會在呼叫此函式時呼叫/設定所有“執行（do）”方法/屬性。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, backward_undo_ops\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_UndoRedo_method_create_action>`

Create a new action. After this is called, do all your calls to :ref:`add_do_method()<class_UndoRedo_method_add_do_method>`, :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>`, :ref:`add_do_property()<class_UndoRedo_method_add_do_property>`, and :ref:`add_undo_property()<class_UndoRedo_method_add_undo_property>`, then commit the action with :ref:`commit_action()<class_UndoRedo_method_commit_action>`.

The way actions are merged is dictated by ``merge_mode``.

The way undo operation are ordered in actions is dictated by ``backward_undo_ops``. When ``backward_undo_ops`` is ``false`` undo option are ordered in the same order they were added. Which means the first operation to be added will be the first to be undone.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_end_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **end_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_end_force_keep_in_merge_ends>`

停止將操作標記為要處理，即使該動作在 :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>` 模式下與另一個動作合併。請參閱 :ref:`start_force_keep_in_merge_ends()<class_UndoRedo_method_start_force_keep_in_merge_ends>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_name**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_UndoRedo_method_get_action_name>`

根據索引獲取動作名稱。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_action**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_current_action>`

獲取目前動作的索引。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_action_name**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_current_action_name>`

獲取目前動作的名稱，等價於 ``get_action_name(get_current_action())``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_history_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_history_count**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_history_count>`

返回歷史中有多少元素。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_version**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_version>`

獲取版本。每次提交一個新的操作，\ **UndoRedo** 的版本號都會自動增加。

這主要用於檢查保存的版本是否發生了更改。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_has_redo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_redo**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_has_redo>`

有“重做”動作可用時返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_has_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_undo**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_has_undo>`

有“撤銷”動作可用時返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_is_committing_action>`

如果 **UndoRedo** 目前正在提交動作，即運作其“do”的方法或屬性變化，則返回 ``true``\ （請參閱 :ref:`commit_action()<class_UndoRedo_method_commit_action>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_redo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **redo**\ (\ ) :ref:`🔗<class_UndoRedo_method_redo>`

重做上一個動作。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_start_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **start_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_start_force_keep_in_merge_ends>`

標記要處理的下一個“執行”和“撤銷”操作，即使該動作在 :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>` 模式下與另一個動作合併。使用 :ref:`end_force_keep_in_merge_ends()<class_UndoRedo_method_end_force_keep_in_merge_ends>` 返回到正常操作。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **undo**\ (\ ) :ref:`🔗<class_UndoRedo_method_undo>`

撤銷上一個動作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
