:github_url: hide

.. _class_AnimationNodeTimeSeek:

AnimationNodeTimeSeek
=====================

**继承：** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

对时间进行检索的动画节点，在 :ref:`AnimationTree<class_AnimationTree>` 中使用。

.. rst-class:: classref-introduction-group

描述
----

这个动画节点可用于使检索命令发生在动画图的任何次级子节点上。用于从 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的开头或某个特定播放位置开始播放 :ref:`Animation<class_Animation>`\ 。

设置时间并更改动画播放后，时间检索节点会在下一个处理帧中将其 ``seek_request`` 值设置为 ``-1.0``\ ，自动进入睡眠模式。


.. tabs::

 .. code-tab:: gdscript

    # 从开始处播放子动画。
    animation_tree.set("parameters/TimeSeek/seek_request", 0.0)
    # 替代语法（与上述结果相同）。
    animation_tree["parameters/TimeSeek/seek_request"] = 0.0

    # 从 12 秒的时间戳开始播放子动画。
    animation_tree.set("parameters/TimeSeek/seek_request", 12.0)
    # 替代语法（与上述结果相同）。
    animation_tree["parameters/TimeSeek/seek_request"] = 12.0

 .. code-tab:: csharp

    // 从开始处播放子动画。
    animationTree.Set("parameters/TimeSeek/seek_request", 0.0);

    // 从 12 秒的时间戳开始播放子动画。
    animationTree.Set("parameters/TimeSeek/seek_request", 12.0);



.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`explicit_elapse<class_AnimationNodeTimeSeek_property_explicit_elapse>` | ``true`` |
   +-------------------------+------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AnimationNodeTimeSeek_property_explicit_elapse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **explicit_elapse** = ``true`` :ref:`🔗<class_AnimationNodeTimeSeek_property_explicit_elapse>`

.. rst-class:: classref-property-setget

- |void| **set_explicit_elapse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_explicit_elapse**\ (\ )

如果为 ``true``\ ，某些旨在控制快进快退之间的帧的进程（例如计算根动态或寻找最接近的离散帧）将被执行。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
