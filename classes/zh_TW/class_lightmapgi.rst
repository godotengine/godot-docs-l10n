:github_url: hide

.. _class_LightmapGI:

LightmapGI
==========

**繼承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

計算並儲存烘焙光照貼圖，以實作快速全域照明。

.. rst-class:: classref-introduction-group

說明
----

**LightmapGI** 節點用於計算和儲存烘焙的光照貼圖。光照貼圖用於提供高品質的間接照明，並且漏光很少。如果啟用 :ref:`directional<class_LightmapGI_property_directional>`\ ，\ **LightmapGI** 還可以使用球諧函式，以提供粗略的反射。由於\ *光照探針*\ ，動態物體可以接收間接光照，可以通過將 :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` 設定為 :ref:`GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>` 以外的值，來自動放置光照探針。也可以通過建立 :ref:`LightmapProbe<class_LightmapProbe>` 節點，來新增額外的光照貼圖探針。缺點是光照貼圖是完全靜態的，不能在匯出的專案中烘焙。與 :ref:`VoxelGI<class_VoxelGI>` 相比，烘焙 **LightmapGI** 節點也更慢。

\ **程式生成：**\ 光照貼圖烘焙功能僅在編輯器中可用。這意味著 **LightmapGI** 不適合程式生成或使用者建置的關卡。對於程式生成或使用者建置的關卡，請改用 :ref:`VoxelGI<class_VoxelGI>` 或 SDFGI（請參閱 :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`\ ）。

\ **效能：**\ **LightmapGI** 為全域照明提供最佳的執行時效能。它適用於包括集成顯卡和行動裝置在內的低端硬體。

\ **注意：**\ 由於光照貼圖的工作方式，大多數屬性只有在光照貼圖被再次烘焙後，才會產生可見效果。

\ **注意：**\ 不支援在 :ref:`CSGShape3D<class_CSGShape3D>` 和 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 上烘焙光照貼圖，因為它們無法儲存烘焙所需的 UV2 資料。

\ **注意：**\ 如果沒有安裝自訂光照貼圖器，則只能從支援 Forward+ 或 Mobile 渲染器的裝置烘焙 **LightmapGI**\ 。

\ **注意：**\ **LightmapGI** 節點只會為其父節點的子節點烘焙光照資料。不會烘焙場景中更上層的節點。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用光照貼圖全域光照 <../tutorials/3d/global_illumination/using_lightmap_gi>`

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_LightmapGI_BakeQuality:

.. rst-class:: classref-enumeration

enum **BakeQuality**: :ref:`🔗<enum_LightmapGI_BakeQuality>`

.. _class_LightmapGI_constant_BAKE_QUALITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_LOW** = ``0``

較低的烘焙品質（最快的烘焙時間）。可以通過更改 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_ray_count>` 和 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_probe_ray_count>` 來調整此預設的品質。

.. _class_LightmapGI_constant_BAKE_QUALITY_MEDIUM:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_MEDIUM** = ``1``

中等的烘焙品質（較快的烘焙時間）。可以通過更改 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_ray_count>` 和 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_probe_ray_count>` 來調整此預設的品質。

.. _class_LightmapGI_constant_BAKE_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_HIGH** = ``2``

較高的烘焙品質（較慢的烘焙時間）。可以通過更改 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_ray_count>` 和 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_probe_ray_count>` 來調整此預設的品質。

.. _class_LightmapGI_constant_BAKE_QUALITY_ULTRA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_ULTRA** = ``3``

最高的烘焙品質（最慢的烘焙時間）。可以通過更改 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_ray_count>` 和 :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count>` 來調整此預設的品質。

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_GenerateProbes:

.. rst-class:: classref-enumeration

enum **GenerateProbes**: :ref:`🔗<enum_LightmapGI_GenerateProbes>`

.. _class_LightmapGI_constant_GENERATE_PROBES_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_DISABLED** = ``0``

不要為光照動態物件生成光照貼圖探查。

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_4:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_4** = ``1``

最低級別的細分（烘焙時間最快，檔大小最小）。

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_8:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_8** = ``2``

較低級別的細分（烘焙時間較快，檔大小較小）。

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_16:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_16** = ``3``

較進階別的細分（烘焙時間較慢，檔大小較大）。

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_32:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_32** = ``4``

最進階別的細分（烘焙時間最慢，檔大小最大）。

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_BakeError:

.. rst-class:: classref-enumeration

enum **BakeError**: :ref:`🔗<enum_LightmapGI_BakeError>`

.. _class_LightmapGI_constant_BAKE_ERROR_OK:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_OK** = ``0``

光照貼圖烘焙成功。

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SCENE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SCENE_ROOT** = ``1``

光照貼圖烘焙失敗，原因是無法存取所編輯場景的根節點。

.. _class_LightmapGI_constant_BAKE_ERROR_FOREIGN_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_FOREIGN_DATA** = ``2``

光照貼圖烘焙失敗，原因是光照貼圖資料嵌入在外部資源之中。

.. _class_LightmapGI_constant_BAKE_ERROR_NO_LIGHTMAPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_LIGHTMAPPER** = ``3``

光照貼圖烘焙失敗，原因是這個 Godot 建構中沒有可用的光照貼圖器。

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SAVE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SAVE_PATH** = ``4``

光照貼圖烘焙失敗，原因是資源中沒有配置 :ref:`LightmapGIData<class_LightmapGIData>` 保存路徑。

.. _class_LightmapGI_constant_BAKE_ERROR_NO_MESHES:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_MESHES** = ``5``

光照貼圖烘焙失敗，原因是目前場景中沒有 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 為 :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` 且具有有效 UV2 對應的網格。可能需要在匯入停靠面板中選擇 3D 場景，並相應地更改它們的全域照明模式。

.. _class_LightmapGI_constant_BAKE_ERROR_MESHES_INVALID:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_MESHES_INVALID** = ``6``

光照貼圖烘焙失敗，原因是光照貼圖器無法分析一些標記為靜態的網格以進行烘焙。

.. _class_LightmapGI_constant_BAKE_ERROR_CANT_CREATE_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_CANT_CREATE_IMAGE** = ``7``

光照貼圖烘焙失敗，原因是最終的影像無法保存，或保存後無法被 Godot 匯入。

.. _class_LightmapGI_constant_BAKE_ERROR_USER_ABORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_USER_ABORTED** = ``8``

使用者中止了光照貼圖烘焙操作（通常通過點選進度對話框中的\ **取消**\ 按鈕）。

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL** = ``9``

光照貼圖烘焙失敗，原因是光照貼圖器無法分析一些標記為靜態的網格以進行烘焙。

.. _class_LightmapGI_constant_BAKE_ERROR_LIGHTMAP_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_LIGHTMAP_TOO_SMALL** = ``10``

由於光照貼圖太小，光照貼圖烘焙失敗。

.. _class_LightmapGI_constant_BAKE_ERROR_ATLAS_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_ATLAS_TOO_SMALL** = ``11``

由於光照貼圖無法放入圖集，因此光照貼圖烘焙失敗。

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_EnvironmentMode:

.. rst-class:: classref-enumeration

enum **EnvironmentMode**: :ref:`🔗<enum_LightmapGI_EnvironmentMode>`

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_DISABLED** = ``0``

烘焙光照貼圖時忽略環境光照。

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_SCENE** = ``1``

烘焙光照貼圖時，使用場景的環境光照。

\ **注意：**\ 如果在沒有 :ref:`WorldEnvironment<class_WorldEnvironment>` 節點的場景中烘焙光照貼圖，這將表現得像 :ref:`ENVIRONMENT_MODE_DISABLED<class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED>`\ 。在烘焙光照貼圖時，\ **LightmapGI** *不會*\ 考慮編輯器的預覽天空和太陽。

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_SKY** = ``2``

烘焙光照貼圖時，使用 :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>` 作為環境光照來源。

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_COLOR** = ``3``

烘焙光照貼圖時，使用 :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>` 和 :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` 相乘的結果作為環境光照的恒定來源。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_LightmapGI_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0005`` :ref:`🔗<class_LightmapGI_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

計算陰影時使用的偏置。增加 :ref:`bias<class_LightmapGI_property_bias>` 可以修復生成的烘焙光照貼圖上的陰影失真，但會引入陰影懸浮（陰影未連接到其障礙物）。即時 :ref:`Light3D<class_Light3D>` 陰影不受該 :ref:`bias<class_LightmapGI_property_bias>` 屬性的影響。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounce_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce_indirect_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_bounce_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_bounce_indirect_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce_indirect_energy**\ (\ )

每次反彈的能量乘數。較高的值將使間接照明更亮。值 ``1.0`` 代表物理上準確的行為，但較高的值可用於在使用少量反彈時使間接照明傳播更明顯。這可以通過減少 :ref:`bounces<class_LightmapGI_property_bounces>` 數量，然後增加 :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` 來加速烘焙時間。

\ **注意：**\ :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` 僅在 :ref:`bounces<class_LightmapGI_property_bounces>` 被設定為大於或等於 ``1`` 的值時才有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounces:

.. rst-class:: classref-property

:ref:`int<class_int>` **bounces** = ``3`` :ref:`🔗<class_LightmapGI_property_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_bounces**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bounces**\ (\ )

烘焙過程中考慮的光反彈次數。較高的值會產生更明亮、更逼真的光線，但代價是更長的烘焙時間。如果設定為 ``0``\ ，則僅烘焙環境光線、直接光線和自發光光線。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_LightmapGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

:ref:`CameraAttributes<class_CameraAttributes>` 資源，指定要烘焙的曝光級別。自動曝光和非曝光屬性將被忽略。應該使用曝光設定來減少烘焙時出現的動態範圍。如果曝光度太高，\ **LightmapGI** 將出現帶狀偽影，或可能出現過度曝光偽影。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **denoiser_range** = ``10`` :ref:`🔗<class_LightmapGI_property_denoiser_range>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_denoiser_range**\ (\ )

降噪器取樣的像素距離。較低的值會保留更多細節，但如果光照貼圖品質不夠高，則可能會產生斑點結果。僅當 :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` 為 ``true`` 且 :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` 被設定為 JNLM 時有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **denoiser_strength** = ``0.1`` :ref:`🔗<class_LightmapGI_property_denoiser_strength>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_denoiser_strength**\ (\ )

套用至生成的光照貼圖的去噪步驟的強度。僅當 :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` 為 ``true`` 且 :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` 被設定為 JNLM 時有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_directional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional** = ``false`` :ref:`🔗<class_LightmapGI_property_directional>`

.. rst-class:: classref-property-setget

- |void| **set_directional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_directional**\ (\ )

如果為 ``true``\ ，烘焙光照貼圖以包含作為球諧函式的方向資訊。這會產生更逼真的光照外觀，尤其是使用法線貼圖材質和烘焙了直射光的燈光（\ :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` 設定為 :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` 並將 :ref:`Light3D.editor_only<class_Light3D_property_editor_only>` 設定為 ``false``\ ）。方向資訊還用於為靜態和動態物件提供粗略的反射。這有一個小的執行時效能成本，因為著色器必須執行更多的工作，來解釋來自光照貼圖的方向資訊。定向光照貼圖也需要更長的時間來烘焙並產生更大的檔案大小。

\ **注意：**\ 屬性的名稱與 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 沒有關係。\ :ref:`directional<class_LightmapGI_property_directional>` 適用於所有燈光型別。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **environment_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LightmapGI_property_environment_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_environment_custom_color**\ (\ )

用於環境照明的顏色。僅在 :ref:`environment_mode<class_LightmapGI_property_environment_mode>` 為 :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **environment_custom_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_environment_custom_energy>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_environment_custom_energy**\ (\ )

用於環境照明的顏色倍數。僅在 :ref:`environment_mode<class_LightmapGI_property_environment_mode>` 為 :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_sky:

.. rst-class:: classref-property

:ref:`Sky<class_Sky>` **environment_custom_sky** :ref:`🔗<class_LightmapGI_property_environment_custom_sky>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_sky**\ (\ value\: :ref:`Sky<class_Sky>`\ )
- :ref:`Sky<class_Sky>` **get_environment_custom_sky**\ (\ )

用作環境照明光源的天空。僅在 :ref:`environment_mode<class_LightmapGI_property_environment_mode>` 為 :ref:`ENVIRONMENT_MODE_CUSTOM_SKY<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY>` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_mode:

.. rst-class:: classref-property

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **environment_mode** = ``1`` :ref:`🔗<class_LightmapGI_property_environment_mode>`

.. rst-class:: classref-property-setget

- |void| **set_environment_mode**\ (\ value\: :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`\ )
- :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **get_environment_mode**\ (\ )

烘焙光照貼圖時使用的環境模式。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_generate_probes_subdiv:

.. rst-class:: classref-property

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **generate_probes_subdiv** = ``2`` :ref:`🔗<class_LightmapGI_property_generate_probes_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_generate_probes**\ (\ value\: :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`\ )
- :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **get_generate_probes**\ (\ )

為動態物件照明自動生成 :ref:`LightmapProbe<class_LightmapProbe>` 時使用的細分級別。較高的值會在動態物件上產生更準確的間接照明，但代價是更長的烘焙時間和更大的檔大小。

\ **注意：**\ 自動生成的 :ref:`LightmapProbe<class_LightmapProbe>`\ ，不作為在場景樹停靠面板中的節點可見，並且生成後無法通過這種方式修改。

\ **注意：**\ 不管 :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`\ ，動態物件上的直接光照，總是使用 :ref:`Light3D<class_Light3D>` 節點即時套用。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_LightmapGI_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

如果為 ``true``\ ，則會在烘焙光照貼圖時忽略環境光照。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_light_data:

.. rst-class:: classref-property

:ref:`LightmapGIData<class_LightmapGIData>` **light_data** :ref:`🔗<class_LightmapGI_property_light_data>`

.. rst-class:: classref-property-setget

- |void| **set_light_data**\ (\ value\: :ref:`LightmapGIData<class_LightmapGIData>`\ )
- :ref:`LightmapGIData<class_LightmapGIData>` **get_light_data**\ (\ )

與該 **LightmapGI** 節點關聯的 :ref:`LightmapGIData<class_LightmapGIData>`\ 。該資源是在烘焙後自動建立的，並不意味著要手動建立。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_max_texture_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_texture_size** = ``16384`` :ref:`🔗<class_LightmapGI_property_max_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_texture_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_texture_size**\ (\ )

生成的紋理合集的最大紋理大小。更高的值將導致生成的切片更少，但由於硬體對紋理大小的限制，可能無法在所有硬體上工作。如果不確定，請將 :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>` 保留為其預設值 ``16384``\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_quality:

.. rst-class:: classref-property

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **quality** = ``1`` :ref:`🔗<class_LightmapGI_property_quality>`

.. rst-class:: classref-property-setget

- |void| **set_bake_quality**\ (\ value\: :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`\ )
- :ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **get_bake_quality**\ (\ )

烘焙光照貼圖時使用的品質預設。會影響烘焙時間，但輸出檔案的大小在所有品質層級上基本相同。

要進一步加快烘焙時間，請在減小 :ref:`bounces<class_LightmapGI_property_bounces>`\ 、停用 :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` 並/或減小 :ref:`texel_scale<class_LightmapGI_property_texel_scale>`\ 。

要進一步提升品質，請啟用 :ref:`supersampling<class_LightmapGI_property_supersampling>` 並/或增大 :ref:`texel_scale<class_LightmapGI_property_texel_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_shadowmask_mode:

.. rst-class:: classref-property

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **shadowmask_mode** = ``0`` :ref:`🔗<class_LightmapGI_property_shadowmask_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_mode**\ (\ value\: :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>`\ )
- :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **get_shadowmask_mode**\ (\ )

**實驗性：** 此屬性可能在未來版本中變更或移除。

陰影遮罩策略，用於該 **LightmapGI** 實例烘焙的靜態物體的方向陰影。

使用陰影遮罩的 :ref:`DirectionalLight3D<class_DirectionalLight3D>` 節點即便超出了 :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` 所定義的範圍也能夠投射陰影。原理是為平行光烘焙包含陰影貼圖的紋理，然後根據目前的陰影遮罩模式使用這張紋理。

\ **注意：**\ :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>` 非 :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` 時才會建立陰影遮罩紋理。要看到區別，請將 :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` 改為其他模式，然後重新烘焙光照貼圖。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **supersampling** = ``false`` :ref:`🔗<class_LightmapGI_property_supersampling>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_supersampling_enabled**\ (\ )

如果為 ``true``\ ，則光照貼圖在烘焙時會將紋素縮放值與 :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>` 相乘，並在儲存光照貼圖之前進行下取樣（因此有效的紋素密度與停用超取樣時相同）。

超取樣可以提高光照貼圖的品質、減少噪聲、提供更平滑的陰影、更好地陰影化物體中的小規模特徵。不過也可能會導致在烘焙光照貼圖時顯著增加烘焙時間和記憶體使用。會自動調整填充，避免增加光洩漏。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **supersampling_factor** = ``2.0`` :ref:`🔗<class_LightmapGI_property_supersampling_factor>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_supersampling_factor**\ (\ )

超取樣時與紋素密度相乘的係數。為了獲得最佳效果，建議使用整數值。雖然允許使用分數值，但可能會導致光洩漏增加、光照貼圖模糊。

較高的值可能會帶來更好的品質，但在烘焙時也會增加烘焙時間和記憶體使用。

詳見 :ref:`supersampling<class_LightmapGI_property_supersampling>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texel_scale** = ``1.0`` :ref:`🔗<class_LightmapGI_property_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texel_scale**\ (\ )

縮放目前烘焙的所有網格的光照貼圖紋素密度。這是一個乘數，基於匯入的各個 3D 場景中定義的已有光照貼圖紋素大小，以及各個網格的密度乘數（設計用於在不同縮放使用相同網格時使用）。值越低，烘焙時間越快。

例如，將 :ref:`texel_scale<class_LightmapGI_property_texel_scale>` 翻倍會讓物體的光照貼圖紋理\ *在每個方向上*\ 的解析度都翻倍，導致紋素數量\ *變為原來的四倍*\ 。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_denoiser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_denoiser** = ``true`` :ref:`🔗<class_LightmapGI_property_use_denoiser>`

.. rst-class:: classref-property-setget

- |void| **set_use_denoiser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_denoiser**\ (\ )

如果為 ``true``\ ，則在生成的光照貼圖上，使用基於 GPU 的降噪算法。這以更長的烘焙時間為代價，消除了生成的光照貼圖中的大部分噪點。儘管無損壓縮在壓縮降噪影像方面可能做得更好，但使用降噪器通常不會顯著影響檔案大小。

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_texture_for_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_for_bounces** = ``true`` :ref:`🔗<class_LightmapGI_property_use_texture_for_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_for_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_texture_for_bounces**\ (\ )

如果為 ``true``\ ，將生成帶有照明資訊的紋理，以加快間接照明的生成速度，但會犧牲一定的精度。當使用低解析度光照貼圖或在表面上顯著拉伸光照貼圖的 UV 時，幾何體可能會出現額外的漏光偽影。如果不確定，請將 :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` 保留為其預設值 ``true``\ 。

\ **注意：**\ :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` 僅在 :ref:`bounces<class_LightmapGI_property_bounces>` 被設定為大於或等於 ``1`` 的值時才有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
