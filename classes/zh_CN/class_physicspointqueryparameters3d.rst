:github_url: hide

.. _class_PhysicsPointQueryParameters3D:

PhysicsPointQueryParameters3D
=============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为 :ref:`PhysicsDirectSpaceState3D.intersect_point()<class_PhysicsDirectSpaceState3D_method_intersect_point>` 提供参数。

.. rst-class:: classref-introduction-group

描述
----

通过修改这个对象的点位置等属性，你可以为 :ref:`PhysicsDirectSpaceState3D.intersect_point()<class_PhysicsDirectSpaceState3D_method_intersect_point>` 配置参数。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsPointQueryParameters3D_property_collide_with_areas>`   | ``false``            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsPointQueryParameters3D_property_collide_with_bodies>` | ``true``             |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsPointQueryParameters3D_property_collision_mask>`           | ``4294967295``       |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsPointQueryParameters3D_property_exclude>`                         | ``[]``               |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                      | :ref:`position<class_PhysicsPointQueryParameters3D_property_position>`                       | ``Vector3(0, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicsPointQueryParameters3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果为 ``true``\ ，则查询将考虑 :ref:`Area3D<class_Area3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果为 ``true``\ ，则查询将考虑 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

查询将检测的物理层（作为位掩码）。默认情况下，会检测所有碰撞层。有关详细信息，请参阅文档中的 `《碰撞层和掩码》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters3D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

将被排除在碰撞之外的对象的 :ref:`RID<class_RID>` 列表。请使用 :ref:`CollisionObject3D.get_rid()<class_CollisionObject3D_method_get_rid>` 来获取与派生自 :ref:`CollisionObject3D<class_CollisionObject3D>` 的节点关联的 :ref:`RID<class_RID>`\ 。

\ **注意：**\ 返回的数组为副本，对其进行的修改不会更新原有属性。更新时，请先修改返回的数组，然后将其重新赋值回该属性。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters3D_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

要查询的位置，使用全局坐标。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
