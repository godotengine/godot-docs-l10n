:github_url: hide

.. _class_Button:

Button
======

**Успадковує:** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`CheckBox<class_CheckBox>`, :ref:`CheckButton<class_CheckButton>`, :ref:`ColorPickerButton<class_ColorPickerButton>`, :ref:`MenuButton<class_MenuButton>`, :ref:`OptionButton<class_OptionButton>`

Тематична кнопка, яка може містити текст і значок.

.. rst-class:: classref-introduction-group

Опис
--------

**Button** — стандартна тематична кнопка. Він може містити текст і значок і відображатиме їх відповідно до поточної :ref:`Theme<class_Theme>`.

\ **Приклад створення кнопки та призначення дії при натисканні кодом:**\ 


.. tabs::

 .. code-tab:: gdscript

    func _ready():
         var bottom = Button.new()
         button.text = "Натисни мене"
         button.pressed.connect(self._button_pressed)
         add_child (кнопка)

    func _button_pressed():
         print("Привіт, світ!")

 .. code-tab:: csharp

    public override void _Ready()
     {
         var bottom = new bottom();
         button.Text = "Натисни мене";
         button.Pressed += ButtonPressed;
         AddChild(кнопка);
     }

    private void ButtonPressed()
     {
         GD.Print("Привіт, світ!");
     }



Дивіться також :ref:`BaseButton<class_BaseButton>`, який містить загальні властивості та методи, пов’язані з цим вузлом.

\ **Примітка:** кнопки не інтерпретують сенсорний ввід і тому не підтримують мультидотик, оскільки емуляція миші може натискати лише одну кнопку в певний момент часу. Використовуйте :ref:`TouchScreenButton<class_TouchScreenButton>` для кнопок, які запускають рух або дії під час гри.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `2D демонстрація Dodge The Creeps <https://godotengine.org/asset-library/asset/2712>`__

- `Демонстрація тестування операційної системи <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`alignment<class_Button_property_alignment>`                             | ``1``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                 | :ref:`autowrap_mode<class_Button_property_autowrap_mode>`                     | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] | :ref:`autowrap_trim_flags<class_Button_property_autowrap_trim_flags>`         | ``128``   |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`clip_text<class_Button_property_clip_text>`                             | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`expand_icon<class_Button_property_expand_icon>`                         | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`flat<class_Button_property_flat>`                                       | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                                 | :ref:`icon<class_Button_property_icon>`                                       |           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`icon_alignment<class_Button_property_icon_alignment>`                   | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_Button_property_language>`                               | ``""``    |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                       | :ref:`text<class_Button_property_text>`                                       | ``""``    |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`text_direction<class_Button_property_text_direction>`                   | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`text_overrun_behavior<class_Button_property_text_overrun_behavior>`     | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`     | :ref:`vertical_icon_alignment<class_Button_property_vertical_icon_alignment>` | ``1``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_color<class_Button_theme_color_font_color>`                                  | ``Color(0.875, 0.875, 0.875, 1)``   |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_disabled_color<class_Button_theme_color_font_disabled_color>`                | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_focus_color<class_Button_theme_color_font_focus_color>`                      | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hover_color<class_Button_theme_color_font_hover_color>`                      | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hover_pressed_color<class_Button_theme_color_font_hover_pressed_color>`      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_Button_theme_color_font_outline_color>`                  | ``Color(0, 0, 0, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_pressed_color<class_Button_theme_color_font_pressed_color>`                  | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_disabled_color<class_Button_theme_color_icon_disabled_color>`                | ``Color(1, 1, 1, 0.4)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_focus_color<class_Button_theme_color_icon_focus_color>`                      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_hover_color<class_Button_theme_color_icon_hover_color>`                      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_hover_pressed_color<class_Button_theme_color_icon_hover_pressed_color>`      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_normal_color<class_Button_theme_color_icon_normal_color>`                    | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_pressed_color<class_Button_theme_color_icon_pressed_color>`                  | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`align_to_largest_stylebox<class_Button_theme_constant_align_to_largest_stylebox>` | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`h_separation<class_Button_theme_constant_h_separation>`                           | ``4``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_max_width<class_Button_theme_constant_icon_max_width>`                       | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`line_spacing<class_Button_theme_constant_line_spacing>`                           | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_Button_theme_constant_outline_size>`                           | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_Button_theme_font_font>`                                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_Button_theme_font_size_font_size>`                                |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`icon<class_Button_theme_icon_icon>`                                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`disabled<class_Button_theme_style_disabled>`                                      |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`disabled_mirrored<class_Button_theme_style_disabled_mirrored>`                    |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_Button_theme_style_focus>`                                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover<class_Button_theme_style_hover>`                                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_mirrored<class_Button_theme_style_hover_mirrored>`                          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_pressed<class_Button_theme_style_hover_pressed>`                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_pressed_mirrored<class_Button_theme_style_hover_pressed_mirrored>`          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`normal<class_Button_theme_style_normal>`                                          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`normal_mirrored<class_Button_theme_style_normal_mirrored>`                        |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`pressed<class_Button_theme_style_pressed>`                                        |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`pressed_mirrored<class_Button_theme_style_pressed_mirrored>`                      |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Button_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``1`` :ref:`🔗<class_Button_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_text_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_text_alignment**\ (\ )

Політика вирівнювання тексту кнопки.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Button_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Якщо встановлено щось інше, ніж :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, текст буде загорнуто всередину обмежувального прямокутника вузла.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``128`` :ref:`🔗<class_Button_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Прапорці обрізання пробілів при автоматичному перенесенні. Див. :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` та :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_clip_text:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_text** = ``false`` :ref:`🔗<class_Button_property_clip_text>`

.. rst-class:: classref-property-setget

- |void| **set_clip_text**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_text**\ (\ )

Якщо ``true``, текст, який завеликий для розміщення кнопки, обрізається горизонтально. Якщо ``false``, кнопка завжди буде достатньо широкою, щоб утримувати текст. Текст не обрізається вертикально, і ця властивість не впливає на висоту кнопки.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_expand_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **expand_icon** = ``false`` :ref:`🔗<class_Button_property_expand_icon>`

.. rst-class:: classref-property-setget

- |void| **set_expand_icon**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_expand_icon**\ (\ )

Якщо ввімкнено, піктограма кнопки розширюватиметься/зменшуватиметься, щоб відповідати розміру кнопки, зберігаючи її аспект. Дивіться також :ref:`icon_max_width<class_Button_theme_constant_icon_max_width>`.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_Button_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Плоскі гудзики не мають декору.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_Button_property_icon>`

.. rst-class:: classref-property-setget

- |void| **set_button_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_button_icon**\ (\ )

Значок кнопки, якщо текст присутній, значок буде розміщено перед текстом.

 Щоб редагувати поля та інтервали піктограми, використовуйте властивість теми :ref:`h_separation<class_Button_theme_constant_h_separation>` і властивості ``content_margin_*`` використовуваних елементів :ref:`StyleBox<class_StyleBox>`.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_icon_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **icon_alignment** = ``0`` :ref:`🔗<class_Button_property_icon_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_icon_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_icon_alignment**\ (\ )

Визначає, чи піктограма має бути вирівняна горизонтально ліворуч, праворуч чи по центру кнопки. Використовує ті самі константи :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`, що й вирівнювання тексту. Якщо відцентрувати горизонтально та вертикально, текст буде намальовано поверх значка.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Button_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Код мови, що використовується для алгоритмів розриву рядків та формування тексту. Якщо залишити поле порожнім, використовується поточна локалізація.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Button_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Текст кнопки, який відображатиметься в області кнопки.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_Button_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Основний напрямок написання тексту.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_Button_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Встановлює поведінку відсікання, коли текст виходить за межі прямокутника, що обмежує вузол.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_vertical_icon_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_icon_alignment** = ``1`` :ref:`🔗<class_Button_property_vertical_icon_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_icon_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_icon_alignment**\ (\ )

Визначає, чи піктограма має бути вирівняна вертикально вгорі, внизу чи по центру кнопки. Використовує ті самі константи :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`, що й вирівнювання тексту. Якщо відцентрувати горизонтально та вертикально, текст буде намальовано поверх значка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_Button_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_Button_theme_color_font_color>`

Типовий :ref:`Color<class_Color>` тексту **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_Button_theme_color_font_disabled_color>`

Текст :ref:`Color<class_Color>` використовується, коли **Button** вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_Button_theme_color_font_focus_color>`

:ref:`Color<class_Color>` тексту, який використовується, коли **Button** у фокусі. Замінює лише звичайний колір тексту кнопки. Вимкнений, наведений та натиснутий стани мають пріоритет над цим кольором.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_Button_theme_color_font_hover_color>`

:ref:`Color<class_Color>` тексту, який використовується, коли на **Button** наведено курсор.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_font_hover_pressed_color>`

:ref:`Color<class_Color>` тексту, який використовується при наведенні та натиску **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Button_theme_color_font_outline_color>`

Відтінок контуру тексту кнопки **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_font_pressed_color>`

:ref:`Color<class_Color>` тексту, який використовується при натиску **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_disabled_color** = ``Color(1, 1, 1, 0.4)`` :ref:`🔗<class_Button_theme_color_icon_disabled_color>`

:ref:`Color<class_Color>` модуляції іконки, що використовується, коли **Button** вимкнена.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_focus_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_focus_color>`

:ref:`Color<class_Color>` модуляції іконки, що використовується, коли **Button** у фокусі. Замінює лише звичайний модульований колір кнопки. Вимкнений, наведений та натиснутий стани мають пріоритет над цим кольором.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hover_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_hover_color>`

:ref:`Color<class_Color>` модуляції іконки використовується при наведенні на **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_hover_pressed_color>`

:ref:`Color<class_Color>` модуляції іконки, що використовується при наведенні чи натисненні **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_normal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_normal_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_normal_color>`

:ref:`Color<class_Color>` модуляції іконки за замовчуванням для **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_pressed_color>`

:ref:`Color<class_Color>` модуляції іконки, що використовується при натиску **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_align_to_largest_stylebox:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **align_to_largest_stylebox** = ``0`` :ref:`🔗<class_Button_theme_constant_align_to_largest_stylebox>`

Ця константа діє як логічне значення. Якщо ``true``, мінімальний розмір кнопки та вирівнювання тексту/піктограми завжди базується на найбільших полях поля стилю, інакше він базується на полях поля стилю поточного стану кнопки.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_Button_theme_constant_h_separation>`

Горизонтальний простір між значком **Button** і текстом. Під час використання від’ємні значення розглядатимуться як ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_Button_theme_constant_icon_max_width>`

Максимально дозволена ширина піктограми **Button**. Це обмеження застосовується до стандартного розміру піктограми або її розгорнутого розміру, якщо :ref:`expand_icon<class_Button_property_expand_icon>` має значення ``true``. Висота регулюється відповідно до співвідношення значка. Якщо кнопка має додаткові значки (наприклад, :ref:`CheckBox<class_CheckBox>`), вони також будуть обмежені.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_line_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **line_spacing** = ``0`` :ref:`🔗<class_Button_theme_constant_line_spacing>`

Додатковий вертикальний інтервал між рядками (у пікселях), інтервал додається до рядкового спуску. Це значення може бути негативним.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_Button_theme_constant_outline_size>`

Розмір контуру тексту.

\ **Примітка.** Якщо використовується шрифт із увімкненим :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>`, для його :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` має бути принаймні *вдвічі* значення :ref:`outline_size<class_Button_theme_constant_outline_size>` щоб рендеринг контуру виглядав правильно. Інакше контур може здатися обрізаним раніше, ніж передбачалося.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Button_theme_font_font>`

:ref:`Font<class_Font>` тексту **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_Button_theme_font_size_font_size>`

Розмір шрифту тексту **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_icon_icon:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_Button_theme_icon_icon>`

Значок за замовчуванням для **Button**. З’являється, лише якщо :ref:`icon<class_Button_property_icon>` не призначено.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled** :ref:`🔗<class_Button_theme_style_disabled>`

:ref:`StyleBox<class_StyleBox>` використовується, коли **Button** вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled_mirrored** :ref:`🔗<class_Button_theme_style_disabled_mirrored>`

:ref:`StyleBox<class_StyleBox>` використовується, коли **Button** вимкнено (для макетів справа наліво).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_Button_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` використовується, коли **Button** у фокусі. :ref:`focus<class_Button_theme_style_focus>` :ref:`StyleBox<class_StyleBox>` відображається *поверх* базового :ref:`StyleBox<class_StyleBox>`, тому слід використовувати частково прозорий :ref:`StyleBox<class_StyleBox>`, щоб переконатися, що базовий :ref:`StyleBox<class_StyleBox>` залишається видимим. :ref:`StyleBox<class_StyleBox>`, який представляє контур або підкреслення, добре підходить для цієї мети. Щоб вимкнути візуальний ефект фокусування, призначте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Зауважте, що вимкнення візуального ефекту фокусування зашкодить навігації клавіатурою/контролером, тому це не рекомендується з міркувань доступності.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover** :ref:`🔗<class_Button_theme_style_hover>`

:ref:`StyleBox<class_StyleBox>` використовується, коли **Button** наводиться.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_mirrored** :ref:`🔗<class_Button_theme_style_hover_mirrored>`

:ref:`StyleBox<class_StyleBox>` використовується, коли на **Button** наводять курсор (для макетів справа наліво).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed** :ref:`🔗<class_Button_theme_style_hover_pressed>`

:ref:`StyleBox<class_StyleBox>` використовується, коли **Button** натискається та наводиться одночасно.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed_mirrored** :ref:`🔗<class_Button_theme_style_hover_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` використовується, коли **Button** натиснута та наведена одночасно (для макетів справа наліво).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_Button_theme_style_normal>`

Типове :ref:`StyleBox<class_StyleBox>` для **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_normal_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_mirrored** :ref:`🔗<class_Button_theme_style_normal_mirrored>`

:ref:`StyleBox<class_StyleBox>` за замовчуванням для **Button** (для макетів справа наліво).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed** :ref:`🔗<class_Button_theme_style_pressed>`

:ref:`StyleBox<class_StyleBox>` використовується, коли натискається **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_mirrored** :ref:`🔗<class_Button_theme_style_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` використовується, коли натискається **Button** (для макетів справа наліво).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
