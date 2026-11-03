:github_url: hide

.. _class_SpringBoneCollision3D:

SpringBoneCollision3D
=====================

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`SpringBoneCollisionCapsule3D<class_SpringBoneCollisionCapsule3D>`, :ref:`SpringBoneCollisionPlane3D<class_SpringBoneCollisionPlane3D>`, :ref:`SpringBoneCollisionSphere3D<class_SpringBoneCollisionSphere3D>`

與 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 互動的碰撞的基底類別。

.. rst-class:: classref-introduction-group

說明
----

碰撞可以是 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的子節點。不是 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的子節點就沒有效果。

碰撞和滑動是在 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的修改過程中按照其碰撞清單的順序進行的，該順序由 :ref:`SpringBoneSimulator3D.set_collision_path()<class_SpringBoneSimulator3D_method_set_collision_path>` 設定。如果 :ref:`SpringBoneSimulator3D.are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` 為 ``true``\ ，則順序與 :ref:`SceneTree<class_SceneTree>` 匹配。

如果設定了 :ref:`bone<class_SpringBoneCollision3D_property_bone>`\ ，則會與祖級 :ref:`Skeleton3D<class_Skeleton3D>` 的骨骼姿勢同步，在 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的修改過程之前作為預處理完成。

\ **警告：**\ 存在縮放的 **SpringBoneCollision3D** 可能產生預料之外的行為。請確保父級 :ref:`Skeleton3D<class_Skeleton3D>` 及其骨骼沒有縮放。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_SpringBoneCollision3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_SpringBoneCollision3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

所附著骨骼的索引。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_SpringBoneCollision3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

所附著骨骼的名稱。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_position_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position_offset** :ref:`🔗<class_SpringBoneCollision3D_property_position_offset>`

.. rst-class:: classref-property-setget

- |void| **set_position_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position_offset**\ (\ )

位置的偏移量，相對於 :ref:`Skeleton3D<class_Skeleton3D>` 的 :ref:`bone<class_SpringBoneCollision3D_property_bone>` 姿勢位置。

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollision3D_property_rotation_offset:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **rotation_offset** :ref:`🔗<class_SpringBoneCollision3D_property_rotation_offset>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_offset**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_rotation_offset**\ (\ )

旋轉的偏移量，相對於 :ref:`Skeleton3D<class_Skeleton3D>` 的 :ref:`bone<class_SpringBoneCollision3D_property_bone>` 姿勢旋轉。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SpringBoneCollision3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SpringBoneCollision3D_method_get_skeleton>`

取得父級 :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>` 的父級 :ref:`Skeleton3D<class_Skeleton3D>` 節點。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
