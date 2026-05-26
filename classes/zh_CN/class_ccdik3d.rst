:github_url: hide

.. _class_CCDIK3D:

CCDIK3D
=======

**继承：** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基于旋转的循环坐标下降反向动力学求解器。

.. rst-class:: classref-introduction-group

描述
----

**CCDIK3D** 是一种基于旋转的反向动力学算法，即使在关节大幅旋转的情况下也能实现快速有效的跟踪。它特别适用于有限制的链，与 :ref:`FABRIK3D<class_FABRIK3D>` 相比，它能提供更平滑、更稳定的目标跟踪。

由此产生的绕前向向量的扭转将始终与之前的姿态保持一致。

\ **注意：**\ 当目标靠近根部时，可能会导致不自然的运动，包括关节翻转和振荡。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
