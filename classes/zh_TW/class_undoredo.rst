:github_url: hide

.. _class_UndoRedo:

UndoRedo
========

**繼承：** :ref:`Object<class_Object>`

為實作復原和重做操作提供高階介面。

.. rst-class:: classref-introduction-group

說明
----

UndoRedo 的原理是在“動作”中注冊方法和屬性的變化。你可以建立一個動作，然後提供執行（do）和復原（undo）這個動作需要進行的函式呼叫和屬性更改，然後提交該動作。

動作提交後就會執行所有 ``do_*`` 方法。如果使用 :ref:`undo()<class_UndoRedo_method_undo>` 方法，那麼就會執行 ``undo_*`` 方法。如果使用 :ref:`redo()<class_UndoRedo_method_redo>` 方法，那麼就會再次執行所有 ``do_*`` 方法。

以下是新增動作的範例：


.. tabs::

 .. code-tab:: gdscript

    var undo_redo = UndoRedo.new()

    func do_something():
        pass # 在此處編寫你的程式碼。

    func undo_something():
        pass # 在此處編寫恢復“do_something()”里所做事情的程式碼。

    func _on_my_button_pressed():
        var node = get_node("MyNode2D")
        undo_redo.create_action("移動節點")
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
        // 在此處編寫你的程式碼。
    }

    public void UndoSomething()
    {
        // 在此處編寫恢復“DoSomething()”里所做事情的程式碼。
    }

    private void OnMyButtonPressed()
    {
        var node = GetNode<Node2D>("MyNode2D");
        _undoRedo.CreateAction("移動節點");
        _undoRedo.AddDoMethod(new Callable(this, MethodName.DoSomething));
        _undoRedo.AddUndoMethod(new Callable(this, MethodName.UndoSomething));
        _undoRedo.AddDoProperty(node, "position", new Vector2(100, 100));
        _undoRedo.AddUndoProperty(node, "position", node.Position);
        _undoRedo.CommitAction();
    }



呼叫 ``add_(un)do_*`` 方法之前，你需要先呼叫 :ref:`create_action()<class_UndoRedo_method_create_action>`\ 。呼叫之後則需要呼叫 :ref:`commit_action()<class_UndoRedo_method_commit_action>`\ 。

如果你不需要注冊方法，則可以將 :ref:`add_do_method()<class_UndoRedo_method_add_do_method>` 和 :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>` 省去；屬性同理。你也可以注冊多個方法/屬性。

如果你要製作 :ref:`EditorPlugin<class_EditorPlugin>`\ ，希望集成編輯器的復原歷史，請改用 :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`\ 。

如果你所注冊的不同屬性/方法之間有相互相依性，請注意預設情況下復原操作的呼叫順序和新增順序是一致的。因此請不要將 do 操作和 undo 操作寫在一起，最好還是和下面一樣 do 和 do 一起寫，undo 和 undo 一起寫。


.. tabs::

 .. code-tab:: gdscript

    undo_redo.create_action("新增物件")

    # DO
    undo_redo.add_do_method(_create_object)
    undo_redo.add_do_method(_add_object_to_singleton)

    # UNDO
    undo_redo.add_undo_method(_remove_object_from_singleton)
    undo_redo.add_undo_method(_destroy_that_object)

    undo_redo.commit_action()

 .. code-tab:: csharp

    _undo_redo.CreateAction("新增物件");

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

如果目前動作與上一個動作的名稱相同，則將兩者合併。僅保留第一個動作的“undo”操作和最後一個動作的“do”操作。適用於對單個值的連續更改。

.. _class_UndoRedo_constant_MERGE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ALL** = ``2``

如果目前動作與上一個動作的名稱相同，則將兩者合併。

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

復原/取消復原歷史中能夠儲存的最大步數。如果儲存的步數超出了這個限制，就會將最早的步驟從歷史中移除，無法再通過呼叫 :ref:`undo()<class_UndoRedo_method_undo>` 到達。小於等於 ``0`` 表示沒有限制。

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

注冊物件的參照，刪除“do”歷史時會擦除該參照。適用於“do”動作新增的物件和“undo”動作移除的物件。

刪除“do”歷史時，如果該物件為 :ref:`RefCounted<class_RefCounted>`\ ，則會解除參照。否則會執行釋放。請勿用於資源。

::

    var node = Node2D.new()
    undo_redo.create_action("新增節點")
    undo_redo.add_do_method(add_child.bind(node))
    undo_redo.add_do_reference(node)
    undo_redo.add_undo_method(remove_child.bind(node))
    undo_redo.commit_action()

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_method>`

註冊 :ref:`Callable<class_Callable>`\ ，會在復原動作時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_property>`

註冊 ``property``\ ，會在復原動作時將其值更改為 ``value``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_reference>`

注冊物件的參照，刪除“undo”歷史時會擦除該參照。適用於“undo”動作新增的物件和“do”動作移除的物件。

刪除“undo”歷史時，如果該物件為 :ref:`RefCounted<class_RefCounted>`\ ，則會解除參照。否則會執行釋放。請勿用於資源。

::

    var node = $Node2D
    undo_redo.create_action("移除節點")
    undo_redo.add_do_method(remove_child.bind(node))
    undo_redo.add_undo_method(add_child.bind(node))
    undo_redo.add_undo_reference(node)
    undo_redo.commit_action()

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_UndoRedo_method_clear_history>`

清除復原/重做歷史和相關的引用。

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

建立一個新的動作。呼叫後，請執行所有你需要的 :ref:`add_do_method()<class_UndoRedo_method_add_do_method>`\ 、\ :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>`\ 、\ :ref:`add_do_property()<class_UndoRedo_method_add_do_property>` 和 :ref:`add_undo_property()<class_UndoRedo_method_add_undo_property>` 呼叫，然後再用 :ref:`commit_action()<class_UndoRedo_method_commit_action>` 提交這個動作。

動作的合併方式由 ``merge_mode`` 決定。

動作中復原操作的順序由 ``backward_undo_ops`` 決定。\ ``backward_undo_ops`` 為 ``false`` 時，復原選項的順序和新增順序一致。也就是說，先新增的操作會先復原。

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

根據索引取得動作名稱。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_action**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_current_action>`

取得目前動作的索引。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_action_name**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_current_action_name>`

取得目前動作的名稱，等價於 ``get_action_name(get_current_action())``\ 。

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

Gets the version. Every time a new action is committed, the **UndoRedo**'s version number is increased automatically.

This is useful mostly to check if something changed from a saved version. The initial version is ``1``.

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

有“復原”動作可用時返回 ``true``\ 。

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

取消復原上一步操作。如果沒有可以取消復原的操作，則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_start_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **start_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_start_force_keep_in_merge_ends>`

標記要處理的下一個“執行”和“復原”操作，即使該動作在 :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>` 模式下與另一個動作合併。使用 :ref:`end_force_keep_in_merge_ends()<class_UndoRedo_method_end_force_keep_in_merge_ends>` 返回到正常操作。

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **undo**\ (\ ) :ref:`🔗<class_UndoRedo_method_undo>`

復原上一步操作。如果沒有可以復原的操作，則回傳 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
