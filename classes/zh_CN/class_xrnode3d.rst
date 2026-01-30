:github_url: hide

.. _class_XRNode3D:

XRNode3D
========

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`XRAnchor3D<class_XRAnchor3D>`, :ref:`XRController3D<class_XRController3D>`

位置由 :ref:`XRServer<class_XRServer>` 自动更新的 3D 节点。

.. rst-class:: classref-introduction-group

描述
----

这个节点可以绑定到 :ref:`XRPositionalTracker<class_XRPositionalTracker>` 的某个姿势，\ :ref:`XRServer<class_XRServer>` 会自动更新其 :ref:`Node3D.transform<class_Node3D_property_transform>`\ 。这类节点必须添加为 :ref:`XROrigin3D<class_XROrigin3D>` 节点的子节点。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                          | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`pose<class_XRNode3D_property_pose>`                           | ``&"default"``                                                                |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`show_when_tracked<class_XRNode3D_property_show_when_tracked>` | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`tracker<class_XRNode3D_property_tracker>`                     | ``&""``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`get_has_tracking_data<class_XRNode3D_method_get_has_tracking_data>`\ (\ ) |const|                                                                                                                                                                                                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`get_is_active<class_XRNode3D_method_get_is_active>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRPose<class_XRPose>` | :ref:`get_pose<class_XRNode3D_method_get_pose>`\ (\ )                                                                                                                                                                                                                                   |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`trigger_haptic_pulse<class_XRNode3D_method_trigger_haptic_pulse>`\ (\ action_name\: :ref:`String<class_String>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_XRNode3D_signal_tracking_changed:

.. rst-class:: classref-signal

**tracking_changed**\ (\ tracking\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_XRNode3D_signal_tracking_changed>`

当 :ref:`tracker<class_XRNode3D_property_tracker>` 开始或停止接收正被跟踪的 :ref:`pose<class_XRNode3D_property_pose>` 的更新跟踪数据时发出。\ ``tracking`` 参数指示跟踪器是否正在获取更新的跟踪数据。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRNode3D_property_pose:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **pose** = ``&"default"`` :ref:`🔗<class_XRNode3D_property_pose>`

.. rst-class:: classref-property-setget

- |void| **set_pose_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_pose_name**\ (\ )

我们绑定到的姿势的名称。设计时并不知道跟踪器支持哪些姿势。

Godot 定义了许多标准姿势名称，例如 ``aim`` 和 ``grip``\ ，但也可以在给定的 :ref:`XRInterface<class_XRInterface>` 中配置其他名称。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_property_show_when_tracked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_when_tracked** = ``false`` :ref:`🔗<class_XRNode3D_property_show_when_tracked>`

.. rst-class:: classref-property-setget

- |void| **set_show_when_tracked**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_show_when_tracked**\ (\ )

启用在跟踪开始时显示节点，并在跟踪丢失时隐藏节点。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&""`` :ref:`🔗<class_XRNode3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

我们绑定到的追踪器的名称。设计时并不知道有哪些跟踪器可用。

Godot 定义了许多标准跟踪器，例如 ``left_hand`` 和 ``right_hand``\ ，但也可以在给定的 :ref:`XRInterface<class_XRInterface>` 中配置其他跟踪器。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XRNode3D_method_get_has_tracking_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_has_tracking_data**\ (\ ) |const| :ref:`🔗<class_XRNode3D_method_get_has_tracking_data>`

如果 :ref:`tracker<class_XRNode3D_property_tracker>` 中有被跟踪 :ref:`pose<class_XRNode3D_property_pose>` 的当前跟踪数据，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_get_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_active**\ (\ ) |const| :ref:`🔗<class_XRNode3D_method_get_is_active>`

如果 :ref:`tracker<class_XRNode3D_property_tracker>` 已注册，并且 :ref:`pose<class_XRNode3D_property_pose>` 正在被追踪，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_get_pose:

.. rst-class:: classref-method

:ref:`XRPose<class_XRPose>` **get_pose**\ (\ ) :ref:`🔗<class_XRNode3D_method_get_pose>`

返回包含被跟踪姿势的当前状态的 :ref:`XRPose<class_XRPose>`\ 。这可以访问此姿势的其他属性。

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRNode3D_method_trigger_haptic_pulse>`

在与该接口关联的设备上触发触觉脉冲。

\ ``action_name`` 是该脉冲的操作名称。

\ ``frequency`` 是该脉冲的频率，设置为 ``0.0`` 可让系统使用默认频率。

\ ``amplitude`` 是介于 ``0.0`` 和 ``1.0`` 之间的脉冲幅度。

\ ``duration_sec`` 是脉冲的持续时间（单位为秒）。

\ ``delay_sec`` 是发出脉冲之前的延迟（单位为秒）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
