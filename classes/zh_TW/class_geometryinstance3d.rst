:github_url: hide

.. _class_GeometryInstance3D:

GeometryInstance3D
==================

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CPUParticles3D<class_CPUParticles3D>`, :ref:`CSGShape3D<class_CSGShape3D>`, :ref:`GPUParticles3D<class_GPUParticles3D>`, :ref:`Label3D<class_Label3D>`, :ref:`MeshInstance3D<class_MeshInstance3D>`, :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`, :ref:`SpriteBase3D<class_SpriteBase3D>`

基於幾何圖形的視覺實例的基礎節點。

.. rst-class:: classref-introduction-group

說明
----

基於幾何圖形的視覺實例的基礎節點。分享一些共同的機制，如可見性和自訂材質。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`可見範圍（HLOD） <../tutorials/3d/visibility_ranges>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_GeometryInstance3D_ShadowCastingSetting:

.. rst-class:: classref-enumeration

enum **ShadowCastingSetting**: :ref:`🔗<enum_GeometryInstance3D_ShadowCastingSetting>`

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_OFF** = ``0``

不會投射任何陰影。使用該選項，可提高不太可能投射明顯陰影的小型幾何體（例如碎片）的性能。

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_ON:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_ON** = ``1``

將從 GeometryInstance3D 中的所有可見面投射陰影。

將考慮剔除，因此在陰影投射時，不會考慮那些不會被算繪的面。

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_DOUBLE_SIDED** = ``2``

將從 GeometryInstance3D 中的所有可見面投射陰影。

不會考慮剔除，因此在陰影投射時，將考慮所有面。

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_SHADOWS_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_SHADOWS_ONLY** = ``3``

只顯示從這個物體投射出來的陰影。

換句話說，實際的網格將不可見，只有網格投影可見。

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_GIMode:

.. rst-class:: classref-enumeration

enum **GIMode**: :ref:`🔗<enum_GeometryInstance3D_GIMode>`

.. _class_GeometryInstance3D_constant_GI_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DISABLED** = ``0``

Disabled global illumination mode. Use for dynamic objects that do not contribute to global illumination (such as characters). When using :ref:`VoxelGI<class_VoxelGI>` and SDFGI, the geometry will *receive* indirect lighting and reflections but the geometry will not be considered in GI baking.

.. _class_GeometryInstance3D_constant_GI_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_STATIC** = ``1``

烘焙全域照明模式。用於有助於全域照明的靜態物件（例如關卡幾何體）。該 GI 模式在使用 :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI 和 :ref:`LightmapGI<class_LightmapGI>` 時有效。

.. _class_GeometryInstance3D_constant_GI_MODE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DYNAMIC** = ``2``

Dynamic global illumination mode. Use for dynamic objects that contribute to global illumination. This GI mode is only effective when using :ref:`VoxelGI<class_VoxelGI>`, but it has a higher performance impact than :ref:`GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. When using other GI methods, this will act the same as :ref:`GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`. When using :ref:`LightmapGI<class_LightmapGI>`, the object will receive indirect lighting using lightmap probes instead of using the baked lightmap texture.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_LightmapScale:

.. rst-class:: classref-enumeration

enum **LightmapScale**: :ref:`🔗<enum_GeometryInstance3D_LightmapScale>`

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_1X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_1X** = ``0``

**已棄用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

使用 :ref:`LightmapGI<class_LightmapGI>` 進行光照貼圖的標準紋素密度。

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_2X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_2X** = ``1``

**已棄用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

使用 :ref:`LightmapGI<class_LightmapGI>` 進行光照貼圖時，將紋素密度乘以 2 倍。為確保紋素密度的一致性，請在按 1.5 到 3.0 之間的係數縮放網格時，使用該選項。

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_4X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_4X** = ``2``

**已棄用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

使用 :ref:`LightmapGI<class_LightmapGI>` 進行光照貼圖時，將紋素密度乘以 4 倍。為確保紋素密度的一致性，請在按 3.0 到 6.0 之間的係數縮放網格時，使用該選項。

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_8X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_8X** = ``3``

**已棄用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

使用 :ref:`LightmapGI<class_LightmapGI>` 進行光照貼圖時，將紋素密度乘以 8 倍。為確保紋素密度的一致性，請在以大於 6.0 的係數縮放網格時，使用該選項。

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_MAX** = ``4``

**已棄用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

代表 :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_VisibilityRangeFadeMode:

.. rst-class:: classref-enumeration

enum **VisibilityRangeFadeMode**: :ref:`🔗<enum_GeometryInstance3D_VisibilityRangeFadeMode>`

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DISABLED** = ``0``

不會自行淡化，也不會淡化其可見性依賴項，而是使用滯後。這是手動 LOD 的最快方法，但它可能會導致明顯的 LOD 過渡，具體取決於 LOD 網格的創作方式。有關更多信息，請參閱 :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 和 :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`\ 。

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_SELF** = ``1``

Will fade-out itself when reaching the limits of its own visibility range. This is slower than :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, but it can provide smoother transitions. The fading range is determined by :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` and :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`.

\ **Note:** Only supported when using the Forward+ rendering method. When using the Mobile or Compatibility rendering method, this mode acts like :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` but with hysteresis disabled.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DEPENDENCIES** = ``2``

Will fade-in its visibility dependencies (see :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`) when reaching the limits of its own visibility range. This is slower than :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, but it can provide smoother transitions. The fading range is determined by :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` and :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`.

\ **Note:** Only supported when using the Forward+ rendering method. When using the Mobile or Compatibility rendering method, this mode acts like :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` but with hysteresis disabled.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GeometryInstance3D_property_cast_shadow:

.. rst-class:: classref-property

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **cast_shadow** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_cast_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_cast_shadows_setting**\ (\ value\: :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>`\ )
- :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **get_cast_shadows_setting**\ (\ )

The mode used to cast shadows from this instance.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_GeometryInstance3D_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Overrides the bounding box of this node with a custom one. This can be used to avoid the expensive :ref:`AABB<class_AABB>` recalculation that happens when a skeleton is used with a :ref:`MeshInstance3D<class_MeshInstance3D>` or to have precise control over the :ref:`MeshInstance3D<class_MeshInstance3D>`'s bounding box. To use the default AABB, set value to an :ref:`AABB<class_AABB>` with all fields set to ``0.0``. To avoid frustum culling, set :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` to a very large AABB that covers your entire game world such as ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``. To disable all forms of culling (including occlusion and layer culling), call :ref:`RenderingServer.instance_set_ignore_culling()<class_RenderingServer_method_instance_set_ignore_culling>` on the **GeometryInstance3D**'s :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_extra_cull_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **extra_cull_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_extra_cull_margin>`

.. rst-class:: classref-property-setget

- |void| **set_extra_cull_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_extra_cull_margin**\ (\ )

新增到 GeometryInstance3D 的邊界框（\ :ref:`AABB<class_AABB>`\ ），以增加其剔除框的額外距離。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_scale:

.. rst-class:: classref-property

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **gi_lightmap_scale** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_scale**\ (\ value\: :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`\ )
- :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **get_lightmap_scale**\ (\ )

**已棄用：** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

The texel density to use for lightmapping in :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gi_lightmap_texel_scale** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lightmap_texel_scale**\ (\ )

The texel density to use for lightmapping in :ref:`LightmapGI<class_LightmapGI>`. Greater scale values provide higher resolution in the lightmap, which can result in sharper shadows for lights that have both direct and indirect light baked. However, greater scale values will also increase the space taken by the mesh in the lightmap texture, which increases the memory, storage, and bake time requirements. When using a single mesh at different scales, consider adjusting this value to keep the lightmap texel density consistent across meshes.

For example, doubling :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` doubles the lightmap texture resolution for this object *on each axis*, so it will *quadruple* the texel count.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_mode:

.. rst-class:: classref-property

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **gi_mode** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_gi_mode>`

.. rst-class:: classref-property-setget

- |void| **set_gi_mode**\ (\ value\: :ref:`GIMode<enum_GeometryInstance3D_GIMode>`\ )
- :ref:`GIMode<enum_GeometryInstance3D_GIMode>` **get_gi_mode**\ (\ )

用於整個幾何體的全域照明模式。為避免結果不一致，請在遊戲過程中，使用與網格用途相配對的模式（靜態/動態）。

\ **注意：**\ 燈光的烘焙模式，也會影響全域照明算繪。請參閱 :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_ignore_occlusion_culling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_occlusion_culling** = ``false`` :ref:`🔗<class_GeometryInstance3D_property_ignore_occlusion_culling>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_occlusion_culling**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_occlusion_culling**\ (\ )

如果為 ``true``\ ，則禁用這個實例的遮擋剔除。可用於即便開啟遮擋剔除也必須算繪的小工具。

\ **注意：**\ :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>` 不會影響視錐剔除（物件因為相機的角度而不可見時觸發）。要避免視錐剔除，請將 :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` 設定為很大的 AABB，覆蓋住整個遊戲世界，例如 ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

改變網格過渡到較低細節級別的速度。值為 0 將強制網格達到最低細節級別，值為 1 將使用預設設定，更大的值將使網格在更遠的距離處保持更高的細節級別。

對於測試編輯器中的細節級別的過渡很有用。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_overlay:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_overlay** :ref:`🔗<class_GeometryInstance3D_property_material_overlay>`

.. rst-class:: classref-property-setget

- |void| **set_material_overlay**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_overlay**\ (\ )

整個幾何體的材質覆蓋層。

如果一個材質被分配給這個屬性，它將會被算繪在所有表面的任何其他活動材質之上。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_override:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_override** :ref:`🔗<class_GeometryInstance3D_property_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_material_override**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_override**\ (\ )

整個幾何體的材質覆蓋。

如果一個材質被分配給這個屬性，它將會被用來代替在網格的任何材質槽中設定的任何材質。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_transparency:

.. rst-class:: classref-property

:ref:`float<class_float>` **transparency** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_transparency>`

.. rst-class:: classref-property-setget

- |void| **set_transparency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_transparency**\ (\ )

The transparency applied to the whole geometry (as a multiplier of the materials' existing transparency). ``0.0`` is fully opaque, while ``1.0`` is fully transparent. Values greater than ``0.0`` (exclusive) will force the geometry's materials to go through the transparent pipeline, which is slower to render and can exhibit rendering issues due to incorrect transparency sorting. However, unlike using a transparent material, setting :ref:`transparency<class_GeometryInstance3D_property_transparency>` to a value greater than ``0.0`` (exclusive) will *not* disable shadow rendering.

In spatial shaders, ``1.0 - transparency`` is set as the default value of the ``ALPHA`` built-in.

\ **Note:** :ref:`transparency<class_GeometryInstance3D_property_transparency>` is clamped between ``0.0`` and ``1.0``, so this property cannot be used to make transparent materials more opaque than they originally are.

\ **Note:** Only supported when using the Forward+ rendering method. When using the Mobile or Compatibility rendering method, :ref:`transparency<class_GeometryInstance3D_property_transparency>` is ignored and is considered as always being ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin**\ (\ )

GeometryInstance3D 可見的起始距離，同時考慮 :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>`\ 。預設值 0 用於禁用範圍檢查。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin_margin**\ (\ )

:ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 閾值的邊距。GeometryInstance3D 只有在超出或低於 :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` 閾值達到這個量時，才會更改其可見性狀態。

如果 :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` 為 :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`\ ，這將作為滯後距離。如果 :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` 為 :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` 或 :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`\ ，這將作為淡入淡出過渡距離，並且必須被設定為大於 ``0.0`` 的值，才能使效果顯眼。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end**\ (\ )

GeometryInstance3D 將被隱藏的距離，同時考慮 :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`\ 。預設值 0 用於禁用範圍檢查。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end_margin**\ (\ )

:ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>` 閾值的邊距。GeometryInstance3D 只有在超出或低於 :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>` 閾值達到這個量時，才會更改其可見性狀態。

如果 :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` 為 :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`\ ，這將作為滯後距離。如果 :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` 為 :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` 或 :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`\ ，這將作為淡入淡出過渡距離，並且必須被設定為大於 ``0.0`` 的值，才能使效果顯眼。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_fade_mode:

.. rst-class:: classref-property

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **visibility_range_fade_mode** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_fade_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_fade_mode**\ (\ value\: :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>`\ )
- :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **get_visibility_range_fade_mode**\ (\ )

Controls which instances will be faded when approaching the limits of the visibility range.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GeometryInstance3D_method_get_instance_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_GeometryInstance3D_method_get_instance_shader_parameter>`

獲取在該實例上設定的著色器參數值。

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_method_set_instance_shader_parameter:

.. rst-class:: classref-method

|void| **set_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GeometryInstance3D_method_set_instance_shader_parameter>`

設定著色器 Uniform 的值，僅限此實例 (`每實例 Uniform <../tutorials/shaders/shader_reference/shading_language.html#per-instance-uniforms>`__)。另請參閱 :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>`\ ，以在使用相同 :ref:`ShaderMaterial<class_ShaderMaterial>` 的所有實例上指派 Uniform。

\ **注意：** 著色器 Uniform 若要能夠按每個實例指派，它在著色器程式碼中 *必須* 定義為 ``instance uniform ...``\ ，而非 ``uniform ...``\ 。

\ **注意：** ``name`` 區分大小寫，且必須與程式碼中 Uniform 的名稱完全相符 (而非屬性檢視器中大寫的名稱)。

\ **注意：** 每實例著色器 Uniform 僅在 Spatial 和 CanvasItem 著色器中可用，但不適用於霧、天空或粒子著色器。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
