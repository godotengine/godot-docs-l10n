:github_url: hide

.. _class_SubtweenTweener:

SubtweenTweener
===============

**继承：** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在一个 :ref:`Tween<class_Tween>` 中嵌套运行另一个 :ref:`Tween<class_Tween>`\ 。

.. rst-class:: classref-introduction-group

描述
----

**SubtweenTweener** 可以将执行某个 :ref:`Tween<class_Tween>` 设为另一个 :ref:`Tween<class_Tween>` 所定义序列中的一个步骤。更多用法信息见 :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>`\ 。

\ **注意：**\ 创建 **SubtweenTweener** 的唯一正确方法是 :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>`\ 。任何手动创建的 **SubtweenTweener** 都无法正常工作。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`set_delay<class_SubtweenTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SubtweenTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SubtweenTweener_method_set_delay>`

设置该 **SubtweenTweener** 开始运行子补间的时间，单位为秒。默认无延迟。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
