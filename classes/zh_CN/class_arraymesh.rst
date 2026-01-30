:github_url: hide

.. _class_ArrayMesh:

ArrayMesh
=========

**继承：** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`Mesh<class_Mesh>` 网格类型，提供了用于从数组构造表面的工具。

.. rst-class:: classref-introduction-group

描述
----

**ArrayMesh** 是用来构造 :ref:`Mesh<class_Mesh>` 的，其属性指定为数组。

最基本的例子是创建单个三角形：


.. tabs::

 .. code-tab:: gdscript

    var vertices = PackedVector3Array()
    vertices.push_back(Vector3(0, 1, 0))
    vertices.push_back(Vector3(1, 0, 0))
    vertices.push_back(Vector3(0, 0, 1))

    # 初始化 ArrayMesh。
    var arr_mesh = ArrayMesh.new()
    var arrays = []
    arrays.resize(Mesh.ARRAY_MAX)
    arrays[Mesh.ARRAY_VERTEX] = vertices

    # 创建 Mesh。
    arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
    var m = MeshInstance3D.new()
    m.mesh = arr_mesh

 .. code-tab:: csharp

    Vector3[] vertices =
    [
        new Vector3(0, 1, 0),
        new Vector3(1, 0, 0),
        new Vector3(0, 0, 1),
    ];

    // 初始化 ArrayMesh。
    var arrMesh = new ArrayMesh();
    Godot.Collections.Array arrays = [];
    arrays.Resize((int)Mesh.ArrayType.Max);
    arrays[(int)Mesh.ArrayType.Vertex] = vertices;

    // 创建 Mesh。
    arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, arrays);
    var m = new MeshInstance3D();
    m.Mesh = arrMesh;



这个 :ref:`MeshInstance3D<class_MeshInstance3D>` 就可以添加到要显示的 :ref:`SceneTree<class_SceneTree>` 中了。

程序几何体生成请参阅 :ref:`ImmediateMesh<class_ImmediateMesh>`\ 、\ :ref:`MeshDataTool<class_MeshDataTool>`\ 、\ :ref:`SurfaceTool<class_SurfaceTool>`\ 。

\ **注意：**\ Godot 对三角形图元模式的正面使用顺时针\ `环绕顺序 <https://learnopengl-cn.github.io/04%20Advanced%20OpenGL/04%20Face%20culling/>`__\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 ArrayMesh 的程序化几何体 <../tutorials/3d/procedural_geometry/arraymesh>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` | :ref:`blend_shape_mode<class_ArrayMesh_property_blend_shape_mode>` | ``1``                      |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`custom_aabb<class_ArrayMesh_property_custom_aabb>`           | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`               | :ref:`shadow_mesh<class_ArrayMesh_property_shadow_mesh>`           |                            |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`add_blend_shape<class_ArrayMesh_method_add_blend_shape>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`add_surface_from_arrays<class_ArrayMesh_method_add_surface_from_arrays>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, flags\: |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] = 0\ ) |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`clear_blend_shapes<class_ArrayMesh_method_clear_blend_shapes>`\ (\ )                                                                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`clear_surfaces<class_ArrayMesh_method_clear_surfaces>`\ (\ )                                                                                                                                                                                                                                                                                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`get_blend_shape_count<class_ArrayMesh_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                     | :ref:`get_blend_shape_name<class_ArrayMesh_method_get_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                   | :ref:`lightmap_unwrap<class_ArrayMesh_method_lightmap_unwrap>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, texel_size\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                       |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`regen_normal_maps<class_ArrayMesh_method_regen_normal_maps>`\ (\ )                                                                                                                                                                                                                                                                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`set_blend_shape_name<class_ArrayMesh_method_set_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_find_by_name<class_ArrayMesh_method_surface_find_by_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_get_array_index_len<class_ArrayMesh_method_surface_get_array_index_len>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_get_array_len<class_ArrayMesh_method_surface_get_array_len>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] | :ref:`surface_get_format<class_ArrayMesh_method_surface_get_format>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`surface_get_name<class_ArrayMesh_method_surface_get_name>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`           | :ref:`surface_get_primitive_type<class_ArrayMesh_method_surface_get_primitive_type>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_remove<class_ArrayMesh_method_surface_remove>`\ (\ surf_idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_set_name<class_ArrayMesh_method_surface_set_name>`\ (\ surf_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_attribute_region<class_ArrayMesh_method_surface_update_attribute_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_skin_region<class_ArrayMesh_method_surface_update_skin_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_vertex_region<class_ArrayMesh_method_surface_update_vertex_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ArrayMesh_property_blend_shape_mode:

.. rst-class:: classref-property

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **blend_shape_mode** = ``1`` :ref:`🔗<class_ArrayMesh_property_blend_shape_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shape_mode**\ (\ value\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ )
- :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **get_blend_shape_mode**\ (\ )

混合形状模式。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_ArrayMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

用用户定义的用于使用视锥剔除的一种替代 :ref:`AABB<class_AABB>`\ 。在使用着色器偏移顶点时，避免非预期的剔除特别有用。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_property_shadow_mesh:

.. rst-class:: classref-property

:ref:`ArrayMesh<class_ArrayMesh>` **shadow_mesh** :ref:`🔗<class_ArrayMesh_property_shadow_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mesh**\ (\ value\: :ref:`ArrayMesh<class_ArrayMesh>`\ )
- :ref:`ArrayMesh<class_ArrayMesh>` **get_shadow_mesh**\ (\ )

可选网格，可用于渲染阴影和预深度阶段。可通过提供融合顶点和仅顶点位置数据（不含法线、UV、颜色等）的网格来提高性能。

\ **注意：**\ 该网格必须具有与源网格完全相同的顶点位置（包括源网格的 LOD，如果存在）。如果顶点位置不同，则网格将无法正确绘制。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ArrayMesh_method_add_blend_shape:

.. rst-class:: classref-method

|void| **add_blend_shape**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ArrayMesh_method_add_blend_shape>`

为混合形状添加名称，该形状将用 :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>` 添加。必须在添加面之前调用。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_add_surface_from_arrays:

.. rst-class:: classref-method

|void| **add_surface_from_arrays**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, flags\: |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] = 0\ ) :ref:`🔗<class_ArrayMesh_method_add_surface_from_arrays>`

创建一个新的表面。\ :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>` 将成为这个新表面的 ``surf_idx``\ 。

创建表面以使用 ``primitive`` 进行渲染，它可以是 :ref:`PrimitiveType<enum_Mesh_PrimitiveType>` 中定义的任何值。

\ ``arrays`` 参数是数组的数组。每个 :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` 元素都包含一个数组，其中包含此表面的一些网格数据，如 :ref:`ArrayType<enum_Mesh_ArrayType>` 的相应成员所描述的一样；如果它未被使用，则为 ``null``\ 。例如，\ ``arrays[0]`` 是顶点数组。始终需要第一个顶点子数组；其他的是可选的。添加索引数组会将此表面置于“索引模式”，其中顶点和其他数组成为数据源，索引数组定义顶点顺序。所有子数组的长度必须与顶点数组的长度相同（或者是顶点数组长度的精确倍数，当子数组的多个元素对应于单个顶点时）；或者为空，如果使用了 :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` 则除外。

\ ``blend_shapes`` 参数是每个混合形状的顶点数据数组。 每个元素都是与 ``arrays`` 具有相同结构的数组，但是 :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`\ 、\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` 和 :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>` 这些条目，当且仅当在 ``arrays`` 被设置且所有其他条目都是 ``null`` 时，会被设置。

\ ``lods`` 参数是一个带有 :ref:`float<class_float>` 键和 :ref:`PackedInt32Array<class_PackedInt32Array>` 值的字典。字典中的每个条目代表了表面的一个 LOD 级别，其中值是用于 LOD 级别的 :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` 数组，键大致与使用 LOD 统计信息的距离成正比。即，增加 LOD 的关键点也会增加在使用 LOD 之前对象必须与相机的距离。

\ ``flags`` 参数是根据需要按位或的：\ :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` 的一个值左移 ``ARRAY_FORMAT_CUSTOMn_SHIFT``\ ，用于每个正在使用的自定义通道，\ :ref:`Mesh.ARRAY_FLAG_USE_DYNAMIC_UPDATE<class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE>`\ 、\ :ref:`Mesh.ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` 或 :ref:`Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY<class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY>`\ 。

\ **注意：**\ 使用索引时，建议只使用点、线或三角形。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_clear_blend_shapes:

.. rst-class:: classref-method

|void| **clear_blend_shapes**\ (\ ) :ref:`🔗<class_ArrayMesh_method_clear_blend_shapes>`

移除此 **ArrayMesh** 的所有混合形状。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ArrayMesh_method_clear_surfaces>`

移除此 **ArrayMesh** 的所有表面。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_ArrayMesh_method_get_blend_shape_count>`

返回 **ArrayMesh** 持有的混合形状的数量。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_get_blend_shape_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_blend_shape_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_get_blend_shape_name>`

返回此索引处的混合形状的名称。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_lightmap_unwrap:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **lightmap_unwrap**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, texel_size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ArrayMesh_method_lightmap_unwrap>`

在 **ArrayMesh** 上执行 UV 展开，为光照贴图准备该网格。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_regen_normal_maps:

.. rst-class:: classref-method

|void| **regen_normal_maps**\ (\ ) :ref:`🔗<class_ArrayMesh_method_regen_normal_maps>`

为每个 **ArrayMesh** 的表面重新生成切线。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_set_blend_shape_name:

.. rst-class:: classref-method

|void| **set_blend_shape_name**\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ArrayMesh_method_set_blend_shape_name>`

在此索引处设置混合形状的名称。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_find_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_find_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_find_by_name>`

返回此 **ArrayMesh** 中带有此名称的第一个曲面的索引。如果没有找到，则返回 -1。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_array_index_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_get_array_index_len**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_array_index_len>`

返回所请求的面中索引数组的索引长度（参见 :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_array_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_get_array_len**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_array_len>`

返回所请求曲面中顶点数组的顶点长度（见 :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_format:

.. rst-class:: classref-method

|bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] **surface_get_format**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_format>`

返回所请求表面的格式掩码（见 :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **surface_get_name**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_name>`

获取分配给此表面的名称。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_primitive_type:

.. rst-class:: classref-method

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **surface_get_primitive_type**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_primitive_type>`

返回所请求曲面的图元类型（见 :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_remove:

.. rst-class:: classref-method

|void| **surface_remove**\ (\ surf_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_remove>`

移除 Mesh 中给定索引处的表面，将索引更大的表面向前移动一位。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_set_name:

.. rst-class:: classref-method

|void| **surface_set_name**\ (\ surf_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_set_name>`

设置给定曲面的名称。

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_attribute_region:

.. rst-class:: classref-method

|void| **surface_update_attribute_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_attribute_region>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_skin_region:

.. rst-class:: classref-method

|void| **surface_update_skin_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_skin_region>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_vertex_region:

.. rst-class:: classref-method

|void| **surface_update_vertex_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_vertex_region>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
