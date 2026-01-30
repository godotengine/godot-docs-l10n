:github_url: hide

.. _class_ConcavePolygonShape3D:

ConcavePolygonShape3D
=====================

**继承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 3D 三角网格形状。

.. rst-class:: classref-introduction-group

描述
----

一种用于物理模拟的 3D 三角网格形状。通常用于为 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形状。

作为一组相互连接的三角形， **ConcavePolygonShape3D** 是最自由的可配置的单一 3D 形状。它可以用于形成任何性质的多面体，甚至是不封闭体积的形状。然而，即使相互连接的三角形封闭了一个体积， :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 仍然是\ *中空*\ 的，这常常使其不适用于物理模拟或碰撞检测。

\ **注意：**\ 当用于碰撞计算时， **ConcavePolygonShape3D** 旨在与 :ref:`StaticBody3D<class_StaticBody3D>` 等静态 :ref:`CollisionShape3D<class_CollisionShape3D>` 节点一起使用 。并且对于 :ref:`CharacterBody3D<class_CharacterBody3D>` 或 :ref:`RigidBody3D<class_RigidBody3D>`\ ，在除静态模式之外的其他模式下可能表现不佳。

\ **警告：**\ 较小的物理物体在快速移动时有机会穿过该形状。发生这种情况是因为在一帧上，物理物体可能位于形状的“外部”，而在下一帧上，它可能位于形状的“内部”。由于\ **ConcavePolygonShape3D** 是中空的，因此它不会检测到碰撞。

\ **性能：**\ 由于其复杂性， **ConcavePolygonShape3D** 是检测碰撞最慢的 3D 碰撞形状。它的使用一般仅限于关卡几何体。对于凸几何体，应使用 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 。对于需要凹碰撞的动态物体，可以使用多个 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 通过凸分解来表示其碰撞；相关说明请参阅 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 文档。

.. rst-class:: classref-introduction-group

教程
----

- `3D 物理测试演示 <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`backface_collision<class_ConcavePolygonShape3D_property_backface_collision>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_ConcavePolygonShape3D_method_get_faces>`\ (\ ) |const|                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_faces<class_ConcavePolygonShape3D_method_set_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ConcavePolygonShape3D_property_backface_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **backface_collision** = ``false`` :ref:`🔗<class_ConcavePolygonShape3D_property_backface_collision>`

.. rst-class:: classref-property-setget

- |void| **set_backface_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_backface_collision_enabled**\ (\ )

如果设置为 ``true``\ ，则碰撞会发生在凹形面的两侧。否则，它们只会沿着面法线发生。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ConcavePolygonShape3D_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_ConcavePolygonShape3D_method_get_faces>`

以顶点数组的形式返回三角网格形状中的面。该（长度能被三整除的）数组自然三三分组；每组中的三个顶点定义一个三角形。

.. rst-class:: classref-item-separator

----

.. _class_ConcavePolygonShape3D_method_set_faces:

.. rst-class:: classref-method

|void| **set_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_ConcavePolygonShape3D_method_set_faces>`

根据顶点数组设置三角网格形状的面。\ ``faces`` 数组应更多由若干三元组构成，每三个顶点定义一个三角形。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
