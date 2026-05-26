:github_url: hide

.. _class_FABRIK3D:

FABRIK3D
========

**继承：** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基于位置的前后向延伸的反向动力学求解器。

.. rst-class:: classref-introduction-group

描述
----

**FABRIK3D** 是一种基于位置的反向动力学算法，可以实现对目标的精确跟踪。它非常适合没有限制的简单链式结构。

围绕前向向量产生的扭转角度将始终保持与上一姿势相同。

\ **注意：**\ 当目标靠近根时，容易产生锯齿状运动，导致不自然的视觉运动。

.. rst-class:: classref-introduction-group

教程
----

- `反向动力学回归到 Godot 4.6 - IKModifier3D <https://godotengine.org/article/inverse-kinematics-returns-to-godot-4-6/#ikmodifier3d-and-7-child-classes>`__

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
