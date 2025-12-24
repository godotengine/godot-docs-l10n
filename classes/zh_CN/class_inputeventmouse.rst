:github_url: hide

.. _class_InputEventMouse:

InputEventMouse
===============

**继承：** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`

鼠标事件的基本输入事件类型。

.. rst-class:: classref-introduction-group

描述
----

存储与鼠标事件相关的通用信息。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_InputEventMouse_property_button_mask>`         | ``0``             |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`global_position<class_InputEventMouse_property_global_position>` | ``Vector2(0, 0)`` |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`position<class_InputEventMouse_property_position>`               | ``Vector2(0, 0)`` |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_InputEventMouse_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``0`` :ref:`🔗<class_InputEventMouse_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

鼠标按键掩码标识符，\ :ref:`MouseButton<enum_@GlobalScope_MouseButton>` 按钮掩码或将其按位组合。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

在 :ref:`Node._input()<class_Node_private_method__input>` 或 :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` 中获取时，返回根 :ref:`Viewport<class_Viewport>` 中鼠标的位置，使用根 :ref:`Viewport<class_Viewport>` 的坐标系。

在 :ref:`Control._gui_input()<class_Control_private_method__gui_input>` 中获取时，返回该 :ref:`Control<class_Control>` 所在的 :ref:`CanvasLayer<class_CanvasLayer>` 中鼠标的位置，使用该 :ref:`CanvasLayer<class_CanvasLayer>` 的坐标系。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

在 :ref:`Node._input()<class_Node_private_method__input>` 或 :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` 中获取时，返回该 :ref:`Node<class_Node>` 所在 :ref:`Viewport<class_Viewport>` 中鼠标的位置，使用该 :ref:`Viewport<class_Viewport>` 的坐标系。

在 :ref:`Control._gui_input()<class_Control_private_method__gui_input>` 中获取时，返回该 :ref:`Control<class_Control>` 中鼠标的位置，使用该 :ref:`Control<class_Control>` 的坐标系。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
