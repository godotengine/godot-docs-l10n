:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**继承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中将三个动画中的两个动画相加。

.. rst-class:: classref-introduction-group

描述
----

一种可以添加到 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`\ （动画混合树）中的资源。它会根据 amount（混合量）的值，在三个动画中选择两个进行加法混合。

这个动画节点有三个输入端：

作为基础的动画（即要往上面添加效果的动画）

一个 “-add” 动画，当混合量为负数时，会与基础动画进行混合

一个 “+add” 动画，当混合量为正数时，会与基础动画进行混合

如果 amount 的绝对值大于 ``1.0``\ ，那么连接到 “in” 端口的动画会与连接到 “-add” 或 “+add” 端口的动画进行增强混合。

\ **注意：** 正负号仅用于区分端口，加法混合始终是基于绝对值进行的，这意味着连接到 “-add” 端口的动画并不会从 “in” 端口的动画中做减法。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
