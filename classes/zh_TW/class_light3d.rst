:github_url: hide

.. _class_Light3D:

Light3D
=======

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`DirectionalLight3D<class_DirectionalLight3D>`, :ref:`OmniLight3D<class_OmniLight3D>`, :ref:`SpotLight3D<class_SpotLight3D>`

為不同型別的光節點提供基底類別。

.. rst-class:: classref-introduction-group

說明
----

Light3D 是燈光節點的\ *抽象*\ 基底類別。由於無法產生實體，所以不應直接使用。其他類型的燈光節點繼承自它。Light3D 包含用於照明的常見變數和參數。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`3D 燈光與陰影 <../tutorials/3d/lights_and_shadows>`

- :doc:`偽造全域光照 <../tutorials/3d/global_illumination/faking_global_illumination>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>`                 | ``40.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>`             | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>`               | ``10.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_shadow<class_Light3D_property_distance_fade_shadow>`               | ``50.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`editor_only<class_Light3D_property_editor_only>`                                 | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>`           | ``0.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BakeMode<enum_Light3D_BakeMode>` | :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>`                         | ``2``                 |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`              | :ref:`light_color<class_Light3D_property_light_color>`                                 | ``Color(1, 1, 1, 1)`` |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                  | :ref:`light_cull_mask<class_Light3D_property_light_cull_mask>`                         | ``4294967295``        |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_energy<class_Light3D_property_light_energy>`                               | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>`             | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>`           |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>`                 |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`light_negative<class_Light3D_property_light_negative>`                           | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`      | :ref:`light_projector<class_Light3D_property_light_projector>`                         |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_size<class_Light3D_property_light_size>`                                   | ``0.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_specular<class_Light3D_property_light_specular>`                           | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_temperature<class_Light3D_property_light_temperature>`                     |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_bias<class_Light3D_property_shadow_bias>`                                 | ``0.1``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_blur<class_Light3D_property_shadow_blur>`                                 | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                  | :ref:`shadow_caster_mask<class_Light3D_property_shadow_caster_mask>`                   | ``4294967295``        |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>`                           | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>`                   | ``2.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>`                           | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`shadow_reverse_cull_face<class_Light3D_property_shadow_reverse_cull_face>`       | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>`     | ``0.05``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_correlated_color<class_Light3D_method_get_correlated_color>`\ (\ ) |const|                                                |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_Light3D_method_get_param>`\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_Light3D_method_set_param>`\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Light3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_Light3D_Param>`

.. _class_Light3D_constant_PARAM_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ENERGY** = ``0``

用於存取 :ref:`light_energy<class_Light3D_property_light_energy>` 的常數。

.. _class_Light3D_constant_PARAM_INDIRECT_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INDIRECT_ENERGY** = ``1``

用於存取 :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>` 的常數。

.. _class_Light3D_constant_PARAM_VOLUMETRIC_FOG_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_VOLUMETRIC_FOG_ENERGY** = ``2``

用於存取 :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` 的常數。

.. _class_Light3D_constant_PARAM_SPECULAR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPECULAR** = ``3``

用於存取 :ref:`light_specular<class_Light3D_property_light_specular>` 的常數。

.. _class_Light3D_constant_PARAM_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_RANGE** = ``4``

用於存取 :ref:`OmniLight3D.omni_range<class_OmniLight3D_property_omni_range>` 或 :ref:`SpotLight3D.spot_range<class_SpotLight3D_property_spot_range>` 的常數。

.. _class_Light3D_constant_PARAM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SIZE** = ``5``

用於存取 :ref:`light_size<class_Light3D_property_light_size>` 的常數。

.. _class_Light3D_constant_PARAM_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ATTENUATION** = ``6``

用於存取 :ref:`OmniLight3D.omni_attenuation<class_OmniLight3D_property_omni_attenuation>` 或 :ref:`SpotLight3D.spot_attenuation<class_SpotLight3D_property_spot_attenuation>` 的常數。

.. _class_Light3D_constant_PARAM_SPOT_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ANGLE** = ``7``

用於存取 :ref:`SpotLight3D.spot_angle<class_SpotLight3D_property_spot_angle>` 的常數。

.. _class_Light3D_constant_PARAM_SPOT_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ATTENUATION** = ``8``

用於存取 :ref:`SpotLight3D.spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_MAX_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_MAX_DISTANCE** = ``9``

用於存取 :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_1_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_1_OFFSET** = ``10``

用於存取 :ref:`DirectionalLight3D.directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_2_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_2_OFFSET** = ``11``

用於存取 :ref:`DirectionalLight3D.directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_3_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_3_OFFSET** = ``12``

用於存取 :ref:`DirectionalLight3D.directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_FADE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_FADE_START** = ``13``

用於存取 :ref:`DirectionalLight3D.directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_NORMAL_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_NORMAL_BIAS** = ``14``

用於存取 :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BIAS** = ``15``

用於存取 :ref:`shadow_bias<class_Light3D_property_shadow_bias>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_PANCAKE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_PANCAKE_SIZE** = ``16``

用於存取 :ref:`DirectionalLight3D.directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_OPACITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_OPACITY** = ``17``

用於存取 :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>` 的常數。

.. _class_Light3D_constant_PARAM_SHADOW_BLUR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BLUR** = ``18``

用於存取 :ref:`shadow_blur<class_Light3D_property_shadow_blur>` 的常數。

.. _class_Light3D_constant_PARAM_TRANSMITTANCE_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_TRANSMITTANCE_BIAS** = ``19``

用於存取 :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>` 的常數。

.. _class_Light3D_constant_PARAM_INTENSITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INTENSITY** = ``20``

用於存取 :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>` 和 :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>` 的常量。只在 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 為 ``true`` 時使用。

.. _class_Light3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_MAX** = ``21``

代表 :ref:`Param<enum_Light3D_Param>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Light3D_BakeMode:

.. rst-class:: classref-enumeration

enum **BakeMode**: :ref:`🔗<enum_Light3D_BakeMode>`

.. _class_Light3D_constant_BAKE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DISABLED** = ``0``

Light is ignored when baking. This is the fastest mode, but the light will not be taken into account when baking global illumination. This mode should generally be used for dynamic lights that change quickly, as the effect of global illumination is less noticeable on those lights.

\ **Note:** Hiding a light does *not* affect baking :ref:`LightmapGI<class_LightmapGI>`. Hiding a light will still affect baking :ref:`VoxelGI<class_VoxelGI>` and SDFGI (see :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

.. _class_Light3D_constant_BAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_STATIC** = ``1``

Light is taken into account in static baking (:ref:`VoxelGI<class_VoxelGI>`, :ref:`LightmapGI<class_LightmapGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`)). The light can be moved around or modified, but its global illumination will not update in real-time. This is suitable for subtle changes (such as flickering torches), but generally not large changes such as toggling a light on and off.

\ **Note:** The light is not baked in :ref:`LightmapGI<class_LightmapGI>` if :ref:`editor_only<class_Light3D_property_editor_only>` is ``true``.

.. _class_Light3D_constant_BAKE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DYNAMIC** = ``2``

在動態烘焙（僅 :ref:`VoxelGI<class_VoxelGI>` 和 SDFGI（\ :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ））時，考慮了燈光。燈光可以四處移動或修改，而且全域照明會即時更新。與 :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` 相比，燈光的全域照明外觀會略有不同。與 :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` 相比，這具有更大的性能成本。使用 SDFGI 時，動態燈光的更新速度受 :ref:`ProjectSettings.rendering/global_illumination/sdfgi/frames_to_update_lights<class_ProjectSettings_property_rendering/global_illumination/sdfgi/frames_to_update_lights>` 的影響。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Light3D_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Light3D_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

光線開始逐漸消失時與相機的距離（單位為 3D 單位）。

\ **注意：**\ 僅對 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>` 有效。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Light3D_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

如果為 ``true``\ ，從 :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` 開始，當遠離活動的 :ref:`Camera3D<class_Camera3D>` 時，燈光會平滑地消失。這充當了一種多細節層次（LOD）形式。燈光將在 :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>` 之外淡出，之後它將被剔除並且根本不會被發送到著色器。使用它可以減少場景中的活動燈光數量，從而提高性能。

\ **注意：**\ 僅對 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>` 有效。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Light3D_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

燈光及其陰影消失的距離。燈光的能量和陰影的不透明度，在此距離內逐漸降低，最終完全不可見。

\ **注意：**\ 僅對 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>` 有效。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_shadow:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_shadow** = ``50.0`` :ref:`🔗<class_Light3D_property_distance_fade_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_shadow**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_shadow**\ (\ )

燈光陰影截止處與相機的距離（單位為 3D 單位）。將該屬性設定為低於 :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>` 的值，以進一步提高性能，因為陰影算繪通常比光線算繪本身更昂貴。

\ **注意：**\ 僅對 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>` 有效，且僅在 :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light3D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

If ``true``, the light only appears in the editor and will not be visible at runtime. If ``true``, the light will never be baked in :ref:`LightmapGI<class_LightmapGI>` regardless of its :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_angular_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_angular_distance** = ``0.0`` :ref:`🔗<class_Light3D_property_light_angular_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

燈光的角度大小，單位是度。增加此值將使陰影在更遠的距離處更柔和（也稱為百分比更近的柔和陰影，或 PCSS）。僅適用於 :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ 。作為參考，太陽距離地球大約是 ``0.5``\ 。對於啟用了陰影的燈光，將此值增加到 ``0.0`` 以上，將由於 PCSS 而產生明顯的性能成本。

\ **注意：**\ :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>`\ （燈光的縮放或其父級的縮放）的影響。

\ **注意：**\ 定向光的 PCSS 僅支援 Forward+ 算繪方式，不支援 Mobile 或 Compatibility。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_bake_mode:

.. rst-class:: classref-property

:ref:`BakeMode<enum_Light3D_BakeMode>` **light_bake_mode** = ``2`` :ref:`🔗<class_Light3D_property_light_bake_mode>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mode**\ (\ value\: :ref:`BakeMode<enum_Light3D_BakeMode>`\ )
- :ref:`BakeMode<enum_Light3D_BakeMode>` **get_bake_mode**\ (\ )

The light's bake mode. This will affect the global illumination techniques that have an effect on the light's rendering.

\ **Note:** Meshes' global illumination mode will also affect the global illumination rendering. See :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **light_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light3D_property_light_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

The light's color in the nonlinear sRGB color space. An *overbright* color can be used to achieve a result equivalent to increasing the light's :ref:`light_energy<class_Light3D_property_light_energy>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **light_cull_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_light_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

The light will affect objects in the selected layers.

\ **Note:** The light cull mask is ignored by :ref:`VoxelGI<class_VoxelGI>`, SDFGI, :ref:`LightmapGI<class_LightmapGI>`, and volumetric fog. These will always render lights in a way that ignores the cull mask. See also :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

燈光的強度乘數（不是物理單位）。對於 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>`\ ，更改此值只會更改燈光顏色的強度，而不會更改燈光的半徑。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_indirect_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

與間接光（光反射）一起使用的輔助乘數。與 :ref:`VoxelGI<class_VoxelGI>` 和 SDFGI 一起使用（參見 :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）。

\ **注意：**\ 如果 :ref:`light_energy<class_Light3D_property_light_energy>` 等於 ``0.0``\ ，則該屬性將被忽略，因為在 GI 著色器中，該燈光根本不存在。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lumens:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lumens** :ref:`🔗<class_Light3D_property_light_intensity_lumens>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

當 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 為 ``true`` 時，由定位燈（\ :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>`\ ）使用。設定光源的強度，測量單位為流明。流明是對光通量的一種度量，它是光源在單位時間內發出的可見光總量。

對於 :ref:`SpotLight3D<class_SpotLight3D>`\ ，我們假設可見錐體之外的區域將被完美的光吸收材質包圍。因此，錐體區域的表觀亮度不會隨著錐體大小的增大和減小而改變。

一隻典型的家用燈泡的流明範圍從 600 流明到 1,200 流明不等，一支蠟燭的流明約為 13 流明，而一盞路燈的流明約為 60,000 流明。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lux:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lux** :ref:`🔗<class_Light3D_property_light_intensity_lux>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

當 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 為 ``true`` 時，由 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 使用。設定光源的強度，測量單位為勒克斯（Lux）。勒克斯是對單位面積內光通量的度量，等於每平方米一流明。勒克斯是衡量在給定時間有多少光照射到一個表面。

在晴朗的晴天，陽光直射下的表面可能約為 100,000 勒克斯，家中的一個典型房間可能約為 50 勒克斯，而月光下的地面可能約為 0.1 勒克斯。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_negative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **light_negative** = ``false`` :ref:`🔗<class_Light3D_property_light_negative>`

.. rst-class:: classref-property-setget

- |void| **set_negative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_negative**\ (\ )

如果為 ``true``\ ，則光線的效果會逆轉，使區域變暗並投射明亮的陰影。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_projector:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **light_projector** :ref:`🔗<class_Light3D_property_light_projector>`

.. rst-class:: classref-property-setget

- |void| **set_projector**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_projector**\ (\ )

:ref:`Texture2D<class_Texture2D>` 由燈光投影。\ :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` 必須打開，投影儀才能工作。燈光投影儀使光線看起來像是透過彩色但透明的物體照射，幾乎就像光線透過彩色玻璃照射一樣。

\ **注意：**\ 不像 :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的篩檢程式模式可以在每個材質的基礎上進行調整，燈光投影儀紋理的篩檢程式模式是通過 :ref:`ProjectSettings.rendering/textures/light_projectors/filter<class_ProjectSettings_property_rendering/textures/light_projectors/filter>` 全域設定的。

\ **注意：**\ 燈光投影儀紋理僅支援 Forward+ 和 Mobile 算繪方法，不支援 Compatibility。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_size** = ``0.0`` :ref:`🔗<class_Light3D_property_light_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

燈光的大小，使用 Godot 的單位。僅適用於 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>`\ 。增加此值將使光線淡出速度變慢，並且陰影看起來更模糊（也稱為百分比接近軟陰影或 PCSS）。這可用於在一定程度上類比區域光。對於啟用了陰影的燈光，將此值增加到 ``0.0`` 以上，將由於 PCSS 而產生明顯的性能成本。

\ **注意：**\ :ref:`light_size<class_Light3D_property_light_size>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>`\ （燈光的縮放或其父級的縮放）的影響。

\ **注意：**\ 定位光的 PCSS 僅支援 Forward+ 和 Mobile 算繪方法，不支援 Compatibility。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_specular:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_specular** = ``1.0`` :ref:`🔗<class_Light3D_property_light_specular>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

受燈光影響的對象中鏡面反射斑點的強度。在 ``0`` 處，燈光變成純漫反射燈光。當不烘焙發射時，這可用於在發光表面上方放置燈光時避免不真實的反射。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_temperature:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_temperature** :ref:`🔗<class_Light3D_property_light_temperature>`

.. rst-class:: classref-property-setget

- |void| **set_temperature**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_temperature**\ (\ )

設定光源的色溫，測量單位為開爾文。這用於計算對 :ref:`light_color<class_Light3D_property_light_color>` 著色的相關色溫。

陰天的太陽溫度約為 6500 開爾文，晴天的太陽溫度在 5500 到 6000 開爾文之間，晴天日出或日落時的太陽溫度範圍為 1850 開爾文左右。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_volumetric_fog_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_volumetric_fog_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_volumetric_fog_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

與 :ref:`light_energy<class_Light3D_property_light_energy>` 相乘的次級乘數，然後與 :ref:`Environment<class_Environment>` 的體積霧（如果啟用）一起使用。如果設定為 ``0.0``\ ，將用於該燈的體積霧計算將被跳過，這可以在啟用體積霧時提高大量燈光的性能。

\ **注意：**\ 除非 :ref:`Environment.volumetric_fog_temporal_reprojection_enabled<class_Environment_property_volumetric_fog_temporal_reprojection_enabled>` 被禁用（或者除非重投影的量顯著降低），否則為防止短暫的動態光效與體積霧的互動性差，這些效果中使用的光應將 :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` 設定為 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_bias** = ``0.1`` :ref:`🔗<class_Light3D_property_shadow_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

用於調整陰影表現。值太小會導致自陰影（“陰影失真”），而值太大會導致陰影與之分離（“陰影懸浮”）。根據需要進行調整。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_blur:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_blur** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_blur>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

模糊陰影的邊緣。可用於隱藏低解析度陰影貼圖中的圖元偽影。高值會影響性能，使陰影看起來有顆粒感，並可能導致其他不需要的偽影。儘量保持接近預設值。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_caster_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_caster_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_shadow_caster_mask>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_caster_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_caster_mask**\ (\ )

The light will only cast shadows using objects in the selected layers.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light3D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_shadow**\ (\ )

如果為 ``true``\ ，則燈光將投射即時陰影。這具有顯著的性能成本。僅當陰影算繪對場景外觀產生明顯影響時，才啟用陰影算繪，並考慮在遠離 :ref:`Camera3D<class_Camera3D>` 時使用 :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>` 隱藏該燈光。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_normal_bias** = ``2.0`` :ref:`🔗<class_Light3D_property_shadow_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

通過物件的法線，將搜尋偏移到陰影貼圖中。這可用於在不使用 :ref:`shadow_bias<class_Light3D_property_shadow_bias>` 的情況下，減少自身陰影偽影。在實踐中，這個值應該與 :ref:`shadow_bias<class_Light3D_property_shadow_bias>` 一起調整，以盡可能減少偽影。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_opacity:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_opacity** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_opacity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

算繪燈光的陰影貼圖時使用的不透明度。低於 ``1.0`` 的值會使光線透過陰影出現。這可以用於以較低的性能成本，偽造全域照明。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_reverse_cull_face:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_reverse_cull_face** = ``false`` :ref:`🔗<class_Light3D_property_shadow_reverse_cull_face>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_reverse_cull_face**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shadow_reverse_cull_face**\ (\ )

如果為 ``true``\ ，則反轉網格的背面剔除。可用於一個背後有燈光的平面網格。如果需要在該網格的兩側投射陰影，請使用 :ref:`GeometryInstance3D.SHADOW_CASTING_SETTING_DOUBLE_SIDED<class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED>`\ ，將該網格設定為使用雙面陰影。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_transmittance_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_transmittance_bias** = ``0.05`` :ref:`🔗<class_Light3D_property_shadow_transmittance_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Light3D_method_get_correlated_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_correlated_color**\ (\ ) |const| :ref:`🔗<class_Light3D_method_get_correlated_color>`

返回給定 :ref:`light_temperature<class_Light3D_property_light_temperature>` 下的理想化黑體的 :ref:`Color<class_Color>`\ 。該值是根據 :ref:`light_temperature<class_Light3D_property_light_temperature>` 在內部計算得出的。該 :ref:`Color<class_Color>` 在被發送到 :ref:`RenderingServer<class_RenderingServer>` 之前，將乘以 :ref:`light_color<class_Light3D_property_light_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const| :ref:`🔗<class_Light3D_method_get_param>`

返回指定的 :ref:`Param<enum_Light3D_Param>` 參數的值。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light3D_method_set_param>`

設定指定的 :ref:`Param<enum_Light3D_Param>` 參數的值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
