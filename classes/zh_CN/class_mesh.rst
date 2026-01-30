:github_url: hide

.. _class_Mesh:

Mesh
====

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`ArrayMesh<class_ArrayMesh>`, :ref:`ImmediateMesh<class_ImmediateMesh>`, :ref:`PlaceholderMesh<class_PlaceholderMesh>`, :ref:`PrimitiveMesh<class_PrimitiveMesh>`

一种包含基于顶点数组的几何资源。

.. rst-class:: classref-introduction-group

描述
----

网格是一种包含了基于顶点数组的几何资源。网格被分为各种\ *平面*\ ，每一个平面包含了一个完整的、单独的顶点数组和材质用来绘制它。通过明智的设计，一个由多个面组成的网格胜过单个面的，这是因为在3D编辑软件中，一个物体通常包含多种材质。每个网格的最大表面数是 :ref:`RenderingServer.MAX_MESH_SURFACES<class_RenderingServer_constant_MAX_MESH_SURFACES>`\ 。

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

   +---------------------------------+-------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`lightmap_size_hint<class_Mesh_property_lightmap_size_hint>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                                   | :ref:`_get_aabb<class_Mesh_private_method__get_aabb>`\ (\ ) |virtual| |required| |const|                                                                                            |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_get_blend_shape_count<class_Mesh_private_method__get_blend_shape_count>`\ (\ ) |virtual| |required| |const|                                                                  |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                       | :ref:`_get_blend_shape_name<class_Mesh_private_method__get_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_get_surface_count<class_Mesh_private_method__get_surface_count>`\ (\ ) |virtual| |required| |const|                                                                          |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_set_blend_shape_name<class_Mesh_private_method__set_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_array_index_len<class_Mesh_private_method__surface_get_array_index_len>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_array_len<class_Mesh_private_method__surface_get_array_len>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`_surface_get_arrays<class_Mesh_private_method__surface_get_arrays>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]    | :ref:`_surface_get_blend_shape_arrays<class_Mesh_private_method__surface_get_blend_shape_arrays>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_format<class_Mesh_private_method__surface_get_format>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                       | :ref:`_surface_get_lods<class_Mesh_private_method__surface_get_lods>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                           | :ref:`_surface_get_material<class_Mesh_private_method__surface_get_material>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_primitive_type<class_Mesh_private_method__surface_get_primitive_type>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_surface_set_material<class_Mesh_private_method__surface_set_material>`\ (\ index\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) |virtual| |required| |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`   | :ref:`create_convex_shape<class_Mesh_method_create_convex_shape>`\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`create_outline<class_Mesh_method_create_outline>`\ (\ margin\: :ref:`float<class_float>`\ ) |const|                                                                           |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                           | :ref:`create_placeholder<class_Mesh_method_create_placeholder>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`create_trimesh_shape<class_Mesh_method_create_trimesh_shape>`\ (\ ) |const|                                                                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>`                   | :ref:`generate_triangle_mesh<class_Mesh_method_generate_triangle_mesh>`\ (\ ) |const|                                                                                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                                   | :ref:`get_aabb<class_Mesh_method_get_aabb>`\ (\ ) |const|                                                                                                                           |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`       | :ref:`get_faces<class_Mesh_method_get_faces>`\ (\ ) |const|                                                                                                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_surface_count<class_Mesh_method_get_surface_count>`\ (\ ) |const|                                                                                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`surface_get_arrays<class_Mesh_method_surface_get_arrays>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]    | :ref:`surface_get_blend_shape_arrays<class_Mesh_method_surface_get_blend_shape_arrays>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                           | :ref:`surface_get_material<class_Mesh_method_surface_get_material>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`surface_set_material<class_Mesh_method_surface_set_material>`\ (\ surf_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Mesh_PrimitiveType:

.. rst-class:: classref-enumeration

enum **PrimitiveType**: :ref:`🔗<enum_Mesh_PrimitiveType>`

.. _class_Mesh_constant_PRIMITIVE_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_POINTS** = ``0``

将数组渲染为点（一个顶点对应一个点）。

.. _class_Mesh_constant_PRIMITIVE_LINES:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_LINES** = ``1``

将数组渲染为线（每两个顶点创建一条连线）。

.. _class_Mesh_constant_PRIMITIVE_LINE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_LINE_STRIP** = ``2``

将数组渲染为线条。

.. _class_Mesh_constant_PRIMITIVE_TRIANGLES:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_TRIANGLES** = ``3``

将数组渲染为三角形（每三个顶点创建一个三角形）。

.. _class_Mesh_constant_PRIMITIVE_TRIANGLE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_TRIANGLE_STRIP** = ``4``

将数组渲染为三角形条。

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayType:

.. rst-class:: classref-enumeration

enum **ArrayType**: :ref:`🔗<enum_Mesh_ArrayType>`

.. _class_Mesh_constant_ARRAY_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_VERTEX** = ``0``

顶点位置的 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 、\ :ref:`PackedVector2Array<class_PackedVector2Array>` 或 :ref:`Array<class_Array>`\ 。

.. _class_Mesh_constant_ARRAY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_NORMAL** = ``1``

顶点法线的 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。

\ **注意：**\ 数组中存放的应当是归一化的向量，否则引擎会进行归一化，但可能造成显示上的差异。

.. _class_Mesh_constant_ARRAY_TANGENT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TANGENT** = ``2``

顶点切线的 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。4 个浮点数为一组表示一个元素，前 3 个浮点数确定切线，最后一个是为 -1 或 1 的副法线方向。

.. _class_Mesh_constant_ARRAY_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_COLOR** = ``3``

顶点颜色的 :ref:`PackedColorArray<class_PackedColorArray>`\ 。

.. _class_Mesh_constant_ARRAY_TEX_UV:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TEX_UV** = ``4``

UV 坐标的 :ref:`PackedVector2Array<class_PackedVector2Array>`\ 。

.. _class_Mesh_constant_ARRAY_TEX_UV2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TEX_UV2** = ``5``

第二 UV 坐标的 :ref:`PackedVector2Array<class_PackedVector2Array>`\ 。

.. _class_Mesh_constant_ARRAY_CUSTOM0:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM0** = ``6``

包含自定义颜色通道 0。如果 ``(format >> Mesh.ARRAY_FORMAT_CUSTOM0_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` 为 :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`\ 、\ :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`\ 、\ :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>` 或 :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`\ ，则为 :ref:`PackedByteArray<class_PackedByteArray>`\ 。否则为 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

.. _class_Mesh_constant_ARRAY_CUSTOM1:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM1** = ``7``

包含自定义颜色通道 1。如果 ``(format >> Mesh.ARRAY_FORMAT_CUSTOM1_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` 为 :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`\ 、\ :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`\ 、\ :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>` 或 :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`\ ，则为 :ref:`PackedByteArray<class_PackedByteArray>`\ 。否则为 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

.. _class_Mesh_constant_ARRAY_CUSTOM2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM2** = ``8``

包含自定义颜色通道 2。如果 ``(format >> Mesh.ARRAY_FORMAT_CUSTOM2_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` 为 :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`\ 、\ :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`\ 、\ :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>` 或 :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`\ ，则为 :ref:`PackedByteArray<class_PackedByteArray>`\ 。否则为 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

.. _class_Mesh_constant_ARRAY_CUSTOM3:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM3** = ``9``

包含自定义颜色通道 3。如果 ``(format >> Mesh.ARRAY_FORMAT_CUSTOM3_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` 为 :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`\ 、\ :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`\ 、\ :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>` 或 :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`\ ，则为 :ref:`PackedByteArray<class_PackedByteArray>`\ 。否则为 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

.. _class_Mesh_constant_ARRAY_BONES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_BONES** = ``10``

骨骼索引的 :ref:`PackedFloat32Array<class_PackedFloat32Array>` 或 :ref:`PackedInt32Array<class_PackedInt32Array>`\ 。每个顶点包含 4 个还是 8 个数字取决于是否存在 :ref:`ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` 标志。

.. _class_Mesh_constant_ARRAY_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_WEIGHTS** = ``11``

骨骼权重的 :ref:`PackedFloat32Array<class_PackedFloat32Array>` 或 :ref:`PackedInt32Array<class_PackedInt32Array>`\ ，取值范围为 ``0.0`` 到 ``1.0``\ （闭区间）。每个顶点包含 4 个还是 8 个数字取决于是否存在 :ref:`ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` 标志。

.. _class_Mesh_constant_ARRAY_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_INDEX** = ``12``

整数的 :ref:`PackedInt32Array<class_PackedInt32Array>`\ ，用作引用顶点、颜色、法线、切线和纹理的索引。所有这些数组必须具有与顶点数组相同数量的元素。任何索引都不能超过顶点数组的大小。当该索引数组存在时，它会将函数置于“索引模式”，其中索引选择第 *i* 个顶点、法线、切线、颜色、UV 等。这意味着，如果想要沿着一条边有不同的法线或颜色，则必须复制这些顶点。

对于三角形，索引数组被解释为三元组，指代每个三角形的顶点。对于线条，索引数组成对表示每条线的开始和结束。

.. _class_Mesh_constant_ARRAY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_MAX** = ``13``

代表 :ref:`ArrayType<enum_Mesh_ArrayType>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayCustomFormat:

.. rst-class:: classref-enumeration

enum **ArrayCustomFormat**: :ref:`🔗<enum_Mesh_ArrayCustomFormat>`

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA8_UNORM** = ``0``

表示该自定义通道包含的是无符号归一化字节颜色，范围为 0 到 1，编码为 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA8_SNORM** = ``1``

表示该自定义通道包含的是有符号归一化字节颜色，范围为 -1 到 1，编码为 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. _class_Mesh_constant_ARRAY_CUSTOM_RG_HALF:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RG_HALF** = ``2``

表示该自定义通道包含的是半精度浮点数颜色，编码为 :ref:`PackedByteArray<class_PackedByteArray>`\ 。仅使用红、绿通道。

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA_HALF** = ``3``

表示该自定义通道包含的是半精度浮点数颜色，编码为 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. _class_Mesh_constant_ARRAY_CUSTOM_R_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_R_FLOAT** = ``4``

表示该自定义通道包含的是全精度浮点数颜色，使用 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。仅使用红色通道。

.. _class_Mesh_constant_ARRAY_CUSTOM_RG_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RG_FLOAT** = ``5``

表示该自定义通道包含的是全精度浮点数颜色，使用 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。仅使用红、绿通道。

.. _class_Mesh_constant_ARRAY_CUSTOM_RGB_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGB_FLOAT** = ``6``

表示该自定义通道包含的是全精度浮点数颜色，使用 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。仅使用红、绿、蓝通道。

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA_FLOAT** = ``7``

表示该自定义通道包含的是全精度浮点数颜色，使用 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

.. _class_Mesh_constant_ARRAY_CUSTOM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_MAX** = ``8``

代表 :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayFormat:

.. rst-class:: classref-enumeration

flags **ArrayFormat**: :ref:`🔗<enum_Mesh_ArrayFormat>`

.. _class_Mesh_constant_ARRAY_FORMAT_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_VERTEX** = ``1``

网格数组包含顶点。所有网格都需要有顶点数组，所以这应该始终存在。

.. _class_Mesh_constant_ARRAY_FORMAT_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_NORMAL** = ``2``

网格数组包含法线。

.. _class_Mesh_constant_ARRAY_FORMAT_TANGENT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TANGENT** = ``4``

网格数组包含切线。

.. _class_Mesh_constant_ARRAY_FORMAT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_COLOR** = ``8``

网格数组包含颜色。

.. _class_Mesh_constant_ARRAY_FORMAT_TEX_UV:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TEX_UV** = ``16``

网格数组包含 UV。

.. _class_Mesh_constant_ARRAY_FORMAT_TEX_UV2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TEX_UV2** = ``32``

网格数组包含第二套 UV。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM0:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM0** = ``64``

网格数组包含自定义通道索引 0。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM1:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM1** = ``128``

网格数组包含自定义通道索引 1。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM2** = ``256``

网格数组包含自定义通道索引 2。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM3:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM3** = ``512``

网格数组包含自定义通道索引 3。

.. _class_Mesh_constant_ARRAY_FORMAT_BONES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_BONES** = ``1024``

网格数组包含骨骼。

.. _class_Mesh_constant_ARRAY_FORMAT_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_WEIGHTS** = ``2048``

网格数组包含骨骼权重。

.. _class_Mesh_constant_ARRAY_FORMAT_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_INDEX** = ``4096``

网格数组使用索引。

.. _class_Mesh_constant_ARRAY_FORMAT_BLEND_SHAPE_MASK:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_BLEND_SHAPE_MASK** = ``7``

混合形状中允许使用的网格通道的掩码。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_BASE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_BASE** = ``13``

第一个自定义通道的移位量。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_BITS** = ``3``

每个自定义通道的格式位数。请参阅 :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`\ 。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM0_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM0_SHIFT** = ``13``

自定义通道索引 0 需要对 :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` 进行的按位移动量。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM1_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM1_SHIFT** = ``16``

自定义通道索引 1 需要对 :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` 进行的按位移动量。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM2_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM2_SHIFT** = ``19``

自定义通道索引 2 需要对 :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` 进行的按位移动量。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM3_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM3_SHIFT** = ``22``

自定义通道索引 3 需要对 :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` 进行的按位移动量。

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_MASK:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_MASK** = ``7``

每个自定义通道的自定义格式位掩码。必须按 SHIFT 常量之一进行移位。请参阅 :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`\ 。

.. _class_Mesh_constant_ARRAY_COMPRESS_FLAGS_BASE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_COMPRESS_FLAGS_BASE** = ``25``

第一个压缩标志的移位。压缩标志应该被传递给 :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>` 和 :ref:`SurfaceTool.commit()<class_SurfaceTool_method_commit>`\ 。

.. _class_Mesh_constant_ARRAY_FLAG_USE_2D_VERTICES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_2D_VERTICES** = ``33554432``

用于标记包含 2D 顶点的数组的标志。

.. _class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_DYNAMIC_UPDATE** = ``67108864``

用于标记网格数据将在 GLES 上使用 ``GL_DYNAMIC_DRAW`` 的标志。在 Vulkan 上不使用。

.. _class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_8_BONE_WEIGHTS** = ``134217728``

用于标记网格每个顶点最多包含 8 个骨骼影响的标志。该标志表示 :ref:`ARRAY_BONES<class_Mesh_constant_ARRAY_BONES>` 和 :ref:`ARRAY_WEIGHTS<class_Mesh_constant_ARRAY_WEIGHTS>` 元素将具有双倍长度。

.. _class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY** = ``268435456``

用于标记网格有意不包含顶点数组的标志。

.. _class_Mesh_constant_ARRAY_FLAG_COMPRESS_ATTRIBUTES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_COMPRESS_ATTRIBUTES** = ``536870912``

用于标记网格正在使用的压缩的属性（顶点、法线、切线、UV）的标志。启用这种形式的压缩后，顶点位置将被打包到 RGBA16UNORM 属性中，并在顶点着色器中进行缩放。法线和切线将被打包到表示一个轴的 RG16UNORM 中，并在顶点的 A 通道中存储一个 16 位浮点数。UV 将使用 16 位标准化浮点数而不是完整的 32 位有符号浮点数。使用该压缩模式时，必须使用顶点、法线和切线或仅使用顶点。你无法使用没有切线的法线。如果可以的话，导入器将自动启用这种压缩。

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_BlendShapeMode:

.. rst-class:: classref-enumeration

enum **BlendShapeMode**: :ref:`🔗<enum_Mesh_BlendShapeMode>`

.. _class_Mesh_constant_BLEND_SHAPE_MODE_NORMALIZED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **BLEND_SHAPE_MODE_NORMALIZED** = ``0``

混合形状是被归一化了的。

.. _class_Mesh_constant_BLEND_SHAPE_MODE_RELATIVE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **BLEND_SHAPE_MODE_RELATIVE** = ``1``

混合形状是相对于基础的权重。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Mesh_property_lightmap_size_hint:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **lightmap_size_hint** = ``Vector2i(0, 0)`` :ref:`🔗<class_Mesh_property_lightmap_size_hint>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_size_hint**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_lightmap_size_hint**\ (\ )

设置用于光照贴图分辨率的提示。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Mesh_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_aabb>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖 :ref:`AABB<class_AABB>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_blend_shape_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_blend_shape_count>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖混合形状的数量。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_blend_shape_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_blend_shape_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_blend_shape_name>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖混合形状名称的获取过程。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_surface_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_surface_count>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖表面的数量。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__set_blend_shape_name:

.. rst-class:: classref-method

|void| **_set_blend_shape_name**\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| :ref:`🔗<class_Mesh_private_method__set_blend_shape_name>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖混合形状的名称。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_array_index_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_array_index_len**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_array_index_len>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖表面数组索引的长度。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_array_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_array_len**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_array_len>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖表面数组的长度。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_surface_get_arrays**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_arrays>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖表面数组。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **_surface_get_blend_shape_arrays**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_blend_shape_arrays>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖混合形状数组。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_format**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_format>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖表面格式。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_lods:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_surface_get_lods**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_lods>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖表面 LOD。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **_surface_get_material**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_material>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖表面材质。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_primitive_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_primitive_type**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_primitive_type>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖表面图元类型。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_set_material:

.. rst-class:: classref-method

|void| **_surface_set_material**\ (\ index\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) |virtual| |required| :ref:`🔗<class_Mesh_private_method__surface_set_material>`

虚方法，能够为扩展自 **Mesh** 的自定义类覆盖索引为 ``index`` 的材质 ``material`` 的设置。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_convex_shape:

.. rst-class:: classref-method

:ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` **create_convex_shape**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Mesh_method_create_convex_shape>`

从网格计算 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`\ 。

如果 ``clean`` 为 ``true``\ （默认值），则自动移除重复顶点和内部顶点。如果不需要如此的化话，可以将其设置为 ``false`` 以加快处理速度。

如果 ``simplify`` 为 ``true``\ ，则可以进一步简化几何体以减少顶点数。默认情况下是禁用的。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_outline:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **create_outline**\ (\ margin\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Mesh_method_create_outline>`

以一定的偏移量（边距)，计算出该网格的外轮廓。

\ **注意：**\ 这个方法实际上反序返回顶点（例如输入顺时针，返回逆时针）。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Mesh_method_create_placeholder>`

创建该资源的占位符版本（\ :ref:`PlaceholderMesh<class_PlaceholderMesh>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_trimesh_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **create_trimesh_shape**\ (\ ) |const| :ref:`🔗<class_Mesh_method_create_trimesh_shape>`

从该网格计算出 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_Mesh_method_generate_triangle_mesh>`

从网格生成 :ref:`TriangleMesh<class_TriangleMesh>`\ 。仅考虑使用以下图元类型的表面：\ :ref:`PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`\ 、\ :ref:`PRIMITIVE_TRIANGLE_STRIP<class_Mesh_constant_PRIMITIVE_TRIANGLE_STRIP>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_aabb>`

返回局部空间中包围这个网格的最小 :ref:`AABB<class_AABB>`\ 。不受 ``custom_aabb`` 的影响。

\ **注意：**\ 只针对 :ref:`ArrayMesh<class_ArrayMesh>` 和 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 进行了实现。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_faces>`

返回网格中所有构成面的顶点。每三个顶点代表一个三角形。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_count**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_surface_count>`

返回 **Mesh** 中存放的表面的数量。相当于 :ref:`MeshInstance3D.get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **surface_get_arrays**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_arrays>`

返回构成请求表面的顶点、法线、UV 等数组。（见 :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **surface_get_blend_shape_arrays**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_blend_shape_arrays>`

返回请求表面的混合形状数组。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **surface_get_material**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_material>`

返回给定表面中的 :ref:`Material<class_Material>`\ 。表面是使用该材质渲染的。

\ **注意：**\ 这将返回 **Mesh** 资源中的材质，而不是与 :ref:`MeshInstance3D<class_MeshInstance3D>` 的表面材质覆盖属性关联的 :ref:`Material<class_Material>`\ 。要获取与 :ref:`MeshInstance3D<class_MeshInstance3D>` 的表面材质覆盖属性关联的 :ref:`Material<class_Material>`\ ，请改用 :ref:`MeshInstance3D.get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_set_material:

.. rst-class:: classref-method

|void| **surface_set_material**\ (\ surf_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_Mesh_method_surface_set_material>`

为给定表面设置 :ref:`Material<class_Material>`\ 。表面将使用该材质进行渲染。

\ **注意：**\ 这会分配 **Mesh** 资源中的材质，而不是与 :ref:`MeshInstance3D<class_MeshInstance3D>` 的表面材质覆盖属性关联的 :ref:`Material<class_Material>`\ 。要设置与 :ref:`MeshInstance3D<class_MeshInstance3D>` 的表面材质覆盖属性关联的 :ref:`Material<class_Material>`\ ，请改用 :ref:`MeshInstance3D.set_surface_override_material()<class_MeshInstance3D_method_set_surface_override_material>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
