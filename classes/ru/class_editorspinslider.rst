:github_url: hide

.. _class_EditorSpinSlider:

EditorSpinSlider
================

**Наследует:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Элемент управления редактора Godot для редактирования числовых значений.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел :ref:`Control<class_Control>` используется в доке Inspector редактора для возможности редактирования числовых значений. Может использоваться с :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` для воссоздания того же поведения.

Если значение :ref:`Range.step<class_Range_property_step>` равно ``1``, **EditorSpinSlider** будет отображать стрелки вверх/вниз, аналогичные :ref:`SpinBox<class_SpinBox>`. Если значение :ref:`Range.step<class_Range_property_step>` не равно ``1``, вместо этого будет отображаться ползунок.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`ControlState<enum_EditorSpinSlider_ControlState>` | :ref:`control_state<class_EditorSpinSlider_property_control_state>`     | ``0``                                                                        |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>` | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`flat<class_EditorSpinSlider_property_flat>`                       | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                | focus_mode                                                              | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)          |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`hide_slider<class_EditorSpinSlider_property_hide_slider>`         | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`label<class_EditorSpinSlider_property_label>`                     | ``""``                                                                       |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`read_only<class_EditorSpinSlider_property_read_only>`             | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]  | size_flags_vertical                                                     | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | step                                                                    | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`suffix<class_EditorSpinSlider_property_suffix>`                   | ``""``                                                                       |
   +---------------------------------------------------------+-------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown<class_EditorSpinSlider_theme_icon_updown>`                   |
   +-----------------------------------+---------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown_disabled<class_EditorSpinSlider_theme_icon_updown_disabled>` |
   +-----------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_EditorSpinSlider_signal_grabbed:

.. rst-class:: classref-signal

**grabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_grabbed>`

Выдается при захвате спиннера/слайдера.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_ungrabbed:

.. rst-class:: classref-signal

**ungrabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_ungrabbed>`

Выдается, когда спиннер/слайдер отпущен.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_updown_pressed:

.. rst-class:: classref-signal

**updown_pressed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_updown_pressed>`

Издается при нажатии кнопки «вверх-вниз».

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_entered:

.. rst-class:: classref-signal

**value_focus_entered**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_entered>`

Выдается, когда форма значения получает фокус.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_exited:

.. rst-class:: classref-signal

**value_focus_exited**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_exited>`

Выдается, когда форма значения теряет фокус.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_EditorSpinSlider_ControlState:

.. rst-class:: classref-enumeration

enum **ControlState**: :ref:`🔗<enum_EditorSpinSlider_ControlState>`

.. _class_EditorSpinSlider_constant_CONTROL_STATE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_DEFAULT** = ``0``

Тип используемого элемента управления будет зависеть от значения параметра :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>`. Стрелки вверх/вниз, если ``true``, ползунок, если ``false``.

.. _class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_PREFER_SLIDER** = ``1``

Ползунок будет использоваться всегда, даже если параметр :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>` включен.

.. _class_EditorSpinSlider_constant_CONTROL_STATE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_HIDE** = ``2``

Ни стрелки вверх/вниз, ни ползунок отображаться не будут.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_EditorSpinSlider_property_control_state:

.. rst-class:: classref-property

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **control_state** = ``0`` :ref:`🔗<class_EditorSpinSlider_property_control_state>`

.. rst-class:: classref-property-setget

- |void| **set_control_state**\ (\ value\: :ref:`ControlState<enum_EditorSpinSlider_ControlState>`\ )
- :ref:`ControlState<enum_EditorSpinSlider_ControlState>` **get_control_state**\ (\ )

Состояние, в котором будет находиться элемент управления, используемый для изменения значения.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_editing_integer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editing_integer** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_editing_integer>`

.. rst-class:: classref-property-setget

- |void| **set_editing_integer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_integer**\ (\ )

Если ``true``, считается, что **EditorSpinSlider** редактирует целочисленное значение. Если ``false``, считается, что **EditorSpinSlider** редактирует значение с плавающей запятой. Это используется для определения того, следует ли отображать ползунок по умолчанию. Ползунок отображается только для чисел с плавающей запятой; для целых чисел используются стрелки вверх-вниз, аналогичные :ref:`SpinBox<class_SpinBox>`, если только :ref:`control_state<class_EditorSpinSlider_property_control_state>` не установлен в :ref:`CONTROL_STATE_PREFER_SLIDER<class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER>`. Также будет использоваться :ref:`EditorSettings.interface/inspector/integer_drag_speed<class_EditorSettings_property_interface/inspector/integer_drag_speed>` вместо :ref:`EditorSettings.interface/inspector/float_drag_speed<class_EditorSettings_property_interface/inspector/float_drag_speed>`, если ползунок доступен.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Если ``true``, ползунок не будет рисовать фон.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_hide_slider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hide_slider** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_hide_slider>`

.. rst-class:: classref-property-setget

- |void| **set_hide_slider**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hiding_slider**\ (\ )

**Устарело:** Use :ref:`control_state<class_EditorSpinSlider_property_control_state>` instead.

Если ``true``, ползунок и стрелки вверх/вниз скрыты.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

Текст, отображаемый слева от значения.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

Если ``true``, с ползунком нельзя взаимодействовать.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

Суффикс для отображения после значения (блеклым цветом). Обычно это должно быть слово во множественном числе. Возможно, вам придется использовать сокращение, если суффикс слишком длинный для отображения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_EditorSpinSlider_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown>`

Одна текстура, представляющая кнопки «вверх» и «вниз».

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_icon_updown_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown_disabled** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown_disabled>`

Одна текстура, представляющая кнопки «вверх» и «вниз», когда элемент управления доступен только для чтения или отключен.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
