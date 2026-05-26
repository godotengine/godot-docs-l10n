:github_url: hide

.. _class_InputEventWithModifiers:

InputEventWithModifiers
=======================

**继承：** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`InputEventGesture<class_InputEventGesture>`, :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouse<class_InputEventMouse>`

受 :kbd:`Shift` 和 :kbd:`Alt` 等修饰键影响的输入事件的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

存储鼠标、键盘、触摸手势等输入事件的相关信息。包括按下了哪些修饰键等信息，修饰键包括 :kbd:`Shift`\ 、\ :kbd:`Alt` 等。见 :ref:`Node._input()<class_Node_private_method__input>`\ 。

\ **注意：**\ 修饰键只有在与其他键同时按下时才会被认为是修饰键。因此，单独按下修饰键时，对应的 :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>` 等成员变量会返回 ``false``\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`alt_pressed<class_InputEventWithModifiers_property_alt_pressed>`                                   | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`command_or_control_autoremap<class_InputEventWithModifiers_property_command_or_control_autoremap>` | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>`                                 | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | device                                                                                                   | ``16`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>`                                 | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`shift_pressed<class_InputEventWithModifiers_property_shift_pressed>`                               | ``false``                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] | :ref:`get_modifiers_mask<class_InputEventWithModifiers_method_get_modifiers_mask>`\ (\ ) |const|                       |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`is_command_or_control_pressed<class_InputEventWithModifiers_method_is_command_or_control_pressed>`\ (\ ) |const| |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_InputEventWithModifiers_property_alt_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alt_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_alt_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_alt_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_alt_pressed**\ (\ )

:kbd:`Alt` 修饰键的状态。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_command_or_control_autoremap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **command_or_control_autoremap** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_command_or_control_autoremap>`

.. rst-class:: classref-property-setget

- |void| **set_command_or_control_autoremap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_command_or_control_autoremap**\ (\ )

自动在 macOS 上使用 :kbd:`Meta`\ （\ :kbd:`Cmd`\ ），在其他平台上使用 :kbd:`Ctrl`\ 。如果为 ``true``\ ，则无法设置 :ref:`ctrl_pressed<class_InputEventWithModifiers_property_ctrl_pressed>` 和 :ref:`meta_pressed<class_InputEventWithModifiers_property_meta_pressed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_ctrl_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ctrl_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_ctrl_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_ctrl_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ctrl_pressed**\ (\ )

:kbd:`Ctrl` 修饰键的状态。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_meta_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meta_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_meta_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_meta_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_meta_pressed**\ (\ )

:kbd:`Meta` 修饰键的状态。在 Windows 和 Linux 上代表 Windows 键（有时在 Linux 上称为“meta”或“super”键）。在 macOS 上代表 Command 键。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_property_shift_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shift_pressed** = ``false`` :ref:`🔗<class_InputEventWithModifiers_property_shift_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_shift_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shift_pressed**\ (\ )

:kbd:`Shift` 修饰键的状态。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_InputEventWithModifiers_method_get_modifiers_mask:

.. rst-class:: classref-method

|bitfield|\[:ref:`KeyModifierMask<enum_@GlobalScope_KeyModifierMask>`\] **get_modifiers_mask**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_get_modifiers_mask>`

返回修饰键的键码组合。

.. rst-class:: classref-item-separator

----

.. _class_InputEventWithModifiers_method_is_command_or_control_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_command_or_control_pressed**\ (\ ) |const| :ref:`🔗<class_InputEventWithModifiers_method_is_command_or_control_pressed>`

在 macOS 上，如果 :kbd:`Meta`\ （\ :kbd:`Cmd`\ ）是按下状态，则返回 ``true`` 。

在其他平台上，如果 :kbd:`Ctrl` 是按下状态，则返回 ``true`` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
