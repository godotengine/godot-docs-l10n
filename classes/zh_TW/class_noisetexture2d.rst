:github_url: hide

.. _class_NoiseTexture2D:

NoiseTexture2D
==============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

由 :ref:`Noise<class_Noise>` 物件生成的雜訊所填充的紋理。

.. rst-class:: classref-introduction-group

說明
----

使用 :ref:`FastNoiseLite<class_FastNoiseLite>` 或其他庫來填充所需大小的紋理資料。\ **NoiseTexture2D** 還能生成法線貼圖紋理。

該類在內部使用 :ref:`Thread<class_Thread>` 生成紋理資料，因此如果生成過程尚未完成，\ :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` 可能會返回 ``null``\ 。在這種情況下，需要等待紋理生成後再存取影像和生成的位元組資料：

::

    var texture = NoiseTexture2D.new()
    texture.noise = FastNoiseLite.new()
    await texture.changed
    var image = texture.get_image()
    var data = image.get_data()

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`as_normal_map<class_NoiseTexture2D_property_as_normal_map>`               | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`bump_strength<class_NoiseTexture2D_property_bump_strength>`               | ``8.0``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Gradient<class_Gradient>` | :ref:`color_ramp<class_NoiseTexture2D_property_color_ramp>`                     |                                                                                        |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`generate_mipmaps<class_NoiseTexture2D_property_generate_mipmaps>`         | ``true``                                                                               |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`height<class_NoiseTexture2D_property_height>`                             | ``512``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`in_3d_space<class_NoiseTexture2D_property_in_3d_space>`                   | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`invert<class_NoiseTexture2D_property_invert>`                             | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Noise<class_Noise>`       | :ref:`noise<class_NoiseTexture2D_property_noise>`                               |                                                                                        |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`normalize<class_NoiseTexture2D_property_normalize>`                       | ``true``                                                                               |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | resource_local_to_scene                                                         | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`seamless<class_NoiseTexture2D_property_seamless>`                         | ``false``                                                                              |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` | ``0.1``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`width<class_NoiseTexture2D_property_width>`                               | ``512``                                                                                |
   +---------------------------------+---------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NoiseTexture2D_property_as_normal_map:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **as_normal_map** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_as_normal_map>`

.. rst-class:: classref-property-setget

- |void| **set_as_normal_map**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normal_map**\ (\ )

如果為 ``true``\ ，產生的紋理包含一個由原始雜訊建立的法線貼圖，解釋為凹凸貼圖。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_bump_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **bump_strength** = ``8.0`` :ref:`🔗<class_NoiseTexture2D_property_bump_strength>`

.. rst-class:: classref-property-setget

- |void| **set_bump_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bump_strength**\ (\ )

該紋理中使用的凹凸貼圖的強度。更高的值會使凹凸貼圖看起來更大，而更低的值會使它們看起來更柔和。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_NoiseTexture2D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

:ref:`Gradient<class_Gradient>`\ ，用於將每個圖元的亮度對應到一個顏色值。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``true`` :ref:`🔗<class_NoiseTexture2D_property_generate_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_generate_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_generating_mipmaps**\ (\ )

決定是否為該紋理生成 mipmap。啟用該屬性可減少紋理鋸齒，但會增加約 33% 的記憶體佔用，生成雜訊紋理也可能需要更長的時間。

\ **注意：**\ 使用該 **NoiseTexture2D** 的材質需要啟用 mipmap 篩選才能讓 :ref:`generate_mipmaps<class_NoiseTexture2D_property_generate_mipmaps>` 生效。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``512`` :ref:`🔗<class_NoiseTexture2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

生成的紋理的高度（單位為圖元）。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_in_3d_space:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **in_3d_space** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_in_3d_space>`

.. rst-class:: classref-property-setget

- |void| **set_in_3d_space**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_in_3d_space**\ (\ )

決定是否在 3D 空間中計算雜訊影像。可能會導致對比度降低。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_invert:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_invert>`

.. rst-class:: classref-property-setget

- |void| **set_invert**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert**\ (\ )

如果為 ``true``\ ，則反轉該雜訊紋理。白變黑，黑變白。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_noise:

.. rst-class:: classref-property

:ref:`Noise<class_Noise>` **noise** :ref:`🔗<class_NoiseTexture2D_property_noise>`

.. rst-class:: classref-property-setget

- |void| **set_noise**\ (\ value\: :ref:`Noise<class_Noise>`\ )
- :ref:`Noise<class_Noise>` **get_noise**\ (\ )

:ref:`Noise<class_Noise>` 物件的實例。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize** = ``true`` :ref:`🔗<class_NoiseTexture2D_property_normalize>`

.. rst-class:: classref-property-setget

- |void| **set_normalize**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_normalized**\ (\ )

如果為 ``true``\ ，來自雜訊產生器的雜訊影像，將被正規化到範圍 ``0.0`` 到 ``1.0``\ 。

關閉正規化會影響對比度，並允許生成非重複的可平鋪雜訊紋理。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_seamless:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **seamless** = ``false`` :ref:`🔗<class_NoiseTexture2D_property_seamless>`

.. rst-class:: classref-property-setget

- |void| **set_seamless**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_seamless**\ (\ )

如果為 ``true``\ ，則從 :ref:`Noise<class_Noise>` 資源請求無縫紋理。

\ **注意：**\ 與非無縫雜訊相比，無縫雜訊紋理可能需要更長的時間來生成，並且/或者可能具有較低的對比度，具體取決於所使用的 :ref:`Noise<class_Noise>` 資源。這是因為一些實作使用更高的維度來生成無縫雜訊。

\ **注意：**\ 預設的 :ref:`FastNoiseLite<class_FastNoiseLite>` 實作在生成無縫紋理時使用退回路徑。如果使用的 :ref:`width<class_NoiseTexture2D_property_width>` 或 :ref:`height<class_NoiseTexture2D_property_height>` 小於預設值，你可能需要通過增大 :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` 來讓無縫混合更高效。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_seamless_blend_skirt:

.. rst-class:: classref-property

:ref:`float<class_float>` **seamless_blend_skirt** = ``0.1`` :ref:`🔗<class_NoiseTexture2D_property_seamless_blend_skirt>`

.. rst-class:: classref-property-setget

- |void| **set_seamless_blend_skirt**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_seamless_blend_skirt**\ (\ )

用於無縫紋理生成的預設/退回實作。它決定接縫混合的距離。較高的值可能會導致較少的細節和對比度。詳情見 :ref:`Noise<class_Noise>`\ 。

\ **注意：**\ 如果使用的 :ref:`width<class_NoiseTexture2D_property_width>` 或 :ref:`height<class_NoiseTexture2D_property_height>` 小於預設值，你可能需要通過增大 :ref:`seamless_blend_skirt<class_NoiseTexture2D_property_seamless_blend_skirt>` 來讓無縫混合更高效。

.. rst-class:: classref-item-separator

----

.. _class_NoiseTexture2D_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``512`` :ref:`🔗<class_NoiseTexture2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

生成的紋理的寬度（單位為圖元）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
