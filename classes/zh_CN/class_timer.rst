:github_url: hide

.. _class_Timer:

Timer
=====

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

倒数计时器。

.. rst-class:: classref-introduction-group

描述
----

**Timer** 即计时器节点，是一种倒计时器，也是引擎中最简单的处理基于时间的逻辑的方法。计时器在等待 :ref:`wait_time<class_Timer_property_wait_time>` 结束后就会发出 :ref:`timeout<class_Timer_signal_timeout>` 信号。

计时器进入场景树时，可以使用 :ref:`start()<class_Timer_method_start>` 手动启动。如果 :ref:`autostart<class_Timer_property_autostart>` 为 ``true``\ ，计时器节点也会自动启动。

可以在编辑器中添加并配置计时器节点，无需编写特别多的代码。计时器发出的 :ref:`timeout<class_Timer_signal_timeout>` 信号可以在编辑器的“节点”面板中连接：

::

    func _on_timer_timeout():
        print("是时候表演真正的技术了！")

\ **注意：**\ 如果只想创建一次性的计时器，不想实例化节点，请使用 :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`\ 。

\ **注意：**\ 除非 :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` 为 ``true``\ ，否则计时器会受到 :ref:`Engine.time_scale<class_Engine_property_time_scale>` 的影响。时间缩放值越大，计时器结束得越早。计时器的处理频率取决于帧率或 :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `2D Dodge The Creeps 演示 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`autostart<class_Timer_property_autostart>`                 | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`one_shot<class_Timer_property_one_shot>`                   | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`paused<class_Timer_property_paused>`                       |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` | :ref:`process_callback<class_Timer_property_process_callback>`   | ``1``     |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`time_left<class_Timer_property_time_left>`                 |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`wait_time<class_Timer_property_wait_time>`                 | ``1.0``   |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stopped<class_Timer_method_is_stopped>`\ (\ ) |const|                          |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`start<class_Timer_method_start>`\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop<class_Timer_method_stop>`\ (\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_Timer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_Timer_signal_timeout>`

当计时器计时完成时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Timer_TimerProcessCallback:

.. rst-class:: classref-enumeration

enum **TimerProcessCallback**: :ref:`🔗<enum_Timer_TimerProcessCallback>`

.. _class_Timer_constant_TIMER_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_PHYSICS** = ``0``

在物理处理帧中更新计时器（见 :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`\ ）。

.. _class_Timer_constant_TIMER_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_IDLE** = ``1``

在处理（渲染）帧中更新计时器（见 :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Timer_property_autostart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autostart** = ``false`` :ref:`🔗<class_Timer_property_autostart>`

.. rst-class:: classref-property-setget

- |void| **set_autostart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autostart**\ (\ )

如果为 ``true``\ ，则计时器将在进入场景树时自动启动。

\ **注意：**\ 计时器进入场景树后，该属性会自动设置为 ``false``\ 。

\ **注意：**\ 计时器在编辑器中运行时该属性无效。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_ignore_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_time_scale** = ``false`` :ref:`🔗<class_Timer_property_ignore_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_time_scale**\ (\ )

如果为 ``true``\ ，则计时器会忽略 :ref:`Engine.time_scale<class_Engine_property_time_scale>`\ ，使用真实经过的时间进行更新。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_Timer_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_shot**\ (\ )

如果为 ``true``\ ，则计时器将在完成时停止。否则默认情况下会自动重新启动。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** :ref:`🔗<class_Timer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

如果为 ``true``\ ，则计时器处于暂停状态。即便调用了 :ref:`start()<class_Timer_method_start>`\ ，处于暂停状态的计时器也不会进行处理，必须将这个属性设回 ``false`` 才会继续。另见 :ref:`stop()<class_Timer_method_stop>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_process_callback:

.. rst-class:: classref-property

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Timer_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_timer_process_callback**\ (\ value\: :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>`\ )
- :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **get_timer_process_callback**\ (\ )

指定计时器在主循环的哪个时间点进行更新。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_Timer_property_time_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_time_left**\ (\ )

计时器的剩余时间，单位为秒。如果计时器处于停止状态，则始终为 ``0``\ 。

\ **注意：**\ 这个属性是只读的，无法进行修改。基于的是 :ref:`wait_time<class_Timer_property_wait_time>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_wait_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **wait_time** = ``1.0`` :ref:`🔗<class_Timer_property_wait_time>`

.. rst-class:: classref-property-setget

- |void| **set_wait_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wait_time**\ (\ )

计时器完成计时所需的时间，单位为秒。这个属性也可以在每次调用 :ref:`start()<class_Timer_method_start>` 时设置。

\ **注意：**\ 计时器的处理只能在物理帧或处理帧进行一次（取决于 :ref:`process_callback<class_Timer_property_process_callback>`\ ）。如果帧率不稳定，则计时完成所需的时间也可能不一致，等待时间小于 ``0.05`` 秒左右的情况下尤为明显。如果计时器非常短，建议自己编写代码，不要使用 **Timer** 节点。计时器还会受到 :ref:`Engine.time_scale<class_Engine_property_time_scale>` 的影响。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Timer_method_is_stopped:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stopped**\ (\ ) |const| :ref:`🔗<class_Timer_method_is_stopped>`

如果定时器处于停止状态或尚未启动，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) :ref:`🔗<class_Timer_method_start>`

如果计时器尚未启动，则启动或重置计时器。如果计时器不在场景树中则会失败。如果 ``time_sec`` 大于 ``0``\ ，则会将其用于 :ref:`wait_time<class_Timer_property_wait_time>`\ 。

\ **注意：**\ 这个方法不会恢复已暂停的定时器。见 :ref:`paused<class_Timer_property_paused>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Timer_method_stop>`

停止计时器。另见 :ref:`paused<class_Timer_property_paused>`\ 。与 :ref:`start()<class_Timer_method_start>` 不同，计时器不在场景树中时可以安全地调用该方法。

\ **注意：**\ 调用 :ref:`stop()<class_Timer_method_stop>` 不会发出 :ref:`timeout<class_Timer_signal_timeout>` 信号，因为计时器并未超时。如果需要信号，请在调用 :ref:`stop()<class_Timer_method_stop>` 后使用 ``$Timer.timeout.emit()`` 手动发出。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
