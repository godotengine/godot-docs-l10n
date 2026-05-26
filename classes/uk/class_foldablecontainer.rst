:github_url: hide

.. meta::
	:keywords: expandable, collapsible, collapse, accordion, details

.. _class_FoldableContainer:

FoldableContainer
=================

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контейнер, який можна розгортати/згортати.

.. rst-class:: classref-introduction-group

Опис
--------

Контейнер, який можна розгортати/згортати, із заголовком, який можна заповнювати елементами керування, такими як кнопки. Це також називається акордеоном.

Заголовок можна розташувати у верхній або нижній частині контейнера. Контейнер можна розгортати або згортати, клацнувши на заголовку або натиснувши ``ui_accept``, коли він у фокусі. Дочірні вузли керування приховані, коли контейнер згорнуто. Ігнорує дочірні елементи, які не є елементами керування.

FoldableContainer можна групувати з іншими FoldableContainer, щоб одночасно можна було відкрити лише один з них; див. :ref:`foldable_group<class_FoldableContainer_property_foldable_group>` та :ref:`FoldableGroup<class_FoldableGroup>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                          | focus_mode                                                                                       | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`FoldableGroup<class_FoldableGroup>`                         | :ref:`foldable_group<class_FoldableContainer_property_foldable_group>`                           |                                                                       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`folded<class_FoldableContainer_property_folded>`                                           | ``false``                                                             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_FoldableContainer_property_language>`                                       | ``""``                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                      | mouse_filter                                                                                     | ``0`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`title<class_FoldableContainer_property_title>`                                             | ``""``                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`title_alignment<class_FoldableContainer_property_title_alignment>`                         | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>`        | :ref:`title_position<class_FoldableContainer_property_title_position>`                           | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`title_text_direction<class_FoldableContainer_property_title_text_direction>`               | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`title_text_overrun_behavior<class_FoldableContainer_property_title_text_overrun_behavior>` | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_title_bar_control<class_FoldableContainer_method_add_title_bar_control>`\ (\ control\: :ref:`Control<class_Control>`\ )       |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`expand<class_FoldableContainer_method_expand>`\ (\ )                                                                              |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`fold<class_FoldableContainer_method_fold>`\ (\ )                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_title_bar_control<class_FoldableContainer_method_remove_title_bar_control>`\ (\ control\: :ref:`Control<class_Control>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`collapsed_font_color<class_FoldableContainer_theme_color_collapsed_font_color>`               | ``Color(1, 1, 1, 1)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_color<class_FoldableContainer_theme_color_font_color>`                                   | ``Color(0.875, 0.875, 0.875, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_FoldableContainer_theme_color_font_outline_color>`                   | ``Color(1, 1, 1, 1)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`hover_font_color<class_FoldableContainer_theme_color_hover_font_color>`                       | ``Color(0.95, 0.95, 0.95, 1)``    |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`h_separation<class_FoldableContainer_theme_constant_h_separation>`                            | ``2``                             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_FoldableContainer_theme_constant_outline_size>`                            | ``0``                             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_FoldableContainer_theme_font_font>`                                                |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_FoldableContainer_theme_font_size_font_size>`                                 |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow<class_FoldableContainer_theme_icon_expanded_arrow>`                            |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow_mirrored<class_FoldableContainer_theme_icon_expanded_arrow_mirrored>`          |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow<class_FoldableContainer_theme_icon_folded_arrow>`                                |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow_mirrored<class_FoldableContainer_theme_icon_folded_arrow_mirrored>`              |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_FoldableContainer_theme_style_focus>`                                             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_FoldableContainer_theme_style_panel>`                                             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_collapsed_hover_panel<class_FoldableContainer_theme_style_title_collapsed_hover_panel>` |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_collapsed_panel<class_FoldableContainer_theme_style_title_collapsed_panel>`             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_hover_panel<class_FoldableContainer_theme_style_title_hover_panel>`                     |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_panel<class_FoldableContainer_theme_style_title_panel>`                                 |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_FoldableContainer_signal_folding_changed:

.. rst-class:: classref-signal

**folding_changed**\ (\ is_folded\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_FoldableContainer_signal_folding_changed>`

Випромінюється, коли контейнер складається/розгортається.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_FoldableContainer_TitlePosition:

.. rst-class:: classref-enumeration

enum **TitlePosition**: :ref:`🔗<enum_FoldableContainer_TitlePosition>`

.. _class_FoldableContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **POSITION_TOP** = ``0``

Змушує заголовок відображатися у верхній частині контейнера.

.. _class_FoldableContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **POSITION_BOTTOM** = ``1``

Змушує заголовок відображатися внизу контейнера. Також робить так, щоб усі StyleBox відображалися вертикально.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_FoldableContainer_property_foldable_group:

.. rst-class:: classref-property

:ref:`FoldableGroup<class_FoldableGroup>` **foldable_group** :ref:`🔗<class_FoldableContainer_property_foldable_group>`

.. rst-class:: classref-property-setget

- |void| **set_foldable_group**\ (\ value\: :ref:`FoldableGroup<class_FoldableGroup>`\ )
- :ref:`FoldableGroup<class_FoldableGroup>` **get_foldable_group**\ (\ )

:ref:`FoldableGroup<class_FoldableGroup>`, пов'язаний з контейнером. Коли кілька вузлів **FoldableContainer** належать до однієї групи, розгорнути дозволено лише один з них.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_folded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **folded** = ``false`` :ref:`🔗<class_FoldableContainer_property_folded>`

.. rst-class:: classref-property-setget

- |void| **set_folded**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_folded**\ (\ )

If ``true``, the container will become folded and will hide all its children.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_FoldableContainer_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Код мови, що використовується для алгоритмів формування тексту. Якщо залишити поле порожнім, використовується поточна локалізація.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_FoldableContainer_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Текст заголовка контейнера.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **title_alignment** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_title_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_title_alignment**\ (\ )

Горизонтальне вирівнювання тексту заголовка.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_position:

.. rst-class:: classref-property

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **title_position** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_position>`

.. rst-class:: classref-property-setget

- |void| **set_title_position**\ (\ value\: :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>`\ )
- :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **get_title_position**\ (\ )

Позиція титулу.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **title_text_direction** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_title_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_title_text_direction**\ (\ )

Напрямок написання заголовного тексту.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **title_text_overrun_behavior** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_title_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_title_text_overrun_behavior**\ (\ )

Визначає поведінку заголовка, коли текст перевищує доступний простір.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_FoldableContainer_method_add_title_bar_control:

.. rst-class:: classref-method

|void| **add_title_bar_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_FoldableContainer_method_add_title_bar_control>`

Додає елемент :ref:`Control<class_Control>`, який буде розміщено поруч із заголовком контейнера, закриваючи область клікабельності. Основне використання — додавання вузлів :ref:`Button<class_Button>`, але це може бути будь-який елемент :ref:`Control<class_Control>`.

Елемент керування буде додано як дочірній елемент цього контейнера та видалено з попереднього батьківського елемента, якщо необхідно. Елементи керування будуть розміщені з вирівнюванням праворуч, причому перший доданий елемент керування буде крайнім лівим.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_expand:

.. rst-class:: classref-method

|void| **expand**\ (\ ) :ref:`🔗<class_FoldableContainer_method_expand>`

Розширює контейнер та випромінює :ref:`folding_changed<class_FoldableContainer_signal_folding_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_fold:

.. rst-class:: classref-method

|void| **fold**\ (\ ) :ref:`🔗<class_FoldableContainer_method_fold>`

Складає контейнер та випромінює :ref:`folding_changed<class_FoldableContainer_signal_folding_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_remove_title_bar_control:

.. rst-class:: classref-method

|void| **remove_title_bar_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_FoldableContainer_method_remove_title_bar_control>`

Видаляє :ref:`Control<class_Control>`, доданий за допомогою :ref:`add_title_bar_control()<class_FoldableContainer_method_add_title_bar_control>`. Вузол не звільняється автоматично, вам потрібно використовувати :ref:`Node.queue_free()<class_Node_method_queue_free>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_FoldableContainer_theme_color_collapsed_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **collapsed_font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_collapsed_font_color>`

Колір шрифту заголовка у згорнутому вигляді.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_font_color>`

Колір шрифту заголовка після розгортання.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_font_outline_color>`

Колір контуру шрифту заголовка.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_hover_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **hover_font_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_hover_font_color>`

Колір шрифту заголовка при наведенні курсора.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``2`` :ref:`🔗<class_FoldableContainer_theme_constant_h_separation>`

Горизонтальне розділення між піктограмою та текстом заголовка, а також між елементами керування рядка заголовка.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_FoldableContainer_theme_constant_outline_size>`

Розмір контуру шрифту заголовка.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_FoldableContainer_theme_font_font>`

Шрифт заголовка.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_FoldableContainer_theme_font_size_font_size>`

Розмір шрифту заголовка.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_FoldableContainer_theme_icon_expanded_arrow>`

Піктограма заголовка, що використовується в розгорнутому вигляді.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_expanded_arrow_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow_mirrored** :ref:`🔗<class_FoldableContainer_theme_icon_expanded_arrow_mirrored>`

Піктограма заголовка, яка використовується в розгорнутому вигляді (для нижнього заголовка).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_FoldableContainer_theme_icon_folded_arrow>`

Піктограма заголовка, що використовується у згорнутому вигляді (для макетів зліва направо).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_folded_arrow_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow_mirrored** :ref:`🔗<class_FoldableContainer_theme_icon_folded_arrow_mirrored>`

Піктограма заголовка, що використовується у згорнутому вигляді (для макетів справа наліво).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_FoldableContainer_theme_style_focus>`

Фон використовується, коли **FoldableContainer** має фокус графічного інтерфейсу. Фокус  :ref:`StyleBox<class_StyleBox>` відображається *поверх* базового :ref:`StyleBox<class_StyleBox>`, тому слід використовувати частково прозорий :ref:`StyleBox<class_StyleBox>`, щоб базовий :ref:`StyleBox<class_StyleBox>` залишався видимим. :ref:`StyleBox<class_StyleBox>`, який представляє контур або підкреслення, добре підходить для цієї мети. Щоб вимкнути візуальний ефект фокусування, призначте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Зверніть увагу, що вимкнення візуального ефекту фокусування погіршить зручність навігації клавіатурою/контролером, тому це не рекомендується з міркувань доступності.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_FoldableContainer_theme_style_panel>`

Фон за замовчуванням для **FoldableContainer**.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_collapsed_hover_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_collapsed_hover_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_collapsed_hover_panel>`

Фон, який використовується, коли курсор миші потрапляє в область заголовка у згорнутому вигляді.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_collapsed_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_collapsed_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_collapsed_panel>`

Фон за замовчуванням для заголовка **FoldableContainer** у згорнутому вигляді.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_hover_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_hover_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_hover_panel>`

Фон, який використовується, коли курсор миші потрапляє в область заголовка після розгортання.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_panel>`

Фон за замовчуванням для заголовка **FoldableContainer** у розгорнутому стані.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
