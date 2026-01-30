:github_url: hide

.. _class_BaseButton:

BaseButton
==========

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`Button<class_Button>`, :ref:`LinkButton<class_LinkButton>`, :ref:`TextureButton<class_TextureButton>`

GUI 按钮的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

**BaseButton** 是 GUI 按钮的抽象基类。本身不显示任何东西。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>`                           | :ref:`action_mode<class_BaseButton_property_action_mode>`                   | ``1``                                                               |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`ButtonGroup<class_ButtonGroup>`                                   | :ref:`button_group<class_BaseButton_property_button_group>`                 |                                                                     |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_BaseButton_property_button_mask>`                   | ``1``                                                               |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`button_pressed<class_BaseButton_property_button_pressed>`             | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`disabled<class_BaseButton_property_disabled>`                         | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                                | focus_mode                                                                  | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`keep_pressed_outside<class_BaseButton_property_keep_pressed_outside>` | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>`                                         | :ref:`shortcut<class_BaseButton_property_shortcut>`                         |                                                                     |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`shortcut_feedback<class_BaseButton_property_shortcut_feedback>`       | ``true``                                                            |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`shortcut_in_tooltip<class_BaseButton_property_shortcut_in_tooltip>`   | ``true``                                                            |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`toggle_mode<class_BaseButton_property_toggle_mode>`                   | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`_pressed<class_BaseButton_private_method__pressed>`\ (\ ) |virtual|                                            |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`_toggled<class_BaseButton_private_method__toggled>`\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) |virtual|      |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`DrawMode<enum_BaseButton_DrawMode>` | :ref:`get_draw_mode<class_BaseButton_method_get_draw_mode>`\ (\ ) |const|                                            |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_hovered<class_BaseButton_method_is_hovered>`\ (\ ) |const|                                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_pressed_no_signal<class_BaseButton_method_set_pressed_no_signal>`\ (\ pressed\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_BaseButton_signal_button_down:

.. rst-class:: classref-signal

**button_down**\ (\ ) :ref:`🔗<class_BaseButton_signal_button_down>`

当按钮开始被按下时发出。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_button_up:

.. rst-class:: classref-signal

**button_up**\ (\ ) :ref:`🔗<class_BaseButton_signal_button_up>`

当按钮停止按下时发出。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_BaseButton_signal_pressed>`

当按钮被切换或按下时发出。如果 :ref:`action_mode<class_BaseButton_property_action_mode>` 为 :ref:`ACTION_MODE_BUTTON_PRESS<class_BaseButton_constant_ACTION_MODE_BUTTON_PRESS>`\ ，则在 :ref:`button_down<class_BaseButton_signal_button_down>` 时发出，否则当 :ref:`button_up<class_BaseButton_signal_button_up>` 时发出。

如果需要知道按钮的按下状态（并且 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 处于活动状态），请改用 :ref:`toggled<class_BaseButton_signal_toggled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_toggled:

.. rst-class:: classref-signal

**toggled**\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BaseButton_signal_toggled>`

当按钮刚刚在按下和正常状态之间切换时发出（仅当 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 处于活动状态时）。新状态包含在 ``toggled_on`` 参数中。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_BaseButton_DrawMode:

.. rst-class:: classref-enumeration

enum **DrawMode**: :ref:`🔗<enum_BaseButton_DrawMode>`

.. _class_BaseButton_constant_DRAW_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_NORMAL** = ``0``

按钮的正常状态（即未按下、未悬停、未切换和启用）。

.. _class_BaseButton_constant_DRAW_PRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_PRESSED** = ``1``

按钮被按下的状态。

.. _class_BaseButton_constant_DRAW_HOVER:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_HOVER** = ``2``

按钮的状态为悬停。

.. _class_BaseButton_constant_DRAW_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_DISABLED** = ``3``

按钮的状态为禁用。

.. _class_BaseButton_constant_DRAW_HOVER_PRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_HOVER_PRESSED** = ``4``

按钮的状态既是悬停的，也是按下的。

.. rst-class:: classref-item-separator

----

.. _enum_BaseButton_ActionMode:

.. rst-class:: classref-enumeration

enum **ActionMode**: :ref:`🔗<enum_BaseButton_ActionMode>`

.. _class_BaseButton_constant_ACTION_MODE_BUTTON_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ActionMode<enum_BaseButton_ActionMode>` **ACTION_MODE_BUTTON_PRESS** = ``0``

只需要按一下就可以认为按钮被点击了。

.. _class_BaseButton_constant_ACTION_MODE_BUTTON_RELEASE:

.. rst-class:: classref-enumeration-constant

:ref:`ActionMode<enum_BaseButton_ActionMode>` **ACTION_MODE_BUTTON_RELEASE** = ``1``

要求按下后再释放，才算点击了按钮。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BaseButton_property_action_mode:

.. rst-class:: classref-property

:ref:`ActionMode<enum_BaseButton_ActionMode>` **action_mode** = ``1`` :ref:`🔗<class_BaseButton_property_action_mode>`

.. rst-class:: classref-property-setget

- |void| **set_action_mode**\ (\ value\: :ref:`ActionMode<enum_BaseButton_ActionMode>`\ )
- :ref:`ActionMode<enum_BaseButton_ActionMode>` **get_action_mode**\ (\ )

认定按钮被点击的时机。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_group:

.. rst-class:: classref-property

:ref:`ButtonGroup<class_ButtonGroup>` **button_group** :ref:`🔗<class_BaseButton_property_button_group>`

.. rst-class:: classref-property-setget

- |void| **set_button_group**\ (\ value\: :ref:`ButtonGroup<class_ButtonGroup>`\ )
- :ref:`ButtonGroup<class_ButtonGroup>` **get_button_group**\ (\ )

与按钮关联的 :ref:`ButtonGroup<class_ButtonGroup>`\ 。不要与节点组混淆。

\ **注意：**\ 如果按钮被分配了 :ref:`ButtonGroup<class_ButtonGroup>`\ ，则它将被配置为单选按钮。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``1`` :ref:`🔗<class_BaseButton_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

二进制掩码，用于选择该按钮将响应哪些鼠标按钮。

要同时允许左键单击和右键单击，请使用 ``MOUSE_BUTTON_MASK_LEFT | MOUSE_BUTTON_MASK_RIGHT``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **button_pressed** = ``false`` :ref:`🔗<class_BaseButton_property_button_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

如果为 ``true``\ ，则该按钮的状态为被按下。表示按钮被按下或被切换（如果 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 处于活动状态）。仅当 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 为 ``true`` 时才有效。

\ **注意：**\ 修改 :ref:`button_pressed<class_BaseButton_property_button_pressed>` 会发出 :ref:`toggled<class_BaseButton_signal_toggled>` 信号。如果想在不发出该信号的情况下更改按下状态，请使用 :ref:`set_pressed_no_signal()<class_BaseButton_method_set_pressed_no_signal>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_BaseButton_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

如果为 ``true``\ ，则该按钮处于禁用状态，无法点击或切换。

\ **注意：**\ 如果在处于按下状态时禁用按钮，则会发出 :ref:`button_up<class_BaseButton_signal_button_up>` 信号。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_keep_pressed_outside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_pressed_outside** = ``false`` :ref:`🔗<class_BaseButton_property_keep_pressed_outside>`

.. rst-class:: classref-property-setget

- |void| **set_keep_pressed_outside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_pressed_outside**\ (\ )

如果为 ``true``\ ，当按下按钮时将光标移到按钮外时，按钮会保持按下状态。

\ **注意：**\ 该属性只影响按钮的视觉表现。无论该属性的值是多少，信号都会在同一时刻发出。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **shortcut** :ref:`🔗<class_BaseButton_property_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_shortcut**\ (\ )

与该按钮关联的 :ref:`Shortcut<class_Shortcut>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut_feedback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shortcut_feedback** = ``true`` :ref:`🔗<class_BaseButton_property_shortcut_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_feedback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shortcut_feedback**\ (\ )

如果为 ``true`` ，则当其快捷方式被激活时，该按钮将高亮一小段时间。如果为 ``false`` 且 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 为 ``false``\ ，则该快捷方式将在没有任何视觉反馈的情况下激活。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut_in_tooltip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shortcut_in_tooltip** = ``true`` :ref:`🔗<class_BaseButton_property_shortcut_in_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_in_tooltip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shortcut_in_tooltip_enabled**\ (\ )

如果为 ``true``\ ，该按钮将在工具提示中加入快捷键信息。

\ **注意：**\ 使用 :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` 方法自定义工具提示控件时，该属性无效。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_BaseButton_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

如果为 ``true``\ ，则按钮处于切换模式。使按钮在每次点击其区域时，在按下和未按下之间转换状态。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_BaseButton_private_method__pressed:

.. rst-class:: classref-method

|void| **_pressed**\ (\ ) |virtual| :ref:`🔗<class_BaseButton_private_method__pressed>`

当按钮被按下时调用。如果你需要知道按钮被按下的状态(并且 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` is active]是活动状态)，请使用\ :ref:`_toggled()<class_BaseButton_private_method__toggled>`\ 代替。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_private_method__toggled:

.. rst-class:: classref-method

|void| **_toggled**\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_BaseButton_private_method__toggled>`

当按钮被切换时调用（仅当 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 处于活动状态时）。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_get_draw_mode:

.. rst-class:: classref-method

:ref:`DrawMode<enum_BaseButton_DrawMode>` **get_draw_mode**\ (\ ) |const| :ref:`🔗<class_BaseButton_method_get_draw_mode>`

返回用于绘制按钮的视觉状态。主要可以通过覆盖 _draw() 或连接到“draw”信号来实现你自己的绘制代码。按钮的视觉状态由 :ref:`DrawMode<enum_BaseButton_DrawMode>` 枚举定义。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_is_hovered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hovered**\ (\ ) |const| :ref:`🔗<class_BaseButton_method_is_hovered>`

如果鼠标已进入按钮，且尚未离开，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_set_pressed_no_signal:

.. rst-class:: classref-method

|void| **set_pressed_no_signal**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BaseButton_method_set_pressed_no_signal>`

更改按钮的 :ref:`button_pressed<class_BaseButton_property_button_pressed>` 状态，而不发出 :ref:`toggled<class_BaseButton_signal_toggled>`\ 。当只想更改按钮的状态而不发送按下的事件时使用（例如，在初始化场景时）。仅当 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 为 ``true`` 时才有效。

\ **注意：**\ 该方法不会取消按下 :ref:`button_group<class_BaseButton_property_button_group>` 中的其他按钮。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
