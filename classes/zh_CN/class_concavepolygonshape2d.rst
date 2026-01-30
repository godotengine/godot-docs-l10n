:github_url: hide

.. _class_ConcavePolygonShape2D:

ConcavePolygonShape2D
=====================

**继承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 2D 多线段形状。

.. rst-class:: classref-introduction-group

描述
----

一种 2D 折线形状，用于物理运算。当 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 处于 :ref:`CollisionPolygon2D.BUILD_SEGMENTS<class_CollisionPolygon2D_constant_BUILD_SEGMENTS>` 模式时，会在其内部使用。

作为一组相互连接线段，\ **ConcavePolygonShape2D** 是最自由的可配置的单一 2D 形状。它可以用于形成任何性质的多边形，甚至是不封闭区域的形状。然而，即使相互连接的线段确实封闭了一个区域，\ **ConcavePolygonShape2D** 仍然是\ *中空的*\ ，这常常使其不适用于物理模拟或碰撞检测。

\ **注意：**\ 当用于碰撞计算时，\ **ConcavePolygonShape2D** 旨在与 :ref:`StaticBody2D<class_StaticBody2D>` 等静态 :ref:`CollisionShape2D<class_CollisionShape2D>` 节点一起使用，并且对于 :ref:`CharacterBody2D<class_CharacterBody2D>` 或 :ref:`RigidBody2D<class_RigidBody2D>`\ ，在除静态模式之外的其他模式下可能表现不佳。

\ **警告：**\ 较小的物理物体在快速移动时有机会穿过该形状。发生这种情况是因为在一帧上，物理物体可能位于形状的“外部”，而在下一帧上，它可能位于形状的“内部”。由于\ **ConcavePolygonShape2D** 是中空的，因此它不会检测到碰撞。

\ **性能：**\ 由于其复杂性， **ConcavePolygonShape2D** 是检测碰撞最慢的 2D 碰撞形状。它的使用一般仅限于关卡几何体。如果折线是闭合的，可以使用 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 的 :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` 模式，它会将多边形分解成凸多边形；相关说明请参阅 :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` 文档。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`segments<class_ConcavePolygonShape2D_property_segments>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ConcavePolygonShape2D_property_segments:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **segments** = ``PackedVector2Array()`` :ref:`🔗<class_ConcavePolygonShape2D_property_segments>`

.. rst-class:: classref-property-setget

- |void| **set_segments**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_segments**\ (\ )

顶点数组，构成 **ConcavePolygonShape2D** 的线段。该（长度能被二整除的）数组自然两两分组（每组代表一条线段）；每组都由一条线段的起点和终点构成。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
