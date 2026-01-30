:github_url: hide

.. _class_PackedScene:

PackedScene
===========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

对序列化场景的抽象。

.. rst-class:: classref-introduction-group

描述
----

场景文件的简化接口。提供可以对场景资源本身进行的操作和检查。

可以用来将某个节点保存到文件中。保存时，会将该节点和它所拥有的所有节点一起保存（见 :ref:`Node.owner<class_Node_property_owner>` 属性）。

\ **注意：**\ 该节点不必自我拥有。

\ **示例：**\ 加载已保存的场景：


.. tabs::

 .. code-tab:: gdscript

    # 如果路径在编译期不可知，请使用 load() 而不是 preload()。
    var scene = preload("res://scene.tscn").instantiate()
    # 将该节点添加为脚本附加节点的子节点。
    add_child(scene)

 .. code-tab:: csharp

    // C# 没有 preload，所以你使用的永远是 ResourceLoader.Load<PackedScene>()。
    var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
    // 将该节点添加为脚本附加节点的子节点。
    AddChild(scene);



\ **示例：**\ 保存不同所有者的节点。下面的例子会创建 3 个对象：\ :ref:`Node2D<class_Node2D>`\ （\ ``node``\ ）、\ :ref:`RigidBody2D<class_RigidBody2D>`\ （\ ``body``\ ）、\ :ref:`CollisionObject2D<class_CollisionObject2D>`\ （\ ``collision``)）。\ ``node`` 的下一级是 ``body``\ ，再下一级是 ``collision``\ 。只有 ``body`` 被 ``node`` 拥有，因此 :ref:`pack()<class_PackedScene_method_pack>` 只会保存两个节点，不会保存 ``collision``\ 。


.. tabs::

 .. code-tab:: gdscript

    # 创建对象。
    var node = Node2D.new()
    var body = RigidBody2D.new()
    var collision = CollisionShape2D.new()

    # 创建对象架构。
    body.add_child(collision)
    node.add_child(body)

    # 修改 `body` 的拥有者，但不修改 `collision` 的拥有者。
    body.owner = node
    var scene = PackedScene.new()

    # 只会打包 `node` 和 `body`。
    var result = scene.pack(node)
    if result == OK:
        var error = ResourceSaver.save(scene, "res://path/name.tscn")  # Or "user://..."
        if error != OK:
            push_error("将场景保存到磁盘时出错。")

 .. code-tab:: csharp

    // 创建对象。
    var node = new Node2D();
    var body = new RigidBody2D();
    var collision = new CollisionShape2D();

    // 创建对象架构。
    body.AddChild(collision);
    node.AddChild(body);

    // 修改 `body` 的拥有者，但不修改 `collision` 的拥有者。
    body.Owner = node;
    var scene = new PackedScene();

    // 只会打包 `node` 和 `body`。
    Error result = scene.Pack(node);
    if (result == Error.Ok)
    {
        Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Or "user://..."
        if (error != Error.Ok)
        {
            GD.PushError("将场景保存到磁盘时出错。");
        }
    }



.. rst-class:: classref-introduction-group

教程
----

- `2D 角色扮演游戏（RPG）演示 <https://godotengine.org/asset-library/asset/2729>`__

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

枚举
----

.. _enum_PackedScene_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_PackedScene_GenEditState>`

.. _class_PackedScene_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

如果传递给 :ref:`instantiate()<class_PackedScene_method_instantiate>`\ ，则会阻止对场景状态的编辑。

.. _class_PackedScene_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

如果传递给 :ref:`instantiate()<class_PackedScene_method_instantiate>`\ ，则会向本地场景提供本地场景资源。

\ **注意：**\ 仅在编辑器构建中可用。

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

如果传递给 :ref:`instantiate()<class_PackedScene_method_instantiate>`\ ，则会向本地场景提供本地场景资源。只有主场景应该接收主编辑状态。

\ **注意：**\ 仅在编辑器构建中可用。

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

与 :ref:`GEN_EDIT_STATE_MAIN<class_PackedScene_constant_GEN_EDIT_STATE_MAIN>` 类似，但适用于场景作为另一个场景的基类实例化的情况。

\ **注意：**\ 仅在编辑器构建中可用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PackedScene_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_can_instantiate>`

如果场景文件有节点，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_get_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_state**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_get_state>`

返回代表场景文件内容的 :ref:`SceneState<class_SceneState>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_instantiate:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **instantiate**\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| :ref:`🔗<class_PackedScene_method_instantiate>`

实例化该场景的节点架构。触发子场景的实例化。在根节点上触发 :ref:`Node.NOTIFICATION_SCENE_INSTANTIATED<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>` 通知。

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ path\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PackedScene_method_pack>`

将 ``path`` 节点及其所有子节点打包到该 **PackedScene** 中。所有现有数据都将被清除。请参阅 :ref:`Node.owner<class_Node_property_owner>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
