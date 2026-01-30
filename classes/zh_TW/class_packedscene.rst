:github_url: hide

.. _class_PackedScene:

PackedScene
===========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

對序列化場景的抽象。

.. rst-class:: classref-introduction-group

說明
----

A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.

Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see :ref:`Node.owner<class_Node_property_owner>` property).

\ **Note:** The node doesn't need to own itself.

\ **Example:** Load a saved scene:


.. tabs::

 .. code-tab:: gdscript

    # Use load() instead of preload() if the path isn't known at compile-time.
    var scene = preload("res://scene.tscn").instantiate()
    # Add the node as a child of the node the script is attached to.
    add_child(scene)

 .. code-tab:: csharp

    // C# has no preload, so you have to always use ResourceLoader.Load<PackedScene>().
    var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
    // Add the node as a child of the node the script is attached to.
    AddChild(scene);



\ **Example:** Save a node with different owners. The following example creates 3 objects: :ref:`Node2D<class_Node2D>` (``node``), :ref:`RigidBody2D<class_RigidBody2D>` (``body``) and :ref:`CollisionObject2D<class_CollisionObject2D>` (``collision``). ``collision`` is a child of ``body`` which is a child of ``node``. Only ``body`` is owned by ``node`` and :ref:`pack()<class_PackedScene_method_pack>` will therefore only save those two nodes, but not ``collision``.


.. tabs::

 .. code-tab:: gdscript

    # Create the objects.
    var node = Node2D.new()
    var body = RigidBody2D.new()
    var collision = CollisionShape2D.new()

    # Create the object hierarchy.
    body.add_child(collision)
    node.add_child(body)

    # Change owner of `body`, but not of `collision`.
    body.owner = node
    var scene = PackedScene.new()

    # Only `node` and `body` are now packed.
    var result = scene.pack(node)
    if result == OK:
        var error = ResourceSaver.save(scene, "res://path/name.tscn")  # Or "user://..."
        if error != OK:
            push_error("An error occurred while saving the scene to disk.")

 .. code-tab:: csharp

    // Create the objects.
    var node = new Node2D();
    var body = new RigidBody2D();
    var collision = new CollisionShape2D();

    // Create the object hierarchy.
    body.AddChild(collision);
    node.AddChild(body);

    // Change owner of `body`, but not of `collision`.
    body.Owner = node;
    var scene = new PackedScene();

    // Only `node` and `body` are now packed.
    Error result = scene.Pack(node);
    if (result == Error.Ok)
    {
        Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Or "user://..."
        if (error != Error.Ok)
        {
            GD.PushError("An error occurred while saving the scene to disk.");
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

Returns the :ref:`SceneState<class_SceneState>` representing the scene file contents.

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

Packs the ``path`` node, and all owned sub-nodes, into this **PackedScene**. Any existing data will be cleared. See :ref:`Node.owner<class_Node_property_owner>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
