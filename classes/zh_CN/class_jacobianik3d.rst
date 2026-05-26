:github_url: hide

.. _class_JacobianIK3D:

JacobianIK3D
============

**继承：** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基于雅可比矩阵转置的反向动力学求解器。

.. rst-class:: classref-introduction-group

描述
----

**JacobianIK3D** 可同时计算所有关节的旋转角度，从而产生自然流畅的运动。它特别适用于生物动画。

围绕前向向量的扭转角度将始终保持与前一姿势相同。

\ **注意：**\ 它的收敛速度比其他反向动力学求解器慢，因此目标跟踪更加平缓，响应也更慢。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
