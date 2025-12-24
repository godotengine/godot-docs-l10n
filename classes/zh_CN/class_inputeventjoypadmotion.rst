:github_url: hide

.. meta::
	:keywords: gamepad, controller

.. _class_InputEventJoypadMotion:

InputEventJoypadMotion
======================

**继承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表游戏手柄的轴运动（例如摇杆和模拟扳机）。

.. rst-class:: classref-introduction-group

描述
----

存储关于摇杆运动的信息。一个 **InputEventJoypadMotion** 一次代表一个轴。游戏手柄按钮见 :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------+---------------------------------------------------------------------+---------+
   | :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` | :ref:`axis<class_InputEventJoypadMotion_property_axis>`             | ``0``   |
   +-------------------------------------------+---------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                 | :ref:`axis_value<class_InputEventJoypadMotion_property_axis_value>` | ``0.0`` |
   +-------------------------------------------+---------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_InputEventJoypadMotion_property_axis:

.. rst-class:: classref-property

:ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` **axis** = ``0`` :ref:`🔗<class_InputEventJoypadMotion_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>`\ )
- :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` **get_axis**\ (\ )

轴标识符。

.. rst-class:: classref-item-separator

----

.. _class_InputEventJoypadMotion_property_axis_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **axis_value** = ``0.0`` :ref:`🔗<class_InputEventJoypadMotion_property_axis_value>`

.. rst-class:: classref-property-setget

- |void| **set_axis_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_axis_value**\ (\ )

操纵杆在给定轴上的当前位置。该值范围从 ``-1.0`` 到 ``1.0``\ 。值为 ``0`` 意味着轴处于静止位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
