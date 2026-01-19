:github_url: hide

.. _class_RenderSceneBuffersRD:

RenderSceneBuffersRD
====================

**繼承：** :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Render scene buffer implementation for the RenderingDevice based renderers.

.. rst-class:: classref-introduction-group

說明
----

This object manages all 3D rendering buffers for the rendering device based renderers. An instance of this object is created for every viewport that has 3D rendering enabled. See also :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

All buffers are organized in **contexts**. The default context is called **render_buffers** and can contain amongst others the color buffer, depth buffer, velocity buffers, VRS density map and MSAA variants of these buffers.

Buffers are only guaranteed to exist during rendering of the viewport.

\ **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`clear_context<class_RenderSceneBuffersRD_method_clear_context>`\ (\ context\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`create_texture<class_RenderSceneBuffersRD_method_create_texture>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, data_format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`, usage_bits\: :ref:`int<class_int>`, texture_samples\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`, size\: :ref:`Vector2i<class_Vector2i>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, unique\: :ref:`bool<class_bool>`, discardable\: :ref:`bool<class_bool>`\ ) |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`create_texture_from_format<class_RenderSceneBuffersRD_method_create_texture_from_format>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, format\: :ref:`RDTextureFormat<class_RDTextureFormat>`, view\: :ref:`RDTextureView<class_RDTextureView>`, unique\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                   |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`create_texture_view<class_RenderSceneBuffersRD_method_create_texture_view>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, view_name\: :ref:`StringName<class_StringName>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ )                                                                                                                                                                                                                                                          |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_color_layer<class_RenderSceneBuffersRD_method_get_color_layer>`\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_color_texture<class_RenderSceneBuffersRD_method_get_color_texture>`\ (\ msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_depth_layer<class_RenderSceneBuffersRD_method_get_depth_layer>`\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_depth_texture<class_RenderSceneBuffersRD_method_get_depth_texture>`\ (\ msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`get_fsr_sharpness<class_RenderSceneBuffersRD_method_get_fsr_sharpness>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                          | :ref:`get_internal_size<class_RenderSceneBuffersRD_method_get_internal_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`                   | :ref:`get_msaa_3d<class_RenderSceneBuffersRD_method_get_msaa_3d>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_render_target<class_RenderSceneBuffersRD_method_get_render_target>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` | :ref:`get_scaling_3d_mode<class_RenderSceneBuffersRD_method_get_scaling_3d_mode>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` | :ref:`get_screen_space_aa<class_RenderSceneBuffersRD_method_get_screen_space_aa>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                          | :ref:`get_target_size<class_RenderSceneBuffersRD_method_get_target_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_texture<class_RenderSceneBuffersRD_method_get_texture>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RDTextureFormat<class_RDTextureFormat>`                            | :ref:`get_texture_format<class_RenderSceneBuffersRD_method_get_texture_format>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`               | :ref:`get_texture_samples<class_RenderSceneBuffersRD_method_get_texture_samples>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_texture_slice<class_RenderSceneBuffersRD_method_get_texture_slice>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                 |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                          | :ref:`get_texture_slice_size<class_RenderSceneBuffersRD_method_get_texture_slice_size>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, mipmap\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_texture_slice_view<class_RenderSceneBuffersRD_method_get_texture_slice_view>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ )                                                                                                                                                                     |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`get_use_debanding<class_RenderSceneBuffersRD_method_get_use_debanding>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`get_use_taa<class_RenderSceneBuffersRD_method_get_use_taa>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_velocity_layer<class_RenderSceneBuffersRD_method_get_velocity_layer>`\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                    | :ref:`get_velocity_texture<class_RenderSceneBuffersRD_method_get_velocity_texture>`\ (\ msaa\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                                                                                                                                                                                                                              |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                    | :ref:`get_view_count<class_RenderSceneBuffersRD_method_get_view_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`has_texture<class_RenderSceneBuffersRD_method_has_texture>`\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RenderSceneBuffersRD_method_clear_context:

.. rst-class:: classref-method

|void| **clear_context**\ (\ context\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_clear_context>`

釋放與這個本文相關的所有緩衝。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, data_format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`, usage_bits\: :ref:`int<class_int>`, texture_samples\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`, size\: :ref:`Vector2i<class_Vector2i>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, unique\: :ref:`bool<class_bool>`, discardable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture>`

使用給定的定義建立新紋理，並將其快取在給定的名稱下。如果現有紋理已存在，則將傳回該紋理。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture_from_format:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture_from_format**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, format\: :ref:`RDTextureFormat<class_RDTextureFormat>`, view\: :ref:`RDTextureView<class_RDTextureView>`, unique\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture_from_format>`

使用給定格式建立新紋理，並在給定名稱下檢視並快取該紋理。如果現有紋理已存在，則傳回該紋理。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_create_texture_view:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **create_texture_view**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, view_name\: :ref:`StringName<class_StringName>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_create_texture_view>`

Create a new texture view for an existing texture and cache this under the given ``view_name``. Will return the existing texture view if it already exists. Will error if the source texture doesn't exist.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_color_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_color_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_color_layer>`

Returns the specified layer from the color texture we are rendering 3D content to.

If ``msaa`` is ``true`` and MSAA is enabled, this returns the MSAA variant of the buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_color_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_color_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_color_texture>`

Returns the color texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.

If ``msaa`` is ``true`` and MSAA is enabled, this returns the MSAA variant of the buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_depth_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_depth_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_depth_layer>`

Returns the specified layer from the depth texture we are rendering 3D content to.

If ``msaa`` is ``true`` and MSAA is enabled, this returns the MSAA variant of the buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_depth_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_depth_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_depth_texture>`

Returns the depth texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.

If ``msaa`` is ``true`` and MSAA is enabled, this returns the MSAA variant of the buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_fsr_sharpness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fsr_sharpness**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_fsr_sharpness>`

Returns the FSR sharpness value used while rendering the 3D content (if :ref:`get_scaling_3d_mode()<class_RenderSceneBuffersRD_method_get_scaling_3d_mode>` is an FSR mode).

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_internal_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_internal_size**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_internal_size>`

傳回預設建立紋理的算繪緩衝區的內部大小（放大前的大小）。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_msaa_3d:

.. rst-class:: classref-method

:ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **get_msaa_3d**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_msaa_3d>`

Returns the applied 3D MSAA mode for this viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_render_target:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_render_target**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_render_target>`

返回與給定頂點關聯的中繼資料。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_scaling_3d_mode:

.. rst-class:: classref-method

:ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **get_scaling_3d_mode**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_scaling_3d_mode>`

Returns the scaling mode used for upscaling.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_screen_space_aa:

.. rst-class:: classref-method

:ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **get_screen_space_aa**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_screen_space_aa>`

Returns the screen-space antialiasing method applied.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_target_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_target_size**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_target_size>`

Returns the target size of the render buffer (size after upscaling).

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture>`

返回該紋理的寬度，單位為圖元。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_format:

.. rst-class:: classref-method

:ref:`RDTextureFormat<class_RDTextureFormat>` **get_texture_format**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_format>`

傳回建立快取紋理所使用的紋理格式資訊。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_samples:

.. rst-class:: classref-method

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_texture_samples**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_samples>`

Returns the number of MSAA samples used.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture_slice**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice>`

將指定的字元算繪到字形快取紋理。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_texture_slice_size**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, mipmap\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice_size>`

返回該紋理的大小，單位為圖元。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_texture_slice_view:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_texture_slice_view**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, layer\: :ref:`int<class_int>`, mipmap\: :ref:`int<class_int>`, layers\: :ref:`int<class_int>`, mipmaps\: :ref:`int<class_int>`, view\: :ref:`RDTextureView<class_RDTextureView>`\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_texture_slice_view>`

傳回快取紋理的切片（圖層或 mipmap）的特定視圖。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_use_debanding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_debanding**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_use_debanding>`

Returns ``true`` if debanding is enabled.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_use_taa:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_use_taa**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_use_taa>`

如果啟用 TAA，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_velocity_layer:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_velocity_layer**\ (\ layer\: :ref:`int<class_int>`, msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_velocity_layer>`

從我們算繪 3D 內容的速度紋理傳回指定圖層。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_velocity_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_velocity_texture**\ (\ msaa\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_RenderSceneBuffersRD_method_get_velocity_texture>`

Returns the velocity texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.

If ``msaa`` is **true** and MSAA is enabled, this returns the MSAA variant of the buffer.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_get_view_count>`

返回關聯視口的視圖數。

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersRD_method_has_texture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_texture**\ (\ context\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_RenderSceneBuffersRD_method_has_texture>`

如果存在使用該名稱的緩衝紋理，則返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
