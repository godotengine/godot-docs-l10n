:github_url: hide

.. _class_LightmapGI:

LightmapGI
==========

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

计算并存储烘焙光照贴图，以实现快速全局照明。

.. rst-class:: classref-introduction-group

描述
----

**LightmapGI** 节点用于计算和存储烘焙的光照贴图。光照贴图用于提供高质量的间接照明，并且漏光很少。如果启用 :ref:`directional<class_LightmapGI_property_directional>`\ ，\ **LightmapGI** 还可以使用球谐函数，以提供粗略的反射。由于\ *光照探针*\ ，动态物体可以接收间接光照，可以通过将 :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` 设置为 :ref:`GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>` 以外的值，来自动放置光照探针。也可以通过创建 :ref:`LightmapProbe<class_LightmapProbe>` 节点，来添加额外的光照贴图探针。缺点是光照贴图是完全静态的，不能在导出的项目中烘焙。与 :ref:`VoxelGI<class_VoxelGI>` 相比，烘焙 **LightmapGI** 节点也更慢。

\ **程序生成：**\ 光照贴图烘焙功能仅在编辑器中可用。这意味着 **LightmapGI** 不适合程序生成或用户构建的关卡。对于程序生成或用户构建的关卡，请改用 :ref:`VoxelGI<class_VoxelGI>` 或 SDFGI（请参阅 :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）。

\ **性能：**\ **LightmapGI** 为全局照明提供最佳的运行时性能。它适用于包括集成显卡和移动设备在内的低端硬件。

\ **注意：**\ 由于光照贴图的工作方式，大多数属性只有在光照贴图被再次烘焙后，才会产生可见效果。

\ **注意：**\ 不支持在 :ref:`CSGShape3D<class_CSGShape3D>` 和 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 上烘焙光照贴图，因为它们无法存储烘焙所需的 UV2 数据。

\ **注意：**\ 如果没有安装自定义光照贴图器，则只能从支持 Forward+ 或 Mobile 渲染器的设备烘焙 **LightmapGI**\ 。

\ **注意：**\ **LightmapGI** 节点只会为其父节点的子节点烘焙光照数据。不会烘焙场景中更上层的节点。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用光照贴图全局光照 <../tutorials/3d/global_illumination/using_lightmap_gi>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`bias<class_LightmapGI_property_bias>`                                           | ``0.0005``            |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`       | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`bounces<class_LightmapGI_property_bounces>`                                     | ``3``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`           | :ref:`camera_attributes<class_LightmapGI_property_camera_attributes>`                 |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`denoiser_range<class_LightmapGI_property_denoiser_range>`                       | ``10``                |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`denoiser_strength<class_LightmapGI_property_denoiser_strength>`                 | ``0.1``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`directional<class_LightmapGI_property_directional>`                             | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                 | :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>`   | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Sky<class_Sky>`                                     | :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>`       |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`   | :ref:`environment_mode<class_LightmapGI_property_environment_mode>`                   | ``1``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`     | :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`       | ``2``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`interior<class_LightmapGI_property_interior>`                                   | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`LightmapGIData<class_LightmapGIData>`               | :ref:`light_data<class_LightmapGI_property_light_data>`                               |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>`                   | ``16384``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`           | :ref:`quality<class_LightmapGI_property_quality>`                                     | ``1``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` | :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>`                     | ``0``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`supersampling<class_LightmapGI_property_supersampling>`                         | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>`           | ``2.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`texel_scale<class_LightmapGI_property_texel_scale>`                             | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>`                           | ``true``              |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>`     | ``true``              |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_LightmapGI_BakeQuality:

.. rst-class:: classref-enumeration

enum **BakeQuality**: :ref:`🔗<enum_LightmapGI_BakeQuality>`

.. _class_LightmapGI_constant_BAKE_QUALITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_LOW** = ``0``

较低的烘焙质量（最快的烘焙时间）。可以通过更改 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_ray_count>` 和 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_probe_ray_count>` 来调整此预设的质量。

.. _class_LightmapGI_constant_BAKE_QUALITY_MEDIUM:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_MEDIUM** = ``1``

中等的烘焙质量（较快的烘焙时间）。可以通过更改 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_ray_count>` 和 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_probe_ray_count>` 来调整此预设的质量。

.. _class_LightmapGI_constant_BAKE_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_HIGH** = ``2``

较高的烘焙质量（较慢的烘焙时间）。可以通过更改 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_ray_count>` 和 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_probe_ray_count>` 来调整此预设的质量。

.. _class_LightmapGI_constant_BAKE_QUALITY_ULTRA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_ULTRA** = ``3``

最高的烘焙质量（最慢的烘焙时间）。可以通过更改 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_ray_count>` 和 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count>` 来调整此预设的质量。

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_GenerateProbes:

.. rst-class:: classref-enumeration

enum **GenerateProbes**: :ref:`🔗<enum_LightmapGI_GenerateProbes>`

.. _class_LightmapGI_constant_GENERATE_PROBES_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_DISABLED** = ``0``

不要为光照动态对象生成光照贴图探针。

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_4:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_4** = ``1``

最低级别的细分（烘焙时间最快，文件大小最小）。

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_8:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_8** = ``2``

较低级别的细分（烘焙时间较快，文件大小较小）。

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_16:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_16** = ``3``

较高级别的细分（烘焙时间较慢，文件大小较大）。

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_32:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_32** = ``4``

最高级别的细分（烘焙时间最慢，文件大小最大）。

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_BakeError:

.. rst-class:: classref-enumeration

enum **BakeError**: :ref:`🔗<enum_LightmapGI_BakeError>`

.. _class_LightmapGI_constant_BAKE_ERROR_OK:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_OK** = ``0``

光照贴图烘焙成功。

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SCENE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SCENE_ROOT** = ``1``

光照贴图烘焙失败，原因是无法访问所编辑场景的根节点。

.. _class_LightmapGI_constant_BAKE_ERROR_FOREIGN_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_FOREIGN_DATA** = ``2``

光照贴图烘焙失败，原因是光照贴图数据嵌入在外部资源之中。

.. _class_LightmapGI_constant_BAKE_ERROR_NO_LIGHTMAPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_LIGHTMAPPER** = ``3``

光照贴图烘焙失败，原因是这个 Godot 构建中没有可用的光照贴图器。

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SAVE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SAVE_PATH** = ``4``

光照贴图烘焙失败，原因是资源中没有配置 :ref:`LightmapGIData<class_LightmapGIData>` 保存路径。

.. _class_LightmapGI_constant_BAKE_ERROR_NO_MESHES:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_MESHES** = ``5``

光照贴图烘焙失败，原因是当前场景中没有 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 为 :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` 且具有有效 UV2 映射的网格。可能需要在导入停靠面板中选择 3D 场景，并相应地更改它们的全局照明模式。

.. _class_LightmapGI_constant_BAKE_ERROR_MESHES_INVALID:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_MESHES_INVALID** = ``6``

光照贴图烘焙失败，原因是光照贴图器无法分析一些标记为静态的网格以进行烘焙。

.. _class_LightmapGI_constant_BAKE_ERROR_CANT_CREATE_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_CANT_CREATE_IMAGE** = ``7``

光照贴图烘焙失败，原因是最终的图像无法保存，或保存后无法被 Godot 导入。

.. _class_LightmapGI_constant_BAKE_ERROR_USER_ABORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_USER_ABORTED** = ``8``

用户中止了光照贴图烘焙操作（通常通过点击进度对话框中的\ **取消**\ 按钮）。

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL** = ``9``

光照贴图烘焙失败，因为最大纹理尺寸太小，无法容纳某些被标记为烘焙的网格。

.. _class_LightmapGI_constant_BAKE_ERROR_LIGHTMAP_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_LIGHTMAP_TOO_SMALL** = ``10``

由于光照贴图太小，光照贴图烘焙失败。

.. _class_LightmapGI_constant_BAKE_ERROR_ATLAS_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_ATLAS_TOO_SMALL** = ``11``

由于光照贴图无法放入图集，因此光照贴图烘焙失败。

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_EnvironmentMode:

.. rst-class:: classref-enumeration

enum **EnvironmentMode**: :ref:`🔗<enum_LightmapGI_EnvironmentMode>`

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_DISABLED** = ``0``

烘焙光照贴图时忽略环境光照。

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_SCENE** = ``1``

烘焙光照贴图时，使用场景的环境光照。

\ **注意：**\ 如果在没有 :ref:`WorldEnvironment<class_WorldEnvironment>` 节点的场景中烘焙光照贴图，这将表现得像 :ref:`ENVIRONMENT_MODE_DISABLED<class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED>`\ 。在烘焙光照贴图时，\ **LightmapGI** *不会*\ 考虑编辑器的预览天空和太阳。

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_SKY** = ``2``

烘焙光照贴图时，使用 :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>` 作为环境光照来源。

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_COLOR** = ``3``

烘焙光照贴图时，使用 :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>` 和 :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` 相乘的结果作为环境光照的恒定来源。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_LightmapGI_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0005`` :ref:`🔗<class_LightmapGI_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

计算阴影时使用的偏置。增加 :ref:`bias<class_LightmapGI_property_bias>` 可以修复生成的烘焙光照贴图上的阴影失真，但会引入阴影悬浮（阴影未连接到其障碍物）。实时 :ref:`Light3D<class_Light3D>` 阴影不受该 :ref:`bias<class_LightmapGI_property_bias>` 属性的影响。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounce_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce_indirect_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_bounce_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_bounce_indirect_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce_indirect_energy**\ (\ )

每次反弹的能量乘数。较高的值将使间接照明更亮。值 ``1.0`` 代表物理上准确的行为，但较高的值可用于在使用少量反弹时使间接照明传播更明显。这可以通过减少 :ref:`bounces<class_LightmapGI_property_bounces>` 数量，然后增加 :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` 来加速烘焙时间。

\ **注意：**\ :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` 仅在 :ref:`bounces<class_LightmapGI_property_bounces>` 被设置为大于或等于 ``1`` 的值时才有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounces:

.. rst-class:: classref-property

:ref:`int<class_int>` **bounces** = ``3`` :ref:`🔗<class_LightmapGI_property_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_bounces**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bounces**\ (\ )

烘焙过程中考虑的光反弹次数。较高的值会产生更明亮、更逼真的光线，但代价是更长的烘焙时间。如果设置为 ``0``\ ，则仅烘焙环境光线、直接光线和自发光光线。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_LightmapGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

:ref:`CameraAttributes<class_CameraAttributes>` 资源，指定要烘焙的曝光级别。自动曝光和非曝光属性将被忽略。应该使用曝光设置来减少烘焙时出现的动态范围。如果曝光度太高，\ **LightmapGI** 将出现带状伪影，或可能出现过度曝光伪影。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **denoiser_range** = ``10`` :ref:`🔗<class_LightmapGI_property_denoiser_range>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_denoiser_range**\ (\ )

降噪器采样的像素距离。较低的值会保留更多细节，但如果光照贴图质量不够高，则可能会产生斑点结果。仅当 :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` 为 ``true`` 且 :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` 被设置为 JNLM 时有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **denoiser_strength** = ``0.1`` :ref:`🔗<class_LightmapGI_property_denoiser_strength>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_denoiser_strength**\ (\ )

应用于生成的光照贴图的去噪步骤的强度。仅当 :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` 为 ``true`` 且 :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` 被设置为 JNLM 时有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_directional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional** = ``false`` :ref:`🔗<class_LightmapGI_property_directional>`

.. rst-class:: classref-property-setget

- |void| **set_directional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_directional**\ (\ )

如果为 ``true``\ ，烘焙光照贴图以包含作为球谐函数的方向信息。这会产生更逼真的光照外观，尤其是使用法线贴图材质和烘焙了直射光的灯光（\ :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` 设置为 :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` 并将 :ref:`Light3D.editor_only<class_Light3D_property_editor_only>` 设置为 ``false``\ ）。方向信息还用于为静态和动态对象提供粗略的反射。这有一个小的运行时性能成本，因为着色器必须执行更多的工作，来解释来自光照贴图的方向信息。定向光照贴图也需要更长的时间来烘焙并产生更大的文件大小。

\ **注意：**\ 属性的名称与 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 没有关系。\ :ref:`directional<class_LightmapGI_property_directional>` 适用于所有灯光类型。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **environment_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LightmapGI_property_environment_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_environment_custom_color**\ (\ )

用于环境照明的颜色。仅在 :ref:`environment_mode<class_LightmapGI_property_environment_mode>` 为 :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **environment_custom_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_environment_custom_energy>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_environment_custom_energy**\ (\ )

用于环境照明的颜色倍数。仅在 :ref:`environment_mode<class_LightmapGI_property_environment_mode>` 为 :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_sky:

.. rst-class:: classref-property

:ref:`Sky<class_Sky>` **environment_custom_sky** :ref:`🔗<class_LightmapGI_property_environment_custom_sky>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_sky**\ (\ value\: :ref:`Sky<class_Sky>`\ )
- :ref:`Sky<class_Sky>` **get_environment_custom_sky**\ (\ )

用作环境照明光源的天空。仅在 :ref:`environment_mode<class_LightmapGI_property_environment_mode>` 为 :ref:`ENVIRONMENT_MODE_CUSTOM_SKY<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY>` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_mode:

.. rst-class:: classref-property

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **environment_mode** = ``1`` :ref:`🔗<class_LightmapGI_property_environment_mode>`

.. rst-class:: classref-property-setget

- |void| **set_environment_mode**\ (\ value\: :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`\ )
- :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **get_environment_mode**\ (\ )

烘焙光照贴图时使用的环境模式。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_generate_probes_subdiv:

.. rst-class:: classref-property

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **generate_probes_subdiv** = ``2`` :ref:`🔗<class_LightmapGI_property_generate_probes_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_generate_probes**\ (\ value\: :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`\ )
- :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **get_generate_probes**\ (\ )

为动态对象照明自动生成 :ref:`LightmapProbe<class_LightmapProbe>` 时使用的细分级别。较高的值会在动态对象上产生更准确的间接照明，但代价是更长的烘焙时间和更大的文件大小。

\ **注意：**\ 自动生成的 :ref:`LightmapProbe<class_LightmapProbe>`\ ，不作为在场景树停靠面板中的节点可见，并且生成后无法通过这种方式修改。

\ **注意：**\ 不管 :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`\ ，动态对象上的直接光照，总是使用 :ref:`Light3D<class_Light3D>` 节点实时应用。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_LightmapGI_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

如果为 ``true``\ ，则会在烘焙光照贴图时忽略环境光照。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_light_data:

.. rst-class:: classref-property

:ref:`LightmapGIData<class_LightmapGIData>` **light_data** :ref:`🔗<class_LightmapGI_property_light_data>`

.. rst-class:: classref-property-setget

- |void| **set_light_data**\ (\ value\: :ref:`LightmapGIData<class_LightmapGIData>`\ )
- :ref:`LightmapGIData<class_LightmapGIData>` **get_light_data**\ (\ )

与该 **LightmapGI** 节点关联的 :ref:`LightmapGIData<class_LightmapGIData>`\ 。该资源是在烘焙后自动创建的，并不意味着要手动创建。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_max_texture_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_texture_size** = ``16384`` :ref:`🔗<class_LightmapGI_property_max_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_texture_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_texture_size**\ (\ )

生成的纹理图集的最大纹理大小。更高的值将导致生成的切片更少，但由于硬件对纹理大小的限制，可能无法在所有硬件上工作。如果不确定，请将 :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>` 保留为其默认值 ``16384``\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_quality:

.. rst-class:: classref-property

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **quality** = ``1`` :ref:`🔗<class_LightmapGI_property_quality>`

.. rst-class:: classref-property-setget

- |void| **set_bake_quality**\ (\ value\: :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`\ )
- :ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **get_bake_quality**\ (\ )

烘焙光照贴图时使用的质量预设。会影响烘焙时间，但输出文件的大小在所有质量级别上基本相同。

要进一步加快烘焙时间，请在减小 :ref:`bounces<class_LightmapGI_property_bounces>`\ 、禁用 :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` 并/或减小 :ref:`texel_scale<class_LightmapGI_property_texel_scale>`\ 。

要进一步提升质量，请启用 :ref:`supersampling<class_LightmapGI_property_supersampling>` 并/或增大 :ref:`texel_scale<class_LightmapGI_property_texel_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_shadowmask_mode:

.. rst-class:: classref-property

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **shadowmask_mode** = ``0`` :ref:`🔗<class_LightmapGI_property_shadowmask_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_mode**\ (\ value\: :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>`\ )
- :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **get_shadowmask_mode**\ (\ )

**实验性：** 未来版本中可能会修改或移除该属性。

阴影遮罩策略，用于该 **LightmapGI** 实例烘焙的静态物体的方向阴影。

使用阴影遮罩的 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 节点即便超出了 :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 所定义的范围也能够投射阴影。原理是为平行光烘焙包含阴影贴图的纹理，然后根据当前的阴影遮罩模式使用这张纹理。

\ **注意：**\ :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>` 非 :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` 时才会创建阴影遮罩纹理。要看到区别，请将 :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` 改为其他模式，然后重新烘焙光照贴图。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **supersampling** = ``false`` :ref:`🔗<class_LightmapGI_property_supersampling>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_supersampling_enabled**\ (\ )

如果为 ``true``\ ，则光照贴图在烘焙时会将纹素缩放值与 :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>` 相乘，并在保存光照贴图之前进行下采样（因此有效的纹素密度与禁用超采样时相同）。

超采样可以提高光照贴图的质量、减少噪声、提供更平滑的阴影、更好地阴影化物体中的小规模特征。不过也可能会导致在烘焙光照贴图时显著增加烘焙时间和内存使用。会自动调整填充，避免增加光泄漏。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **supersampling_factor** = ``2.0`` :ref:`🔗<class_LightmapGI_property_supersampling_factor>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_supersampling_factor**\ (\ )

超采样时与纹素密度相乘的系数。为了获得最佳效果，建议使用整数值。虽然允许使用分数值，但可能会导致光泄漏增加、光照贴图模糊。

较高的值可能会带来更好的质量，但在烘焙时也会增加烘焙时间和内存使用。

详见 :ref:`supersampling<class_LightmapGI_property_supersampling>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texel_scale** = ``1.0`` :ref:`🔗<class_LightmapGI_property_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texel_scale**\ (\ )

缩放当前烘焙的所有网格的光照贴图纹素密度。这是一个乘数，基于导入的各个 3D 场景中定义的已有光照贴图纹素大小，以及各个网格的密度乘数（设计用于在不同缩放使用相同网格时使用）。值越低，烘焙时间越快。

例如，将 :ref:`texel_scale<class_LightmapGI_property_texel_scale>` 翻倍会让物体的光照贴图纹理\ *在每个方向上*\ 的分辨率都翻倍，导致纹素数量\ *变为原来的四倍*\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_denoiser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_denoiser** = ``true`` :ref:`🔗<class_LightmapGI_property_use_denoiser>`

.. rst-class:: classref-property-setget

- |void| **set_use_denoiser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_denoiser**\ (\ )

如果为 ``true``\ ，则在生成的光照贴图上，使用基于 GPU 的降噪算法。这以更长的烘焙时间为代价，消除了生成的光照贴图中的大部分噪点。尽管无损压缩在压缩降噪图像方面可能做得更好，但使用降噪器通常不会显著影响文件大小。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_texture_for_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_for_bounces** = ``true`` :ref:`🔗<class_LightmapGI_property_use_texture_for_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_for_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_texture_for_bounces**\ (\ )

如果为 ``true``\ ，将生成带有照明信息的纹理，以加快间接照明的生成速度，但会牺牲一定的精度。当使用低分辨率光照贴图或在表面上显著拉伸光照贴图的 UV 时，几何体可能会出现额外的漏光伪影。如果不确定，请将 :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` 保留为其默认值 ``true``\ 。

\ **注意：**\ :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` 仅在 :ref:`bounces<class_LightmapGI_property_bounces>` 被设置为大于或等于 ``1`` 的值时才有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
