:github_url: hide

.. _class_SceneTreeTimer:

SceneTreeTimer
==============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一次性定时器。

.. rst-class:: classref-introduction-group

描述
----

由场景树管理的一次性计时器，会在完成时发出 :ref:`timeout<class_SceneTreeTimer_signal_timeout>`\ 。另见 :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`\ 。

与 :ref:`Timer<class_Timer>` 不同，它不需要实例化节点。常用于创建一次性的延迟计时器，如下面的例子所示：


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("计时开始。")
        await get_tree().create_timer(1.0).timeout
        print("计时结束。")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("计时开始。");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("计时结束。");
    }



达到时间后，会释放对该计时器的引用。如果要保留该计时器，你可以保持对它的引用。见 :ref:`RefCounted<class_RefCounted>`\ 。

\ **注意：**\ 对计时器的处理发生在当前帧的所有节点节后，即节点的 :ref:`Node._process()<class_Node_private_method__process>` 方法是在计时器之前调用的（如果 :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>` 的 ``process_in_physics`` 为 ``true``\ 则为 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`time_left<class_SceneTreeTimer_property_time_left>` |
   +---------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_SceneTreeTimer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_SceneTreeTimer_signal_timeout>`

当计时器到 0 时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SceneTreeTimer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_SceneTreeTimer_property_time_left>`

.. rst-class:: classref-property-setget

- |void| **set_time_left**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_left**\ (\ )

剩余时间（单位为秒）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
