:github_url: hide

.. _class_MeshInstance3D:

MeshInstance3D
==============

**繼承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`SoftBody3D<class_SoftBody3D>`

網格實例與場景相結合的節點。

.. rst-class:: classref-introduction-group

說明
----

MeshInstance3D is a node that takes a :ref:`Mesh<class_Mesh>` resource and adds it to the current scenario by creating an instance of it. This is the class most often used to render 3D geometry and can be used to instance a single :ref:`Mesh<class_Mesh>` in many places. This allows reusing geometry, which can save on resources. When a :ref:`Mesh<class_Mesh>` has to be instantiated more than thousands of times at close proximity, consider using a :ref:`MultiMesh<class_MultiMesh>` in a :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>` instead.

.. rst-class:: classref-introduction-group

教學
----

- `3D 材質測試演示 <https://godotengine.org/asset-library/asset/2742>`__

- `3D 動力學角色演示 <https://godotengine.org/asset-library/asset/2739>`__

- `3D 平台跳躍示範 <https://godotengine.org/asset-library/asset/2748>`__

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------+--------------------+
   | :ref:`Mesh<class_Mesh>`         | :ref:`mesh<class_MeshInstance3D_property_mesh>`         |                    |
   +---------------------------------+---------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`skeleton<class_MeshInstance3D_property_skeleton>` | ``NodePath("..")`` |
   +---------------------------------+---------------------------------------------------------+--------------------+
   | :ref:`Skin<class_Skin>`         | :ref:`skin<class_MeshInstance3D_property_skin>`         |                    |
   +---------------------------------+---------------------------------------------------------+--------------------+

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

屬性說明
--------

.. _class_MeshInstance3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MeshInstance3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

該實例的 :ref:`Mesh<class_Mesh>` 資源。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("..")`` :ref:`🔗<class_MeshInstance3D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton_path**\ (\ )

到與此實例關聯的 :ref:`Skeleton3D<class_Skeleton3D>` 的 :ref:`NodePath<class_NodePath>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_property_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **skin** :ref:`🔗<class_MeshInstance3D_property_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

該實例要使用的 :ref:`Skin<class_Skin>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_blend_shape_mix**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_blend_shape_mix>`

Takes a snapshot from the current :ref:`ArrayMesh<class_ArrayMesh>` with all blend shapes applied according to their current weights and bakes it to the provided ``existing`` mesh. If no ``existing`` mesh is provided a new :ref:`ArrayMesh<class_ArrayMesh>` is created, baked and returned. Mesh surface materials are not copied.

\ **Performance:** :ref:`Mesh<class_Mesh>` data needs to be received from the GPU, stalling the :ref:`RenderingServer<class_RenderingServer>` in the process.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_mesh_from_current_skeleton_pose**\ (\ existing\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_bake_mesh_from_current_skeleton_pose>`

Takes a snapshot of the current animated skeleton pose of the skinned mesh and bakes it to the provided ``existing`` mesh. If no ``existing`` mesh is provided a new :ref:`ArrayMesh<class_ArrayMesh>` is created, baked, and returned. Requires a skeleton with a registered skin to work. Blendshapes are ignored. Mesh surface materials are not copied.

\ **Performance:** :ref:`Mesh<class_Mesh>` data needs to be retrieved from the GPU, stalling the :ref:`RenderingServer<class_RenderingServer>` in the process.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_convex_collision:

.. rst-class:: classref-method

|void| **create_convex_collision**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_MeshInstance3D_method_create_convex_collision>`

該助手建立一個 :ref:`StaticBody3D<class_StaticBody3D>` 子節點，該子節點具有根據網格幾何計算的 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 碰撞形狀。它主要用於測試。

如果 ``clean`` 為 ``true``\ （預設值），則重複的頂點和內部頂點會被自動移除。如果不需要，可以將其設定為 ``false``\ ，以加快處理速度。

如果 ``simplify`` 為 ``true``\ ，則該幾何體可以進一步被簡化以減少頂點的數量。預設情況下是禁用的。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_debug_tangents:

.. rst-class:: classref-method

|void| **create_debug_tangents**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_debug_tangents>`

建立 **MeshInstance3D** 子節點的輔助函式，會根據網格幾何體計算出各個頂點的小工具。主要用於測試。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_multiple_convex_collisions:

.. rst-class:: classref-method

|void| **create_multiple_convex_collisions**\ (\ settings\: :ref:`MeshConvexDecompositionSettings<class_MeshConvexDecompositionSettings>` = null\ ) :ref:`🔗<class_MeshInstance3D_method_create_multiple_convex_collisions>`

建立 :ref:`StaticBody3D<class_StaticBody3D>` 子節點的輔助函式，會根據網格幾何體使用凸分解計算出多個 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 碰撞形狀。凸分解操作可以通過可選的 ``settings`` 參數控制。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_create_trimesh_collision:

.. rst-class:: classref-method

|void| **create_trimesh_collision**\ (\ ) :ref:`🔗<class_MeshInstance3D_method_create_trimesh_collision>`

該助手建立一個 :ref:`StaticBody3D<class_StaticBody3D>` 子節點，該子節點具有一個 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 碰撞形狀，該形狀是根據網格幾何體計算出來的。它主要用於測試。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_find_blend_shape_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_blend_shape_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshInstance3D_method_find_blend_shape_by_name>`

返回具有給定 ``name`` 的混合形狀的索引。如果不存在具有該名稱的混合形狀，以及當 :ref:`mesh<class_MeshInstance3D_property_mesh>` 為 ``null`` 時，則返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_active_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_active_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_active_material>`

返回 :ref:`Mesh<class_Mesh>` 在繪製時將使用的 :ref:`Material<class_Material>`\ 。這可以返回 :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`\ 、在該 **MeshInstance3D** 中定義的表面覆蓋 :ref:`Material<class_Material>`\ 、或 :ref:`mesh<class_MeshInstance3D_property_mesh>` 中定義的表面 :ref:`Material<class_Material>`\ 。例如，如果使用 :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`\ ，則所有表面都將返回該覆蓋材質。

如果沒有材質處於活動狀態，包括當 :ref:`mesh<class_MeshInstance3D_property_mesh>` 為 ``null`` 時，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_count>`

返回可用混合形狀的數量。如果 :ref:`mesh<class_MeshInstance3D_property_mesh>` 為 ``null`` 則會報告有錯。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_blend_shape_value:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_blend_shape_value>`

返回給定 ``blend_shape_idx`` 處的混合形狀的值。如果 :ref:`mesh<class_MeshInstance3D_property_mesh>` 為 ``null``\ ，或在該索引處沒有混合形狀，則返回 ``0.0`` 並產生一個錯誤。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_skin_reference:

.. rst-class:: classref-method

:ref:`SkinReference<class_SkinReference>` **get_skin_reference**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_skin_reference>`

Returns the internal :ref:`SkinReference<class_SkinReference>` containing the skeleton's :ref:`RID<class_RID>` attached to this RID. See also :ref:`Resource.get_rid()<class_Resource_method_get_rid>`, :ref:`SkinReference.get_skeleton()<class_SkinReference_method_get_skeleton>`, and :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_override_material**\ (\ surface\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material>`

傳回 :ref:`Mesh<class_Mesh>` 資源的指定 ``surface`` 的覆寫 :ref:`Material<class_Material>`\ 。另請參閱 :ref:`get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`\ 。

\ **注意：** 這將傳回與 **MeshInstance3D** 的表面材質覆蓋屬性關聯的 :ref:`Material<class_Material>`\ ，而不是 :ref:`Mesh<class_Mesh>` 資源內的材質。若要取得 :ref:`Mesh<class_Mesh>` 資源中的材質，請使用 :ref:`Mesh.surface_get_material()<class_Mesh_method_surface_get_material>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_get_surface_override_material_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_override_material_count**\ (\ ) |const| :ref:`🔗<class_MeshInstance3D_method_get_surface_override_material_count>`

返回表面覆蓋材質的數量。相當於 :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_blend_shape_value:

.. rst-class:: classref-method

|void| **set_blend_shape_value**\ (\ blend_shape_idx\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_blend_shape_value>`

將 ``blend_shape_idx`` 處的混合形狀的值設定為 ``value``\ 。如果 :ref:`mesh<class_MeshInstance3D_property_mesh>` 為 ``null``\ ，或在該索引處沒有混合形狀，則會產生一個錯誤。

.. rst-class:: classref-item-separator

----

.. _class_MeshInstance3D_method_set_surface_override_material:

.. rst-class:: classref-method

|void| **set_surface_override_material**\ (\ surface\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshInstance3D_method_set_surface_override_material>`

Sets the override ``material`` for the specified ``surface`` of the :ref:`Mesh<class_Mesh>` resource. This material is associated with this **MeshInstance3D** rather than with :ref:`mesh<class_MeshInstance3D_property_mesh>`.

\ **Note:** This assigns the :ref:`Material<class_Material>` associated to the **MeshInstance3D**'s Surface Material Override properties, not the material within the :ref:`Mesh<class_Mesh>` resource. To set the material within the :ref:`Mesh<class_Mesh>` resource, use :ref:`Mesh.surface_set_material()<class_Mesh_method_surface_set_material>` instead.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
