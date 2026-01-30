:github_url: hide

.. _class_AnimationNodeSub2:

AnimationNodeSub2
=================

**继承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中对两个动画进行减法混合。

.. rst-class:: classref-introduction-group

描述
----

要添加到 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的资源。根据数量值以减法方式混合两个动画。

该动画节点通常用于预先计算，从 :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` 或 :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>` 的“添加”动画源的动画中抵消额外的姿势。

一般而言，混合值应在 ``[0.0, 1.0]`` 范围内，但超出该范围的值可用于放大或反转动画。

\ **注意：**\ 因为变换矩阵不满足交换律，这个计算不同于在 :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` 中使用负值。\ **AnimationNodeSub2** 从左侧乘以反转动画的变换矩阵，而负的 :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` 则是从右侧相乘。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
