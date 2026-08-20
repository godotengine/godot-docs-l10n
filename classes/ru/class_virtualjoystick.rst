:github_url: hide

.. _class_VirtualJoystick:

VirtualJoystick
===============

**Наследует:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Виртуальный джойстик для управления сенсорными экранами.

.. rst-class:: classref-introduction-group

Описание
----------------

Настраиваемый экранный джойстик, разработанный для сенсорных устройств. Он позволяет пользователям вводить направления движения, перетаскивая виртуальный наконечник в пределах заданной круговой области.

Этот элемент управления может имитировать действия, направленные в нужное положение (см. :ref:`action_up<class_VirtualJoystick_property_action_up>`, :ref:`action_down<class_VirtualJoystick_property_action_down>`, :ref:`action_left<class_VirtualJoystick_property_action_left>` и :ref:`action_right<class_VirtualJoystick_property_action_right>`), которые запускаются при перемещении джойстика в соответствующих направлениях.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_down<class_VirtualJoystick_property_action_down>`                   | ``&"ui_down"``        |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_left<class_VirtualJoystick_property_action_left>`                   | ``&"ui_left"``        |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_right<class_VirtualJoystick_property_action_right>`                 | ``&"ui_right"``       |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_up<class_VirtualJoystick_property_action_up>`                       | ``&"ui_up"``          |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`clampzone_ratio<class_VirtualJoystick_property_clampzone_ratio>`           | ``1.0``               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`deadzone_ratio<class_VirtualJoystick_property_deadzone_ratio>`             | ``0.0``               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`initial_offset_ratio<class_VirtualJoystick_property_initial_offset_ratio>` | ``Vector2(0.5, 0.5)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>`     | :ref:`joystick_mode<class_VirtualJoystick_property_joystick_mode>`               | ``0``                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`joystick_size<class_VirtualJoystick_property_joystick_size>`               | ``100.0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`tip_size<class_VirtualJoystick_property_tip_size>`                         | ``50.0``              |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` | :ref:`visibility_mode<class_VirtualJoystick_property_visibility_mode>`           | ``0``                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_joystick<class_VirtualJoystick_theme_style_normal_joystick>`   |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_tip<class_VirtualJoystick_theme_style_normal_tip>`             |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_joystick<class_VirtualJoystick_theme_style_pressed_joystick>` |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_tip<class_VirtualJoystick_theme_style_pressed_tip>`           |
   +---------------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_VirtualJoystick_signal_flick_canceled:

.. rst-class:: classref-signal

**flick_canceled**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_flick_canceled>`

Генерируется, когда наконечник входит в мертвую зону после того, как находился за ее пределами.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_flicked:

.. rst-class:: classref-signal

**flicked**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_flicked>`

Генерируется, когда кончик выходит за пределы мертвой зоны и джойстик отпускается. Параметр ``input_vector`` содержит последнее направление и силу входного сигнала перед отпусканием. Его длина находится в диапазоне от ``0.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_pressed>`

Излучается при нажатии на джойстик.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_released:

.. rst-class:: classref-signal

**released**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_released>`

Генерируется при отпускании джойстика. Параметр ``input_vector`` обозначает конечное направление и силу входного сигнала, длина которого находится в диапазоне от ``0.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_tapped:

.. rst-class:: classref-signal

**tapped**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_tapped>`

Излучается при отпускании джойстика без перемещения его кончика.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VirtualJoystick_JoystickMode:

.. rst-class:: classref-enumeration

enum **JoystickMode**: :ref:`🔗<enum_VirtualJoystick_JoystickMode>`

.. _class_VirtualJoystick_constant_JOYSTICK_FIXED:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FIXED** = ``0``

Джойстик не двигается.

.. _class_VirtualJoystick_constant_JOYSTICK_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_DYNAMIC** = ``1``

Джойстик перемещается в исходное положение касания, пока находится в пределах его зоны действия. При отпускании он возвращается в исходное положение.

.. _class_VirtualJoystick_constant_JOYSTICK_FOLLOWING:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FOLLOWING** = ``2``

Джойстик перемещается в исходное положение касания, пока находится в пределах его зоны действия. Он будет следовать за касанием, если оно выйдет за пределы зоны действия джойстика. При отпускании он возвращается в исходное положение.

.. rst-class:: classref-item-separator

----

.. _enum_VirtualJoystick_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_VirtualJoystick_VisibilityMode>`

.. _class_VirtualJoystick_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

Джойстик всегда на виду.

.. _class_VirtualJoystick_constant_VISIBILITY_WHEN_TOUCHED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_WHEN_TOUCHED** = ``1``

Джойстик виден только при прикосновении.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VirtualJoystick_property_action_down:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_down** = ``&"ui_down"`` :ref:`🔗<class_VirtualJoystick_property_action_down>`

.. rst-class:: classref-property-setget

- |void| **set_action_down**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_down**\ (\ )

Действие, которое срабатывает при перемещении джойстика вниз.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_left:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_left** = ``&"ui_left"`` :ref:`🔗<class_VirtualJoystick_property_action_left>`

.. rst-class:: classref-property-setget

- |void| **set_action_left**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_left**\ (\ )

Действие, которое срабатывает при перемещении джойстика влево.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_right:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_right** = ``&"ui_right"`` :ref:`🔗<class_VirtualJoystick_property_action_right>`

.. rst-class:: classref-property-setget

- |void| **set_action_right**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_right**\ (\ )

Действие, которое срабатывает при перемещении джойстика вправо.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_up:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_up** = ``&"ui_up"`` :ref:`🔗<class_VirtualJoystick_property_action_up>`

.. rst-class:: classref-property-setget

- |void| **set_action_up**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_up**\ (\ )

Действие, которое срабатывает при перемещении джойстика вверх.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_clampzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **clampzone_ratio** = ``1.0`` :ref:`🔗<class_VirtualJoystick_property_clampzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_clampzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clampzone_ratio**\ (\ )

Множитель, применяемый к радиусу джойстика, определяет зону зажима.

Эта зона ограничивает расстояние, на которое кончик джойстика может переместиться от своего центра, прежде чем он будет зафиксирован.

Значение ``1.0`` означает, что кончик может переместиться до края визуального размера джойстика.

В режиме :ref:`JOYSTICK_FOLLOWING<class_VirtualJoystick_constant_JOYSTICK_FOLLOWING>` этот радиус также определяет, на какое расстояние может переместиться палец, прежде чем основание джойстика начнет следовать за касанием.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_deadzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **deadzone_ratio** = ``0.0`` :ref:`🔗<class_VirtualJoystick_property_deadzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_deadzone_ratio**\ (\ )

Соотношение размеров джойстика, определяющее мертвую зону джойстика. Кончик джойстика должен выйти за пределы этого соотношения, прежде чем он будет считаться активным.

Эта мертвая зона применяется перед запуском действий ввода и влияет на вектор ввода джойстика и все связанные сигналы.

Обратите внимание, что действия ввода также могут определять свои собственные мертвые зоны в InputMap. Если заданы оба параметра, сначала применяется мертвая зона джойстика, а затем мертвая зона действия.

По умолчанию это значение равно ``0.0``, что означает, что джойстик не применяет свою собственную мертвую зону и полностью полагается на мертвые зоны действий InputMap.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_initial_offset_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **initial_offset_ratio** = ``Vector2(0.5, 0.5)`` :ref:`🔗<class_VirtualJoystick_property_initial_offset_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_initial_offset_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_initial_offset_ratio**\ (\ )

Начальное положение джойстика определяется как отношение размера элемента управления. ``(0, 0)`` — это верхний левый угол, а ``(1, 1)`` — нижний правый угол.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_mode:

.. rst-class:: classref-property

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **joystick_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_joystick_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_mode**\ (\ value\: :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>`\ )
- :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **get_joystick_mode**\ (\ )

Режим работы джойстика.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **joystick_size** = ``100.0`` :ref:`🔗<class_VirtualJoystick_property_joystick_size>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_joystick_size**\ (\ )

Размер джойстика в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_tip_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **tip_size** = ``50.0`` :ref:`🔗<class_VirtualJoystick_property_tip_size>`

.. rst-class:: classref-property-setget

- |void| **set_tip_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tip_size**\ (\ )

Размер кончика джойстика в пикселях.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **get_visibility_mode**\ (\ )

Режим видимости при использовании.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_VirtualJoystick_theme_style_normal_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_normal_joystick>`

Базовый джойстик :ref:`StyleBox<class_StyleBox>`.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_normal_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_tip** :ref:`🔗<class_VirtualJoystick_theme_style_normal_tip>`

Подсказка для джойстика :ref:`StyleBox<class_StyleBox>`.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_joystick>`

Базовый джойстик :ref:`StyleBox<class_StyleBox>` при нажатии.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_tip** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_tip>`

Стиль :ref:`StyleBox<class_StyleBox>` для наконечника джойстика при нажатии.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
