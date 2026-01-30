:github_url: hide

.. _class_SpringBoneCollision3D:

SpringBoneCollision3D
=====================

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`SpringBoneCollisionCapsule3D<class_SpringBoneCollisionCapsule3D>`, :ref:`SpringBoneCollisionPlane3D<class_SpringBoneCollisionPlane3D>`, :ref:`SpringBoneCollisionSphere3D<class_SpringBoneCollisionSphere3D>`

与 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 交互的碰撞的基类。

.. rst-class:: classref-introduction-group

描述
----

碰撞可以是 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的子节点。不是 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的子节点就没有效果。

碰撞和滑动是在 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的修改过程中按照其碰撞列表的顺序进行的，该顺序由 :ref:`SpringBoneSimulator3D.set_collision_path()<class_SpringBoneSimulator3D_method_set_collision_path>` 设置。如果 :ref:`SpringBoneSimulator3D.are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` 为 ``true``\ ，则顺序与 :ref:`SceneTree<class_SceneTree>` 匹配。

如果设置了 :ref:`bone<class_SpringBoneCollision3D_property_bone>`\ ，则会与祖级 :ref:`Skeleton3D<class_Skeleton3D>` 的骨骼姿势同步，在 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的修改过程之前作为预处理完成。

\ **警告：**\ 存在缩放的 **SpringBoneCollision3D** 可能产生预料之外的行为。请确保父级 :ref:`Skeleton3D<class_Skeleton3D>` 及其骨骼没有缩放。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`               | :ref:`bone<class_SpringBoneCollision3D_property_bone>`                       | ``-1`` |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`         | :ref:`bone_name<class_SpringBoneCollision3D_property_bone_name>`             | ``""`` |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`position_offset<class_SpringBoneCollision3D_property_position_offset>` |        |
   +-------------------------------------+------------------------------------------------------------------------------+--------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`rotation_offset<class_SpringBoneCollision3D_property_rotation_offset>` |        |
   +-------------------------------------+------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SpringBoneCollision3D_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SpringBoneCollision3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_SpringBoneCollision3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

所附着骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_SpringBoneCollision3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

所附着骨骼的名称。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position_offset** :ref:`🔗<class_SpringBoneCollision3D_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position_offset**\ (\ )

位置的偏移量，相对于 :ref:`Skeleton3D<class_Skeleton3D>` 的 :ref:`bone<class_SpringBoneCollision3D_property_bone>` 姿势位置。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_rotation_offset:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation_offset** :ref:`🔗<class_SpringBoneCollision3D_property_rotation_offset>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_offset**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation_offset**\ (\ )

旋转的偏移量，相对于 :ref:`Skeleton3D<class_Skeleton3D>` 的 :ref:`bone<class_SpringBoneCollision3D_property_bone>` 姿势旋转。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SpringBoneCollision3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SpringBoneCollision3D_method_get_skeleton>`

获取父级 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的父级 :ref:`Skeleton3D<class_Skeleton3D>` 节点。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
