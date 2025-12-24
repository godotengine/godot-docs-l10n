:github_url: hide

.. _class_Sky:

Sky
===

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 :ref:`Material<class_Material>` 定義 3D 環境的背景。

.. rst-class:: classref-introduction-group

說明
----

**Sky** 類使用 :ref:`Material<class_Material>` 來繪製背景，會更新反射/輻照度立方體貼圖。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`ProcessMode<enum_Sky_ProcessMode>`   | :ref:`process_mode<class_Sky_property_process_mode>`   | ``0`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`RadianceSize<enum_Sky_RadianceSize>` | :ref:`radiance_size<class_Sky_property_radiance_size>` | ``3`` |
   +--------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Material<class_Material>`            | :ref:`sky_material<class_Sky_property_sky_material>`   |       |
   +--------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Sky_RadianceSize:

.. rst-class:: classref-enumeration

enum **RadianceSize**: :ref:`🔗<enum_Sky_RadianceSize>`

.. _class_Sky_constant_RADIANCE_SIZE_32:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_32** = ``0``

輻照度紋理尺寸為 32×32 圖元。

.. _class_Sky_constant_RADIANCE_SIZE_64:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_64** = ``1``

輻照度紋理尺寸為 64×64 圖元。

.. _class_Sky_constant_RADIANCE_SIZE_128:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_128** = ``2``

輻照度紋理尺寸為128×128圖元。

.. _class_Sky_constant_RADIANCE_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_256** = ``3``

輻照度紋理尺寸為 256×256 圖元。

.. _class_Sky_constant_RADIANCE_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_512** = ``4``

輻照度紋理尺寸為 512×512 圖元。

.. _class_Sky_constant_RADIANCE_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_1024** = ``5``

輻照度紋理尺寸為 1024×1024 圖元。

.. _class_Sky_constant_RADIANCE_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_2048** = ``6``

輻照度紋理尺寸為 2048×2048 圖元。

.. _class_Sky_constant_RADIANCE_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`RadianceSize<enum_Sky_RadianceSize>` **RADIANCE_SIZE_MAX** = ``7``

代表 :ref:`RadianceSize<enum_Sky_RadianceSize>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Sky_ProcessMode:

.. rst-class:: classref-enumeration

enum **ProcessMode**: :ref:`🔗<enum_Sky_ProcessMode>`

.. _class_Sky_constant_PROCESS_MODE_AUTOMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_AUTOMATIC** = ``0``

根據天空著色器自動選擇合適的處理模式。如果著色器使用 ``TIME`` 或 ``POSITION``\ ，這將使用 :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>`\ 。如果著色器使用任何 ``LIGHT_*`` 變數或任何自訂 uniform，這將使用 :ref:`PROCESS_MODE_INCREMENTAL<class_Sky_constant_PROCESS_MODE_INCREMENTAL>`\ 。否則，這預設為 :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>`\ 。

.. _class_Sky_constant_PROCESS_MODE_QUALITY:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_QUALITY** = ``1``

使用高品質重要性取樣處理輻照度貼圖。得到的結果通常比 :ref:`PROCESS_MODE_REALTIME<class_Sky_constant_PROCESS_MODE_REALTIME>` 的品質更高，但需要花費更多的時間來生成。如果你計畫在運行時修改天空，則不應使用。如果你發現反射不夠模糊，出現了火花或者螢火蟲，請嘗試增大 :ref:`ProjectSettings.rendering/reflections/sky_reflections/ggx_samples<class_ProjectSettings_property_rendering/reflections/sky_reflections/ggx_samples>`\ 。

.. _class_Sky_constant_PROCESS_MODE_INCREMENTAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_INCREMENTAL** = ``2``

使用與 :ref:`PROCESS_MODE_QUALITY<class_Sky_constant_PROCESS_MODE_QUALITY>` 相同的高品質重要性取樣來處理輻照度貼圖，但更新會佔用幾影格。影格數由 :ref:`ProjectSettings.rendering/reflections/sky_reflections/roughness_layers<class_ProjectSettings_property_rendering/reflections/sky_reflections/roughness_layers>` 決定。當需要最高品質的輻照度貼圖，但天空更新緩慢時，請使用該選項。

.. _class_Sky_constant_PROCESS_MODE_REALTIME:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Sky_ProcessMode>` **PROCESS_MODE_REALTIME** = ``3``

使用快速篩選演算法處理輻射度貼圖。一般來說，這會導致品質較低，但執行時間會大大加快。如果需要更好的品質，但仍需要每影格更新天空，請考慮開啟 :ref:`ProjectSettings.rendering/reflections/sky_reflections/fast_filter_high_quality<class_ProjectSettings_property_rendering/reflections/sky_reflections/fast_filter_high_quality>`\ 。

\ **注意：**\ 快速篩選演算法被限制為 256x256 立方體貼圖，因此必須將 :ref:`radiance_size<class_Sky_property_radiance_size>` 設定為 :ref:`RADIANCE_SIZE_256<class_Sky_constant_RADIANCE_SIZE_256>`\ 。否則會輸出警告並忽略覆蓋的輻射度大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Sky_property_process_mode:

.. rst-class:: classref-property

:ref:`ProcessMode<enum_Sky_ProcessMode>` **process_mode** = ``0`` :ref:`🔗<class_Sky_property_process_mode>`

.. rst-class:: classref-property-setget

- |void| **set_process_mode**\ (\ value\: :ref:`ProcessMode<enum_Sky_ProcessMode>`\ )
- :ref:`ProcessMode<enum_Sky_ProcessMode>` **get_process_mode**\ (\ )

The method for generating the radiance map from the sky. The radiance map is a cubemap with increasingly blurry versions of the sky corresponding to different levels of roughness. Radiance maps can be expensive to calculate.

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_radiance_size:

.. rst-class:: classref-property

:ref:`RadianceSize<enum_Sky_RadianceSize>` **radiance_size** = ``3`` :ref:`🔗<class_Sky_property_radiance_size>`

.. rst-class:: classref-property-setget

- |void| **set_radiance_size**\ (\ value\: :ref:`RadianceSize<enum_Sky_RadianceSize>`\ )
- :ref:`RadianceSize<enum_Sky_RadianceSize>` **get_radiance_size**\ (\ )

The **Sky**'s radiance map size. The higher the radiance map size, the more detailed the lighting from the **Sky** will be.

\ **Note:** Some hardware will have trouble with higher radiance sizes, especially :ref:`RADIANCE_SIZE_512<class_Sky_constant_RADIANCE_SIZE_512>` and above. Only use such high values on high-end hardware.

.. rst-class:: classref-item-separator

----

.. _class_Sky_property_sky_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **sky_material** :ref:`🔗<class_Sky_property_sky_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用於繪製該背景的 :ref:`Material<class_Material>`\ 。可以是 :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`\ 、\ :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`\ 、\ :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`\ ，如果你想使用自訂著色器也可以是 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
