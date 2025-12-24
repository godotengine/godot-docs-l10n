:github_url: hide

.. _class_CallbackTweener:

CallbackTweener
===============

**继承：** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在可选的延迟之后调用指定的方法。

.. rst-class:: classref-introduction-group

描述
----

**CallbackTweener** 可用于在补间序列中调用方法。更多用法信息请参阅 :ref:`Tween.tween_callback()<class_Tween_method_tween_callback>`\ 。

如果回调的目标对象被释放，该补间将自动结束。

\ **注意：**\ 创建 **CallbackTweener** 的唯一正确方法是 :ref:`Tween.tween_callback()<class_Tween_method_tween_callback>`\ 。任何手动创建的 **CallbackTweener** 都无法正常工作。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`CallbackTweener<class_CallbackTweener>` | :ref:`set_delay<class_CallbackTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_CallbackTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`CallbackTweener<class_CallbackTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CallbackTweener_method_set_delay>`

让该回调延迟给定的时间，单位为秒。

\ **示例：**\ 在 2 秒后调用 :ref:`Node.queue_free()<class_Node_method_queue_free>`\ ：

::

    var tween = get_tree().create_tween()
    tween.tween_callback(queue_free).set_delay(2)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
