:github_url: hide

.. meta::
	:keywords: text

.. _class_Label:

Label
=====

**Наследует:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Элемент управления для отображения простого текста.

.. rst-class:: classref-introduction-group

Описание
----------------

Элемент управления для отображения обычного текста. Он позволяет управлять горизонтальным и вертикальным выравниванием и может переносить текст внутри ограничивающего прямоугольника узла. Он не поддерживает жирный шрифт, курсив или другие форматированные текстовые элементы. Для этого используйте :ref:`RichTextLabel<class_RichTextLabel>`.

\ **Примечание:** Один узел Label не предназначен для отображения больших объемов текста. Для отображения больших объемов текста в одном узле рассмотрите возможность использования :ref:`RichTextLabel<class_RichTextLabel>`, поскольку он поддерживает такие функции, как встроенная полоса прокрутки и многопоточность. :ref:`RichTextLabel<class_RichTextLabel>` обычно работает лучше при отображении больших объемов текста (несколько страниц или более).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `2D Dodge The Creeps Демо <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                           | :ref:`autowrap_mode<class_Label_property_autowrap_mode>`                                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]           | :ref:`autowrap_trim_flags<class_Label_property_autowrap_trim_flags>`                                     | ``192``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                     | :ref:`clip_text<class_Label_property_clip_text>`                                                         | ``false``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`ellipsis_char<class_Label_property_ellipsis_char>`                                                 | ``"…"``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`           | :ref:`horizontal_alignment<class_Label_property_horizontal_alignment>`                                   | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]   | :ref:`justification_flags<class_Label_property_justification_flags>`                                     | ``163``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`LabelSettings<class_LabelSettings>`                                   | :ref:`label_settings<class_Label_property_label_settings>`                                               |                                                                              |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`language<class_Label_property_language>`                                                           | ``""``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`lines_skipped<class_Label_property_lines_skipped>`                                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`max_lines_visible<class_Label_property_max_lines_visible>`                                         | ``-1``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                                | mouse_filter                                                                                             | ``2`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`paragraph_separator<class_Label_property_paragraph_separator>`                                     | ``"\\n"``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                      | size_flags_vertical                                                                                      | ``4`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`           | :ref:`structured_text_bidi_override<class_Label_property_structured_text_bidi_override>`                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                   | :ref:`structured_text_bidi_override_options<class_Label_property_structured_text_bidi_override_options>` | ``[]``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`                         | :ref:`tab_stops<class_Label_property_tab_stops>`                                                         | ``PackedFloat32Array()``                                                     |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`text<class_Label_property_text>`                                                                   | ``""``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                            | :ref:`text_direction<class_Label_property_text_direction>`                                               | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                     | :ref:`text_overrun_behavior<class_Label_property_text_overrun_behavior>`                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                     | :ref:`uppercase<class_Label_property_uppercase>`                                                         | ``false``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`               | :ref:`vertical_alignment<class_Label_property_vertical_alignment>`                                       | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`visible_characters<class_Label_property_visible_characters>`                                       | ``-1``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` | :ref:`visible_characters_behavior<class_Label_property_visible_characters_behavior>`                     | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                   | :ref:`visible_ratio<class_Label_property_visible_ratio>`                                                 | ``1.0``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_character_bounds<class_Label_method_get_character_bounds>`\ (\ pos\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_line_count<class_Label_method_get_line_count>`\ (\ ) |const|                                          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_line_height<class_Label_method_get_line_height>`\ (\ line\: :ref:`int<class_int>` = -1\ ) |const|     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_total_character_count<class_Label_method_get_total_character_count>`\ (\ ) |const|                    |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_visible_line_count<class_Label_method_get_visible_line_count>`\ (\ ) |const|                          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_Label_theme_color_font_color>`                      | ``Color(1, 1, 1, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_Label_theme_color_font_outline_color>`      | ``Color(0, 0, 0, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_shadow_color<class_Label_theme_color_font_shadow_color>`        | ``Color(0, 0, 0, 0)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`line_spacing<class_Label_theme_constant_line_spacing>`               | ``3``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_Label_theme_constant_outline_size>`               | ``0``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`paragraph_spacing<class_Label_theme_constant_paragraph_spacing>`     | ``0``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_offset_x<class_Label_theme_constant_shadow_offset_x>`         | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_offset_y<class_Label_theme_constant_shadow_offset_y>`         | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_outline_size<class_Label_theme_constant_shadow_outline_size>` | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_Label_theme_font_font>`                                   |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_Label_theme_font_size_font_size>`                    |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`focus<class_Label_theme_style_focus>`                                |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal<class_Label_theme_style_normal>`                              |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Label_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Label_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Если установлено значение, отличное от :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, текст переносится внутри ограничивающего прямоугольника узла. При изменении размера узла его высота автоматически изменится, чтобы отобразить весь текст.

\ **Примечание:** Для корректной работы Label'ов с включенным автоматическим переносом текста необходимо задать пользовательскую максимальную ширину, либо с помощью собственного параметра :ref:`Control.custom_maximum_size<class_Control_property_custom_maximum_size>` лейбла, либо в результате распространения максимального размера от родительского элемента управления с включенным параметром :ref:`Control.propagate_maximum_size<class_Control_property_propagate_maximum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``192`` :ref:`🔗<class_Label_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Флаги обрезки пространства автопереноса. См. :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` и :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_clip_text:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_text** = ``false`` :ref:`🔗<class_Label_property_clip_text>`

.. rst-class:: classref-property-setget

- |void| **set_clip_text**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_clipping_text**\ (\ )

Если ``true``, метка отображает только тот текст, который помещается внутри ее ограничивающего прямоугольника, и обрезает текст по горизонтали.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_Label_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Символ многоточия, используемый для обрезки текста.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``0`` :ref:`🔗<class_Label_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Управляет горизонтальным выравниванием текста. Поддерживает выравнивание по левому краю, по центру, по правому краю и заполнение (также известное как выравнивание по ширине).

.. rst-class:: classref-item-separator

----

.. _class_Label_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_Label_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Правила выравнивания заливки линий.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_label_settings:

.. rst-class:: classref-property

:ref:`LabelSettings<class_LabelSettings>` **label_settings** :ref:`🔗<class_Label_property_label_settings>`

.. rst-class:: classref-property-setget

- |void| **set_label_settings**\ (\ value\: :ref:`LabelSettings<class_LabelSettings>`\ )
- :ref:`LabelSettings<class_LabelSettings>` **get_label_settings**\ (\ )

Ресурс :ref:`LabelSettings<class_LabelSettings>`, который может быть общим для нескольких узлов **Label**. Имеет приоритет над свойствами темы.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Label_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Код языка, используемый алгоритмами переноса строк и форматирования текста. Если оставить поле пустым, будет использоваться текущая локаль.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_lines_skipped:

.. rst-class:: classref-property

:ref:`int<class_int>` **lines_skipped** = ``0`` :ref:`🔗<class_Label_property_lines_skipped>`

.. rst-class:: classref-property-setget

- |void| **set_lines_skipped**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_lines_skipped**\ (\ )

Количество проигнорированных и неотображаемых строк с начала значения :ref:`text<class_Label_property_text>`.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_max_lines_visible:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lines_visible** = ``-1`` :ref:`🔗<class_Label_property_max_lines_visible>`

.. rst-class:: classref-property-setget

- |void| **set_max_lines_visible**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lines_visible**\ (\ )

Ограничивает количество строк текста, отображаемых узлом на экране.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_paragraph_separator:

.. rst-class:: classref-property

:ref:`String<class_String>` **paragraph_separator** = ``"\\n"`` :ref:`🔗<class_Label_property_paragraph_separator>`

.. rst-class:: classref-property-setget

- |void| **set_paragraph_separator**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_paragraph_separator**\ (\ )

Строка, используемая как разделитель абзацев. Каждый абзац обрабатывается независимо, в своем собственном контексте BiDi.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_Label_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Установите переопределение алгоритма BiDi для структурированного текста.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_Label_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Установите дополнительные параметры для переопределения BiDi.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_tab_stops:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **tab_stops** = ``PackedFloat32Array()`` :ref:`🔗<class_Label_property_tab_stops>`

.. rst-class:: classref-property-setget

- |void| **set_tab_stops**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_tab_stops**\ (\ )

Выравнивает текст по указанным позициям табуляции.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Label_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Текст для отображения на экране.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_Label_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Направление написания базового текста.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_Label_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Поведение обрезки, когда текст выходит за пределы ограничивающего прямоугольника узла.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_Label_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

Если ``true``, весь текст отображается в ЗАГЛАВНОМ регистре.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``0`` :ref:`🔗<class_Label_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Управляет вертикальным выравниванием текста. Поддерживает верх, центр, низ и заполнение.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_characters:

.. rst-class:: classref-property

:ref:`int<class_int>` **visible_characters** = ``-1`` :ref:`🔗<class_Label_property_visible_characters>`

.. rst-class:: classref-property-setget

- |void| **set_visible_characters**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_visible_characters**\ (\ )

Количество отображаемых символов. Если задано значение ``-1``, отображаются все символы. Это может быть полезно при анимации текста, появляющегося в диалоговом окне.

\ **Примечание:** Установка этого свойства соответствующим образом обновляет :ref:`visible_ratio<class_Label_property_visible_ratio>`.

\ **Примечание:** Символы считаются кодовыми точками Unicode. Одна видимая графема может содержать несколько кодовых точек (например, некоторые эмодзи используют три кодовые точки). Одна кодовая точка может содержать два символа UTF-16, которые используются в строках C#.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_characters_behavior:

.. rst-class:: classref-property

:ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` **visible_characters_behavior** = ``0`` :ref:`🔗<class_Label_property_visible_characters_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_visible_characters_behavior**\ (\ value\: :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>`\ )
- :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` **get_visible_characters_behavior**\ (\ )

Поведение обрезки, когда задано :ref:`visible_characters<class_Label_property_visible_characters>` или :ref:`visible_ratio<class_Label_property_visible_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **visible_ratio** = ``1.0`` :ref:`🔗<class_Label_property_visible_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_visible_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visible_ratio**\ (\ )

Доля символов для отображения относительно общего числа символов (см. :ref:`get_total_character_count()<class_Label_method_get_total_character_count>`). Если установлено значение ``1.0``, отображаются все символы. Если установлено значение ``0.5``, отображается только половина символов. Это может быть полезно при анимации текста, появляющегося в диалоговом окне.

\ **Примечание:** Установка этого свойства соответствующим образом обновляет :ref:`visible_characters<class_Label_property_visible_characters>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Label_method_get_character_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_character_bounds**\ (\ pos\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Label_method_get_character_bounds>`

Возвращает ограничивающий прямоугольник символа в позиции ``pos`` в локальной системе координат метки. Если символ является невизуальным символом или ``pos`` находится за пределами допустимого диапазона, возвращается пустой :ref:`Rect2<class_Rect2>`. Если символ является частью составной графемы, возвращается ограничивающий прямоугольник всей графемы.

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_line_count>`

Возвращает количество строк текста в метке.

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_line_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_height**\ (\ line\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Label_method_get_line_height>`

Возвращает высоту строки ``line``.

Если ``line`` установлен в ``-1``, возвращает наибольшую высоту строки.

Если строк нет, возвращает размер шрифта в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_total_character_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_total_character_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_total_character_count>`

Возвращает общее количество печатных символов в тексте (без учета пробелов и символов новой строки).

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_visible_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_visible_line_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_visible_line_count>`

Возвращает количество показанных строк. Полезно, если высота **Label**-ов в данный момент не может отображать все строки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_Label_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Label_theme_color_font_color>`

:ref:`Color<class_Color>` **Label** текста по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Label_theme_color_font_outline_color>`

Цвет контура текста.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_color_font_shadow_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_Label_theme_color_font_shadow_color>`

:ref:`Color<class_Color>` эффекта тени текста.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_line_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **line_spacing** = ``3`` :ref:`🔗<class_Label_theme_constant_line_spacing>`

Дополнительный вертикальный интервал между строками (в пикселях), интервал добавляется к спуску строки. Это значение может быть отрицательным.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_Label_theme_constant_outline_size>`

Размер контура текста.

\ **Примечание:** При использовании шрифта с включенным :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` его :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` должен быть установлен как минимум в *дважды* раза больше значения :ref:`outline_size<class_Label_theme_constant_outline_size>`, чтобы контур выглядел правильно. В противном случае контур может оказаться обрезанным раньше, чем предполагалось.

\ **Примечание:** Не рекомендуется использовать значение, превышающее половину размера шрифта, так как в этом случае контур шрифта может не полностью закрыться.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_paragraph_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **paragraph_spacing** = ``0`` :ref:`🔗<class_Label_theme_constant_paragraph_spacing>`

Вертикальный интервал между абзацами. Добавляется поверх :ref:`line_spacing<class_Label_theme_constant_line_spacing>`.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_offset_x:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_offset_x** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_offset_x>`

Горизонтальное смещение тени текста.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_offset_y:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_offset_y** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_offset_y>`

Вертикальное смещение тени текста.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_outline_size** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_outline_size>`

Размер контура тени.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Label_theme_font_font>`

:ref:`Font<class_Font>`, используемый для текста **Label**-ов.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_Label_theme_font_size_font_size>`

Размер шрифта текста **Label**-ов.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_Label_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` используется, когда фокус находится на **Label** (при использовании со вспомогательными приложениями).

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_Label_theme_style_normal>`

Фон :ref:`StyleBox<class_StyleBox>` для **Label**.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
