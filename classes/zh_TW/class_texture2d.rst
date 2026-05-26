:github_url: hide

.. _class_Texture2D:

Texture2D
=========

**繼承：** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AnimatedTexture<class_AnimatedTexture>`, :ref:`AtlasTexture<class_AtlasTexture>`, :ref:`CameraTexture<class_CameraTexture>`, :ref:`CanvasTexture<class_CanvasTexture>`, :ref:`CompressedTexture2D<class_CompressedTexture2D>`, :ref:`CurveTexture<class_CurveTexture>`, :ref:`CurveXYZTexture<class_CurveXYZTexture>`, :ref:`DPITexture<class_DPITexture>`, :ref:`DrawableTexture2D<class_DrawableTexture2D>`, :ref:`ExternalTexture<class_ExternalTexture>`, :ref:`GradientTexture1D<class_GradientTexture1D>`, :ref:`GradientTexture2D<class_GradientTexture2D>`, :ref:`ImageTexture<class_ImageTexture>`, :ref:`MeshTexture<class_MeshTexture>`, :ref:`NoiseTexture2D<class_NoiseTexture2D>`, :ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`, :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>`, :ref:`Texture2DRD<class_Texture2DRD>`, :ref:`ViewportTexture<class_ViewportTexture>`

用於 2D 和 3D 的紋理。

.. rst-class:: classref-introduction-group

說明
----

紋理的工作原理是在影片硬體中註冊圖像，該圖像在註冊後就可以在 3D 模型、2D :ref:`Sprite2D<class_Sprite2D>`\ 、GUI :ref:`Control<class_Control>` 中使用。

紋理通常是通過從檔中載入來建立的。見 :ref:`@GDScript.load()<class_@GDScript_method_load>`\ 。

\ **Texture2D** 是其他資源的基底類別，無法直接使用。

\ **注意：**\ 由於圖形硬體的限制，最大的紋理尺寸是 16384×16384 圖元。較大的紋理可能無法匯入。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`_draw<class_Texture2D_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`_draw_rect<class_Texture2D_private_method__draw_rect>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                    |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`_draw_rect_region<class_Texture2D_private_method__draw_rect_region>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const|             |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>` | :ref:`_get_format<class_Texture2D_private_method__get_format>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                       |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`_get_height<class_Texture2D_private_method__get_height>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                            |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`        | :ref:`_get_image<class_Texture2D_private_method__get_image>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                         |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`_get_mipmap_count<class_Texture2D_private_method__get_mipmap_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`_get_width<class_Texture2D_private_method__get_width>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                              |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`_has_alpha<class_Texture2D_private_method__has_alpha>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                         |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`_has_mipmaps<class_Texture2D_private_method__has_mipmaps>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                     |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`_is_pixel_opaque<class_Texture2D_private_method__is_pixel_opaque>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                       |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`  | :ref:`create_placeholder<class_Texture2D_method_create_placeholder>`\ (\ ) |const|                                                                                                                                                                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`draw<class_Texture2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                 |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`draw_rect<class_Texture2D_method_draw_rect>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                           | :ref:`draw_rect_region<class_Texture2D_method_draw_rect_region>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>` | :ref:`get_format<class_Texture2D_method_get_format>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`get_height<class_Texture2D_method_get_height>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`        | :ref:`get_image<class_Texture2D_method_get_image>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`get_mipmap_count<class_Texture2D_method_get_mipmap_count>`\ (\ ) |const|                                                                                                                                                                                                                                                               |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`    | :ref:`get_size<class_Texture2D_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                               |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`            | :ref:`get_width<class_Texture2D_method_get_width>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`has_alpha<class_Texture2D_method_has_alpha>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`          | :ref:`has_mipmaps<class_Texture2D_method_has_mipmaps>`\ (\ ) |const|                                                                                                                                                                                                                                                                         |
   +----------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Texture2D_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw>`

當請求在 :ref:`CanvasItem<class_CanvasItem>` 上繪製整個 **Texture2D** 時呼叫，左上角的偏移量由 ``pos`` 指定。\ ``modulate`` 指定繪製顏色的乘數，\ ``transpose`` 指定繪製是否應按列主順序而不是行主循序執行（會導致順時針旋轉 90 度）。

\ **注意：**\ 僅用於 2D 算繪，不用於 3D。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect:

.. rst-class:: classref-method

|void| **_draw_rect**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect>`

請求將 **Texture2D** 繪製到 :ref:`CanvasItem<class_CanvasItem>` 的指定 ``rect`` 上時呼叫。\ ``modulate`` 指定的是繪製時顏色的乘數，而 ``transpose`` 指定的是繪製時是否使用列優先順序，而不是使用行優先順序（產生順時針 90 度旋轉）。

\ **注意：**\ 僅在 2D 算繪時使用，3D 不使用。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect_region:

.. rst-class:: classref-method

|void| **_draw_rect_region**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect_region>`

請求將 **Texture2D** 由 ``src_rect`` 的座標指定的部分繪製到 :ref:`CanvasItem<class_CanvasItem>` 的指定 ``rect`` 上時呼叫。\ ``modulate`` 指定的是繪製時顏色的乘數，而 ``transpose`` 指定的是繪製時是否使用列優先順序，而不是使用行優先順序（產生順時針 90 度旋轉）。

\ **注意：**\ 僅在 2D 算繪時使用，3D 不使用。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_format>`

Called when :ref:`get_format()<class_Texture2D_method_get_format>` is called.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_height>`

查詢該 **Texture2D** 的高度時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **_get_image**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_image>`

Called when :ref:`get_image()<class_Texture2D_method_get_image>` is called.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_mipmap_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_mipmap_count**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_mipmap_count>`

Called when :ref:`get_mipmap_count()<class_Texture2D_method_get_mipmap_count>` is called.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_width>`

查詢該 **Texture2D** 的寬度時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_alpha**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__has_alpha>`

查詢該 **Texture2D** 是否存在 alpha 通道時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__has_mipmaps>`

Called when :ref:`has_mipmaps()<class_Texture2D_method_has_mipmaps>` is called.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_pixel_opaque**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__is_pixel_opaque>`

查詢 **Texture2D** 中指定位置 ``(x, y)`` 的圖元的不透明狀態時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_create_placeholder>`

建立該資源的預留位置版本（\ :ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw>`

使用 :ref:`RenderingServer<class_RenderingServer>` API 在 :ref:`CanvasItem<class_CanvasItem>` 上的指定位置 ``position`` 繪製該紋理。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect:

.. rst-class:: classref-method

|void| **draw_rect**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect>`

使用 :ref:`RenderingServer<class_RenderingServer>` API 在 :ref:`CanvasItem<class_CanvasItem>` 上繪製該紋理。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect_region:

.. rst-class:: classref-method

|void| **draw_rect_region**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect_region>`

使用 :ref:`RenderingServer<class_RenderingServer>` API 在 :ref:`CanvasItem<class_CanvasItem>` 上繪製紋理的一部分。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_format>`

Returns the image format of the texture.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_height>`

返回該紋理的高度，單位為圖元。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_image>`

Returns an :ref:`Image<class_Image>` that is a copy of data from this **Texture2D** (a new :ref:`Image<class_Image>` is created each time). :ref:`Image<class_Image>`\ s can be accessed and manipulated directly.

\ **Note:** This will return ``null`` if this **Texture2D** is invalid.

\ **Note:** This will fetch the texture data from the GPU, which might cause performance problems when overused. Avoid calling :ref:`get_image()<class_Texture2D_method_get_image>` every frame, especially on large textures.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_mipmap_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_mipmap_count**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_mipmap_count>`

Returns the number of mipmaps of the texture.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_size>`

返回該紋理的大小，單位為圖元。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_width>`

返回該紋理的寬度，單位為圖元。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alpha**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_has_alpha>`

如果該 **Texture2D** 具有 Alpha 通道，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_has_mipmaps>`

Returns ``true`` if the texture has mipmaps.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
