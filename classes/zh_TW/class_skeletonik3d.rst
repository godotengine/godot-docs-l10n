:github_url: hide

.. _class_SkeletonIK3D:

SkeletonIK3D
============

**已棄用：** This class may be changed or removed in future versions.

**繼承：** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可以將 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼鏈中的所有骨骼進行旋轉，從而將末端骨骼放置在正確的 3D 位置的節點。

.. rst-class:: classref-introduction-group

說明
----

SkeletonIK3D is used to rotate all bones of a :ref:`Skeleton3D<class_Skeleton3D>` bone chain a way that places the end bone at a desired 3D position. A typical scenario for IK in games is to place a character's feet on the ground or a character's hands on a currently held object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the :ref:`Skeleton3D<class_Skeleton3D>` ``bones_global_pose_override`` property for all affected bones in the chain. If fully applied, this overwrites any bone transform from :ref:`Animation<class_Animation>`\ s or bone custom poses set by users. The applied amount can be controlled with the :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` property.

::

    # Apply IK effect automatically on every new frame (not the current)
    skeleton_ik_node.start()

    # Apply IK effect only on the current frame
    skeleton_ik_node.start(true)

    # Stop IK effect and reset bones_global_pose_override on Skeleton
    skeleton_ik_node.stop()

    # Apply full IK effect
    skeleton_ik_node.set_influence(1.0)

    # Apply half IK effect
    skeleton_ik_node.set_influence(0.5)

    # Apply zero IK effect (a value at or below 0.01 also removes bones_global_pose_override on Skeleton)
    skeleton_ik_node.set_influence(0.0)

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`interpolation<class_SkeletonIK3D_property_interpolation>`           |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`magnet<class_SkeletonIK3D_property_magnet>`                         | ``Vector3(0, 0, 0)``                                |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`max_iterations<class_SkeletonIK3D_property_max_iterations>`         | ``10``                                              |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`min_distance<class_SkeletonIK3D_property_min_distance>`             | ``0.01``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` | ``true``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`root_bone<class_SkeletonIK3D_property_root_bone>`                   | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`target<class_SkeletonIK3D_property_target>`                         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`       | :ref:`target_node<class_SkeletonIK3D_property_target_node>`               | ``NodePath("")``                                    |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`tip_bone<class_SkeletonIK3D_property_tip_bone>`                     | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`use_magnet<class_SkeletonIK3D_property_use_magnet>`                 | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_parent_skeleton<class_SkeletonIK3D_method_get_parent_skeleton>`\ (\ ) |const|         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_running<class_SkeletonIK3D_method_is_running>`\ (\ )                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`start<class_SkeletonIK3D_method_start>`\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`stop<class_SkeletonIK3D_method_stop>`\ (\ )                                               |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SkeletonIK3D_property_interpolation:

.. rst-class:: classref-property

:ref:`float<class_float>` **interpolation** :ref:`🔗<class_SkeletonIK3D_property_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interpolation**\ (\ )

**已棄用：** Use :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` instead.

Interpolation value for how much the IK results are applied to the current skeleton bone chain. A value of ``1.0`` will overwrite all skeleton bone transforms completely while a value of ``0.0`` will visually disable the SkeletonIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_magnet:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **magnet** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_magnet_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_magnet_position**\ (\ )

IK 鏈的次要目標位置（首先是 :ref:`target<class_SkeletonIK3D_property_target>` 屬性或 :ref:`target_node<class_SkeletonIK3D_property_target_node>`\ ）。使用磁鐵位置（極點目標）來控制 IK 鏈的彎曲。僅當骨骼鏈具有 2 個以上的骨骼時才有效。中間鏈骨位置將與磁鐵位置進行線性插值。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``10`` :ref:`🔗<class_SkeletonIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

IK解算器使用的反覆運算迴圈的數量，以產生更準確（和優雅）的骨鏈效果。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.01`` :ref:`🔗<class_SkeletonIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

骨骼與目標物件之間的最小距離。如果距離低於這個值，IK解算器將停止進一步的迭代。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_override_tip_basis:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_tip_basis** = ``true`` :ref:`🔗<class_SkeletonIK3D_property_override_tip_basis>`

.. rst-class:: classref-property-setget

- |void| **set_override_tip_basis**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_override_tip_basis**\ (\ )

如果為 ``true``\ ，則用 :ref:`target<class_SkeletonIK3D_property_target>`\ （或者如果定義了 :ref:`target_node<class_SkeletonIK3D_property_target_node>`]）的旋轉覆蓋尖端骨骼的旋轉。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

目前的根骨骼的名稱，即 IK 鏈中的第一條骨骼。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **target** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_target_transform**\ (\ )

放置尖端骨骼的 IK 鏈的第一個目標，如果 :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` 是 ``true``\ ，尖端骨骼的旋轉方式。如果 :ref:`target_node<class_SkeletonIK3D_property_target_node>` 路徑可用，則使用節點變換，並忽略此屬性。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonIK3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

IK 鏈的目標節點 :ref:`NodePath<class_NodePath>`\ 。如果有的話，將使用節點目前的 :ref:`Transform3D<class_Transform3D>`\ ，而不是 :ref:`target<class_SkeletonIK3D_property_target>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_tip_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tip_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_tip_bone>`

.. rst-class:: classref-property-setget

- |void| **set_tip_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tip_bone**\ (\ )

目前尖端骨骼的名稱，IK 鏈中放置在 :ref:`target<class_SkeletonIK3D_property_target>` 變換處的最後一個骨骼（或者已定義 :ref:`target_node<class_SkeletonIK3D_property_target_node>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_use_magnet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_magnet** = ``false`` :ref:`🔗<class_SkeletonIK3D_property_use_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_use_magnet**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_magnet**\ (\ )

如果為 ``true``\ ，指示 IK 求解器在解算器鏈時考慮次要磁鐵目標（極點目標）。使用磁鐵位置（磁極目標）來控制 IK 鏈的彎曲。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonIK3D_method_get_parent_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_parent_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonIK3D_method_get_parent_skeleton>`

Returns the parent :ref:`Skeleton3D<class_Skeleton3D>` node that was present when SkeletonIK entered the scene tree. Returns ``null`` if the parent node was not a :ref:`Skeleton3D<class_Skeleton3D>` node when SkeletonIK3D entered the scene tree.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_is_running>`

如果 SkeletonIK 正將 IK 效果套用到 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼的連續影格上，則返回 ``true``\ 。如果 SkeletonIK 被停止或 :ref:`start()<class_SkeletonIK3D_method_start>` 被使用時 ``one_time`` 參數被設定為 ``true``\ ，則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SkeletonIK3D_method_start>`

開始將 IK 效果套用到每一影格的 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼，但只會在下一影格開始生效。如果 ``one_time`` 為 ``true`` 則將立即生效，但仍會在下一影格重設。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_stop>`

停止將 IK 效果套用到每影格的 :ref:`Skeleton3D<class_Skeleton3D>` 骨骼，並呼叫 :ref:`Skeleton3D.clear_bones_global_pose_override()<class_Skeleton3D_method_clear_bones_global_pose_override>` 來移除所有骨骼上的現有覆蓋。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
