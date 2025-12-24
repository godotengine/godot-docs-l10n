:github_url: hide

.. _class_InputEventFromWindow:

InputEventFromWindow
====================

**继承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`

基于 :ref:`Viewport<class_Viewport>` 的输入事件的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

InputEventFromWindow 代表明确由窗口接收的事件。包括鼠标事件、聚焦窗口中的键盘事件或触屏动作。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`window_id<class_InputEventFromWindow_property_window_id>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_InputEventFromWindow_property_window_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **window_id** = ``0`` :ref:`🔗<class_InputEventFromWindow_property_window_id>`

.. rst-class:: classref-property-setget

- |void| **set_window_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_window_id**\ (\ )

接收这个事件的 :ref:`Window<class_Window>` 的 ID。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
