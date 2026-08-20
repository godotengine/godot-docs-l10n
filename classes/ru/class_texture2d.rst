:github_url: hide

.. _class_Texture2D:

Texture2D
=========

**Наследует:** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AnimatedTexture<class_AnimatedTexture>`, :ref:`AtlasTexture<class_AtlasTexture>`, :ref:`CameraTexture<class_CameraTexture>`, :ref:`CanvasTexture<class_CanvasTexture>`, :ref:`CompressedTexture2D<class_CompressedTexture2D>`, :ref:`CurveTexture<class_CurveTexture>`, :ref:`CurveXYZTexture<class_CurveXYZTexture>`, :ref:`DPITexture<class_DPITexture>`, :ref:`DrawableTexture2D<class_DrawableTexture2D>`, :ref:`ExternalTexture<class_ExternalTexture>`, :ref:`GradientTexture1D<class_GradientTexture1D>`, :ref:`GradientTexture2D<class_GradientTexture2D>`, :ref:`ImageTexture<class_ImageTexture>`, :ref:`MeshTexture<class_MeshTexture>`, :ref:`NoiseTexture2D<class_NoiseTexture2D>`, :ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`, :ref:`PortableCompressedTexture2D<class_PortableCompressedTexture2D>`, :ref:`Texture2DRD<class_Texture2DRD>`, :ref:`ViewportTexture<class_ViewportTexture>`

Текстура для 2D и 3D.

.. rst-class:: classref-introduction-group

Описание
----------------

Текстура работает путем регистрации изображения в видеооборудовании, которое затем может использоваться в 3D-моделях или 2D :ref:`Sprite2D<class_Sprite2D>` или GUI :ref:`Control<class_Control>`.

Текстуры часто создаются путем загрузки их из файла. См. :ref:`@GDScript.load()<class_@GDScript_method_load>`.

\ **Texture2D** является базой для других ресурсов. Его нельзя использовать напрямую.

\ **Примечание:** Максимальный размер текстуры составляет 16384×16384 пикселей из-за ограничений графического оборудования. Большие текстуры могут не импортироваться.

.. rst-class:: classref-reftable-group

Методы
------------

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

Описания метода
------------------------------

.. _class_Texture2D_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw>`

Вызывается, когда запрашивается отрисовка всего **Texture2D** поверх :ref:`CanvasItem<class_CanvasItem>` со смещением в левом верхнем углу, указанным в ``pos``. ``modulate`` указывает множитель для отрисовываемых цветов, а ``transpose`` указывает, следует ли выполнять отрисовку в порядке столбцов вместо порядка строк (что приводит к повороту на 90 градусов по часовой стрелке).

\ **Примечание:** Это используется только в 2D-рендеринге, а не в 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect:

.. rst-class:: classref-method

|void| **_draw_rect**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect>`

Вызывается, когда **Texture2D** запрашивается для рисования на указанном ``rect`` :ref:`CanvasItem<class_CanvasItem>`. ``modulate`` указывает множитель для рисуемых цветов, а ``transpose`` указывает, должно ли рисование выполняться в порядке столбцов вместо порядка строк (что приводит к повороту на 90 градусов по часовой стрелке).

\ **Примечание:** Это используется только в 2D-рендеринге, а не в 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__draw_rect_region:

.. rst-class:: classref-method

|void| **_draw_rect_region**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>`, transpose\: :ref:`bool<class_bool>`, clip_uv\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__draw_rect_region>`

Вызывается, когда часть **Texture2D**, указанная координатами ``src_rect``, запрашивается для рисования на указанном ``rect`` :ref:`CanvasItem<class_CanvasItem>`. ``modulate`` указывает множитель для рисуемых цветов, а ``transpose`` указывает, должно ли рисование выполняться в порядке столбцов вместо порядка строк (что приводит к повороту на 90 градусов по часовой стрелке).

\ **Примечание:** Это используется только в 2D-рендеринге, а не в 3D.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_format>`

Вызывается при вызове :ref:`get_format()<class_Texture2D_method_get_format>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_height>`

Вызывается при запросе высоты **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **_get_image**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_image>`

Вызывается при вызове :ref:`get_image()<class_Texture2D_method_get_image>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_mipmap_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_mipmap_count**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__get_mipmap_count>`

Вызывается при вызове :ref:`get_mipmap_count()<class_Texture2D_method_get_mipmap_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture2D_private_method__get_width>`

Вызывается при запросе ширины **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_alpha**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__has_alpha>`

Вызывается при запросе наличия альфа-канала в **Texture2D**.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__has_mipmaps>`

Вызывается при вызове :ref:`has_mipmaps()<class_Texture2D_method_has_mipmaps>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_private_method__is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_pixel_opaque**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_Texture2D_private_method__is_pixel_opaque>`

Вызывается, когда запрашивается непрозрачное состояние пикселя в **Texture2D** в указанной позиции ``(x, y)``.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_create_placeholder>`

Создайте замещающую версию этого ресурса (:ref:`PlaceholderTexture2D<class_PlaceholderTexture2D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, position\: :ref:`Vector2<class_Vector2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw>`

Рисует текстуру, используя :ref:`CanvasItem<class_CanvasItem>` с API :ref:`RenderingServer<class_RenderingServer>` в указанной ``position``.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect:

.. rst-class:: classref-method

|void| **draw_rect**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, tile\: :ref:`bool<class_bool>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect>`

Рисует текстуру, используя :ref:`CanvasItem<class_CanvasItem>` с API :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_draw_rect_region:

.. rst-class:: classref-method

|void| **draw_rect_region**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`, src_rect\: :ref:`Rect2<class_Rect2>`, modulate\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), transpose\: :ref:`bool<class_bool>` = false, clip_uv\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Texture2D_method_draw_rect_region>`

Рисует часть текстуры, используя :ref:`CanvasItem<class_CanvasItem>` с API :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_format>`

Возвращает формат изображения текстуры.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_height>`

Возвращает высоту текстуры в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_image>`

Возвращает :ref:`Image<class_Image>`, являющийся копией данных из этого **Texture2D** (каждый раз создается новый :ref:`Image<class_Image>`). К :ref:`Image<class_Image>` можно получать доступ и управлять ими напрямую.

\ **Примечание:** Это вернет ``null``, если этот **Texture2D** недействителен.

\ **Примечание:** Это извлечет данные текстуры из графического процессора, что может вызвать проблемы с производительностью при чрезмерном использовании. Избегайте вызова :ref:`get_image()<class_Texture2D_method_get_image>` в каждом кадре, особенно на больших текстурах.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_mipmap_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_mipmap_count**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_mipmap_count>`

Возвращает количество mip-карт текстуры.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_size>`

Возвращает размер текстуры в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_get_width>`

Возвращает ширину текстуры в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_has_alpha:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alpha**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_has_alpha>`

Возвращает ``true``, если у этого **Texture2D** есть альфа-канал.

.. rst-class:: classref-item-separator

----

.. _class_Texture2D_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_Texture2D_method_has_mipmaps>`

Возвращает ``true``, если текстура имеет mip-карты.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
