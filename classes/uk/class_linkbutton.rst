:github_url: hide

.. _class_LinkButton:

LinkButton
==========

**Успадковує:** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка, яка представляє посилання.

.. rst-class:: classref-introduction-group

Опис
--------

Кнопка, яка представляє посилання. Цей тип кнопки в першу чергу використовується для взаємодії, які викликають зміни контексту (наприклад, посилання на сторінку).

Дивись також :ref:`BaseButton<class_BaseButton>` які містять загальні властивості та методи, пов'язані з цим вершиною.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`ellipsis_char<class_LinkButton_property_ellipsis_char>`                                                 | ``"…"``                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                          | focus_mode                                                                                                    | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_LinkButton_property_language>`                                                           | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                      | mouse_default_cursor_shape                                                                                    | ``2`` (overrides :ref:`Control<class_Control_property_mouse_default_cursor_shape>`) |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` | :ref:`structured_text_bidi_override<class_LinkButton_property_structured_text_bidi_override>`                 | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                         | :ref:`structured_text_bidi_override_options<class_LinkButton_property_structured_text_bidi_override_options>` | ``[]``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`text<class_LinkButton_property_text>`                                                                   | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`text_direction<class_LinkButton_property_text_direction>`                                               | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`text_overrun_behavior<class_LinkButton_property_text_overrun_behavior>`                                 | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>`               | :ref:`underline<class_LinkButton_property_underline>`                                                         | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`uri<class_LinkButton_property_uri>`                                                                     | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_LinkButton_theme_color_font_color>`                             | ``Color(0.875, 0.875, 0.875, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_disabled_color<class_LinkButton_theme_color_font_disabled_color>`           | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_focus_color<class_LinkButton_theme_color_font_focus_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_color<class_LinkButton_theme_color_font_hover_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_pressed_color<class_LinkButton_theme_color_font_hover_pressed_color>` | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_LinkButton_theme_color_font_outline_color>`             | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_pressed_color<class_LinkButton_theme_color_font_pressed_color>`             | ``Color(1, 1, 1, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_LinkButton_theme_constant_outline_size>`                      | ``0``                             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`underline_spacing<class_LinkButton_theme_constant_underline_spacing>`            | ``2``                             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_LinkButton_theme_font_font>`                                          |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_LinkButton_theme_font_size_font_size>`                           |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`focus<class_LinkButton_theme_style_focus>`                                       |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_LinkButton_UnderlineMode:

.. rst-class:: classref-enumeration

enum **UnderlineMode**: :ref:`🔗<enum_LinkButton_UnderlineMode>`

.. _class_LinkButton_constant_UNDERLINE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_ALWAYS** = ``0``

Кнопка Link завжди покаже в нижній частині його тексту.

.. _class_LinkButton_constant_UNDERLINE_MODE_ON_HOVER:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_ON_HOVER** = ``1``

Кнопка посилання покаже в нижній частині його тексту, коли курсор мишки над ним.

.. _class_LinkButton_constant_UNDERLINE_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_NEVER** = ``2``

Кнопка Link ніколи не покаже в нижній частині його тексту.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_LinkButton_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_LinkButton_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Елліпсис характер використовується для текстового затиску.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_LinkButton_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Код мови, що використовується для алгоритмів розриву рядків та формування тексту. Якщо залишити поле порожнім, використовується поточна локалізація.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_LinkButton_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Настроювання алгоритму BiDi для структурованого тексту.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_LinkButton_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Налаштуйте додаткові параметри для перенади BiDi.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_LinkButton_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Текст кнопки, який відображатиметься в області кнопки.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_LinkButton_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Основний напрямок написання тексту.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_LinkButton_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Встановлює поведінку відсікання, коли текст виходить за межі прямокутника, що обмежує вузол.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_underline:

.. rst-class:: classref-property

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **underline** = ``0`` :ref:`🔗<class_LinkButton_property_underline>`

.. rst-class:: classref-property-setget

- |void| **set_underline_mode**\ (\ value\: :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>`\ )
- :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **get_underline_mode**\ (\ )

Режим підкреслення, який слід використовувати для тексту.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_uri:

.. rst-class:: classref-property

:ref:`String<class_String>` **uri** = ``""`` :ref:`🔗<class_LinkButton_property_uri>`

.. rst-class:: classref-property-setget

- |void| **set_uri**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_uri**\ (\ )

`URI <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier>`__ для цієї **LinkButton**. Якщо встановлено дійсний URI, натискання кнопки відкриває URI за допомогою програми операційної системи за замовчуванням для протоколу (через :ref:`OS.shell_open()<class_OS_method_shell_open>`). URL-адреси HTTP та HTTPS відкривають веб-переглядач за умовчанням. 


.. tabs:: 

 .. code-tab:: gdscript
 
    uri = "https://godotengine.org" # Відкриває URL у веб-переглядачі за замовчуванням. 
    uri = "C:\SomeFolder" # Відкриває файловий провідник за вказаним шляхом. 
    uri = "C:\SomeImage.png" # Відкриває дане зображення в програмі перегляду за замовчуванням.  

 .. code-tab:: csharp
 
    Uri = "https://godotengine.org"; // Відкриває URL у веб-переглядачі за замовчуванням. 
    Uri = "C:\SomeFolder"; // Відкриває файловий провідник за вказаним шляхом. 
    Uri = "C:\SomeImage.png"; // Відкриває дане зображення в програмі перегляду за умовчанням.  



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_LinkButton_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_color>`

За замовчуванням текст :ref:`Color<class_Color>` **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_disabled_color>`

Текст :ref:`Color<class_Color>` використовується при вимкненні **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_focus_color>`

Текст :ref:`Color<class_Color>` використовується при фокусі **LinkButton**. Тільки замінює звичайний текстовий колір кнопки. Вимкнено, переповнені та пресовані держави мають прецепцію над цим кольором.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_hover_color>`

Текст :ref:`Color<class_Color>` використовується при переході **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_hover_pressed_color>`

Текст :ref:`Color<class_Color>` використовується при переході **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_outline_color>`

Текст тексту **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_pressed_color>`

Текст :ref:`Color<class_Color>` використовується при натисканні кнопки **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_LinkButton_theme_constant_outline_size>`

Розмір контуру тексту.

\ **Примітка.** Якщо використовується шрифт із увімкненим :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>`, для його :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` має бути принаймні *вдвічі* значення :ref:`outline_size<class_LinkButton_theme_constant_outline_size>` щоб рендеринг контуру виглядав правильно. Інакше контур може здатися обрізаним раніше, ніж передбачалося.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_constant_underline_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **underline_spacing** = ``2`` :ref:`🔗<class_LinkButton_theme_constant_underline_spacing>`

Вертикальний простір між базовим текстом та підкресленням.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_LinkButton_theme_font_font>`

:ref:`Font<class_Font>` тексту **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_LinkButton_theme_font_size_font_size>`

Розмір шрифту тексту **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_LinkButton_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` використовується при фокусі **LinkButton**. :ref:`focus<class_LinkButton_theme_style_focus>` :ref:`StyleBox<class_StyleBox>` відображається *over* бази :ref:`StyleBox<class_StyleBox>`, так що частково прозора :ref:`StyleBox<class_StyleBox>` повинна бути використана для забезпечення бази :ref:`StyleBox<class_StyleBox>`. :ref:`StyleBox<class_StyleBox>`, який добре працює для цього. Щоб вимкнути візуальний ефект фокусу, призначте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Зверніть увагу, що відключення візуального ефекту фокусу буде завдати шкоди клавіатурі / керованій навігації, тому це не рекомендується для причин доступності.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
