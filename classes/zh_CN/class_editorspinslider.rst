:github_url: hide

.. _class_EditorSpinSlider:

EditorSpinSlider
================

**继承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 编辑器用于编辑数值的控件。

.. rst-class:: classref-introduction-group

描述
----

这个 :ref:`Control<class_Control>` 节点在编辑器的检查器面板中使用，允许编辑数值。可以与 :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` 一起使用，以重新创建相同的行为。

如果 :ref:`Range.step<class_Range_property_step>` 值为 ``1``\ ，则 **EditorSpinSlider** 将显示向上/向下箭头，类似于 :ref:`SpinBox<class_SpinBox>`\ 。如果 :ref:`Range.step<class_Range_property_step>` 值不是 ``1``\ ，则会显示一个滑块。

.. rst-class:: classref-reftable-group

属性
----

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

主题属性
--------

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

信号
----

.. _class_EditorSpinSlider_signal_grabbed:

.. rst-class:: classref-signal

**grabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_grabbed>`

当微调器/滑块被抓取时发出。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_ungrabbed:

.. rst-class:: classref-signal

**ungrabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_ungrabbed>`

当微调器/滑块取消抓取时发出。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_updown_pressed:

.. rst-class:: classref-signal

**updown_pressed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_updown_pressed>`

当按下上下按钮时发出。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_entered:

.. rst-class:: classref-signal

**value_focus_entered**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_entered>`

值表单获得焦点时发出。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_exited:

.. rst-class:: classref-signal

**value_focus_exited**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_exited>`

值表单丢失焦点时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_EditorSpinSlider_ControlState:

.. rst-class:: classref-enumeration

enum **ControlState**: :ref:`🔗<enum_EditorSpinSlider_ControlState>`

.. _class_EditorSpinSlider_constant_CONTROL_STATE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_DEFAULT** = ``0``

使用的控件类型取决于 :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>` 的值。如果为 ``true``\ ，则使用上下箭头；如果为 ``false``\ ，则使用滑杆。

.. _class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_PREFER_SLIDER** = ``1``

即使启用了 :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>`\ ，也会始终使用滑杆。

.. _class_EditorSpinSlider_constant_CONTROL_STATE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_HIDE** = ``2``

向上向下箭头和滑杆都不会显示。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EditorSpinSlider_property_control_state:

.. rst-class:: classref-property

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **control_state** = ``0`` :ref:`🔗<class_EditorSpinSlider_property_control_state>`

.. rst-class:: classref-property-setget

- |void| **set_control_state**\ (\ value\: :ref:`ControlState<enum_EditorSpinSlider_ControlState>`\ )
- :ref:`ControlState<enum_EditorSpinSlider_ControlState>` **get_control_state**\ (\ )

用于操纵值的控件将处于的状态。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_editing_integer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editing_integer** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_editing_integer>`

.. rst-class:: classref-property-setget

- |void| **set_editing_integer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_integer**\ (\ )

如果为 ``true``\ ，则 **EditorSpinSlider** 会认为正在编辑整数值。如果为 ``false``\ ，则 **EditorSpinSlider** 会认为正在编辑浮点数值。默认用于确定是否绘制滑杆。只有浮点数才会绘制滑杆；整数使用的是类似于 :ref:`SpinBox<class_SpinBox>` 的上下箭头，除非 :ref:`control_state<class_EditorSpinSlider_property_control_state>` 被设置为 :ref:`CONTROL_STATE_PREFER_SLIDER<class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER>`\ 。如果滑杆可用，它还将使用 :ref:`EditorSettings.interface/inspector/integer_drag_speed<class_EditorSettings_property_interface/inspector/integer_drag_speed>` 而非 :ref:`EditorSettings.interface/inspector/float_drag_speed<class_EditorSettings_property_interface/inspector/float_drag_speed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

如果为 ``true``\ ，则滑块不会绘制背景。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_hide_slider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hide_slider** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_hide_slider>`

.. rst-class:: classref-property-setget

- |void| **set_hide_slider**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hiding_slider**\ (\ )

**已弃用：** Use :ref:`control_state<class_EditorSpinSlider_property_control_state>` instead.

如果为 ``true``\ ，则隐藏滑块和向上/向下箭头。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

在值的左侧显示的文本。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

如果为 ``true``\ ，则无法与滑块交互。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

在值之后显示的后缀（以一种淡化的颜色显示）。这通常应该是一个复数形式的词。如果后缀太长而无法显示，可能必须使用缩写。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_EditorSpinSlider_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown>`

代表上下按钮的单张纹理。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_icon_updown_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown_disabled** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown_disabled>`

控件只读或禁用时，代表上下按钮的单张纹理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
