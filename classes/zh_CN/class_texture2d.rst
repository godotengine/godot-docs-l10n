:github_url: hide

.. _class_Texture2D:

Texture2D
=========

**继承：** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AnimatedTexture<class_AnimatedTexture>`, :ref:`AtlasTexture<class_AtlasTexture>`, :ref:`CameraTexture<class_CameraTexture>`, :ref:`CanvasTexture<class_CanvasTexture>`, :ref:`CompressedTexture2D<class_CompressedTexture2D>`, :ref:`CurveTexture<class_CurveTexture>`, :ref:`CurveXYZTexture<class_CurveXYZTexture>`, :ref:`DPITexture<class_DPITexture>`, :ref:`ExternalTexture<class_ExternalTexture>`, :ref:`GradientTexture1D<class_GradientTexture1D>`, :ref:`GradientTexture2D<class_GradientTexture2D>`, :ref:`ImageTexture<class_ImageTexture>`, :ref:`MeshTexture<class_MeshTexture>`, :ref:`NoiseTexture2D<class_NoiseTexture2D>`, :ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`, :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>`, :ref:`Texture2DRD<class_Texture2DRD>`, :ref:`ViewportTexture<class_ViewportTexture>`

用于 2D 和 3D 的纹理。

.. rst-class:: classref-introduction-group

描述
----

纹理的工作原理是在视频硬件中注册图像，该图像在注册后就可以在 3D 模型、2D :ref:`Sprite2D<class_Sprite2D>`\ 、GUI :ref:`Control<class_Control>` 中使用。

纹理通常是通过从文件中加载来创建的。见 :ref:`@GDScript.load()<class_@GDScript_method_load>`\ 。

\ **Texture2D** 是其他资源的基类，无法直接使用。

\ **注意：**\ 由于图形硬件的限制，最大的纹理尺寸是 16384×16384 像素。较大的纹理可能无法导入。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_draw<class_Texture2D_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                           |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_draw_rect<class_Texture2D_private_method__draw_rect>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_draw_rect_region<class_Texture2D_private_method__draw_rect_region>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const|             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`_get_height<class_Texture2D_private_method__get_height>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`_get_width<class_Texture2D_private_method__get_width>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                              |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_has_alpha<class_Texture2D_private_method__has_alpha>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                         |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_is_pixel_opaque<class_Texture2D_private_method__is_pixel_opaque>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                       |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Texture2D_method_create_placeholder>`\ (\ ) |const|                                                                                                                                                                                                                                                           |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`draw<class_Texture2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`draw_rect<class_Texture2D_method_draw_rect>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`draw_rect_region<class_Texture2D_method_draw_rect_region>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_height<class_Texture2D_method_get_height>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`       | :ref:`get_image<class_Texture2D_method_get_image>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`get_size<class_Texture2D_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                               |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_width<class_Texture2D_method_get_width>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_alpha<class_Texture2D_method_has_alpha>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Texture2D_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw>`

当请求在 :ref:`CanvasItem<class_CanvasItem>` 上绘制整个 **Texture2D** 时调用，左上角的偏移量由 ``pos`` 指定。\ ``modulate`` 指定绘制颜色的乘数，\ ``transpose`` 指定绘制是否应按列主顺序而不是行主顺序执行（会导致顺时针旋转 90 度）。

\ **注意：**\ 仅用于 2D 渲染，不用于 3D。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect:

.. rst-class:: classref-method

|void| **_draw_rect**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect>`

请求将 **Texture2D** 绘制到 :ref:`CanvasItem<class_CanvasItem>` 的指定 ``rect`` 上时调用。\ ``modulate`` 指定的是绘制时颜色的乘数，而 ``transpose`` 指定的是绘制时是否使用列优先顺序，而不是使用行优先顺序（产生顺时针 90 度旋转）。

\ **注意：**\ 仅在 2D 渲染时使用，3D 不使用。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect_region:

.. rst-class:: classref-method

|void| **_draw_rect_region**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect_region>`

请求将 **Texture2D** 由 ``src_rect`` 的坐标指定的部分绘制到 :ref:`CanvasItem<class_CanvasItem>` 的指定 ``rect`` 上时调用。\ ``modulate`` 指定的是绘制时颜色的乘数，而 ``transpose`` 指定的是绘制时是否使用列优先顺序，而不是使用行优先顺序（产生顺时针 90 度旋转）。

\ **注意：**\ 仅在 2D 渲染时使用，3D 不使用。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_height>`

查询该 **Texture2D** 的高度时调用。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_width>`

查询该 **Texture2D** 的宽度时调用。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_alpha**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__has_alpha>`

查询该 **Texture2D** 是否存在 alpha 通道时调用。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_pixel_opaque**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__is_pixel_opaque>`

查询 **Texture2D** 中指定位置 ``(x, y)`` 的像素的不透明状态时调用。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_create_placeholder>`

创建该资源的占位符版本（\ :ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw>`

使用 :ref:`RenderingServer<class_RenderingServer>` API 在 :ref:`CanvasItem<class_CanvasItem>` 上的指定位置 ``position`` 绘制该纹理。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect:

.. rst-class:: classref-method

|void| **draw_rect**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect>`

使用 :ref:`RenderingServer<class_RenderingServer>` API 在 :ref:`CanvasItem<class_CanvasItem>` 上绘制该纹理。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect_region:

.. rst-class:: classref-method

|void| **draw_rect_region**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect_region>`

使用 :ref:`RenderingServer<class_RenderingServer>` API 在 :ref:`CanvasItem<class_CanvasItem>` 上绘制纹理的一部分。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_height>`

返回该纹理的高度，单位为像素。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_image>`

返回一个 :ref:`Image<class_Image>`\ ，该对象是这个 **Texture2D** 中数据的副本（每次都会新建一个 :ref:`Image<class_Image>`\ ）。可以直接访问并操作 :ref:`Image<class_Image>`\ 。

\ **注意：**\ 如果该 **Texture2D** 无效，则会返回 ``null``\ 。

\ **注意：**\ 这个函数会从 GPU 获取纹理数据，过度使用可能会引起性能问题。请避免每一帧都调用 :ref:`get_image()<class_Texture2D_method_get_image>`\ ，尤其是大型纹理。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_size>`

返回该纹理的大小，单位为像素。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_width>`

返回该纹理的宽度，单位为像素。

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alpha**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_has_alpha>`

如果该 **Texture2D** 具有 Alpha 通道，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
