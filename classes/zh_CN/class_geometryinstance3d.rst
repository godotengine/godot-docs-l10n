:github_url: hide

.. _class_GeometryInstance3D:

GeometryInstance3D
==================

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`CPUParticles3D<class_CPUParticles3D>`, :ref:`CSGShape3D<class_CSGShape3D>`, :ref:`GPUParticles3D<class_GPUParticles3D>`, :ref:`Label3D<class_Label3D>`, :ref:`MeshInstance3D<class_MeshInstance3D>`, :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`, :ref:`SpriteBase3D<class_SpriteBase3D>`

基于几何图形的视觉实例的基础节点。

.. rst-class:: classref-introduction-group

描述
----

基于几何图形的视觉实例的基础节点。分享一些共同的机制，如可见性和自定义材质。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`可见范围（HLOD） <../tutorials/3d/visibility_ranges>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>`       | :ref:`cast_shadow<class_GeometryInstance3D_property_cast_shadow>`                                     | ``1``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                                                         | :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>`                                     | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>`                         | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`                     | :ref:`gi_lightmap_scale<class_GeometryInstance3D_property_gi_lightmap_scale>`                         | ``0``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`             | ``1.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`GIMode<enum_GeometryInstance3D_GIMode>`                                   | :ref:`gi_mode<class_GeometryInstance3D_property_gi_mode>`                                             | ``1``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                         | :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>`           | ``false``                  |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`lod_bias<class_GeometryInstance3D_property_lod_bias>`                                           | ``1.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>`                                                 | :ref:`material_overlay<class_GeometryInstance3D_property_material_overlay>`                           |                            |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>`                                                 | :ref:`material_override<class_GeometryInstance3D_property_material_override>`                         |                            |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`transparency<class_GeometryInstance3D_property_transparency>`                                   | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>`               | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`                   | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`     | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` | :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>`       | ``0``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_instance_shader_parameter<class_GeometryInstance3D_method_get_instance_shader_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_instance_shader_parameter<class_GeometryInstance3D_method_set_instance_shader_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GeometryInstance3D_ShadowCastingSetting:

.. rst-class:: classref-enumeration

enum **ShadowCastingSetting**: :ref:`🔗<enum_GeometryInstance3D_ShadowCastingSetting>`

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_OFF** = ``0``

不会投射任何阴影。使用该选项，可提高不太可能投射明显阴影的小型几何体（例如碎片）的性能。

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_ON:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_ON** = ``1``

将从 GeometryInstance3D 中的所有可见面投射阴影。

将考虑剔除，因此在阴影投射时，不会考虑那些不会被渲染的面。

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_DOUBLE_SIDED** = ``2``

将从 GeometryInstance3D 中的所有可见面投射阴影。

不会考虑剔除，因此在阴影投射时，将考虑所有面。

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_SHADOWS_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_SHADOWS_ONLY** = ``3``

只显示从这个物体投射出来的阴影。

换句话说，实际的网格将不可见，只有网格投影可见。

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_GIMode:

.. rst-class:: classref-enumeration

enum **GIMode**: :ref:`🔗<enum_GeometryInstance3D_GIMode>`

.. _class_GeometryInstance3D_constant_GI_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DISABLED** = ``0``

禁用全局照明模式。用于对全局照明没有贡献的动态对象（例如角色）。使用 :ref:`VoxelGI<class_VoxelGI>` 和 SDFGI 时，几何体将\ *接收*\ 间接照明和反射，但在 GI 烘焙中不会考虑几何体。

.. _class_GeometryInstance3D_constant_GI_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_STATIC** = ``1``

烘焙全局照明模式。用于有助于全局照明的静态对象（例如关卡几何体）。该 GI 模式在使用 :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI 和 :ref:`LightmapGI<class_LightmapGI>` 时有效。

.. _class_GeometryInstance3D_constant_GI_MODE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DYNAMIC** = ``2``

动态全局照明模式。用于有助于全局照明的动态对象。这种 GI 模式只有在使用 :ref:`VoxelGI<class_VoxelGI>` 时才有效，但它对性能的影响，比 :ref:`GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` 更高。当使用其他 GI 方法时，它的作用与 :ref:`GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>` 相同。使用 :ref:`LightmapGI<class_LightmapGI>` 时，对象将使用光照贴图探针接收间接光照，而不是使用烘焙的光照贴图纹理。

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_LightmapScale:

.. rst-class:: classref-enumeration

enum **LightmapScale**: :ref:`🔗<enum_GeometryInstance3D_LightmapScale>`

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_1X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_1X** = ``0``

**已弃用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

使用 :ref:`LightmapGI<class_LightmapGI>` 进行光照贴图的标准纹素密度。

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_2X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_2X** = ``1``

**已弃用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

使用 :ref:`LightmapGI<class_LightmapGI>` 进行光照贴图时，将纹素密度乘以 2 倍。为确保纹素密度的一致性，请在按 1.5 到 3.0 之间的系数缩放网格时，使用该选项。

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_4X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_4X** = ``2``

**已弃用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

使用 :ref:`LightmapGI<class_LightmapGI>` 进行光照贴图时，将纹素密度乘以 4 倍。为确保纹素密度的一致性，请在按 3.0 到 6.0 之间的系数缩放网格时，使用该选项。

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_8X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_8X** = ``3``

**已弃用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

使用 :ref:`LightmapGI<class_LightmapGI>` 进行光照贴图时，将纹素密度乘以 8 倍。为确保纹素密度的一致性，请在以大于 6.0 的系数缩放网格时，使用该选项。

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_MAX** = ``4``

**已弃用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

代表 :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_VisibilityRangeFadeMode:

.. rst-class:: classref-enumeration

enum **VisibilityRangeFadeMode**: :ref:`🔗<enum_GeometryInstance3D_VisibilityRangeFadeMode>`

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DISABLED** = ``0``

不会自行淡化，也不会淡化其可见性依赖项，而是使用滞后。这是手动 LOD 的最快方法，但它可能会导致明显的 LOD 过渡，具体取决于 LOD 网格的创作方式。有关更多信息，请参阅 :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 和 :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`\ 。

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_SELF** = ``1``

当达到自身可见范围的极限时，会自行淡出。这比 :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` 慢，但它可以提供更平滑的过渡。淡出范围由 :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` 和 :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>` 决定。

\ **注意：**\ 仅支持使用 Forward+ 渲染方法。使用 Mobile 或 Compatibility 渲染方法时，该模式与 :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` 类似，但会禁用迟滞。

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DEPENDENCIES** = ``2``

当达到其自身可见性范围的限制时，将淡入其可见性依赖项（见 :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`\ ）。这比 :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` 慢，但它可以提供更平滑的过渡。淡出范围由 :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` 和 :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>` 决定。

\ **注意：**\ 仅支持使用 Forward+ 渲染方法。使用 Mobile 或 Compatibility 渲染方法时，该模式与 :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` 类似，但会禁用迟滞。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GeometryInstance3D_property_cast_shadow:

.. rst-class:: classref-property

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **cast_shadow** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_cast_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_cast_shadows_setting**\ (\ value\: :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>`\ )
- :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **get_cast_shadows_setting**\ (\ )

所选的阴影投射标志。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_GeometryInstance3D_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

使用自定义边界框覆盖该节点的边界框。骨架使用 :ref:`MeshInstance3D<class_MeshInstance3D>` 时可以避免重新计算 :ref:`AABB<class_AABB>` 节省性能，也可以用来对 :ref:`MeshInstance3D<class_MeshInstance3D>` 的边界框进行精确控制。要使用默认的 AABB，请将其设为所有字段均为 ``0.0`` 的 :ref:`AABB<class_AABB>`\ 。要避免视锥剔除，请将 :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` 设为大到能够覆盖整个游戏世界的 AABB，例如 ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``\ 。要禁用所有形式的剔除（包括遮挡剔除），请使用该 **GeometryInstance3D** 的 :ref:`RID<class_RID>` 调用 :ref:`RenderingServer.instance_set_ignore_culling()<class_RenderingServer_method_instance_set_ignore_culling>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_extra_cull_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **extra_cull_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_extra_cull_margin>`

.. rst-class:: classref-property-setget

- |void| **set_extra_cull_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_extra_cull_margin**\ (\ )

添加到 GeometryInstance3D 的边界框（\ :ref:`AABB<class_AABB>`\ ），以增加其剔除框的额外距离。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_scale:

.. rst-class:: classref-property

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **gi_lightmap_scale** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_scale**\ (\ value\: :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`\ )
- :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **get_lightmap_scale**\ (\ )

**已弃用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

:ref:`LightmapGI<class_LightmapGI>` 进行光照贴图时使用的纹素密度。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gi_lightmap_texel_scale** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lightmap_texel_scale**\ (\ )

:ref:`LightmapGI<class_LightmapGI>` 中用于光照贴图的纹素密度。较大的缩放值可在光照贴图中提供更高的分辨率，如果灯光同时烘焙了直接光和间接光，阴影就会更加锐利。不过较大的缩放值也会增加网格在光照贴图纹理中占用的空间，导致所需内存、存储空间、烘焙时间的增加。在不同缩放下使用同一个网格时，请考虑调整该值，让光照贴图纹素密度在不同网格之间保持一致。

例如，将 :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` 翻倍会让物体的光照贴图纹理\ *在每个方向上*\ 的分辨率都翻倍，导致纹素数量\ *变为原来的四倍*\ 。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_mode:

.. rst-class:: classref-property

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **gi_mode** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_gi_mode>`

.. rst-class:: classref-property-setget

- |void| **set_gi_mode**\ (\ value\: :ref:`GIMode<enum_GeometryInstance3D_GIMode>`\ )
- :ref:`GIMode<enum_GeometryInstance3D_GIMode>` **get_gi_mode**\ (\ )

用于整个几何体的全局照明模式。为避免结果不一致，请在游戏过程中，使用与网格用途相匹配的模式（静态/动态）。

\ **注意：**\ 灯光的烘焙模式，也会影响全局照明渲染。请参阅 :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_ignore_occlusion_culling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_occlusion_culling** = ``false`` :ref:`🔗<class_GeometryInstance3D_property_ignore_occlusion_culling>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_occlusion_culling**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_occlusion_culling**\ (\ )

如果为 ``true``\ ，则禁用这个实例的遮挡剔除。可用于即便开启遮挡剔除也必须渲染的小工具。

\ **注意：**\ :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>` 不会影响视锥剔除（对象因为相机的角度而不可见时触发）。要避免视锥剔除，请将 :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` 设置为很大的 AABB，覆盖住整个游戏世界，例如 ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

改变网格过渡到较低细节级别的速度。值为 0 将强制网格达到最低细节级别，值为 1 将使用默认设置，更大的值将使网格在更远的距离处保持更高的细节级别。

对于测试编辑器中的细节级别的过渡很有用。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_overlay:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_overlay** :ref:`🔗<class_GeometryInstance3D_property_material_overlay>`

.. rst-class:: classref-property-setget

- |void| **set_material_overlay**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_overlay**\ (\ )

整个几何体的材质覆盖层。

如果一个材质被分配给这个属性，它将会被渲染在所有表面的任何其他活动材质之上。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_override:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_override** :ref:`🔗<class_GeometryInstance3D_property_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_material_override**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_override**\ (\ )

整个几何体的材质覆盖。

如果一个材质被分配给这个属性，它将会被用来代替在网格的任何材质槽中设置的任何材质。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_transparency:

.. rst-class:: classref-property

:ref:`float<class_float>` **transparency** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_transparency>`

.. rst-class:: classref-property-setget

- |void| **set_transparency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_transparency**\ (\ )

应用于整个几何体的透明度（作为材质现有透明度的乘数）。\ ``0.0`` 是完全不透明的，而 ``1.0`` 是完全透明的。大于 ``0.0``\ （不含）的值将强制几何体的材质通过透明管道，这会导致渲染速度变慢，并且可能会因不正确的透明度排序而出现渲染问题。但是，与使用透明材质不同的是，将 :ref:`transparency<class_GeometryInstance3D_property_transparency>` 设置为大于 ``0.0``\ （不含）的值并\ *不会*\ 禁用阴影渲染。

在空间着色器中，\ ``1.0 - transparency`` 被设置为内置 ``ALPHA`` 的默认值。

\ **注意：**\ :ref:`transparency<class_GeometryInstance3D_property_transparency>` 被钳制在 ``0.0`` 和 ``1.0`` 之间，所以这个属性不能被用来使透明材质变得比原来更加不透明。

\ **注意：**\ 仅在使用 Forward+ 渲染方法时受支持。使用 Mobile 或 Compatibility 渲染方法时，\ :ref:`transparency<class_GeometryInstance3D_property_transparency>` 将被忽略并被视为始终为 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin**\ (\ )

GeometryInstance3D 可见的起始距离，同时考虑 :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>`\ 。默认值 0 用于禁用范围检查。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin_margin**\ (\ )

:ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 阈值的边距。GeometryInstance3D 只有在超出或低于 :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 阈值达到这个量时，才会更改其可见性状态。

如果 :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` 为 :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`\ ，这将作为滞后距离。如果 :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` 为 :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` 或 :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`\ ，这将作为淡入淡出过渡距离，并且必须被设置为大于 ``0.0`` 的值，才能使效果显眼。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end**\ (\ )

GeometryInstance3D 将被隐藏的距离，同时考虑 :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`\ 。默认值 0 用于禁用范围检查。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end_margin**\ (\ )

:ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>` 阈值的边距。GeometryInstance3D 只有在超出或低于 :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>` 阈值达到这个量时，才会更改其可见性状态。

如果 :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` 为 :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`\ ，这将作为滞后距离。如果 :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` 为 :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` 或 :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`\ ，这将作为淡入淡出过渡距离，并且必须被设置为大于 ``0.0`` 的值，才能使效果显眼。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_fade_mode:

.. rst-class:: classref-property

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **visibility_range_fade_mode** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_fade_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_fade_mode**\ (\ value\: :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>`\ )
- :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **get_visibility_range_fade_mode**\ (\ )

控制在接近可见范围的限制时，哪些实例将被淡化。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GeometryInstance3D_method_get_instance_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_GeometryInstance3D_method_get_instance_shader_parameter>`

获取在该实例上设置的着色器参数值。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_method_set_instance_shader_parameter:

.. rst-class:: classref-method

|void| **set_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GeometryInstance3D_method_set_instance_shader_parameter>`

仅为该实例设置一个着色器 uniform 值（\ `每实例 uniform <../tutorials/shaders/shader_reference/shading_language.html#per-instance-uniforms>`__\ ） 。另见 :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>` 以使用相同的 :ref:`ShaderMaterial<class_ShaderMaterial>` 在所有实例上分配一个 uniform。

\ **注意：**\ 要在每个实例的基础上分配一个着色器 uniform，则\ *必须*\ 在着色器代码中，使用 ``instance uniform ...``\ ，而不是 ``uniform ...`` 来定义。

\ **注意：**\ ``name`` 是区分大小写的，并且必须与代码中的 uniform 名称完全匹配（而不是检查器中大写的名称）。

\ **注意：**\ 逐实例着色器 uniform 仅在 Spatial 和 CanvasItem 着色器中可用，在 Fog、Sky、Particles 着色器中不可用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
