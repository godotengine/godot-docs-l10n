:github_url: hide

.. _class_ScrollBar:

ScrollBar
=========

**Успадковує:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`HScrollBar<class_HScrollBar>`, :ref:`VScrollBar<class_VScrollBar>`

Абстрактний базовий клас для прокруток.

.. rst-class:: classref-introduction-group

Опис
--------

Абстрактний базовий клас для прокруток, як правило, використовується для навігації через вміст, який поширюється за межі видимої області управління. Скролборди :ref:`Range<class_Range>` контролюються.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`custom_step<class_ScrollBar_property_custom_step>` | ``-1.0``                                                            |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                               | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | step                                                     | ``0.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +------------------------------------------+----------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`icon_max_size<class_ScrollBar_theme_constant_icon_max_size>`                          | ``0`` |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`decrement<class_ScrollBar_theme_icon_decrement>`                                      |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`decrement_highlight<class_ScrollBar_theme_icon_decrement_highlight>`                  |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`decrement_pressed<class_ScrollBar_theme_icon_decrement_pressed>`                      |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`increment<class_ScrollBar_theme_icon_increment>`                                      |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`increment_highlight<class_ScrollBar_theme_icon_increment_highlight>`                  |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`increment_pressed<class_ScrollBar_theme_icon_increment_pressed>`                      |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_ended_sound<class_ScrollBar_theme_sound_drag_ended_sound>`                       |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_started_sound<class_ScrollBar_theme_sound_drag_started_sound>`                   |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_change_rejected_sound<class_ScrollBar_theme_sound_value_change_rejected_sound>` |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_changed_sound<class_ScrollBar_theme_sound_value_changed_sound>`                 |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber<class_ScrollBar_theme_style_grabber>`                                         |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_highlight<class_ScrollBar_theme_style_grabber_highlight>`                     |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_pressed<class_ScrollBar_theme_style_grabber_pressed>`                         |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`scroll<class_ScrollBar_theme_style_scroll>`                                           |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`scroll_focus<class_ScrollBar_theme_style_scroll_focus>`                               |       |
   +---------------------------------------+---------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_ScrollBar_signal_scrolling:

.. rst-class:: classref-signal

**scrolling**\ (\ ) :ref:`🔗<class_ScrollBar_signal_scrolling>`

Випробувано, коли прокрутка прокручується.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ScrollBar_property_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_step** = ``-1.0`` :ref:`🔗<class_ScrollBar_property_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_step**\ (\ )

На відміну від кроку, який використовується при натисканні кнопки згортання та розпаду або при використанні клавіш стріли, коли фокусується **ScrollBar**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_ScrollBar_theme_constant_icon_max_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_size** = ``0`` :ref:`🔗<class_ScrollBar_theme_constant_icon_max_size>`

The maximum allowed size of the **ScrollBar**'s increment and decrement icons. The texture is scaled down so its widest axis is :ref:`icon_max_size<class_ScrollBar_theme_constant_icon_max_size>` and the other axis is scaled keeping the original ratio.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_ScrollBar_theme_icon_decrement>`

Ікона використовується як кнопка, щоб прокрутити **ScrollBar** зліва/уп. Підтримка користувацького кроку за допомогою :ref:`custom_step<class_ScrollBar_property_custom_step>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_ScrollBar_theme_icon_decrement_highlight>`

Переглянуто, коли курсор мишей переходить на кнопку роз'яснення.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_decrement_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_pressed** :ref:`🔗<class_ScrollBar_theme_icon_decrement_pressed>`

Переглянуто при натисканні кнопки розщеплення.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_ScrollBar_theme_icon_increment>`

Ікона використовується як кнопка для прокручування **ScrollBar** правою/зад. Підтримка користувацького кроку за допомогою :ref:`custom_step<class_ScrollBar_property_custom_step>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_ScrollBar_theme_icon_increment_highlight>`

Переглянуто, коли курсор мишей переходить на кнопку «під ключ».

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_icon_increment_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_pressed** :ref:`🔗<class_ScrollBar_theme_icon_increment_pressed>`

Переглянуто при натисканні кнопки підняття.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_sound_drag_ended_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_ended_sound** :ref:`🔗<class_ScrollBar_theme_sound_drag_ended_sound>`

Played when mouse or touch drag ends.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_sound_drag_started_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_started_sound** :ref:`🔗<class_ScrollBar_theme_sound_drag_started_sound>`

Played when mouse or touch drag begins.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_sound_value_change_rejected_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_change_rejected_sound** :ref:`🔗<class_ScrollBar_theme_sound_value_change_rejected_sound>`

Played when the value is attempted to be changed through keyboard or gamepad input, but the value is already at the minimum (or maximum).

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_sound_value_changed_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_changed_sound** :ref:`🔗<class_ScrollBar_theme_sound_value_changed_sound>`

Played when the value is changed through keyboard or gamepad input. If the value is already at the minimum (or maximum), :ref:`value_change_rejected_sound<class_ScrollBar_theme_sound_value_change_rejected_sound>` is played instead.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber** :ref:`🔗<class_ScrollBar_theme_style_grabber>`

Використовуються як текстура для захоплення, перетягування елемента, що представляє поточний прокруток.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_highlight** :ref:`🔗<class_ScrollBar_theme_style_grabber_highlight>`

Використовуються, коли миша вішалка над капустом.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_grabber_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_pressed** :ref:`🔗<class_ScrollBar_theme_style_grabber_pressed>`

Використовується при перетягуванні капуста.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll** :ref:`🔗<class_ScrollBar_theme_style_scroll>`

Використовується як фон цього **ScrollBar**.

.. rst-class:: classref-item-separator

----

.. _class_ScrollBar_theme_style_scroll_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **scroll_focus** :ref:`🔗<class_ScrollBar_theme_style_scroll_focus>`

Використовується як фон, коли **ScrollBar** має фокус GUI.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
