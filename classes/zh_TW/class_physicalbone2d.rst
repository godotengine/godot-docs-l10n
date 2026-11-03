:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone2D:

PhysicalBone2D
==============

**繼承：** :ref:`RigidBody2D<class_RigidBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

衍生自 :ref:`RigidBody2D<class_RigidBody2D>` 的節點，用於讓 :ref:`Skeleton2D<class_Skeleton2D>` 中的 :ref:`Bone2D<class_Bone2D>` 對物理作出反應。

.. rst-class:: classref-introduction-group

說明
----

**PhysicalBone2D** 節點基於 :ref:`RigidBody2D<class_RigidBody2D>`\ ，可以用來使 :ref:`Skeleton2D<class_Skeleton2D>` 中的 :ref:`Bone2D<class_Bone2D>` 節點對物理作出反應。

\ **注意：**\ 為了讓 :ref:`Bone2D<class_Bone2D>` 節點在視覺上跟隨 **PhysicalBone2D** 節點，請在父級 :ref:`Skeleton2D<class_Skeleton2D>` 節點上使用 :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` 修改。

\ **注意：**\ **PhysicalBone2D** 節點不會自動建立 :ref:`Joint2D<class_Joint2D>` 節點來讓 **PhysicalBone2D** 節點保持在一起。你需要手動建立這些節點。大多數情況下，你想要使用的都是 :ref:`PinJoint2D<class_PinJoint2D>` 節點。建立 **PhysicalBone2D** 子節點後會自動配置 :ref:`Joint2D<class_Joint2D>` 節點。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`auto_configure_joint<class_PhysicalBone2D_property_auto_configure_joint>`               | ``true``         |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone2d_index<class_PhysicalBone2D_property_bone2d_index>`                               | ``-1``           |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_nodepath<class_PhysicalBone2D_property_bone2d_nodepath>`                         | ``NodePath("")`` |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`follow_bone_when_simulating<class_PhysicalBone2D_property_follow_bone_when_simulating>` | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`simulate_physics<class_PhysicalBone2D_property_simulate_physics>`                       | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Joint2D<class_Joint2D>` | :ref:`get_joint<class_PhysicalBone2D_method_get_joint>`\ (\ ) |const|                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_simulating_physics<class_PhysicalBone2D_method_is_simulating_physics>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PhysicalBone2D_property_auto_configure_joint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_configure_joint** = ``true`` :ref:`🔗<class_PhysicalBone2D_property_auto_configure_joint>`

.. rst-class:: classref-property-setget

- |void| **set_auto_configure_joint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_configure_joint**\ (\ )

如果為 ``true``\ ，\ **PhysicalBone2D** 節點會自動配置第一個 :ref:`Joint2D<class_Joint2D>` 子節點。自動配置僅限於設定節點屬性和定位該 :ref:`Joint2D<class_Joint2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone2d_index** = ``-1`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone2d_index**\ (\ )

該 **PhysicalBone2D** 節點所模擬的 :ref:`Bone2D<class_Bone2D>` 節點的索引。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_nodepath** = ``NodePath("")`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_nodepath**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_nodepath**\ (\ )

該 **PhysicalBone2D** 所模擬的 :ref:`Bone2D<class_Bone2D>` 的 :ref:`NodePath<class_NodePath>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_follow_bone_when_simulating:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_bone_when_simulating** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_follow_bone_when_simulating>`

.. rst-class:: classref-property-setget

- |void| **set_follow_bone_when_simulating**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_bone_when_simulating**\ (\ )

如果為 ``true``\ ，則該 **PhysicalBone2D** 在類比物理時會保持其綁定的骨骼的變換。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_simulate_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simulate_physics** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_simulate_physics>`

.. rst-class:: classref-property-setget

- |void| **set_simulate_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simulate_physics**\ (\ )

如果為 ``true``\ ，\ **PhysicalBone2D** 將開始使用物理進行類比。如果為 ``false``\ ，\ **PhysicalBone2D** 將跟隨 :ref:`Bone2D<class_Bone2D>` 節點的變換。

\ **注意：**\ 要使 :ref:`Bone2D<class_Bone2D>` 節點在視覺上跟隨 **PhysicalBone2D** 節點，請在具有 :ref:`Bone2D<class_Bone2D>` 節點的 :ref:`Skeleton2D<class_Skeleton2D>` 節點上使用一個 :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` 修改。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicalBone2D_method_get_joint:

.. rst-class:: classref-method

:ref:`Joint2D<class_Joint2D>` **get_joint**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_get_joint>`

如果存在，則返回第一個 :ref:`Joint2D<class_Joint2D>` 子節點。主要是輔助函式，用於簡化對 **PhysicalBone2D** 所自動配置的 :ref:`Joint2D<class_Joint2D>` 的取得。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_is_simulating_physics>`

返回一個布林值，表示 **PhysicalBone2D** 節點是否處於運作狀態，正在使用 Godot 2D 物理引擎進行模擬。為 ``true`` 時，該 PhysicalBone2D 節點正在使用物理。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
