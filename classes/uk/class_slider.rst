:github_url: hide

.. _class_Slider:

Slider
======

**Успадковує:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`HSlider<class_HSlider>`, :ref:`VSlider<class_VSlider>`

Абстрактний базовий клас для слайдерів.

.. rst-class:: classref-introduction-group

Опис
--------

Абстрактний базовий клас для слайдерів, який використовується для регулювання значення шляхом переміщення зчеплення по горизонтальній або вертикальній осі. Слайдери — :ref:`Range<class_Range>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`editable<class_Slider_property_editable>`                 | ``true``                                                            |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`      | focus_mode                                                      | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`scrollable<class_Slider_property_scrollable>`             | ``true``                                                            |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                     | step                                                            | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`tick_count<class_Slider_property_tick_count>`             | ``0``                                                               |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`ticks_on_borders<class_Slider_property_ticks_on_borders>` | ``false``                                                           |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`TickPosition<enum_Slider_TickPosition>` | :ref:`ticks_position<class_Slider_property_ticks_position>`     | ``0``                                                               |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`center_grabber<class_Slider_theme_constant_center_grabber>`                        | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`grabber_max_size<class_Slider_theme_constant_grabber_max_size>`                    | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`grabber_offset<class_Slider_theme_constant_grabber_offset>`                        | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`tick_max_size<class_Slider_theme_constant_tick_max_size>`                          | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`tick_offset<class_Slider_theme_constant_tick_offset>`                              | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber<class_Slider_theme_icon_grabber>`                                          |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber_disabled<class_Slider_theme_icon_grabber_disabled>`                        |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber_highlight<class_Slider_theme_icon_grabber_highlight>`                      |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`tick<class_Slider_theme_icon_tick>`                                                |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_ended_sound<class_Slider_theme_sound_drag_ended_sound>`                       |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_started_sound<class_Slider_theme_sound_drag_started_sound>`                   |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`focus_sound<class_Slider_theme_sound_focus_sound>`                                 |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_change_rejected_sound<class_Slider_theme_sound_value_change_rejected_sound>` |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_changed_sound<class_Slider_theme_sound_value_changed_sound>`                 |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_area<class_Slider_theme_style_grabber_area>`                               |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_area_highlight<class_Slider_theme_style_grabber_area_highlight>`           |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`slider<class_Slider_theme_style_slider>`                                           |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Slider_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ value_changed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Slider_signal_drag_ended>`

Випускається, коли граббер перестає перетягуватися. Якщо ``value_changed`` має значення ``true``, :ref:`Range.value<class_Range_property_value>` відрізняється від значення на момент початку перетягування.

.. rst-class:: classref-item-separator

----

.. _class_Slider_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_Slider_signal_drag_started>`

Випускається, коли граббер починає перетягуватися. Це випромінюється перед відповідним сигналом :ref:`Range.value_changed<class_Range_signal_value_changed>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Slider_TickPosition:

.. rst-class:: classref-enumeration

enum **TickPosition**: :ref:`🔗<enum_Slider_TickPosition>`

.. _class_Slider_constant_TICK_POSITION_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTTOM_RIGHT** = ``0``

Розміщує позначки внизу :ref:`HSlider<class_HSlider>` або праворуч від :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_TOP_LEFT** = ``1``

Розміщує позначки у верхній частині :ref:`HSlider<class_HSlider>` або ліворуч від :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTH** = ``2``

Розміщує позначки з обох боків повзунка.

.. _class_Slider_constant_TICK_POSITION_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_CENTER** = ``3``

Розміщує позначки в центрі повзунка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Slider_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_Slider_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Якщо ``true``, слайдер може бути взаємодіє з. Якщо ``false``, значення можна змінити тільки за допомогою коду.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_scrollable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrollable** = ``true`` :ref:`🔗<class_Slider_property_scrollable>`

.. rst-class:: classref-property-setget

- |void| **set_scrollable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scrollable**\ (\ )

Якщо ``true``, значення можна змінити за допомогою миші.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_tick_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tick_count** = ``0`` :ref:`🔗<class_Slider_property_tick_count>`

.. rst-class:: classref-property-setget

- |void| **set_ticks**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ticks**\ (\ )

Кількість кліщів, що відображаються на слайдері, включаючи бордюрні кліщі. Тіки рівномірно розподілені цінні маркери.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_on_borders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ticks_on_borders** = ``false`` :ref:`🔗<class_Slider_property_ticks_on_borders>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_on_borders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ticks_on_borders**\ (\ )

Якщо ``true``, слайдер буде відображати кліщі для мінімальних і максимальних значень.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_position:

.. rst-class:: classref-property

:ref:`TickPosition<enum_Slider_TickPosition>` **ticks_position** = ``0`` :ref:`🔗<class_Slider_property_ticks_position>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_position**\ (\ value\: :ref:`TickPosition<enum_Slider_TickPosition>`\ )
- :ref:`TickPosition<enum_Slider_TickPosition>` **get_ticks_position**\ (\ )

Встановлює положення позначок. Див. :ref:`TickPosition<enum_Slider_TickPosition>` для отримання детальної інформації.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_Slider_theme_constant_center_grabber:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_grabber** = ``0`` :ref:`🔗<class_Slider_theme_constant_center_grabber>`

Боленська константа. Якщо ``1``, розмір текстури захоплення буде ігноруватися, і він буде відповідати в межах слайдера, що базується тільки на його центральній позиції.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_grabber_max_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **grabber_max_size** = ``0`` :ref:`🔗<class_Slider_theme_constant_grabber_max_size>`

The maximum allowed size of the **Slider**'s grabber icon. The grabber texture is scaled down so its widest axis is :ref:`grabber_max_size<class_Slider_theme_constant_grabber_max_size>` and the other axis is scaled keeping the original ratio.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_grabber_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **grabber_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_grabber_offset>`

Вертикальний або горизонтальний зміщувач.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_tick_max_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tick_max_size** = ``0`` :ref:`🔗<class_Slider_theme_constant_tick_max_size>`

The maximum allowed size of the **Slider**'s tick icons. The tick texture is scaled down so its widest axis is :ref:`tick_max_size<class_Slider_theme_constant_tick_max_size>` and the other axis is scaled keeping the original ratio.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_tick_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tick_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_tick_offset>`

Вертикальне або горизонтальне зміщення позначок. Зміщення зворотне для верхніх або лівих позначок.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_Slider_theme_icon_grabber>`

Текстура для захоплення (перетяжний елемент).

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_disabled** :ref:`🔗<class_Slider_theme_icon_grabber_disabled>`

Текстура для захоплення при вимкненні.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_highlight** :ref:`🔗<class_Slider_theme_icon_grabber_highlight>`

Текстура для захоплення при його фокусі.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_tick:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **tick** :ref:`🔗<class_Slider_theme_icon_tick>`

Текстура для позначок, видима, коли :ref:`tick_count<class_Slider_property_tick_count>` більше 0.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_drag_ended_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_ended_sound** :ref:`🔗<class_Slider_theme_sound_drag_ended_sound>`

Played when mouse or touch drag ends. This is also used by :ref:`SpinBox<class_SpinBox>` when dragging over its arrows, or :ref:`ColorPicker<class_ColorPicker>` when dragging over its color wheel/rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_drag_started_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_started_sound** :ref:`🔗<class_Slider_theme_sound_drag_started_sound>`

Played when mouse or touch drag begins. This is also used by :ref:`SpinBox<class_SpinBox>` when dragging over its arrows, or :ref:`ColorPicker<class_ColorPicker>` when dragging over its color wheel/rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_focus_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **focus_sound** :ref:`🔗<class_Slider_theme_sound_focus_sound>`

Played when this **Slider** receives keyboard or gamepad-induced focus. Mouse or touch-induced focus does not play a focus sound.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_value_change_rejected_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_change_rejected_sound** :ref:`🔗<class_Slider_theme_sound_value_change_rejected_sound>`

Played when the value is attempted to be changed through keyboard or gamepad input, but the value is already at the minimum (or maximum).

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_value_changed_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_changed_sound** :ref:`🔗<class_Slider_theme_sound_value_changed_sound>`

Played when the value is changed through keyboard or gamepad input. If the value is already at the minimum (or maximum), :ref:`value_change_rejected_sound<class_Slider_theme_sound_value_change_rejected_sound>` is played instead.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area** :ref:`🔗<class_Slider_theme_style_grabber_area>`

На фоні площі зліва або внизу капусти.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area_highlight** :ref:`🔗<class_Slider_theme_style_grabber_area_highlight>`

На фоні площі зліва або внизу граната, що відображає, коли він буде переповнений або орієнтований.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_slider:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **slider** :ref:`🔗<class_Slider_theme_style_slider>`

Фон для всього слайдера. Впливає на висоту або ширину :ref:`grabber_area<class_Slider_theme_style_grabber_area>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
