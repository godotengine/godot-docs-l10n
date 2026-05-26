:github_url: hide

.. _class_ImporterMesh:

ImporterMesh
============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在导入过程中，包含基于顶点数组的几何体的 :ref:`Resource<class_Resource>`\ 。

.. rst-class:: classref-introduction-group

描述
----

ImporterMesh is a type of :ref:`Resource<class_Resource>` analogous to :ref:`ArrayMesh<class_ArrayMesh>`. It contains vertex array-based geometry, divided in *surfaces*. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.

Unlike its runtime counterpart, **ImporterMesh** contains mesh data before various import steps, such as LOD and shadow mesh generation, have taken place. Modify surface data by calling :ref:`clear()<class_ImporterMesh_method_clear>`, followed by :ref:`add_surface()<class_ImporterMesh_method_add_surface>` for each surface.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_blend_shape<class_ImporterMesh_method_add_blend_shape>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_surface<class_ImporterMesh_method_add_surface>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, material\: :ref:`Material<class_Material>` = null, name\: :ref:`String<class_String>` = "", flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_ImporterMesh_method_clear>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`         | :ref:`from_mesh<class_ImporterMesh_method_from_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) |static|                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`generate_lods<class_ImporterMesh_method_generate_lods>`\ (\ normal_merge_angle\: :ref:`float<class_float>`, normal_split_angle\: :ref:`float<class_float>`, bone_transform_array\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_blend_shape_count<class_ImporterMesh_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` | :ref:`get_blend_shape_mode<class_ImporterMesh_method_get_blend_shape_mode>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_blend_shape_name<class_ImporterMesh_method_get_blend_shape_name>`\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                 | :ref:`get_lightmap_size_hint<class_ImporterMesh_method_get_lightmap_size_hint>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`               | :ref:`get_mesh<class_ImporterMesh_method_get_mesh>`\ (\ base_mesh\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                                                                                                                                                                                                                                                                                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                       | :ref:`get_surface_arrays<class_ImporterMesh_method_get_surface_arrays>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                       | :ref:`get_surface_blend_shape_arrays<class_ImporterMesh_method_get_surface_blend_shape_arrays>`\ (\ surface_idx\: :ref:`int<class_int>`, blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_count<class_ImporterMesh_method_get_surface_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_format<class_ImporterMesh_method_get_surface_format>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_lod_count<class_ImporterMesh_method_get_surface_lod_count>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_surface_lod_indices<class_ImporterMesh_method_get_surface_lod_indices>`\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_surface_lod_size<class_ImporterMesh_method_get_surface_lod_size>`\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                 | :ref:`get_surface_material<class_ImporterMesh_method_get_surface_material>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_surface_name<class_ImporterMesh_method_get_surface_name>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`   | :ref:`get_surface_primitive_type<class_ImporterMesh_method_get_surface_primitive_type>`\ (\ surface_idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`         | :ref:`merge_importer_meshes<class_ImporterMesh_method_merge_importer_meshes>`\ (\ importer_meshes\: :ref:`Array<class_Array>`\[:ref:`ImporterMesh<class_ImporterMesh>`\], relative_transforms\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], deduplicate_surfaces\: :ref:`bool<class_bool>` = true\ ) |static|                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_blend_shape_mode<class_ImporterMesh_method_set_blend_shape_mode>`\ (\ mode\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ )                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_lightmap_size_hint<class_ImporterMesh_method_set_lightmap_size_hint>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_surface_material<class_ImporterMesh_method_set_surface_material>`\ (\ surface_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_surface_name<class_ImporterMesh_method_set_surface_name>`\ (\ surface_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ImporterMesh_method_add_blend_shape:

.. rst-class:: classref-method

|void| **add_blend_shape**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ImporterMesh_method_add_blend_shape>`

为将使用 :ref:`add_surface()<class_ImporterMesh_method_add_surface>` 添加的混合形状添加名称。必须在表面被添加之前调用。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_add_surface:

.. rst-class:: classref-method

|void| **add_surface**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, material\: :ref:`Material<class_Material>` = null, name\: :ref:`String<class_String>` = "", flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ImporterMesh_method_add_surface>`

创建一个新的表面。\ :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>` 将成为这个新表面的 ``surf_idx``\ 。

创建表面以使用 ``primitive`` 进行渲染，它可以是 :ref:`PrimitiveType<enum_Mesh_PrimitiveType>` 中定义的任何值。

\ ``arrays`` 参数是数组的数组。每个 :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` 元素都包含一个数组，其中包含此表面的一些网格数据，如 :ref:`ArrayType<enum_Mesh_ArrayType>` 的相应成员所描述的一样；如果它未被使用，则为 ``null``\ 。例如，\ ``arrays[0]`` 是顶点数组。始终需要第一个顶点子数组；其他的是可选的。添加索引数组会将此表面置于“索引模式”，其中顶点和其他数组成为数据源，索引数组定义顶点顺序。所有子数组的长度必须与顶点数组的长度相同（或者是顶点数组长度的精确倍数，当子数组的多个元素对应于单个顶点时）；或者为空，如果使用了 :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` 则除外。

\ ``blend_shapes`` 参数是每个混合形状的顶点数据数组。 每个元素都是与 ``arrays`` 具有相同结构的数组，但是 :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`\ 、\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` 和 :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>` 这些条目，当且仅当在 ``arrays`` 被设置且所有其他条目都是 ``null`` 时，会被设置。

\ ``lods`` 参数是一个带有 :ref:`float<class_float>` 键和 :ref:`PackedInt32Array<class_PackedInt32Array>` 值的字典。字典中的每个条目代表了表面的一个 LOD 级别，其中值是用于 LOD 级别的 :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` 数组，键大致与使用 LOD 统计信息的距离成正比。即，增加 LOD 的关键点也会增加在使用 LOD 之前对象必须与相机的距离。

\ ``flags`` 参数是根据需要按位或的：\ :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` 的一个值左移 ``ARRAY_FORMAT_CUSTOMn_SHIFT``\ ，用于每个正在使用的自定义通道，\ :ref:`Mesh.ARRAY_FLAG_USE_DYNAMIC_UPDATE<class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE>`\ 、\ :ref:`Mesh.ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` 或 :ref:`Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY<class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY>`\ 。

\ **注意：**\ 使用索引时，建议只使用点、线或三角形。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ImporterMesh_method_clear>`

从该 **ImporterMesh** 中，移除所有表面和混合形状。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_from_mesh:

.. rst-class:: classref-method

:ref:`ImporterMesh<class_ImporterMesh>` **from_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) |static| :ref:`🔗<class_ImporterMesh_method_from_mesh>`

通过将给定 :ref:`Mesh<class_Mesh>` 的所有表面、混合形状、材质和元数据复制到一个新的 **ImporterMesh** 对象中，将其转换为 **ImporterMesh** 对象。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_generate_lods:

.. rst-class:: classref-method

|void| **generate_lods**\ (\ normal_merge_angle\: :ref:`float<class_float>`, normal_split_angle\: :ref:`float<class_float>`, bone_transform_array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_ImporterMesh_method_generate_lods>`

为这个 ImporterMesh 生成所有 LOD。

\ ``normal_merge_angle`` 和 ``normal_split_angle`` 以度为单位，用法与 ``lods`` 的导入器设置相同。

\ ``normal_split_angle`` 未使用，仅为兼容旧版本 API 而保留。

生成的 LOD 的数量可以使用 :ref:`get_surface_lod_count()<class_ImporterMesh_method_get_surface_lod_count>` 访问，每个 LOD 在 :ref:`get_surface_lod_size()<class_ImporterMesh_method_get_surface_lod_size>` 和 :ref:`get_surface_lod_indices()<class_ImporterMesh_method_get_surface_lod_indices>` 中可用。

\ ``bone_transform_array`` 是一个 :ref:`Array<class_Array>`\ ，可以是空的，也可以包含 :ref:`Transform3D<class_Transform3D>`\ ，每个网格的骨骼 ID 在生成 LOD 网格变化时将应用网格蒙皮。这通常用于解释网格本身与其蒙皮数据之间的缩放差异。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_count>`

返回该网格包含的混合形状的数量。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_mode:

.. rst-class:: classref-method

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **get_blend_shape_mode**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_mode>`

返回该网格的混合形状模式。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_blend_shape_name**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_name>`

返回此索引处的混合形状的名称。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_lightmap_size_hint:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_lightmap_size_hint**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_lightmap_size_hint>`

返回该网格的大小提示，用于在 UV 空间中展开光照贴图。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_mesh**\ (\ base_mesh\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_ImporterMesh_method_get_mesh>`

将该 **ImporterMesh** 表示的网格数据作为一个可用的 :ref:`ArrayMesh<class_ArrayMesh>` 返回。

这个方法缓存了返回的网格，后续的调用将返回缓存的数据，直到 :ref:`clear()<class_ImporterMesh_method_clear>` 被调用。

如果还没有缓存并且提供了 ``base_mesh``\ ，则 ``base_mesh`` 将被使用并被改变。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_surface_arrays**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_arrays>`

返回构成请求表面的顶点、法线、UV 等的数组。参见 :ref:`add_surface()<class_ImporterMesh_method_add_surface>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_surface_blend_shape_arrays**\ (\ surface_idx\: :ref:`int<class_int>`, blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_blend_shape_arrays>`

为一个表面请求的混合形状索引，返回一组混合形状数组。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_count**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_count>`

返回该网格拥有的表面数。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_format**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_format>`

返回该网格拥有的表面的格式。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_lod_count**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_count>`

返回该网格在给定表面上保留的 lod 数。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_surface_lod_indices**\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_indices>`

返回表面的 lod 的索引缓冲区。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_surface_lod_size**\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_size>`

返回为一个表面激活 lod 的屏幕比率。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_material**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_material>`

返回给定面的 :ref:`Material<class_Material>` 材质。面将由该材质来渲染。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_surface_name**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_name>`

获取分配给此表面的名称。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_primitive_type:

.. rst-class:: classref-method

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **get_surface_primitive_type**\ (\ surface_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImporterMesh_method_get_surface_primitive_type>`

返回所请求表面的基元类型（参见 :ref:`add_surface()<class_ImporterMesh_method_add_surface>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_merge_importer_meshes:

.. rst-class:: classref-method

:ref:`ImporterMesh<class_ImporterMesh>` **merge_importer_meshes**\ (\ importer_meshes\: :ref:`Array<class_Array>`\[:ref:`ImporterMesh<class_ImporterMesh>`\], relative_transforms\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], deduplicate_surfaces\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_ImporterMesh_method_merge_importer_meshes>`

Merges multiple **ImporterMesh**\ es into a single **ImporterMesh**. Each input mesh is transformed by the corresponding :ref:`Transform3D<class_Transform3D>` in the ``relative_transforms`` array, which must be the same size as ``importer_meshes``. Negative scales are supported, and the winding order in the mesh data will be corrected to account for this.

If ``deduplicate_surfaces`` is ``true`` and multiple meshes have surfaces with the same names and formats, the surfaces will be merged together when the meshes are merged, and will use the material from the first matching surface. This is useful for reducing the number of surfaces in the resulting mesh, and avoids duplicating materials. Surfaces with bone weights will never be deduplicated. If ``deduplicate_surfaces`` is ``false``, the surfaces will always be kept separate, and will be given unique names.

\ **Warning:** Blend shapes and LODs are not supported and will be discarded. Do not use this function to discard blend shapes and LODs, as support for these may be added in the future.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_blend_shape_mode:

.. rst-class:: classref-method

|void| **set_blend_shape_mode**\ (\ mode\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ ) :ref:`🔗<class_ImporterMesh_method_set_blend_shape_mode>`

设置混合形状模式。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_lightmap_size_hint:

.. rst-class:: classref-method

|void| **set_lightmap_size_hint**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImporterMesh_method_set_lightmap_size_hint>`

设置该网格的大小提示，以便在 UV 空间中展开光照贴图。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_surface_material:

.. rst-class:: classref-method

|void| **set_surface_material**\ (\ surface_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_ImporterMesh_method_set_surface_material>`

设置给定面的 :ref:`Material<class_Material>` 材质。该面将会使用此材质渲染。

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_surface_name:

.. rst-class:: classref-method

|void| **set_surface_name**\ (\ surface_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ImporterMesh_method_set_surface_name>`

设置给定曲面的名称。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
