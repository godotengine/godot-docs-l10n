:github_url: hide

.. _class_SkeletonModificationStack2D:

SkeletonModificationStack2D
===========================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 栈的资源。

.. rst-class:: classref-introduction-group

描述
----

该资源由 Skeleton 使用，并持有一个 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 堆栈。

这控制了修改的顺序以及它们的应用方式。修改顺序对于全身 IK 设置尤为重要，因为需要以正确的顺序执行修改以获得所需的结果。例如，想在人形骨骼的手臂\ *之前*\ 对脊柱执行一个修改。

该资源还控制所有修改被应用于 :ref:`Skeleton2D<class_Skeleton2D>` 的强度。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`enabled<class_SkeletonModificationStack2D_property_enabled>`                       | ``false`` |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>` | ``0``     |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`strength<class_SkeletonModificationStack2D_property_strength>`                     | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`add_modification<class_SkeletonModificationStack2D_method_add_modification>`\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ )                                  |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`delete_modification<class_SkeletonModificationStack2D_method_delete_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ )                                                                       |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`enable_all_modifications<class_SkeletonModificationStack2D_method_enable_all_modifications>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                           |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`execute<class_SkeletonModificationStack2D_method_execute>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`get_is_setup<class_SkeletonModificationStack2D_method_get_is_setup>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModification2D<class_SkeletonModification2D>` | :ref:`get_modification<class_SkeletonModificationStack2D_method_get_modification>`\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton2D<class_Skeleton2D>`                         | :ref:`get_skeleton<class_SkeletonModificationStack2D_method_get_skeleton>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_modification<class_SkeletonModificationStack2D_method_set_modification>`\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`setup<class_SkeletonModificationStack2D_method_setup>`\ (\ )                                                                                                                                    |
   +-------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SkeletonModificationStack2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_SkeletonModificationStack2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

如果为 ``true``\ ，则会调用该堆栈中的修改器。这是通过 :ref:`Skeleton2D<class_Skeleton2D>` 节点自动处理的。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_modification_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **modification_count** = ``0`` :ref:`🔗<class_SkeletonModificationStack2D_property_modification_count>`

.. rst-class:: classref-property-setget

- |void| **set_modification_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_modification_count**\ (\ )

栈中修改器的数量。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_SkeletonModificationStack2D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

堆栈中修改的插值强度。\ ``0`` 的值将使修改不被应用，\ ``0.5`` 的强度将应用一半，\ ``1`` 的强度将允许修改被完全应用并覆盖 :ref:`Skeleton2D<class_Skeleton2D>` :ref:`Bone2D<class_Bone2D>` 姿势。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SkeletonModificationStack2D_method_add_modification:

.. rst-class:: classref-method

|void| **add_modification**\ (\ modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_add_modification>`

将传入的 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 入栈。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_delete_modification:

.. rst-class:: classref-method

|void| **delete_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_delete_modification>`

如果存在，则删除位于索引位置 ``mod_idx`` 的 :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_enable_all_modifications:

.. rst-class:: classref-method

|void| **enable_all_modifications**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_enable_all_modifications>`

启用栈中的所有 :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_execute:

.. rst-class:: classref-method

|void| **execute**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_execute>`

使用传入的执行模式 ``execution_mode`` 执行栈中的所有 :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ，从索引 ``0`` 执行到 :ref:`modification_count<class_SkeletonModificationStack2D_property_modification_count>`\ 。

\ **注意：**\ 根据修改器的不同，结果可能会因修改器顺序的不同而不同。例如，对脊柱的修改应该在对手臂的修改之前执行，这样才能得到正确的结果。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_is_setup:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_setup**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_is_setup>`

返回一个布尔值，指示该修改堆栈是否已被设置并可以执行。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_modification:

.. rst-class:: classref-method

:ref:`SkeletonModification2D<class_SkeletonModification2D>` **get_modification**\ (\ mod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_modification>`

返回传入索引 ``mod_idx`` 处的 :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton2D<class_Skeleton2D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModificationStack2D_method_get_skeleton>`

返回 SkeletonModification2D 绑定到的 :ref:`Skeleton2D<class_Skeleton2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_set_modification:

.. rst-class:: classref-method

|void| **set_modification**\ (\ mod_idx\: :ref:`int<class_int>`, modification\: :ref:`SkeletonModification2D<class_SkeletonModification2D>`\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_set_modification>`

将位于 ``mod_idx`` 的修改器设置为传入的 ``modification``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModificationStack2D_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ ) :ref:`🔗<class_SkeletonModificationStack2D_method_setup>`

设置该修改堆栈以便它可以执行。该函数应当由 :ref:`Skeleton2D<class_Skeleton2D>` 调用，不清楚有什么用就别手动调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
