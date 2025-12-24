:github_url: hide

.. _class_Timer:

Timer
=====

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

倒數計時器。

.. rst-class:: classref-introduction-group

說明
----

The **Timer** node is a countdown timer and is the simplest way to handle time-based logic in the engine. When a timer reaches the end of its :ref:`wait_time<class_Timer_property_wait_time>`, it will emit the :ref:`timeout<class_Timer_signal_timeout>` signal.

After a timer enters the scene tree, it can be manually started with :ref:`start()<class_Timer_method_start>`. A timer node is also started automatically if :ref:`autostart<class_Timer_property_autostart>` is ``true``.

Without requiring much code, a timer node can be added and configured in the editor. The :ref:`timeout<class_Timer_signal_timeout>` signal it emits can also be connected through the Node dock in the editor:

::

    func _on_timer_timeout():
        print("Time to attack!")

\ **Note:** To create a one-shot timer without instantiating a node, use :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

\ **Note:** Timers are affected by :ref:`Engine.time_scale<class_Engine_property_time_scale>` unless :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` is ``true``. The higher the time scale, the sooner timers will end. How often a timer processes may depend on the framerate or :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

.. rst-class:: classref-introduction-group

教學
----

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_Timer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_Timer_signal_timeout>`

Emitted when the timer reaches the end.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Timer_TimerProcessCallback:

.. rst-class:: classref-enumeration

enum **TimerProcessCallback**: :ref:`🔗<enum_Timer_TimerProcessCallback>`

.. _class_Timer_constant_TIMER_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_PHYSICS** = ``0``

Update the timer every physics process frame (see :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Timer_constant_TIMER_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_IDLE** = ``1``

Update the timer every process (rendered) frame (see :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Timer_property_autostart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autostart** = ``false`` :ref:`🔗<class_Timer_property_autostart>`

.. rst-class:: classref-property-setget

- |void| **set_autostart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autostart**\ (\ )

If ``true``, the timer will start immediately when it enters the scene tree.

\ **Note:** After the timer enters the tree, this property is automatically set to ``false``.

\ **Note:** This property does nothing when the timer is running in the editor.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_ignore_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_time_scale** = ``false`` :ref:`🔗<class_Timer_property_ignore_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_time_scale**\ (\ )

If ``true``, the timer will ignore :ref:`Engine.time_scale<class_Engine_property_time_scale>` and update with the real, elapsed time.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_Timer_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_shot**\ (\ )

If ``true``, the timer will stop after reaching the end. Otherwise, as by default, the timer will automatically restart.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** :ref:`🔗<class_Timer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

If ``true``, the timer is paused. A paused timer does not process until this property is set back to ``false``, even when :ref:`start()<class_Timer_method_start>` is called. See also :ref:`stop()<class_Timer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_process_callback:

.. rst-class:: classref-property

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Timer_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_timer_process_callback**\ (\ value\: :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>`\ )
- :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **get_timer_process_callback**\ (\ )

Specifies when the timer is updated during the main loop.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_Timer_property_time_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_time_left**\ (\ )

The timer's remaining time in seconds. This is always ``0`` if the timer is stopped.

\ **Note:** This property is read-only and cannot be modified. It is based on :ref:`wait_time<class_Timer_property_wait_time>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_wait_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **wait_time** = ``1.0`` :ref:`🔗<class_Timer_property_wait_time>`

.. rst-class:: classref-property-setget

- |void| **set_wait_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wait_time**\ (\ )

The time required for the timer to end, in seconds. This property can also be set every time :ref:`start()<class_Timer_method_start>` is called.

\ **Note:** Timers can only process once per physics or process frame (depending on the :ref:`process_callback<class_Timer_property_process_callback>`). An unstable framerate may cause the timer to end inconsistently, which is especially noticeable if the wait time is lower than roughly ``0.05`` seconds. For very short timers, it is recommended to write your own code instead of using a **Timer** node. Timers are also affected by :ref:`Engine.time_scale<class_Engine_property_time_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Timer_method_is_stopped:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stopped**\ (\ ) |const| :ref:`🔗<class_Timer_method_is_stopped>`

Returns ``true`` if the timer is stopped or has not started.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) :ref:`🔗<class_Timer_method_start>`

Starts the timer, or resets the timer if it was started already. Fails if the timer is not inside the scene tree. If ``time_sec`` is greater than ``0``, this value is used for the :ref:`wait_time<class_Timer_property_wait_time>`.

\ **Note:** This method does not resume a paused timer. See :ref:`paused<class_Timer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Timer_method_stop>`

Stops the timer. See also :ref:`paused<class_Timer_property_paused>`. Unlike :ref:`start()<class_Timer_method_start>`, this can safely be called if the timer is not inside the scene tree.

\ **Note:** Calling :ref:`stop()<class_Timer_method_stop>` does not emit the :ref:`timeout<class_Timer_signal_timeout>` signal, as the timer is not considered to have timed out. If this is desired, use ``$Timer.timeout.emit()`` after calling :ref:`stop()<class_Timer_method_stop>` to manually emit the signal.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
