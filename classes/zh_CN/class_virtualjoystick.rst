:github_url: hide

.. _class_VirtualJoystick:

VirtualJoystick
===============

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一个用于触摸屏设备的虚拟摇杆控制。

.. rst-class:: classref-introduction-group

描述
----

一个为触摸屏设备设计的可自定义屏幕摇杆控制。它允许用户通过在定义好的圆形区域内拖动一个虚拟摇杆头来提供方向输入。

该控件可以模拟方向动作（参见 :ref:`action_up<class_VirtualJoystick_property_action_up>`\ 、\ :ref:`action_down<class_VirtualJoystick_property_action_down>`\ 、\ :ref:`action_left<class_VirtualJoystick_property_action_left>` 和 :ref:`action_right<class_VirtualJoystick_property_action_right>`\ ），当摇杆向对应方向移动时触发这些动作。

.. rst-class:: classref-reftable-group

属性
----

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

主题属性
--------

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

信号
----

.. _class_VirtualJoystick_signal_flick_canceled:

.. rst-class:: classref-signal

**flick_canceled**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_flick_canceled>`

当摇杆头从死区外移动进入死区内时，触发该信号。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_flicked:

.. rst-class:: classref-signal

**flicked**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_flicked>`

当摇杆头移出死区后释放摇杆时发出。\ ``input_vector`` 包含释放前的最后输入方向和强度。其长度介于 ``0.0`` 和 ``1.0`` 之间。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_pressed>`

当摇杆被按下时，触发该信号。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_released:

.. rst-class:: classref-signal

**released**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_released>`

当摇杆被释放时发出。\ ``input_vector`` 是最终的输入方向和强度，其长度介于 ``0.0`` 和 ``1.0`` 之间。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_tapped:

.. rst-class:: classref-signal

**tapped**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_tapped>`

当摇杆被松开，且摇杆头没有发生移动时，触发该信号。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_VirtualJoystick_JoystickMode:

.. rst-class:: classref-enumeration

enum **JoystickMode**: :ref:`🔗<enum_VirtualJoystick_JoystickMode>`

.. _class_VirtualJoystick_constant_JOYSTICK_FIXED:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FIXED** = ``0``

摇杆没有移动。

.. _class_VirtualJoystick_constant_JOYSTICK_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_DYNAMIC** = ``1``

只要初始触摸位置在摇杆的边界范围内，摇杆就会移动到该位置。当释放时，它会移回其原始位置。

.. _class_VirtualJoystick_constant_JOYSTICK_FOLLOWING:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FOLLOWING** = ``2``

只要初始触摸位置在摇杆的边界范围内，摇杆就会移动到该位置。如果触摸点移出了摇杆的作用范围，它会继续跟随触摸输入。当释放时，摇杆会移回其原始位置。

.. rst-class:: classref-item-separator

----

.. _enum_VirtualJoystick_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_VirtualJoystick_VisibilityMode>`

.. _class_VirtualJoystick_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

摇杆始终可见。

.. _class_VirtualJoystick_constant_VISIBILITY_WHEN_TOUCHED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_WHEN_TOUCHED** = ``1``

仅在触摸时显示摇杆。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VirtualJoystick_property_action_down:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_down** = ``&"ui_down"`` :ref:`🔗<class_VirtualJoystick_property_action_down>`

.. rst-class:: classref-property-setget

- |void| **set_action_down**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_down**\ (\ )

当摇杆向下移动时要触发的动作。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_left:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_left** = ``&"ui_left"`` :ref:`🔗<class_VirtualJoystick_property_action_left>`

.. rst-class:: classref-property-setget

- |void| **set_action_left**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_left**\ (\ )

当摇杆向左移动时要触发的动作。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_right:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_right** = ``&"ui_right"`` :ref:`🔗<class_VirtualJoystick_property_action_right>`

.. rst-class:: classref-property-setget

- |void| **set_action_right**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_right**\ (\ )

当摇杆向右移动时要触发的动作。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_up:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_up** = ``&"ui_up"`` :ref:`🔗<class_VirtualJoystick_property_action_up>`

.. rst-class:: classref-property-setget

- |void| **set_action_up**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_up**\ (\ )

当摇杆向上移动时触发的操作。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_clampzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **clampzone_ratio** = ``1.0`` :ref:`🔗<class_VirtualJoystick_property_clampzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_clampzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clampzone_ratio**\ (\ )

应用于摇杆半径的乘数，用于定义钳制区域。

该区域限制了摇杆头在被钳制前，距离其中心点可以移动的最远距离。

值为 ``1.0`` 表示摇杆头可以移动到摇杆视觉尺寸的边缘。

在 :ref:`JOYSTICK_FOLLOWING<class_VirtualJoystick_constant_JOYSTICK_FOLLOWING>` 模式下，该半径还决定了手指移动多远后，摇杆底座才开始跟随触摸输入。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_deadzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **deadzone_ratio** = ``0.0`` :ref:`🔗<class_VirtualJoystick_property_deadzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_deadzone_ratio**\ (\ )

定义摇杆死区的摇杆尺寸比例。摇杆头必须移动超过这一比例，才会被视为激活。

该死区在触发输入动作之前生效，并会影响摇杆的输入向量（Input Vector）及所有相关信号。

请注意，输入动作（Input Actions）也可能在 InputMap 中定义自己的死区。如果两者都进行了设置，则先应用摇杆的死区，再应用动作的死区。

默认情况下，该值为 ``0.0``\ ，这意味着摇杆不会应用其自身的死区，而是完全依赖 InputMap 动作的死区。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_initial_offset_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **initial_offset_ratio** = ``Vector2(0.5, 0.5)`` :ref:`🔗<class_VirtualJoystick_property_initial_offset_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_initial_offset_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_initial_offset_ratio**\ (\ )

摇杆初始位置相对于控件尺寸的比例。 ``(0, 0)`` 代表左上角，\ ``(1, 1)`` 代表右下角。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_mode:

.. rst-class:: classref-property

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **joystick_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_joystick_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_mode**\ (\ value\: :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>`\ )
- :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **get_joystick_mode**\ (\ )

要使用的摇杆模式。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **joystick_size** = ``100.0`` :ref:`🔗<class_VirtualJoystick_property_joystick_size>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_joystick_size**\ (\ )

摇杆的大小（以像素为单位）。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_tip_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **tip_size** = ``50.0`` :ref:`🔗<class_VirtualJoystick_property_tip_size>`

.. rst-class:: classref-property-setget

- |void| **set_tip_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tip_size**\ (\ )

摇杆顶部（摇杆头）的大小（以像素为单位）。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **get_visibility_mode**\ (\ )

要使用的可见性模式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_VirtualJoystick_theme_style_normal_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_normal_joystick>`

基础摇杆 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_normal_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_tip** :ref:`🔗<class_VirtualJoystick_theme_style_normal_tip>`

摇杆头 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_joystick>`

基础摇杆按下时的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_tip** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_tip>`

按下时的摇杆头 :ref:`StyleBox<class_StyleBox>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
