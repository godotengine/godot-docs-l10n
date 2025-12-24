:github_url: hide

.. _class_XRController3D:

XRController3D
==============

**继承：** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

表示空间跟踪控制器的 3D 节点。

.. rst-class:: classref-introduction-group

描述
----

这是一个辅助 3D 节点，链接到控制器的跟踪。它还为控制器上的按钮等状态提供了一些方便的直通方式。

控制器通过其 ID 链接。可以在控制器可用之前创建控制器节点。如果游戏总是使用两个控制器（每只手一个），可以预定义 ID 为 1 和 2 的控制器；一旦控制器被识别，它们将被立即激活。如果希望使用额外的控制器，应该对这些信号做出反应并将 XRController3D 节点添加到场景中。

控制器节点的位置由 :ref:`XRServer<class_XRServer>` 自动更新。这使得该节点非常适合添加子节点以可视化控制器。

输入的名称由当前的 :ref:`XRInterface<class_XRInterface>` 定义。使用 OpenXR 时，是 OpenXR 动作映射的当前动作集中的动作名称。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                | :ref:`get_float<class_XRController3D_method_get_float>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                            | :ref:`get_input<class_XRController3D_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`get_tracker_hand<class_XRController3D_method_get_tracker_hand>`\ (\ ) |const|                                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_vector2<class_XRController3D_method_get_vector2>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|             |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_button_pressed<class_XRController3D_method_is_button_pressed>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_XRController3D_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_pressed>`

当该控制器上的一个按钮被按下时触发。

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_released>`

当该控制器上的一个按钮被释放时触发。

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRController3D_signal_input_float_changed>`

当该控制器上的触发器或类似输入更改值时发出。

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRController3D_signal_input_vector2_changed>`

当该控制器上的拇指杆或拇指板被移动时发出。

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_profile_changed>`

当该控制器上的交互配置文件发生改变时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XRController3D_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_float>`

返回名称为 ``name`` 的输入对应的数值。适用于扳机和握力传感器等输入。

\ **注意：**\ 各个输入的 ``name`` 由当前的 :ref:`XRInterface<class_XRInterface>` 定义。如果是 OpenXR，则为当前动作集中动作的名称。

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_input>`

返回名称为 ``name`` 的输入对应的 :ref:`Variant<class_Variant>`\ 。适用于所有输入类型，变体的具体类型由动作配置决定。

\ **注意：**\ 各个输入的 ``name`` 由当前的 :ref:`XRInterface<class_XRInterface>` 定义。如果是 OpenXR，则为当前动作集中动作的名称。

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_tracker_hand:

.. rst-class:: classref-method

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ ) |const| :ref:`🔗<class_XRController3D_method_get_tracker_hand>`

返回持握这个控制器的手，如果已知。

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_vector2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vector2**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_vector2>`

返回名称为 ``name`` 的输入对应的 :ref:`Vector2<class_Vector2>`\ 。适用于许多控制器上能够找到的摇杆和触摸板。

\ **注意：**\ 各个输入的 ``name`` 由当前的 :ref:`XRInterface<class_XRInterface>` 定义。如果是 OpenXR，则为当前动作集中动作的名称。

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_is_button_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_button_pressed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_is_button_pressed>`

如果名称为 ``name`` 的按钮处于按下状态，则返回 ``true``\ 。

\ **注意：**\ 各个输入的 ``name`` 由当前的 :ref:`XRInterface<class_XRInterface>` 定义。如果是 OpenXR，则为当前动作集中动作的名称。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
