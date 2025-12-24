:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMesh:

MultiMesh
=========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 GPU 实例提供单一网格的高性能多次绘制。

.. rst-class:: classref-introduction-group

描述
----

MultiMesh 提供了低级别的网格实例化功能。绘制数以千计的 :ref:`MeshInstance3D<class_MeshInstance3D>` 节点可能会很慢，因为每个对象都要提交给 GPU 然后单独绘制。

MultiMesh 要快得多，因为它可以通过一次绘制调用来绘制成千上万的实例，从而减少 API 的开销。

缺点是，如果实例之间的距离太远，性能可能会降低，因为每一个实例总是会被渲染（对于整个对象，它们在空间上被索引为一个）。

由于实例可能具有任何行为，因此用于可见性的 AABB 必须由用户提供。

\ **注意：**\ MultiMesh 是单个对象，因此适用相同的对每个对象的最大灯光限制。这意味着，一旦最大灯光被一个或多个实例消耗了，其余的 MultiMesh 实例将\ **不会**\ 接收任何光照。

\ **注意：**\ 在 MultiMesh 中使用的 Blend Shape 将被忽略。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`使用 MultiMesh 进行优化 <../tutorials/performance/using_multimesh>`

- :doc:`使用 MultiMeshInstance 动画化数千条鱼 <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`                            | :ref:`buffer<class_MultiMesh_property_buffer>`                                               | ``PackedFloat32Array()``   |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`                                | :ref:`color_array<class_MultiMesh_property_color_array>`                                     |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                                                        | :ref:`custom_aabb<class_MultiMesh_property_custom_aabb>`                                     | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`                                | :ref:`custom_data_array<class_MultiMesh_property_custom_data_array>`                         |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                                          | :ref:`instance_count<class_MultiMesh_property_instance_count>`                               | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Mesh<class_Mesh>`                                                        | :ref:`mesh<class_MultiMesh_property_mesh>`                                                   |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` | :ref:`physics_interpolation_quality<class_MultiMesh_property_physics_interpolation_quality>` | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                            | :ref:`transform_2d_array<class_MultiMesh_property_transform_2d_array>`                       |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`                            | :ref:`transform_array<class_MultiMesh_property_transform_array>`                             |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`TransformFormat<enum_MultiMesh_TransformFormat>`                         | :ref:`transform_format<class_MultiMesh_property_transform_format>`                           | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`use_colors<class_MultiMesh_property_use_colors>`                                       | ``false``                  |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`use_custom_data<class_MultiMesh_property_use_custom_data>`                             | ``false``                  |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                                          | :ref:`visible_instance_count<class_MultiMesh_property_visible_instance_count>`               | ``-1``                     |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`               | :ref:`get_aabb<class_MultiMesh_method_get_aabb>`\ (\ ) |const|                                                                                                                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`get_instance_color<class_MultiMesh_method_get_instance_color>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`get_instance_custom_data<class_MultiMesh_method_get_instance_custom_data>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_instance_transform<class_MultiMesh_method_get_instance_transform>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_instance_transform_2d<class_MultiMesh_method_get_instance_transform_2d>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`reset_instance_physics_interpolation<class_MultiMesh_method_reset_instance_physics_interpolation>`\ (\ instance\: :ref:`int<class_int>`\ )                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_buffer_interpolated<class_MultiMesh_method_set_buffer_interpolated>`\ (\ buffer_curr\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, buffer_prev\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_color<class_MultiMesh_method_set_instance_color>`\ (\ instance\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_custom_data<class_MultiMesh_method_set_instance_custom_data>`\ (\ instance\: :ref:`int<class_int>`, custom_data\: :ref:`Color<class_Color>`\ )                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_transform<class_MultiMesh_method_set_instance_transform>`\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_transform_2d<class_MultiMesh_method_set_instance_transform_2d>`\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_MultiMesh_TransformFormat:

.. rst-class:: classref-enumeration

enum **TransformFormat**: :ref:`🔗<enum_MultiMesh_TransformFormat>`

.. _class_MultiMesh_constant_TRANSFORM_2D:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **TRANSFORM_2D** = ``0``

使用 2D 变换时使用此选项。

.. _class_MultiMesh_constant_TRANSFORM_3D:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **TRANSFORM_3D** = ``1``

使用 3D 变换时使用此选项。

.. rst-class:: classref-item-separator

----

.. _enum_MultiMesh_PhysicsInterpolationQuality:

.. rst-class:: classref-enumeration

enum **PhysicsInterpolationQuality**: :ref:`🔗<enum_MultiMesh_PhysicsInterpolationQuality>`

.. _class_MultiMesh_constant_INTERP_QUALITY_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **INTERP_QUALITY_FAST** = ``0``

始终使用 Basis 线性插值，部分情况下可能产生扭曲问题。

.. _class_MultiMesh_constant_INTERP_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **INTERP_QUALITY_HIGH** = ``1``

尽可能使用 Basis 球面线性插值，否则回退至线性插值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MultiMesh_property_buffer:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **buffer** = ``PackedFloat32Array()`` :ref:`🔗<class_MultiMesh_property_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_buffer**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_buffer**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_color_array:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **color_array** :ref:`🔗<class_MultiMesh_property_color_array>`

**已弃用：** Accessing this property is very slow. Use :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>` and :ref:`get_instance_color()<class_MultiMesh_method_get_instance_color>` instead.

包含该网格所有实例使用的每种 :ref:`Color<class_Color>` 的数组。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_MultiMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

为该 MultiMesh 资源自定义 AABB。手动设置该项可以防止高昂的运行时 AABB 重新计算成本。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_custom_data_array:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **custom_data_array** :ref:`🔗<class_MultiMesh_property_custom_data_array>`

**已弃用：** Accessing this property is very slow. Use :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>` and :ref:`get_instance_custom_data()<class_MultiMesh_method_get_instance_custom_data>` instead.

包含该网格的所有实例所使用的每个自定义数据值的数组，作为 :ref:`PackedColorArray<class_PackedColorArray>`\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_instance_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_count** = ``0`` :ref:`🔗<class_MultiMesh_property_instance_count>`

.. rst-class:: classref-property-setget

- |void| **set_instance_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_count**\ (\ )

将被绘制的实例数。这会清除缓冲区，并（重新）调整其大小。之后设置的数据格式或标志将无效。

默认情况下，所有实例都会被绘制，但可以使用 :ref:`visible_instance_count<class_MultiMesh_property_visible_instance_count>` 来限制它。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MultiMesh_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

要被实例化的 :ref:`Mesh<class_Mesh>` 资源。

各个实例的外观可以通过 :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>` 和 :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>` 来修改。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_physics_interpolation_quality:

.. rst-class:: classref-property

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **physics_interpolation_quality** = ``0`` :ref:`🔗<class_MultiMesh_property_physics_interpolation_quality>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_quality**\ (\ value\: :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>`\ )
- :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **get_physics_interpolation_quality**\ (\ )

选择使用优先考虑速度还是优先考虑质量的插值方式。

如果使用的物理周期率较低（通常低于 20）或对象旋转率较高，则设为高质量的效果会更好。

\ **注意：**\ 速度优先并不意味着质量较低。除了上述特殊情况之外，其质量应与选择高质量时类似。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_2d_array:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **transform_2d_array** :ref:`🔗<class_MultiMesh_property_transform_2d_array>`

**已弃用：** Accessing this property is very slow. Use :ref:`set_instance_transform_2d()<class_MultiMesh_method_set_instance_transform_2d>` and :ref:`get_instance_transform_2d()<class_MultiMesh_method_get_instance_transform_2d>` instead.

包含该网格的所有实例所使用的每个 :ref:`Transform2D<class_Transform2D>` 值的数组，作为 :ref:`PackedVector2Array<class_PackedVector2Array>`\ 。每个变换被分为 3 个 :ref:`Vector2<class_Vector2>` 值，分别对应于变换的 ``x``\ 、\ ``y`` 和 ``origin``\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_array:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **transform_array** :ref:`🔗<class_MultiMesh_property_transform_array>`

**已弃用：** Accessing this property is very slow. Use :ref:`set_instance_transform()<class_MultiMesh_method_set_instance_transform>` and :ref:`get_instance_transform()<class_MultiMesh_method_get_instance_transform>` instead.

包含该网格的所有实例所使用的每个 :ref:`Transform3D<class_Transform3D>` 值的数组，作为 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。每个变换被分为 4 个 :ref:`Vector3<class_Vector3>` 值，分别对应于变换的 ``x``\ 、\ ``y``\ 、\ ``z`` 和 ``origin``\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_format:

.. rst-class:: classref-property

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **transform_format** = ``0`` :ref:`🔗<class_MultiMesh_property_transform_format>`

.. rst-class:: classref-property-setget

- |void| **set_transform_format**\ (\ value\: :ref:`TransformFormat<enum_MultiMesh_TransformFormat>`\ )
- :ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **get_transform_format**\ (\ )

用于变换网格的变换格式，可以是 2D 或 3D。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_use_colors:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_colors** = ``false`` :ref:`🔗<class_MultiMesh_property_use_colors>`

.. rst-class:: classref-property-setget

- |void| **set_use_colors**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_colors**\ (\ )

如果为 ``true``\ ，则该 **MultiMesh** 将使用颜色数据（参见 :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>`\ ）。只有在 :ref:`instance_count<class_MultiMesh_property_instance_count>` 为 ``0`` 或更少时才能被设置。这意味着需要在设置实例计数之前调用该方法，或者暂时将实例计数重置为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_use_custom_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_custom_data** = ``false`` :ref:`🔗<class_MultiMesh_property_use_custom_data>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_data**\ (\ )

如果为 ``true``\ ，则该 **MultiMesh** 将使用自定义数据（参见 :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>`\ ）。只有在 :ref:`instance_count<class_MultiMesh_property_instance_count>` 为 ``0`` 或更少时才能被设置。这意味着需要在设置实例计数之前调用该方法，或者暂时将实例计数重置为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_visible_instance_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **visible_instance_count** = ``-1`` :ref:`🔗<class_MultiMesh_property_visible_instance_count>`

.. rst-class:: classref-property-setget

- |void| **set_visible_instance_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_visible_instance_count**\ (\ )

限制绘制的实例数量，-1 会绘制所有的实例。改变这一点并不改变缓冲区的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MultiMesh_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_MultiMesh_method_get_aabb>`

返回局部空间中的可见性轴对齐包围框。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_instance_color**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_color>`

获取特定实例的颜色倍数。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_custom_data:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_instance_custom_data**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_custom_data>`

返回已经为特定实例设置的自定义数据。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_instance_transform**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_transform>`

返回指定实例的 :ref:`Transform3D<class_Transform3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_transform_2d:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_instance_transform_2d**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_transform_2d>`

返回指定实例的 :ref:`Transform2D<class_Transform2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_reset_instance_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_instance_physics_interpolation**\ (\ instance\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiMesh_method_reset_instance_physics_interpolation>`

使用\ *物理插值*\ 时，该函数能够让你在当前物理周期中阻止对实例进行插值。

这样你就可以让实例瞬移，通常在初始放置子弹等实例时使用，防止出现图形问题。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_buffer_interpolated:

.. rst-class:: classref-method

|void| **set_buffer_interpolated**\ (\ buffer_curr\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, buffer_prev\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MultiMesh_method_set_buffer_interpolated>`

设置 :ref:`buffer<class_MultiMesh_property_buffer>` 属性的替代做法，可以用于\ *物理插值*\ 。该方法接受两个数组，可以一次性设置当前周期和上一周期的数据。渲染器每一帧都会自动插值。

适用于实例顺序每个物理周期中都经常会改变的场合，例如粒子系统。

如果实例的顺序是连贯的，插值时还是可以用更简单的设置 :ref:`buffer<class_MultiMesh_property_buffer>` 来代替。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_color:

.. rst-class:: classref-method

|void| **set_instance_color**\ (\ instance\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_color>`

设置一个特定实例的颜色，通过\ *乘以*\ 该网格的现有顶点颜色来设置。这允许每个实例使用不同的颜色。

\ **注意：**\ 各分量在 Forward+ 和 Mobile 渲染方法中都是使用 32 位存储的，而在 Compatibility 渲染方法中则为 16 位。

要使颜色生效，请确保该 **MultiMesh** 上的 :ref:`use_colors<class_MultiMesh_property_use_colors>` 为 ``true``\ ，并且材质上的 :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` 为 ``true``\ 。如果打算设置绝对颜色而不是着色，请确保材质的反照率颜色被设置为纯白色 (``Color(1, 1, 1)``)。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_custom_data:

.. rst-class:: classref-method

|void| **set_instance_custom_data**\ (\ instance\: :ref:`int<class_int>`, custom_data\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_custom_data>`

为特定的实例设置自定义数据。\ ``custom_data`` 是一个 :ref:`Color<class_Color>` 类型，仅为了包含 4 个浮点数。

\ **注意：**\ 各个数字在 Forward+ 和 Mobile 渲染方法中都是使用 32 位存储的，而在 Compatibility 渲染方法中则为 16 位。

对于要使用的自定义数据，请确保 :ref:`use_custom_data<class_MultiMesh_property_use_custom_data>` 为 ``true``\ 。

必须使用 ``INSTANCE_CUSTOM`` 在自定义着色器中，手动访问该自定义实例数据。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_transform:

.. rst-class:: classref-method

|void| **set_instance_transform**\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_transform>`

为指定实例设置 :ref:`Transform3D<class_Transform3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_transform_2d:

.. rst-class:: classref-method

|void| **set_instance_transform_2d**\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_transform_2d>`

为指定实例设置 :ref:`Transform2D<class_Transform2D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
