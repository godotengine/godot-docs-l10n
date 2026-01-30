:github_url: hide

.. _class_AnimationRootNode:

AnimationRootNode
=================

**继承：** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AnimationNodeAnimation<class_AnimationNodeAnimation>`, :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`

包含一个或多个复合动画的 :ref:`AnimationNode<class_AnimationNode>` 的基类。通常用于 :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>`\ 。

.. rst-class:: classref-introduction-group

描述
----

**AnimationRootNode** 是存放完整动画的 :ref:`AnimationNode<class_AnimationNode>` 的基类。完整动画指的是 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中 :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` 的输出，或者其他 **AnimationRootNode** 的输出。可以在 :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` 或其他 **AnimationRootNode** 中使用。

内置根节点有 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`\ （能够使用不同的模式将节点进行混合）、\ :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`\ （能够使用状态机模式配置节点之间的混合和过渡）、\ :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`\ （能够在\ **三个** :ref:`AnimationNode<class_AnimationNode>` 之间进行线性混合)、\ :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`\ （能够在\ **两个** :ref:`AnimationNode<class_AnimationNode>` 之间进行线性混合）等。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
