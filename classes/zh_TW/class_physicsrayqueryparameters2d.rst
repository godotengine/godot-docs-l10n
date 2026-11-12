:github_url: hide

.. _class_PhysicsRayQueryParameters2D:

PhysicsRayQueryParameters2D
===========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為 :ref:`PhysicsDirectSpaceState2D.intersect_ray()<class_PhysicsDirectSpaceState2D_method_intersect_ray>` 提供參數。

.. rst-class:: classref-introduction-group

說明
----

By changing various properties of this object, such as the ray position, you can configure the parameters for :ref:`PhysicsDirectSpaceState2D.intersect_ray()<class_PhysicsDirectSpaceState2D_method_intersect_ray>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsRayQueryParameters2D_property_collide_with_areas>`   | ``false``         |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsRayQueryParameters2D_property_collide_with_bodies>` | ``true``          |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsRayQueryParameters2D_property_collision_mask>`           | ``4294967295``    |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsRayQueryParameters2D_property_exclude>`                         | ``[]``            |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`from<class_PhysicsRayQueryParameters2D_property_from>`                               | ``Vector2(0, 0)`` |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`hit_from_inside<class_PhysicsRayQueryParameters2D_property_hit_from_inside>`         | ``false``         |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`to<class_PhysicsRayQueryParameters2D_property_to>`                                   | ``Vector2(0, 0)`` |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>` | :ref:`create<class_PhysicsRayQueryParameters2D_method_create>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>` = 4294967295, exclude\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] = []\ ) |static| |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PhysicsRayQueryParameters2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果為 ``true``\ ，查詢將考慮 :ref:`Area2D<class_Area2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果為 ``true``\ ，查詢將考慮 :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

查詢將偵測的實體層（作為位元遮罩）。預設情況下，會偵測所有碰撞層。有關詳細資訊，請參閱文件中的 `《碰撞層和遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

將被排除在碰撞之外的物件的 :ref:`RID<class_RID>` 清單。請使用 :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>` 來取得與派生自 :ref:`CollisionObject2D<class_CollisionObject2D>` 的節點關聯的 :ref:`RID<class_RID>`\ 。

\ **注意：**\ 回傳的陣列為副本，對其進行的修改不會更新原有屬性。更新時，請先修改回傳的陣列，然後將其重新賦值回該屬性。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_from:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **from** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_from**\ (\ )

要查詢的射線起點，使用全域座標。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

如果為 ``true``\ ，查詢會在從形狀內部開始時偵測到命中。在此情況下，碰撞法線將為 ``Vector2(0, 0)``\ 。不會影響凹多邊形形狀。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters2D_property_to:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **to** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsRayQueryParameters2D_property_to>`

.. rst-class:: classref-property-setget

- |void| **set_to**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_to**\ (\ )

要查詢的射線終點，使用全域座標。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsRayQueryParameters2D_method_create:

.. rst-class:: classref-method

:ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>` **create**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>` = 4294967295, exclude\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] = []\ ) |static| :ref:`🔗<class_PhysicsRayQueryParameters2D_method_create>`

返回一個新的、預配置的 **PhysicsRayQueryParameters2D** 對象。使用它可以使用最常見的選項來快速建立查詢參數。

::

    var query = PhysicsRayQueryParameters2D.create(global_position, global_position + Vector2(0, 100))
    var collision = get_world_2d().direct_space_state.intersect_ray(query)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
