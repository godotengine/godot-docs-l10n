:github_url: hide

.. _class_Slider:

Slider
======

**Наследует:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`HSlider<class_HSlider>`, :ref:`VSlider<class_VSlider>`

Абстрактный базовый класс для ползунков.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный базовый класс для ползунков, используемых для регулировки значения путем перемещения захвата вдоль горизонтальной или вертикальной оси. Ползунки — это элементы управления на основе :ref:`Range<class_Range>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Свойства темы
--------------------------

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

Сигналы
--------------

.. _class_Slider_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ value_changed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Slider_signal_drag_ended>`

Выдается, когда перестает перетаскиваться граббер. Если ``value_changed`` равно ``true``, :ref:`Range.value<class_Range_property_value>` отличается от значения, когда перетаскивание было начато.

.. rst-class:: classref-item-separator

----

.. _class_Slider_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_Slider_signal_drag_started>`

Выдается, когда начинается перетаскивание захвата. Выдается перед соответствующим сигналом :ref:`Range.value_changed<class_Range_signal_value_changed>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Slider_TickPosition:

.. rst-class:: classref-enumeration

enum **TickPosition**: :ref:`🔗<enum_Slider_TickPosition>`

.. _class_Slider_constant_TICK_POSITION_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTTOM_RIGHT** = ``0``

Размещает галочки внизу :ref:`HSlider<class_HSlider>` или справа от :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_TOP_LEFT** = ``1``

Размещает галочки в верхней части :ref:`HSlider<class_HSlider>` или слева от :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTH** = ``2``

Устанавливает галочки по обеим сторонам ползунка.

.. _class_Slider_constant_TICK_POSITION_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_CENTER** = ``3``

Размещает галочки в центре ползунка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Slider_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_Slider_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Если ``true``, с ползунком можно взаимодействовать. Если ``false``, значение можно изменить только с помощью кода.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_scrollable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrollable** = ``true`` :ref:`🔗<class_Slider_property_scrollable>`

.. rst-class:: classref-property-setget

- |void| **set_scrollable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scrollable**\ (\ )

Если ``true``, значение можно изменить с помощью колесика мыши.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_tick_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tick_count** = ``0`` :ref:`🔗<class_Slider_property_tick_count>`

.. rst-class:: classref-property-setget

- |void| **set_ticks**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ticks**\ (\ )

Количество отметок, отображаемых на ползунке, включая отметки границ. Отметки — это равномерно распределенные маркеры значений.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_on_borders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ticks_on_borders** = ``false`` :ref:`🔗<class_Slider_property_ticks_on_borders>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_on_borders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ticks_on_borders**\ (\ )

Если ``true``, ползунок отобразит отметки для минимальных и максимальных значений.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_position:

.. rst-class:: classref-property

:ref:`TickPosition<enum_Slider_TickPosition>` **ticks_position** = ``0`` :ref:`🔗<class_Slider_property_ticks_position>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_position**\ (\ value\: :ref:`TickPosition<enum_Slider_TickPosition>`\ )
- :ref:`TickPosition<enum_Slider_TickPosition>` **get_ticks_position**\ (\ )

Задаёт положение делений. Подробности см. в :ref:`TickPosition<enum_Slider_TickPosition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_Slider_theme_constant_center_grabber:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_grabber** = ``0`` :ref:`🔗<class_Slider_theme_constant_center_grabber>`

Булева константа. Если ``1``, размер текстуры граббера будет проигнорирован, и он будет вписываться в границы ползунка, основываясь только на его центральном положении.

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

Вертикальное или горизонтальное смещение захвата.

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

Вертикальное или горизонтальное смещение делений. Смещение обратное для верхних или левых делений.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_Slider_theme_icon_grabber>`

Текстура для захвата (перетаскиваемого элемента).

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_disabled** :ref:`🔗<class_Slider_theme_icon_grabber_disabled>`

Текстура для граббера, когда он отключен.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_highlight** :ref:`🔗<class_Slider_theme_icon_grabber_highlight>`

Текстура для захвата, когда он сфокусирован.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_tick:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **tick** :ref:`🔗<class_Slider_theme_icon_tick>`

Текстура для тактов, видимая, когда :ref:`tick_count<class_Slider_property_tick_count>` больше 0.

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

Фон области слева или снизу от граббера.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area_highlight** :ref:`🔗<class_Slider_theme_style_grabber_area_highlight>`

Фон области слева или снизу от захвата, который отображается при наведении на него курсора или фокусировке.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_slider:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **slider** :ref:`🔗<class_Slider_theme_style_slider>`

Фон для всего слайдера. Влияет на высоту или ширину :ref:`grabber_area<class_Slider_theme_style_grabber_area>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
