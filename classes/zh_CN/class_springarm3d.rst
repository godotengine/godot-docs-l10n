:github_url: hide

.. _class_SpringArm3D:

SpringArm3D
===========

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

能够动态地将子节点朝碰撞点移动的 3D 射线投射。

.. rst-class:: classref-introduction-group

描述
----

**SpringArm3D** 会朝它的 Z 轴投射射线或形状，并将所有直接子节点朝碰撞点移动，可以保留一定的边距。可用于第三人称相机，让其在狭窄空间中朝玩家移动（你可能需要在 **SpringArm3D** 的碰撞检查中排除玩家的碰撞体）。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用弹簧臂制作的第三人称相机 <../tutorials/3d/spring_arm>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_SpringArm3D_property_collision_mask>` | ``1``    |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`     | :ref:`margin<class_SpringArm3D_property_margin>`                 | ``0.01`` |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_SpringArm3D_property_shape>`                   |          |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`     | :ref:`spring_length<class_SpringArm3D_property_spring_length>`   | ``1.0``  |
   +-------------------------------+------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_excluded_object<class_SpringArm3D_method_add_excluded_object>`\ (\ RID\: :ref:`RID<class_RID>`\ )       |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_excluded_objects<class_SpringArm3D_method_clear_excluded_objects>`\ (\ )                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_hit_length<class_SpringArm3D_method_get_hit_length>`\ (\ )                                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`remove_excluded_object<class_SpringArm3D_method_remove_excluded_object>`\ (\ RID\: :ref:`RID<class_RID>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SpringArm3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_SpringArm3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The layers against which the collision check will be done. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.01`` :ref:`🔗<class_SpringArm3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

进行碰撞检测时，会给出 SpringArm3D 的一个候选长度。

然后将边距减去该长度，并将该平移应用于该 SpringArm3D 的子对象。

当 SpringArm3D 有一个 :ref:`Camera3D<class_Camera3D>` 作为子节点时，该边距很有用：如果没有边距，该 :ref:`Camera3D<class_Camera3D>` 将被放置在准确的碰撞点上；而有边距时，该 :ref:`Camera3D<class_Camera3D>` 将被放置在靠近碰撞点的地方。

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_SpringArm3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

用于该 SpringArm3D 的 :ref:`Shape3D<class_Shape3D>`\ 。

当该形状被设置后，SpringArm3D 将在其 z 轴上投射该 :ref:`Shape3D<class_Shape3D>`\ ，而不是执行一个射线投射。

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_spring_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **spring_length** = ``1.0`` :ref:`🔗<class_SpringArm3D_property_spring_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

SpringArm3D 的最大范围。这用作内部使用的射线和形状投射的长度，以计算 SpringArm3D 子节点的所需位置。

要了解有关如何执行形状投射或射线投射的更多信息，请参阅 :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` 文档。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SpringArm3D_method_add_excluded_object:

.. rst-class:: classref-method

|void| **add_excluded_object**\ (\ RID\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_SpringArm3D_method_add_excluded_object>`

将具有给定 :ref:`RID<class_RID>` 的 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 对象，添加到从碰撞检查中排除的 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 对象列表中。

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_clear_excluded_objects:

.. rst-class:: classref-method

|void| **clear_excluded_objects**\ (\ ) :ref:`🔗<class_SpringArm3D_method_clear_excluded_objects>`

清空碰撞检测排除 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 对象的列表。

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_get_hit_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hit_length**\ (\ ) :ref:`🔗<class_SpringArm3D_method_get_hit_length>`

返回弹簧臂的当前长度。

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_remove_excluded_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **remove_excluded_object**\ (\ RID\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_SpringArm3D_method_remove_excluded_object>`

从碰撞检测排除 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 对象的列表中移除给定的 :ref:`RID<class_RID>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
