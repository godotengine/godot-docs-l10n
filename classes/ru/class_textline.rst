:github_url: hide

.. _class_TextLine:

TextLine
========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Содержит строку текста.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстракция над :ref:`TextServer<class_TextServer>` для обработки одной строки текста.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`alignment<class_TextLine_property_alignment>`                         | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`direction<class_TextLine_property_direction>`                         | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`ellipsis_char<class_TextLine_property_ellipsis_char>`                 | ``"…"``   |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`flags<class_TextLine_property_flags>`                                 | ``3``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Orientation<enum_TextServer_Orientation>`                           | :ref:`orientation<class_TextLine_property_orientation>`                     | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_control<class_TextLine_property_preserve_control>`           | ``false`` |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_invalid<class_TextLine_property_preserve_invalid>`           | ``true``  |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                   | :ref:`text_overrun_behavior<class_TextLine_property_text_overrun_behavior>` | ``3``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextLine_property_width>`                                 | ``-1.0``  |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_object<class_TextLine_method_add_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_string<class_TextLine_method_add_string>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ )                                         |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear<class_TextLine_method_clear>`\ (\ )                                                                                                                                                                                                                                                    |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw<class_TextLine_method_draw>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                  |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_outline<class_TextLine_method_draw_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextLine<class_TextLine>`             | :ref:`duplicate<class_TextLine_method_duplicate>`\ (\ ) |const|                                                                                                                                                                                                                                    |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>` | :ref:`get_inferred_direction<class_TextLine_method_get_inferred_direction>`\ (\ ) |const|                                                                                                                                                                                                          |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_ascent<class_TextLine_method_get_line_ascent>`\ (\ ) |const|                                                                                                                                                                                                                        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_descent<class_TextLine_method_get_line_descent>`\ (\ ) |const|                                                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_position<class_TextLine_method_get_line_underline_position>`\ (\ ) |const|                                                                                                                                                                                                |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_thickness<class_TextLine_method_get_line_underline_thickness>`\ (\ ) |const|                                                                                                                                                                                              |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_width<class_TextLine_method_get_line_width>`\ (\ ) |const|                                                                                                                                                                                                                          |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                   | :ref:`get_object_rect<class_TextLine_method_get_object_rect>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                   |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`get_objects<class_TextLine_method_get_objects>`\ (\ ) |const|                                                                                                                                                                                                                                |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_rid<class_TextLine_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_size<class_TextLine_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`has_object<class_TextLine_method_has_object>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                             |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`hit_test<class_TextLine_method_hit_test>`\ (\ coords\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                  |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`resize_object<class_TextLine_method_resize_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ )                               |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bidi_override<class_TextLine_method_set_bidi_override>`\ (\ override\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`tab_align<class_TextLine_method_tab_align>`\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                                                           |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TextLine_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextLine_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Устанавливает выравнивание текста внутри строки так, как если бы строка была горизонтальной.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextLine_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

Направление написания текста.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextLine_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Символ многоточия, используемый для обрезки текста.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **flags** = ``3`` :ref:`🔗<class_TextLine_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_flags**\ (\ )

Правила выравнивания строк. Для получения дополнительной информации см. :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextLine_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

Ориентация текста.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextLine_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

Если установлено значение ``true``, текст будет отображать управляющие символы.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextLine_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

Если установлено значение ``true``, в тексте будут отображаться недопустимые символы.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``3`` :ref:`🔗<class_TextLine_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Поведение обрезки, когда текст превышает установленную ширину текстовой строки.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextLine_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Ширина текстовой строки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TextLine_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextLine_method_add_object>`

Добавляет встроенный объект в текстовый буфер, ``key`` должен быть уникальным. В тексте объект представлен как ``length`` символов замены объекта.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextLine_method_add_string>`

Добавляет текстовый диапазон и шрифт для его отрисовки.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextLine_method_clear>`

Очищает текстовую строку (удаляет текст и встроенные объекты).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextLine_method_draw>`

Нарисовать текст на холсте в заданной позиции с ``color``. ``pos`` указывает верхний левый угол ограничивающего прямоугольника. Если ``oversampling`` больше нуля, он используется как фактор передискретизации шрифта, в противном случае используются настройки передискретизации области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextLine_method_draw_outline>`

Нарисовать текст на холсте в заданной позиции с ``color``. ``pos`` указывает верхний левый угол ограничивающего прямоугольника. Если ``oversampling`` больше нуля, он используется как фактор передискретизации шрифта, в противном случае используются настройки передискретизации области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_duplicate:

.. rst-class:: classref-method

:ref:`TextLine<class_TextLine>` **duplicate**\ (\ ) |const| :ref:`🔗<class_TextLine_method_duplicate>`

Дублирует этот **TextLine**.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_inferred_direction>`

Возвращает направление написания текста, выведенное алгоритмом BiDi.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_ascent>`

Возвращает высоту текста (количество пикселей над базовой линией для горизонтального расположения или слева от базовой линии для вертикального расположения).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_descent>`

Возвращает смещение текста (количество пикселей ниже базовой линии для горизонтальной компоновки или справа от базовой линии для вертикальной).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_underline_position>`

Возвращает смещение подчеркивания в пикселях относительно базовой линии.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_underline_thickness>`

Возвращает толщину подчеркивания.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_width>`

Возвращает ширину (для горизонтального расположения) или высоту (для вертикального расположения) текста.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_object_rect**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextLine_method_get_object_rect>`

Возвращает ограничивающий прямоугольник встроенного объекта.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_objects**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_objects>`

Возвращает массив встроенных объектов.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_rid>`

Возвращает RID буфера TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_size>`

Возвращает размер ограничивающего прямоугольника текста.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_has_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_object**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextLine_method_has_object>`

Возвращает ``true``, если в эту строку встроен объект с ``key``.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_TextLine_method_hit_test>`

Возвращает смещение символа каретки на указанное смещение пикселей на базовой линии. Эта функция всегда возвращает допустимую позицию.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextLine_method_resize_object>`

Устанавливает новый размер и выравнивание внедренного объекта.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextLine_method_set_bidi_override>`

Переопределяет BiDi для структурированного текста.

Диапазоны переопределения должны охватывать весь исходный текст без перекрытий. Алгоритм BiDi будет использоваться для каждого диапазона отдельно.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextLine_method_tab_align>`

Выравнивает текст по указанным позициям табуляции.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
