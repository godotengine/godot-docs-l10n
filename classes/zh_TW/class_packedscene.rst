:github_url: hide

.. _class_PackedScene:

PackedScene
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

對序列化場景的抽象。

.. rst-class:: classref-introduction-group

說明
----

場景檔案的簡化介面。提供可以對場景資源本身進行的操作和檢查。

可以用來將某個節點儲存到檔案中。儲存時，會將該節點和它所擁有的所有節點一起儲存（見 :ref:`Node.owner<class_Node_property_owner>` 屬性）。

\ **注意：**\ 該節點不必自我擁有。

\ **範例：**\ 載入已儲存的場景：


.. tabs::

 .. code-tab:: gdscript

    # 如果路徑在編譯期不可知，請使用 load() 而不是 preload()。
    var scene = preload("res://scene.tscn").instantiate()
    # 將該節點新增為腳本附加節點的子節點。
    add_child(scene)

 .. code-tab:: csharp

    // C# 沒有 preload，所以你使用的永遠是 ResourceLoader.Load<PackedScene>()。
    var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
    // 將該節點新增為腳本附加節點的子節點。
    AddChild(scene);



\ **範例：**\ 儲存不同所有者的節點。下面的例子會建立 3 個物件：\ :ref:`Node2D<class_Node2D>`\ （\ ``node``\ ）、\ :ref:`RigidBody2D<class_RigidBody2D>`\ （\ ``body``\ ）、\ :ref:`CollisionObject2D<class_CollisionObject2D>`\ （\ ``collision``)）。\ ``node`` 的下一級是 ``body``\ ，再下一級是 ``collision``\ 。只有 ``body`` 被 ``node`` 擁有，因此 :ref:`pack()<class_PackedScene_method_pack>` 只會儲存兩個節點，不會儲存 ``collision``\ 。


.. tabs::

 .. code-tab:: gdscript

    # 建立物件。
    var node = Node2D.new()
    var body = RigidBody2D.new()
    var collision = CollisionShape2D.new()

    # 建立物件架構。
    body.add_child(collision)
    node.add_child(body)

    # 修改 `body` 的擁有者，但不修改 `collision` 的擁有者。
    body.owner = node
    var scene = PackedScene.new()

    # 只會打包 `node` 和 `body`。
    var result = scene.pack(node)
    if result == OK:
        var error = ResourceSaver.save(scene, "res://path/name.tscn")  # Or "user://..."
        if error != OK:
            push_error("將場景儲存到磁碟時出錯。")

 .. code-tab:: csharp

    // 建立物件。
    var node = new Node2D();
    var body = new RigidBody2D();
    var collision = new CollisionShape2D();

    // 建立物件架構。
    body.AddChild(collision);
    node.AddChild(body);

    // 修改 `body` 的擁有者，但不修改 `collision` 的擁有者。
    body.Owner = node;
    var scene = new PackedScene();

    // 只會打包 `node` 和 `body`。
    Error result = scene.Pack(node);
    if (result == Error.Ok)
    {
        Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Or "user://..."
        if (error != Error.Ok)
        {
            GD.PushError("將場景儲存到磁碟時出錯。");
        }
    }



.. rst-class:: classref-introduction-group

教學
----

- `2D 角色扮演遊戲範例 <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

方法
----

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

列舉
----

.. _enum_PackedScene_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_PackedScene_GenEditState>`

.. _class_PackedScene_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

如果傳遞給 :ref:`instantiate()<class_PackedScene_method_instantiate>`\ ，則會阻止對場景狀態的編輯。

.. _class_PackedScene_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

如果傳遞給 :ref:`instantiate()<class_PackedScene_method_instantiate>`\ ，則會向本地場景提供本地場景資源。

\ **注意：**\ 僅在編輯器建構中可用。

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

如果傳遞給 :ref:`instantiate()<class_PackedScene_method_instantiate>`\ ，則會向本地場景提供本地場景資源。只有主場景應該接收主編輯狀態。

\ **注意：**\ 僅在編輯器建構中可用。

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

與 :ref:`GEN_EDIT_STATE_MAIN<class_PackedScene_constant_GEN_EDIT_STATE_MAIN>` 類似，但適用於場景作為另一個場景的基底類別實例化的情況。

\ **注意：**\ 僅在編輯器建構中可用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PackedScene_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_can_instantiate>`

如果場景檔有節點，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_get_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_state**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_get_state>`

回傳代表場景檔案內容的 :ref:`SceneState<class_SceneState>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_instantiate:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **instantiate**\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| :ref:`🔗<class_PackedScene_method_instantiate>`

產生實體該場景的節點架構。觸發子場景的產生實體。在根節點上觸發 :ref:`Node.NOTIFICATION_SCENE_INSTANTIATED<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ path\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PackedScene_method_pack>`

將 ``path`` 節點及其所有子節點打包到該 **PackedScene** 中。所有現有資料都將被清除。請參閱 :ref:`Node.owner<class_Node_property_owner>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
