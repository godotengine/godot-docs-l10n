:github_url: hide

.. _class_MeshInstance3D:

MeshInstance3D
==============

**继承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`SoftBody3D<class_SoftBody3D>`

网格实例与场景相结合的节点。

.. rst-class:: classref-introduction-group

描述
----

MeshInstance3D 节点接受 :ref:`Mesh<class_Mesh>` 资源，会为该网格创建一个实例并将该实例添加到当前的场景中。最常用于渲染 3D 几何体，可以将单个 :ref:`Mesh<class_Mesh>` 在不同的地方实例化。这样就能够实现几何体的复用，从而节省资源。如果需要在比较集中的区域内将某个 :ref:`Mesh<class_Mesh>` 实例化超过几千次，请考虑改为在 :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>` 中使用 :ref:`MultiMesh<class_MultiMesh>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `3D 材质测试演示 <https://godotengine.org/asset-library/asset/2742>`__

- `3D 动力学角色演示 <https://godotengine.org/asset-library/asset/2739>`__

- `3D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2748>`__

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`Mesh<class_Mesh>`         | :ref:`mesh<class_MeshInstance3D_property_mesh>`         |                  |
   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`skeleton<class_MeshInstance3D_property_skeleton>` | ``NodePath("")`` |
   +---------------------------------+---------------------------------------------------------+------------------+
   | :ref:`Skin<class_Skin>`         | :ref:`skin<class_MeshInstance3D_property_skin>`         |                  |
   +---------------------------------+---------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`         | :ref:`bake_mesh_from_current_blend_shape_mix<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`         | :ref:`bake_mesh_from_current_skeleton_pose<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                       |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_convex_collision<class_MeshInstance3D_method_create_convex_collision>`\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ )                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_debug_tangents<class_MeshInstance3D_method_create_debug_tangents>`\ (\ )                                                                                                                          |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_multiple_convex_collisions<class_MeshInstance3D_method_create_multiple_convex_collisions>`\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`create_trimesh_collision<class_MeshInstance3D_method_create_trimesh_collision>`\ (\ )                                                                                                                    |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`find_blend_shape_by_name<class_MeshInstance3D_method_find_blend_shape_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`           | :ref:`get_active_material<class_MeshInstance3D_method_get_active_material>`\ (\ surface\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_blend_shape_count<class_MeshInstance3D_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`get_blend_shape_value<class_MeshInstance3D_method_get_blend_shape_value>`\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkinReference<class_SkinReference>` | :ref:`get_skin_reference<class_MeshInstance3D_method_get_skin_reference>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`           | :ref:`get_surface_override_material<class_MeshInstance3D_method_get_surface_override_material>`\ (\ surface\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_surface_override_material_count<class_MeshInstance3D_method_get_surface_override_material_count>`\ (\ ) |const|                                                                                      |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_blend_shape_value<class_MeshInstance3D_method_set_blend_shape_value>`\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_surface_override_material<class_MeshInstance3D_method_set_surface_override_material>`\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                             |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MeshInstance3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

该实例的 :ref:`Mesh<class_Mesh>` 资源。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("")`` :ref:`🔗<class_MeshInstance3D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton_path**\ (\ )

指向与该实例关联的 :ref:`Skeleton3D<class_Skeleton3D>` 的 :ref:`NodePath<class_NodePath>`\ 。

\ **注意：**\ 该属性的默认值在 Godot 4.6 中已更改。如果需要旧版行为以确保兼容性，请启用 :ref:`ProjectSettings.animation/compatibility/default_parent_skeleton_in_mesh_instance_3d<class_ProjectSettings_property_animation/compatibility/default_parent_skeleton_in_mesh_instance_3d>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **skin** :ref:`🔗<class_MeshInstance3D_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

该实例要使用的 :ref:`Skin<class_Skin>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_blend_shape_mix**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`

根据当前权重从当前 :ref:`ArrayMesh<class_ArrayMesh>` 中获取所有混合形状的快照，并将其烘焙到提供的 ``existing`` 网格中。如果未提供 ``existing`` 网格，则将创建一个新的 :ref:`ArrayMesh<class_ArrayMesh>`\ ，然后烘焙并返回。不会复制网格表面材质。

\ **性能：**\ 需要从 GPU 接收 :ref:`Mesh<class_Mesh>` 数据，从而在该过程中拖延了 :ref:`RenderingServer<class_RenderingServer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_skeleton_pose**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`

对蒙皮网格的当前动画骨架姿势进行快照，将其烘焙至已有的 ``existing`` 网格。如果未提供 ``existing`` 网格，则会新建一个 :ref:`ArrayMesh<class_ArrayMesh>` 进行烘焙并返回。骨架需要注册皮肤才能正常工作。会忽略混合形状。不会复制网格表面材质。

\ **性能：**\ :ref:`Mesh<class_Mesh>` 数据需要从 GPU 获取，过程中会让 :ref:`RenderingServer<class_RenderingServer>` 产生停顿。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_convex_collision:

.. rst-class:: classref-method

|void| **create_convex_collision**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MeshInstance3D_method_create_convex_collision>`

该助手创建一个 :ref:`StaticBody3D<class_StaticBody3D>` 子节点，该子节点具有根据网格几何计算的 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 碰撞形状。它主要用于测试。

如果 ``clean`` 为 ``true``\ （默认值），则重复的顶点和内部顶点会被自动移除。如果不需要，可以将其设置为 ``false``\ ，以加快处理速度。

如果 ``simplify`` 为 ``true``\ ，则该几何体可以进一步被简化以减少顶点的数量。默认情况下是禁用的。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_debug_tangents:

.. rst-class:: classref-method

|void| **create_debug_tangents**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_debug_tangents>`

创建 **MeshInstance3D** 子节点的辅助函数，会根据网格几何体计算出各个顶点的小工具。主要用于测试。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_multiple_convex_collisions:

.. rst-class:: classref-method

|void| **create_multiple_convex_collisions**\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_create_multiple_convex_collisions>`

创建 :ref:`StaticBody3D<class_StaticBody3D>` 子节点的辅助函数，会根据网格几何体使用凸分解计算出多个 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 碰撞形状。凸分解操作可以通过可选的 ``settings`` 参数控制。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_trimesh_collision:

.. rst-class:: classref-method

|void| **create_trimesh_collision**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_trimesh_collision>`

该助手创建一个 :ref:`StaticBody3D<class_StaticBody3D>` 子节点，该子节点具有一个 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 碰撞形状，该形状是根据网格几何体计算出来的。它主要用于测试。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_find_blend_shape_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_blend_shape_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshInstance3D_method_find_blend_shape_by_name>`

返回具有给定 ``name`` 的混合形状的索引。如果不存在具有该名称的混合形状，以及当 :ref:`mesh<class_MeshInstance3D_property_mesh>` 为 ``null`` 时，则返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_active_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_active_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_active_material>`

返回 :ref:`Mesh<class_Mesh>` 在绘制时将使用的 :ref:`Material<class_Material>`\ 。这可以返回 :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`\ 、在该 **MeshInstance3D** 中定义的表面覆盖 :ref:`Material<class_Material>` 或 :ref:`mesh<class_MeshInstance3D_property_mesh>` 中定义的表面 :ref:`Material<class_Material>`\ 。例如，如果使用 :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`\ ，则所有表面都将返回该覆盖材质。

如果没有材质处于活动状态，包括当 :ref:`mesh<class_MeshInstance3D_property_mesh>` 为 ``null`` 时，则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_count>`

返回可用混合形状的数量。如果 :ref:`mesh<class_MeshInstance3D_property_mesh>` 为 ``null`` 则会报错。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_value:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_value>`

返回给定 ``blend_shape_idx`` 处的混合形状的值。如果 :ref:`mesh<class_MeshInstance3D_property_mesh>` 为 ``null``\ ，或在该索引处没有混合形状，则返回 ``0.0`` 并产生一个错误。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_skin_reference:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **get_skin_reference**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_skin_reference>`

返回包含附加到该 RID 的骨架的 :ref:`RID<class_RID>` 的内部 :ref:`SkinReference<class_SkinReference>`\ 。另见 :ref:`Resource.get_rid()<class_Resource_method_get_rid>`\ 、\ :ref:`SkinReference.get_skeleton()<class_SkinReference_method_get_skeleton>` 和 :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_override_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material>`

返回 :ref:`Mesh<class_Mesh>` 资源的指定 ``surface`` 的覆盖 :ref:`Material<class_Material>`\ 。另见 :ref:`get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`\ 。

\ **注意：**\ 这将返回与 **MeshInstance3D** 的表面材质覆盖属性关联的 :ref:`Material<class_Material>`\ ，而不是 :ref:`Mesh<class_Mesh>` 资源内的材质。要获取 :ref:`Mesh<class_Mesh>` 资源中的材质，请改用 :ref:`Mesh.surface_get_material()<class_Mesh_method_surface_get_material>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_override_material_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material_count>`

返回表面覆盖材质的数量。相当于 :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>`\ 。另见 :ref:`get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_blend_shape_value:

.. rst-class:: classref-method

|void| **set_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_blend_shape_value>`

将 ``blend_shape_idx`` 处的混合形状的值设置为 ``value``\ 。如果 :ref:`mesh<class_MeshInstance3D_property_mesh>` 为 ``null``\ ，或在该索引处没有混合形状，则会产生一个错误。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_surface_override_material:

.. rst-class:: classref-method

|void| **set_surface_override_material**\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_surface_override_material>`

设置 :ref:`Mesh<class_Mesh>` 资源的指定 ``surface`` 的覆盖 ``material``\ 。该材质与该 **MeshInstance3D** 关联，而不是与 :ref:`mesh<class_MeshInstance3D_property_mesh>` 关联。

\ **注意：**\ 这将分配与 **MeshInstance3D** 的表面材质覆盖属性关联的 :ref:`Material<class_Material>`\ ，而不是 :ref:`Mesh<class_Mesh>` 资源内的材质。要在 :ref:`Mesh<class_Mesh>` 资源中设置材质，请改用 :ref:`Mesh.surface_set_material()<class_Mesh_method_surface_set_material>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
