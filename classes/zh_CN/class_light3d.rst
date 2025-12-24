:github_url: hide

.. _class_Light3D:

Light3D
=======

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`DirectionalLight3D<class_DirectionalLight3D>`, :ref:`OmniLight3D<class_OmniLight3D>`, :ref:`SpotLight3D<class_SpotLight3D>`

为不同类型的光节点提供基类。

.. rst-class:: classref-introduction-group

描述
----

Light3D 是灯光节点的\ *抽象*\ 基类。由于无法实例化，所以不应直接使用。其他类型的灯光节点继承自它。Light3D 包含用于照明的常见变量和参数。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`3D 灯光与阴影 <../tutorials/3d/lights_and_shadows>`

- :doc:`伪造全局光照 <../tutorials/3d/global_illumination/faking_global_illumination>`

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_Light3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_Light3D_Param>`

.. _class_Light3D_constant_PARAM_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ENERGY** = ``0``

用于访问 :ref:`light_energy<class_Light3D_property_light_energy>` 的常量。

.. _class_Light3D_constant_PARAM_INDIRECT_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INDIRECT_ENERGY** = ``1``

用于访问 :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>` 的常量。

.. _class_Light3D_constant_PARAM_VOLUMETRIC_FOG_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_VOLUMETRIC_FOG_ENERGY** = ``2``

用于访问 :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` 的常量。

.. _class_Light3D_constant_PARAM_SPECULAR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPECULAR** = ``3``

用于访问 :ref:`light_specular<class_Light3D_property_light_specular>` 的常量。

.. _class_Light3D_constant_PARAM_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_RANGE** = ``4``

用于访问 :ref:`OmniLight3D.omni_range<class_OmniLight3D_property_omni_range>` 或 :ref:`SpotLight3D.spot_range<class_SpotLight3D_property_spot_range>` 的常量。

.. _class_Light3D_constant_PARAM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SIZE** = ``5``

用于访问 :ref:`light_size<class_Light3D_property_light_size>` 的常量。

.. _class_Light3D_constant_PARAM_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ATTENUATION** = ``6``

用于访问 :ref:`OmniLight3D.omni_attenuation<class_OmniLight3D_property_omni_attenuation>` 或 :ref:`SpotLight3D.spot_attenuation<class_SpotLight3D_property_spot_attenuation>` 的常量。

.. _class_Light3D_constant_PARAM_SPOT_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ANGLE** = ``7``

用于访问 :ref:`SpotLight3D.spot_angle<class_SpotLight3D_property_spot_angle>` 的常量。

.. _class_Light3D_constant_PARAM_SPOT_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ATTENUATION** = ``8``

用于访问 :ref:`SpotLight3D.spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_MAX_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_MAX_DISTANCE** = ``9``

用于访问 :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_1_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_1_OFFSET** = ``10``

用于访问 :ref:`DirectionalLight3D.directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_2_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_2_OFFSET** = ``11``

用于访问 :ref:`DirectionalLight3D.directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_3_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_3_OFFSET** = ``12``

用于访问 :ref:`DirectionalLight3D.directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_FADE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_FADE_START** = ``13``

用于访问 :ref:`DirectionalLight3D.directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_NORMAL_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_NORMAL_BIAS** = ``14``

用于访问 :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BIAS** = ``15``

用于访问 :ref:`shadow_bias<class_Light3D_property_shadow_bias>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_PANCAKE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_PANCAKE_SIZE** = ``16``

用于访问 :ref:`DirectionalLight3D.directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_OPACITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_OPACITY** = ``17``

用于访问 :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>` 的常量。

.. _class_Light3D_constant_PARAM_SHADOW_BLUR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BLUR** = ``18``

用于访问 :ref:`shadow_blur<class_Light3D_property_shadow_blur>` 的常量。

.. _class_Light3D_constant_PARAM_TRANSMITTANCE_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_TRANSMITTANCE_BIAS** = ``19``

用于访问 :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>` 的常量。

.. _class_Light3D_constant_PARAM_INTENSITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INTENSITY** = ``20``

用于访问 :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>` 和 :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>` 的常量。只在 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 为 ``true`` 时使用。

.. _class_Light3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_MAX** = ``21``

代表 :ref:`Param<enum_Light3D_Param>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Light3D_BakeMode:

.. rst-class:: classref-enumeration

enum **BakeMode**: :ref:`🔗<enum_Light3D_BakeMode>`

.. _class_Light3D_constant_BAKE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DISABLED** = ``0``

烘焙时灯光将被忽略。这是最快的模式，但是在烘焙全局照明时不会考虑该灯光。该模式通常应用于快速变化的动态灯光，因为全局照明的效果在这些灯光上不太明显。

\ **注意：**\ 将灯光隐藏，\ *不*\ 影响烘焙 :ref:`LightmapGI<class_LightmapGI>`\ 。但将灯光隐藏，仍会影响烘焙 :ref:`VoxelGI<class_VoxelGI>` 和 SDFGI（请参阅 :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）。

.. _class_Light3D_constant_BAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_STATIC** = ``1``

在静态烘焙（\ :ref:`VoxelGI<class_VoxelGI>`\ 、\ :ref:`LightmapGI<class_LightmapGI>`\ 、SDFGI（\ :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ））时，考虑了灯光。灯光可以四处移动或修改，但其全局照明不会实时更新。这适用于细微的变化（例如闪烁的手电筒），但通常不适用于大的变化，例如打开和关闭灯光。

\ **注意：**\ 如果 :ref:`editor_only<class_Light3D_property_editor_only>` 为 ``true``\ ，则灯光不会在 :ref:`LightmapGI<class_LightmapGI>` 中烘焙。

.. _class_Light3D_constant_BAKE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DYNAMIC** = ``2``

在动态烘焙（仅 :ref:`VoxelGI<class_VoxelGI>` 和 SDFGI（\ :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ））时，考虑了灯光。灯光可以四处移动或修改，而且全局照明会实时更新。与 :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` 相比，灯光的全局照明外观会略有不同。与 :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` 相比，这具有更大的性能成本。使用 SDFGI 时，动态灯光的更新速度受 :ref:`ProjectSettings.rendering/global_illumination/sdfgi/frames_to_update_lights<class_ProjectSettings_property_rendering/global_illumination/sdfgi/frames_to_update_lights>` 的影响。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Light3D_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Light3D_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

光线开始逐渐消失时与相机的距离（单位为 3D 单位）。

\ **注意：**\ 仅对 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>` 有效。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Light3D_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

如果为 ``true``\ ，从 :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` 开始，当远离活动的 :ref:`Camera3D<class_Camera3D>` 时，灯光会平滑地消失。这充当了一种多细节层次（LOD）形式。灯光将在 :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>` 之外淡出，之后它将被剔除并且根本不会被发送到着色器。使用它可以减少场景中的活动灯光数量，从而提高性能。

\ **注意：**\ 仅对 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>` 有效。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Light3D_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

灯光及其阴影消失的距离。灯光的能量和阴影的不透明度，在此距离内逐渐降低，最终完全不可见。

\ **注意：**\ 仅对 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>` 有效。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_shadow:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_shadow** = ``50.0`` :ref:`🔗<class_Light3D_property_distance_fade_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_shadow**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_shadow**\ (\ )

灯光阴影截止处与相机的距离（单位为 3D 单位）。将该属性设置为低于 :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>` 的值，以进一步提高性能，因为阴影渲染通常比光线渲染本身更昂贵。

\ **注意：**\ 仅对 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>` 有效，且仅在 :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light3D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

如果为 ``true``\ ，灯光只在编辑器中出现，在运行时将不可见。如果为 ``true``\ ，则无论其 :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>` 如何，灯光都不会在 :ref:`LightmapGI<class_LightmapGI>` 中进行烘焙。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_angular_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_angular_distance** = ``0.0`` :ref:`🔗<class_Light3D_property_light_angular_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

灯光的角度大小，单位是度。增加此值将使阴影在更远的距离处更柔和（也称为百分比更近的柔和阴影，或 PCSS）。仅适用于 :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ 。作为参考，太阳距离地球大约是 ``0.5``\ 。对于启用了阴影的灯光，将此值增加到 ``0.0`` 以上，将由于 PCSS 而产生明显的性能成本。

\ **注意：**\ :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>`\ （灯光的缩放或其父级的缩放）的影响。

\ **注意：**\ 定向光的 PCSS 仅支持 Forward+ 渲染方式，不支持 Mobile 或 Compatibility。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_bake_mode:

.. rst-class:: classref-property

:ref:`BakeMode<enum_Light3D_BakeMode>` **light_bake_mode** = ``2`` :ref:`🔗<class_Light3D_property_light_bake_mode>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mode**\ (\ value\: :ref:`BakeMode<enum_Light3D_BakeMode>`\ )
- :ref:`BakeMode<enum_Light3D_BakeMode>` **get_bake_mode**\ (\ )

灯光的烘焙模式。会影响对灯光渲染有影响的全局照明技术。

\ **注意：**\ 网格的全局照明模式也会影响全局照明渲染。见 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **light_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light3D_property_light_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

光的颜色，使用非线性 sRGB 色彩空间。\ *过亮*\ 的颜色可用于实现与增加光的 :ref:`light_energy<class_Light3D_property_light_energy>` 相等价的结果。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **light_cull_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_light_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

灯光会影响位于所选层中的对象。

\ **注意：**\ :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI、\ :ref:`LightmapGI<class_LightmapGI>`\ 、体积雾会忽略灯光剔除遮罩。这些效果时始终使用灯光渲染，忽略剔除遮罩。另见 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

灯光的强度乘数（不是物理单位）。对于 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>`\ ，更改此值只会更改灯光颜色的强度，而不会更改灯光的半径。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_indirect_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

与间接光（光反射）一起使用的辅助乘数。与 :ref:`VoxelGI<class_VoxelGI>` 和 SDFGI 一起使用（参见 :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）。

\ **注意：**\ 如果 :ref:`light_energy<class_Light3D_property_light_energy>` 等于 ``0.0``\ ，则该属性将被忽略，因为在 GI 着色器中，该灯光根本不存在。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lumens:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lumens** :ref:`🔗<class_Light3D_property_light_intensity_lumens>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

当 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 为 ``true`` 时，由定位灯（\ :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>`\ ）使用。设置光源的强度，测量单位为流明。流明是对光通量的一种度量，它是光源在单位时间内发出的可见光总量。

对于 :ref:`SpotLight3D<class_SpotLight3D>`\ ，我们假设可见锥体之外的区域将被完美的光吸收材质包围。因此，锥体区域的表观亮度不会随着锥体大小的增大和减小而改变。

一只典型的家用灯泡的流明范围从 600 流明到 1,200 流明不等，一支蜡烛的流明约为 13 流明，而一盏路灯的流明约为 60,000 流明。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lux:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lux** :ref:`🔗<class_Light3D_property_light_intensity_lux>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

当 :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` 为 ``true`` 时，由 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 使用。设置光源的强度，测量单位为勒克斯（Lux）。勒克斯是对单位面积内光通量的度量，等于每平方米一流明。勒克斯是衡量在给定时间有多少光照射到一个表面。

在晴朗的晴天，阳光直射下的表面可能约为 100,000 勒克斯，家中的一个典型房间可能约为 50 勒克斯，而月光下的地面可能约为 0.1 勒克斯。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_negative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **light_negative** = ``false`` :ref:`🔗<class_Light3D_property_light_negative>`

.. rst-class:: classref-property-setget

- |void| **set_negative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_negative**\ (\ )

如果为 ``true``\ ，则光线的效果会逆转，使区域变暗并投射明亮的阴影。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_projector:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **light_projector** :ref:`🔗<class_Light3D_property_light_projector>`

.. rst-class:: classref-property-setget

- |void| **set_projector**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_projector**\ (\ )

:ref:`Texture2D<class_Texture2D>` 由灯光投影。\ :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` 必须打开，投影仪才能工作。灯光投影仪使光线看起来像是透过彩色但透明的物体照射，几乎就像光线透过彩色玻璃照射一样。

\ **注意：**\ 不像 :ref:`BaseMaterial3D<class_BaseMaterial3D>` 的过滤器模式可以在每个材质的基础上进行调整，灯光投影仪纹理的过滤器模式是通过 :ref:`ProjectSettings.rendering/textures/light_projectors/filter<class_ProjectSettings_property_rendering/textures/light_projectors/filter>` 全局设置的。

\ **注意：**\ 灯光投影仪纹理仅支持 Forward+ 和 Mobile 渲染方法，不支持 Compatibility。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_size** = ``0.0`` :ref:`🔗<class_Light3D_property_light_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

灯光的大小，使用 Godot 的单位。仅适用于 :ref:`OmniLight3D<class_OmniLight3D>` 和 :ref:`SpotLight3D<class_SpotLight3D>`\ 。增加此值将使光线淡出速度变慢，并且阴影看起来更模糊（也称为百分比接近软阴影或 PCSS）。这可用于在一定程度上模拟区域光。对于启用了阴影的灯光，将此值增加到 ``0.0`` 以上，将由于 PCSS 而产生明显的性能成本。

\ **注意：**\ :ref:`light_size<class_Light3D_property_light_size>` 不受 :ref:`Node3D.scale<class_Node3D_property_scale>`\ （灯光的缩放或其父级的缩放）的影响。

\ **注意：**\ 定位光的 PCSS 仅支持 Forward+ 和 Mobile 渲染方法，不支持 Compatibility。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_specular:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_specular** = ``1.0`` :ref:`🔗<class_Light3D_property_light_specular>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

受灯光影响的对象中镜面反射斑点的强度。在 ``0`` 处，灯光变成纯漫反射灯光。当不烘焙发射时，这可用于在发光表面上方放置灯光时避免不真实的反射。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_temperature:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_temperature** :ref:`🔗<class_Light3D_property_light_temperature>`

.. rst-class:: classref-property-setget

- |void| **set_temperature**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_temperature**\ (\ )

设置光源的色温，测量单位为开尔文。这用于计算对 :ref:`light_color<class_Light3D_property_light_color>` 着色的相关色温。

阴天的太阳温度约为 6500 开尔文，晴天的太阳温度在 5500 到 6000 开尔文之间，晴天日出或日落时的太阳温度范围为 1850 开尔文左右。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_volumetric_fog_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_volumetric_fog_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_volumetric_fog_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

与 :ref:`light_energy<class_Light3D_property_light_energy>` 相乘的次级乘数，然后与 :ref:`Environment<class_Environment>` 的体积雾（如果启用）一起使用。如果设置为 ``0.0``\ ，将用于该灯的体积雾计算将被跳过，这可以在启用体积雾时提高大量灯光的性能。

\ **注意：**\ 除非 :ref:`Environment.volumetric_fog_temporal_reprojection_enabled<class_Environment_property_volumetric_fog_temporal_reprojection_enabled>` 被禁用（或者除非重投影的量显著降低），否则为防止短暂的动态光效与体积雾的互动性差，这些效果中使用的光应将 :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` 设置为 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_bias** = ``0.1`` :ref:`🔗<class_Light3D_property_shadow_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

用于调整阴影表现。值太小会导致自阴影（“阴影失真”），而值太大会导致阴影与之分离（“阴影悬浮”）。根据需要进行调整。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_blur:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_blur** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_blur>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

模糊阴影的边缘。可用于隐藏低分辨率阴影贴图中的像素伪影。高值会影响性能，使阴影看起来有颗粒感，并可能导致其他不需要的伪影。尽量保持接近默认值。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_caster_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_caster_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_shadow_caster_mask>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_caster_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_caster_mask**\ (\ )

灯光只会使用选定层中的对象投射阴影。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light3D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_shadow**\ (\ )

如果为 ``true``\ ，则灯光将投射实时阴影。这具有显著的性能成本。仅当阴影渲染对场景外观产生明显影响时，才启用阴影渲染，并考虑在远离 :ref:`Camera3D<class_Camera3D>` 时使用 :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>` 隐藏该灯光。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_normal_bias** = ``2.0`` :ref:`🔗<class_Light3D_property_shadow_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

通过对象的法线，将查找偏移到阴影贴图中。这可用于在不使用 :ref:`shadow_bias<class_Light3D_property_shadow_bias>` 的情况下，减少自身阴影伪影。在实践中，这个值应该与 :ref:`shadow_bias<class_Light3D_property_shadow_bias>` 一起调整，以尽可能减少伪影。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_opacity:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_opacity** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_opacity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

渲染灯光的阴影贴图时使用的不透明度。低于 ``1.0`` 的值会使光线透过阴影出现。这可以用于以较低的性能成本，伪造全局照明。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_reverse_cull_face:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_reverse_cull_face** = ``false`` :ref:`🔗<class_Light3D_property_shadow_reverse_cull_face>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_reverse_cull_face**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shadow_reverse_cull_face**\ (\ )

如果为 ``true``\ ，则反转网格的背面剔除。可用于一个背后有灯光的平面网格。如果需要在该网格的两侧投射阴影，请使用 :ref:`GeometryInstance3D.SHADOW_CASTING_SETTING_DOUBLE_SIDED<class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED>`\ ，将该网格设置为使用双面阴影。

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

方法说明
--------

.. _class_Light3D_method_get_correlated_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_correlated_color**\ (\ ) |const| :ref:`🔗<class_Light3D_method_get_correlated_color>`

返回给定 :ref:`light_temperature<class_Light3D_property_light_temperature>` 下的理想化黑体的 :ref:`Color<class_Color>`\ 。该值是根据 :ref:`light_temperature<class_Light3D_property_light_temperature>` 在内部计算得出的。该 :ref:`Color<class_Color>` 在被发送到 :ref:`RenderingServer<class_RenderingServer>` 之前，将乘以 :ref:`light_color<class_Light3D_property_light_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const| :ref:`🔗<class_Light3D_method_get_param>`

返回指定的 :ref:`Param<enum_Light3D_Param>` 参数的值。

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light3D_method_set_param>`

设置指定的 :ref:`Param<enum_Light3D_Param>` 参数的值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
