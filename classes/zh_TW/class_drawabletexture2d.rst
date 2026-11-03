:github_url: hide

.. _class_DrawableTexture2D:

DrawableTexture2D
=================

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一種支援通過 Blit 呼叫對自身進行繪製的 2D 紋理。

.. rst-class:: classref-introduction-group

說明
----

一種可以通過 blit 呼叫進行修改的 2D 紋理，它能夠將目標紋理的內容複製到自身上。這種紋理主要設計用於程式碼中進行管理，使用者必須先呼叫 :ref:`setup()<class_DrawableTexture2D_method_setup>` 來初始化狀態，然後才能開始繪製。每一次 :ref:`blit_rect()<class_DrawableTexture2D_method_blit_rect>` 呼叫至少需要傳入一個矩形（指定繪製的目標區域）以及另一張紋理（作為繪製的內容來源）。這些繪製呼叫會使用一個名為 Texture_Blit 的著色器（Shader）來逐像素處理和計算最終結果。使用者也可以提供自己編寫的 ShaderMaterial，配合自訂的 Texture_Blit 著色器來實現更複雜的繪製行為。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`blit_rect<class_DrawableTexture2D_method_blit_rect>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, source\: :ref:`Texture2D<class_Texture2D>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ )                                                                                                                                           |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`blit_rect_multi<class_DrawableTexture2D_method_blit_rect_multi>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, sources\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\], extra_targets\: :ref:`Array<class_Array>`\[:ref:`DrawableTexture2D<class_DrawableTexture2D>`\], modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`generate_mipmaps<class_DrawableTexture2D_method_generate_mipmaps>`\ (\ )                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_use_mipmaps<class_DrawableTexture2D_method_get_use_mipmaps>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_format<class_DrawableTexture2D_method_set_format>`\ (\ format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`\ )                                                                                                                                                                                                                                                                                                   |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_use_mipmaps<class_DrawableTexture2D_method_set_use_mipmaps>`\ (\ mipmaps\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                                                                                                                             |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`setup<class_DrawableTexture2D_method_setup>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), use_mipmaps\: :ref:`bool<class_bool>` = false\ )                                                                                                                                        |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_DrawableTexture2D_DrawableFormat:

.. rst-class:: classref-enumeration

enum **DrawableFormat**: :ref:`🔗<enum_DrawableTexture2D_DrawableFormat>`

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBA8:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBA8** = ``0``

一種具有四個分量的 OpenGL 紋理格式 RGBA，每個分量的位元深度度均為 8 位元。

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBA8_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBA8_SRGB** = ``1``

一種具有四個分量、每個分量位元深度度均為 8 位元的 OpenGL RGBA 紋理格式。

當向其進行繪製時，會執行從 sRGB 到線性顏色空間的轉換。

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBAH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBAH** = ``2``

一種 OpenGL 紋理格式 GL_RGBA16F，它包含四個分量，每個分量都是一個 16 位元的 "半精度" 浮點數值。

.. _class_DrawableTexture2D_constant_DRAWABLE_FORMAT_RGBAF:

.. rst-class:: classref-enumeration-constant

:ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>` **DRAWABLE_FORMAT_RGBAF** = ``3``

一種 OpenGL 紋理格式 GL_RGBA32F，它包含四個分量，每個分量都是一個 32 位元的浮點數值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_DrawableTexture2D_method_blit_rect:

.. rst-class:: classref-method

|void| **blit_rect**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, source\: :ref:`Texture2D<class_Texture2D>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_DrawableTexture2D_method_blit_rect>`

**實驗性：** 此方法可能在未來版本中變更或移除。

通過從指定的 ``source``\ （來源紋理）複製內容，繪製到本紋理的指定 ``rect``\ （矩形區域）上。可以傳入一個 ``modulate``\ （調制）顏色供著色器使用，預設值為白色。\ ``mipmap`` 值可以指定將內容繪製到更低的 mipmap 層級上。\ ``material`` 參數可以接收一個帶有 TextureBlit 著色器的 ShaderMaterial，從而實現自訂的繪製行為。

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_blit_rect_multi:

.. rst-class:: classref-method

|void| **blit_rect_multi**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, sources\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\], extra_targets\: :ref:`Array<class_Array>`\[:ref:`DrawableTexture2D<class_DrawableTexture2D>`\], modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), mipmap\: :ref:`int<class_int>` = 0, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_DrawableTexture2D_method_blit_rect_multi>`

**實驗性：** 此方法可能在未來版本中變更或移除。

繪製到本紋理的指定 ``rect``\ （矩形區域）上，同時也會繪製到最多 3 個 DrawableTexture ``extra_targets``\ （額外目標）上。所有 ``extra_targets`` 必須與原始目標（也就是呼叫該方法的紋理本身）具有相同的大小和 DrawableFormat（可繪製格式），否則著色器（Shader）可能會執行失敗。該方法最多支援傳入 4 張 Texture ``sources``\ （來源紋理），如果傳入的 ``sources`` 不足 4 張，缺失的部分將會自動替換為預設的黑色紋理。

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_generate_mipmaps:

.. rst-class:: classref-method

|void| **generate_mipmaps**\ (\ ) :ref:`🔗<class_DrawableTexture2D_method_generate_mipmaps>`

按需重新計算該紋理的 Mipmap（多級漸遠紋理）。

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_get_use_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_mipmaps**\ (\ ) |const| :ref:`🔗<class_DrawableTexture2D_method_get_use_mipmaps>`

如果這個 DrawableTexture（可繪製紋理）被設定為使用 Mipmap，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_set_format:

.. rst-class:: classref-method

|void| **set_format**\ (\ format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`\ ) :ref:`🔗<class_DrawableTexture2D_method_set_format>`

設定這個 DrawableTexture（可繪製紋理）的格式。

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_set_use_mipmaps:

.. rst-class:: classref-method

|void| **set_use_mipmaps**\ (\ mipmaps\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_DrawableTexture2D_method_set_use_mipmaps>`

設定此 DrawableTexture 是否應該使用 mipmap（多級漸遠紋理）。

.. rst-class:: classref-item-separator

----

.. _class_DrawableTexture2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, format\: :ref:`DrawableFormat<enum_DrawableTexture2D_DrawableFormat>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), use_mipmaps\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_DrawableTexture2D_method_setup>`

**實驗性：** 此方法可能在未來版本中變更或移除。

將 DrawableTexture 初始化為一張指定 ``width``\ （寬度）、\ ``height``\ （高度）和 ``format``\ （格式）的白色紋理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
