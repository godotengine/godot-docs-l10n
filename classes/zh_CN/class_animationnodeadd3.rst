:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**继承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中将三个动画中的两个动画相加。

.. rst-class:: classref-introduction-group

描述
----

可添加到 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的资源。根据取值将三个动画中的两个进行加法混合。

这个动画节点有三个输入：

- 加法混合的基础动画

- 混合取值为负时进行混合的“-add”动画

- 混合取值为正时进行混合的“+add”动画

如果取值的绝对值大于 ``1.0``\ ，则与“in”端口相连的动画相混合的是放大后的与“-add”/“+add”端口相连的动画。

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
