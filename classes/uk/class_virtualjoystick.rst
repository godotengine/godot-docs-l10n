:github_url: hide

.. _class_VirtualJoystick:

VirtualJoystick
===============

**Успадковує:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Віртуальний джойстик для пристроїв із сенсорним екраном.

.. rst-class:: classref-introduction-group

Опис
--------

Настроюваний екранний джойстик, призначений для пристроїв із сенсорним екраном. Він дозволяє користувачам вводити дані про напрямок руху шляхом перетягування віртуального курсора в межах визначеної круглої області.

Цей елемент управління може імітувати дії з переміщенням у певному напрямку (див. :ref:`action_up<class_VirtualJoystick_property_action_up>`, :ref:`action_down<class_VirtualJoystick_property_action_down>`, :ref:`action_left<class_VirtualJoystick_property_action_left>` та :ref:`action_right<class_VirtualJoystick_property_action_right>`), які активуються при переміщенні джойстика у відповідних напрямках.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Властивості теми
--------------------------------

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

Сигнали
--------------

.. _class_VirtualJoystick_signal_flick_canceled:

.. rst-class:: classref-signal

**flick_canceled**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_flick_canceled>`

Видається, коли кінчик входить у мертву зону після того, як перебував поза нею.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_flicked:

.. rst-class:: classref-signal

**flicked**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_flicked>`

Видається, коли кінчик виходить за межі мертвої зони і джойстик відпускається. Параметр ``input_vector`` містить останній напрямок та силу введення перед відпусканням. Його значення знаходиться в діапазоні від ``0.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_pressed>`

Звук відтворюється при натисканні джойстика.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_released:

.. rst-class:: classref-signal

**released**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_released>`

Видається при відпусканні джойстика. Параметр ``input_vector`` відображає кінцевий напрямок та силу введення, значення якого знаходиться в діапазоні від ``0.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_tapped:

.. rst-class:: classref-signal

**tapped**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_tapped>`

Звук лунає, коли джойстик відпускають, не змінюючи положення його кінчика.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VirtualJoystick_JoystickMode:

.. rst-class:: classref-enumeration

enum **JoystickMode**: :ref:`🔗<enum_VirtualJoystick_JoystickMode>`

.. _class_VirtualJoystick_constant_JOYSTICK_FIXED:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FIXED** = ``0``

Джойстик не рухається.

.. _class_VirtualJoystick_constant_JOYSTICK_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_DYNAMIC** = ``1``

Джойстик переміщується у вихідне положення, якщо він знаходиться в межах робочої зони. Після відпускання він повертається у вихідне положення.

.. _class_VirtualJoystick_constant_JOYSTICK_FOLLOWING:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FOLLOWING** = ``2``

Джойстик переміщується у вихідне положення, якщо дотик знаходиться в межах його робочої зони. Якщо дотик виходить за межі робочої зони джойстика, він слідує за ним. Після відпускання джойстик повертається у вихідне положення.

.. rst-class:: classref-item-separator

----

.. _enum_VirtualJoystick_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_VirtualJoystick_VisibilityMode>`

.. _class_VirtualJoystick_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

Джойстик завжди залишається на екрані.

.. _class_VirtualJoystick_constant_VISIBILITY_WHEN_TOUCHED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_WHEN_TOUCHED** = ``1``

Джойстик стає видимим лише під час дотику.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VirtualJoystick_property_action_down:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_down** = ``&"ui_down"`` :ref:`🔗<class_VirtualJoystick_property_action_down>`

.. rst-class:: classref-property-setget

- |void| **set_action_down**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_down**\ (\ )

Дія, яка має виконуватися при переміщенні джойстика вниз.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_left:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_left** = ``&"ui_left"`` :ref:`🔗<class_VirtualJoystick_property_action_left>`

.. rst-class:: classref-property-setget

- |void| **set_action_left**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_left**\ (\ )

Дія, яка має виконуватися при переміщенні джойстика вліво.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_right:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_right** = ``&"ui_right"`` :ref:`🔗<class_VirtualJoystick_property_action_right>`

.. rst-class:: classref-property-setget

- |void| **set_action_right**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_right**\ (\ )

Дія, яка має виконуватися при переміщенні джойстика вправо.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_up:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_up** = ``&"ui_up"`` :ref:`🔗<class_VirtualJoystick_property_action_up>`

.. rst-class:: classref-property-setget

- |void| **set_action_up**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_up**\ (\ )

Дія, яка має виконуватися при переміщенні джойстика вгору.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_clampzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **clampzone_ratio** = ``1.0`` :ref:`🔗<class_VirtualJoystick_property_clampzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_clampzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clampzone_ratio**\ (\ )

Коефіцієнт, що застосовується до радіуса джойстика та визначає зону фіксації.

Ця зона обмежує відстань, на яку кінчик джойстика може відхилитися від центру, перш ніж буде зафіксовано.

Значення ``1.0`` означає, що кінчик може переміститися до краю візуального розміру джойстика.

У режимі :ref:`JOYSTICK_FOLLOWING<class_VirtualJoystick_constant_JOYSTICK_FOLLOWING>` цей радіус також визначає, як далеко може переміститися палець, перш ніж основа джойстика почне слідувати за сенсорним введенням.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_deadzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **deadzone_ratio** = ``0.0`` :ref:`🔗<class_VirtualJoystick_property_deadzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_deadzone_ratio**\ (\ )

Коефіцієнт розміру джойстика, що визначає мертву зону джойстика. Кінчик джойстика повинен переміститися на відстань, що перевищує цей коефіцієнт, перш ніж його буде визнано активним.

Ця мертва зона застосовується перед запуском дій введення та впливає на вектор введення джойстика та всі пов’язані сигнали.

Зверніть увагу, що дії введення також можуть визначати власні мертві зони в InputMap. Якщо встановлено обидва параметри, спочатку застосовується мертва зона джойстика, а потім — мертва зона дії.

За замовчуванням це значення дорівнює ``0.0``, що означає, що джойстик не застосовує власну мертву зону і повністю покладається на мертві зони дій InputMap.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_initial_offset_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **initial_offset_ratio** = ``Vector2(0.5, 0.5)`` :ref:`🔗<class_VirtualJoystick_property_initial_offset_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_initial_offset_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_initial_offset_ratio**\ (\ )

Початкове положення джойстика як відношення до розміру елемента управління. ``(0, 0)`` відповідає верхньому лівому куту, а ``(1, 1)`` — нижньому правому.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_mode:

.. rst-class:: classref-property

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **joystick_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_joystick_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_mode**\ (\ value\: :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>`\ )
- :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **get_joystick_mode**\ (\ )

Режим джойстика, який потрібно використовувати.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **joystick_size** = ``100.0`` :ref:`🔗<class_VirtualJoystick_property_joystick_size>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_joystick_size**\ (\ )

Розмір джойстика в пікселях.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_tip_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **tip_size** = ``50.0`` :ref:`🔗<class_VirtualJoystick_property_tip_size>`

.. rst-class:: classref-property-setget

- |void| **set_tip_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tip_size**\ (\ )

Розмір кінчика джойстика в пікселях.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **get_visibility_mode**\ (\ )

Режим відображення, який слід використовувати.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_VirtualJoystick_theme_style_normal_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_normal_joystick>`

Базовий джойстик :ref:`StyleBox<class_StyleBox>`.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_normal_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_tip** :ref:`🔗<class_VirtualJoystick_theme_style_normal_tip>`

Джойстик Tip :ref:`StyleBox<class_StyleBox>`.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_joystick>`

Базовий джойстик :ref:`StyleBox<class_StyleBox>` при натисканні.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_tip** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_tip>`

Нахил джойстика :ref:`StyleBox<class_StyleBox>` при натисканні.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
