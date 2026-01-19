:github_url: hide

.. _class_GLTFPhysicsShape:

GLTFPhysicsShape
================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表 glTF 物理形状。

.. rst-class:: classref-introduction-group

描述
----

代表由 ``OMI_physics_shape`` 或 ``OMI_collider`` glTF 扩展定义的物理形状。这个类是 glTF 数据与 Godot 节点的中介，并且经过了抽象，支持将来添加不同 glTF 物理扩展。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

- `OMI_physics_shape glTF 扩展 <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_shape>`__

- `OMI_collider glTF 扩展 <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/Archived/OMI_collider>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`height<class_GLTFPhysicsShape_property_height>`               | ``2.0``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>` | :ref:`importer_mesh<class_GLTFPhysicsShape_property_importer_mesh>` |                      |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                 | :ref:`is_trigger<class_GLTFPhysicsShape_property_is_trigger>`       | ``false``            |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                   | :ref:`mesh_index<class_GLTFPhysicsShape_property_mesh_index>`       | ``-1``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`radius<class_GLTFPhysicsShape_property_radius>`               | ``0.5``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`             | :ref:`shape_type<class_GLTFPhysicsShape_property_shape_type>`       | ``""``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`           | :ref:`size<class_GLTFPhysicsShape_property_size>`                   | ``Vector3(1, 1, 1)`` |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_dictionary<class_GLTFPhysicsShape_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_node<class_GLTFPhysicsShape_method_from_node>`\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_resource<class_GLTFPhysicsShape_method_from_resource>`\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static|       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`to_dictionary<class_GLTFPhysicsShape_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CollisionShape3D<class_CollisionShape3D>` | :ref:`to_node<class_GLTFPhysicsShape_method_to_node>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`                   | :ref:`to_resource<class_GLTFPhysicsShape_method_to_resource>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GLTFPhysicsShape_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_GLTFPhysicsShape_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

形状的高度，单位为米。仅在形状类型为 ``"capsule"`` 或 ``"cylinder"`` 时使用。这个值不能为负数，并且对于 ``"capsule"`` 而言应当至少是半径的两倍。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_importer_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **importer_mesh** :ref:`🔗<class_GLTFPhysicsShape_property_importer_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_importer_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_importer_mesh**\ (\ )

形状的 :ref:`ImporterMesh<class_ImporterMesh>` 资源。仅在形状类型为 ``"hull"``\ （凸包）和 ``"trimesh"``\ （凹三角网格）时使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_is_trigger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_trigger** = ``false`` :ref:`🔗<class_GLTFPhysicsShape_property_is_trigger>`

.. rst-class:: classref-property-setget

- |void| **set_is_trigger**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_trigger**\ (\ )

如果为 ``true``\ ，则表示这个形状是触发器。对于 Godot 而言，这意味着该形状应当是 :ref:`Area3D<class_Area3D>` 节点的子节点。

这是 :ref:`to_node()<class_GLTFPhysicsShape_method_to_node>` 方法中唯一没有用到的变量，应该单独用来确定要将生成的节点添加到哪个节点之下。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_mesh_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh_index** = ``-1`` :ref:`🔗<class_GLTFPhysicsShape_property_mesh_index>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh_index**\ (\ )

形状网格在 glTF 文件中的索引。仅在形状类型为 ``"hull"``\ （凸包）和 ``"trimesh"``\ （凹三角网格）时使用。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_GLTFPhysicsShape_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

形状的半径，单位为米。仅在形状类型为 ``"capsule"``\ 、\ ``"cylinder"`` 或 ``"sphere"`` 时使用。这个值不应为负数。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_shape_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **shape_type** = ``""`` :ref:`🔗<class_GLTFPhysicsShape_property_shape_type>`

.. rst-class:: classref-property-setget

- |void| **set_shape_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_shape_type**\ (\ )

这个形状所代表的形状类型。有效取值有 ``"box"``\ 、\ ``"capsule"``\ 、\ ``"cylinder"``\ 、\ ``"sphere"``\ 、\ ``"hull"``\ 、\ ``"trimesh"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFPhysicsShape_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

形状的大小，单位为米。仅在碰撞体类型为 ``"box"`` 时使用，代表盒子的 ``"diameter"``\ （直径）。这个值不应为负数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GLTFPhysicsShape_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_dictionary>`

通过解析给定的 :ref:`Dictionary<class_Dictionary>` 新建 GLTFPhysicsShape 实例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_node**\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_node>`

根据给定的 Godot :ref:`CollisionShape3D<class_CollisionShape3D>` 节点新建 GLTFPhysicsShape 实例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_resource:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_resource**\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_resource>`

根据给定的 Godot :ref:`Shape3D<class_Shape3D>` 节点新建 GLTFPhysicsShape 实例。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsShape_method_to_dictionary>`

将该 GLTFPhysicsShape 实例序列化为 :ref:`Dictionary<class_Dictionary>`\ ，其格式由 ``OMI_physics_shape`` 定义。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_node:

.. rst-class:: classref-method

:ref:`CollisionShape3D<class_CollisionShape3D>` **to_node**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_node>`

将这个 GLTFPhysicsShape 实例转换为 Godot :ref:`CollisionShape3D<class_CollisionShape3D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_resource:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **to_resource**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_resource>`

将这个 GLTFPhysicsShape 实例转换为 Godot :ref:`Shape3D<class_Shape3D>` 节点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
