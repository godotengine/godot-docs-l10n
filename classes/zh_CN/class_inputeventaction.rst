:github_url: hide

.. _class_InputEventAction:

InputEventAction
================

**继承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

动作的输入事件类型。

.. rst-class:: classref-introduction-group

描述
----

包含一个通用动作，该动作可以被多种类型的输入作为目标。动作及其事件可以在\ **项目 > 项目设置**\ 的\ **输入映射**\ 选项卡中设置，也可以使用 :ref:`InputMap<class_InputMap>` 类设置。

\ **注意：**\ 与映射到唯一物理事件的其他 :ref:`InputEvent<class_InputEvent>` 子类不同，这个虚拟事件不是由引擎发出的。这个类可以用来使用 :ref:`Input.parse_input_event()<class_Input_method_parse_input_event>` 手动发出动作，这样就能够在 :ref:`Node._input()<class_Node_private_method__input>` 中接收到这些动作。要检查物理事件是否与“输入映射”中的动作相匹配，请使用 :ref:`InputEvent.is_action()<class_InputEvent_method_is_action>` 和 :ref:`InputEvent.is_action_pressed()<class_InputEvent_method_is_action_pressed>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `使用 InputEvent：动作 <../tutorials/inputs/inputevent.html#actions>`__

- `2D Dodge The Creeps 演示 <https://godotengine.org/asset-library/asset/2712>`__

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`action<class_InputEventAction_property_action>`           | ``&""``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`event_index<class_InputEventAction_property_event_index>` | ``-1``    |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`pressed<class_InputEventAction_property_pressed>`         | ``false`` |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`strength<class_InputEventAction_property_strength>`       | ``1.0``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_InputEventAction_property_action:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action** = ``&""`` :ref:`🔗<class_InputEventAction_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action**\ (\ )

动作的名称。通常是你想要该自定义事件匹配的在 :ref:`InputMap<class_InputMap>` 中存在的动作。

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_event_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **event_index** = ``-1`` :ref:`🔗<class_InputEventAction_property_event_index>`

.. rst-class:: classref-property-setget

- |void| **set_event_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_event_index**\ (\ )

该事件对应的实际事件索引（来自 :ref:`InputMap<class_InputMap>` 中为该动作定义的事件）。如果为 ``-1``\ ，则将使用唯一 ID，并且使用该 ID 按下的动作将需要使用另一个 **InputEventAction** 释放。

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventAction_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

如果为 ``true``\ ，则该动作处于按下状态。如果为 ``false``\ ，则该动作处于松开状态。

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_InputEventAction_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

动作的强度，介于 0 和 1 之间。当 pressed 为 ``false`` 时，该值被视为等于 0。通过将事件强度设置为手柄轴的弯曲或按压强度，可以仿造模拟手柄的移动事件。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
