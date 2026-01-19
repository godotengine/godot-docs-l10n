:github_url: hide

.. _class_SkeletonModification2DStackHolder:

SkeletonModification2DStackHolder
=================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放并执行 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 的修改器。

.. rst-class:: classref-introduction-group

描述
----

这种 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 可以存放对 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 的引用，让你能够对单个 :ref:`Skeleton2D<class_Skeleton2D>` 使用多个修改器栈。

\ **注意：**\ :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 中所存放的修改器只有在各自的执行模式与 SkeletonModification2DStackHolder 的执行模式匹配时才会执行。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_held_modification_stack<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`\ (\ ) |const|                                                                                          |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_held_modification_stack<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonModification2DStackHolder_method_get_held_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_held_modification_stack**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`

返回该修改器中存放的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DStackHolder_method_set_held_modification_stack:

.. rst-class:: classref-method

|void| **set_held_modification_stack**\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`

设置该修改器中存放的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。这个修改器栈会在该修改器执行时执行。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
