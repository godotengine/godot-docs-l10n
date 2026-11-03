:github_url: hide

.. _class_RayCast3D:

RayCast3D
=========

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 空間中的射線，用於尋找第一個與其相交的碰撞物體。

.. rst-class:: classref-introduction-group

說明
----

Raycast 代表的是從它的原點到 :ref:`target_position<class_RayCast3D_property_target_position>` 的射線，如果與碰撞物件相交，就能找到路徑上距離最近的物體。

要讓 **RayCast3D** 忽略某些物件，可以通過將它們加入例外清單，也可以通過讓檢測彙報忽略 :ref:`Area3D<class_Area3D>`\ （\ :ref:`collide_with_areas<class_RayCast3D_property_collide_with_areas>`\ ）或 :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ （\ :ref:`collide_with_bodies<class_RayCast3D_property_collide_with_bodies>`\ ），還可以通過設定物理層。

\ **RayCast3D** 每一個物理影格都會計算是否相交，且該計算結果會保留到下一個物理影格。如果要立即執行射線投射，或者你想要在同一個物理影格內多次設定 **RayCast3D**\ ，請使用 :ref:`force_raycast_update()<class_RayCast3D_method_force_raycast_update>`\ 。

要掃描 3D 空間中的某個區塊，可以使用多個 **RayCast3D** 或使用 :ref:`ShapeCast3D<class_ShapeCast3D>` 去近似該區塊。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`發射射線 <../tutorials/physics/ray-casting>`

- `3D 體素示範 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_RayCast3D_property_collide_with_areas>`             | ``false``             |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_RayCast3D_property_collide_with_bodies>`           | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_RayCast3D_property_collision_mask>`                     | ``1``                 |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_shape_custom_color<class_RayCast3D_property_debug_shape_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`debug_shape_thickness<class_RayCast3D_property_debug_shape_thickness>`       | ``2``                 |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_RayCast3D_property_enabled>`                                   | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_RayCast3D_property_exclude_parent>`                     | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_back_faces<class_RayCast3D_property_hit_back_faces>`                     | ``true``              |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>`                   | ``false``             |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`target_position<class_RayCast3D_property_target_position>`                   | ``Vector3(0, -1, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_RayCast3D_method_add_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                                    |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_RayCast3D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_RayCast3D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_raycast_update<class_RayCast3D_method_force_raycast_update>`\ (\ )                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_RayCast3D_method_get_collider>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_RayCast3D_method_get_collider_rid>`\ (\ ) |const|                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_RayCast3D_method_get_collider_shape>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_face_index<class_RayCast3D_method_get_collision_face_index>`\ (\ ) |const|                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_RayCast3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_RayCast3D_method_get_collision_normal>`\ (\ ) |const|                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_RayCast3D_method_get_collision_point>`\ (\ ) |const|                                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_RayCast3D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_RayCast3D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_RayCast3D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_RayCast3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RayCast3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

如果為 ``true``\ ，則會報告與 :ref:`Area3D<class_Area3D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

如果為 ``true``\ ，則會報告與 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

射線的碰撞遮罩。只能偵測到至少啟用了一個遮罩中碰撞層的物件。詳情請參閱文件中的\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_debug_shape_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_shape_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_RayCast3D_property_debug_shape_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_shape_custom_color**\ (\ )

如果在\ **除錯**\ 功能表中啟用了\ **可見碰撞形狀**\ ，則用於在編輯器中和運作時中繪製形狀的自訂顏色。如果 **RayCast3D** 與某物發生碰撞，該顏色將在運作時突出顯示。

如果設定為 ``Color(0.0, 0.0, 0.0)``\ （預設情況下），則使用 :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>` 中設定的顏色。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_debug_shape_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug_shape_thickness** = ``2`` :ref:`🔗<class_RayCast3D_property_debug_shape_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_debug_shape_thickness**\ (\ )

如果設定為 ``1``\ ，則使用一條線作為除錯形狀。否則，將繪製一個截斷的金字塔來表示 **RayCast3D**\ 。需要在\ **除錯**\ 選單中啟用\ **可見碰撞形狀**\ ，以便除錯形狀在運作時可見。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果為 ``true``\ ，將報告碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast3D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

如果為 ``true``\ ，則射線投射不會彙報與其父節點的碰撞。僅在父節點為 :ref:`CollisionObject3D<class_CollisionObject3D>` 時有效。另見 :ref:`Node.get_parent()<class_Node_method_get_parent>`\ 、\ :ref:`add_exception()<class_RayCast3D_method_add_exception>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_hit_back_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_back_faces** = ``true`` :ref:`🔗<class_RayCast3D_property_hit_back_faces>`

.. rst-class:: classref-property-setget

- |void| **set_hit_back_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_back_faces_enabled**\ (\ )

如果為 ``true``\ ，查詢將命中背部面，這些背部面是啟用了背面的凹多邊形形狀，或高度圖形狀。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast3D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

如果為 ``true``\ ，射線會在從形狀內部開始時偵測到命中。在此情況下，碰撞法線將為 ``Vector3(0, 0, 0)``\ 。不會影響無體積的形狀，如凹多邊形和高度圖。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_RayCast3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

射線的目的點，相對於射線投射的 :ref:`Node3D.position<class_Node3D_property_position>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RayCast3D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_RayCast3D_method_add_exception>`

新增碰撞例外，這樣射線就不會報告與 ``node`` 節點的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast3D_method_add_exception_rid>`

新增碰撞例外，這樣射線就不會報告與指定 :ref:`RID<class_RID>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast3D_method_clear_exceptions>`

刪除此射線的所有碰撞例外。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast3D_method_force_raycast_update>`

更新射線的碰撞資訊。使用該方法立即更新碰撞資訊，而不是等待下一個 ``_physics_process`` 呼叫，例如，如果射線或其父級已更改狀態。

\ **注意：**\ :ref:`enabled<class_RayCast3D_property_enabled>` 不需要為 ``true`` 即可生效。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider>`

回傳射線相交的第一個物體，如果沒有物體與射線相交則回傳 ``null``\ （即 :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` 回傳 ``false``\ ）。

\ **注意：**\ 該物體不一定是 :ref:`CollisionObject3D<class_CollisionObject3D>`\ 。例如射線與 :ref:`CSGShape3D<class_CSGShape3D>` 或 :ref:`GridMap<class_GridMap>` 相交時，方法回傳的就是 :ref:`CSGShape3D<class_CSGShape3D>` 或 :ref:`GridMap<class_GridMap>` 實例。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider_rid>`

返回該射線相交的第一個物件的 :ref:`RID<class_RID>`\ ，如果沒有物件與該射線相交，則返回空 :ref:`RID<class_RID>`\ （即 :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` 返回 ``false``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collider_shape>`

回傳與射線相交的第一個物件的形狀 ID，射線未與任何物件相交時回傳 ``0``\ （即 :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` 回傳 ``false`` 時）。

要取得相交的形狀節點，比如假設目標是 :ref:`CollisionObject3D<class_CollisionObject3D>`\ ，可以使用：


.. tabs::

 .. code-tab:: gdscript

    var target = get_collider() # 是 CollisionObject3D 節點。
    var shape_id = get_collider_shape() # 碰撞體中的形狀索引。
    var owner_id = target.shape_find_owner(shape_id) # 碰撞體中的所有者 ID。
    var shape = target.shape_owner_get_owner(owner_id)

 .. code-tab:: csharp

    var target = (CollisionObject3D)GetCollider(); // 是 CollisionObject3D 節點。
    var shapeId = GetColliderShape(); // 碰撞體中的形狀索引。
    var ownerId = target.ShapeFindOwner(shapeId); // 碰撞體中的所有者 ID。
    var shape = target.ShapeOwnerGetOwner(ownerId);



.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_face_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_face_index**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_face_index>`

回傳碰撞點處碰撞物件的面索引，如果與射線相交的形狀不是 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`\ ，則回傳 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_RayCast3D_property_collision_mask>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_normal>`

回傳相交物件的形狀在碰撞點處的法線，如果射線從該形狀內部發出並且 :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>` 為 ``true``\ ，則為 ``Vector3(0, 0)``\ 。

\ **注意：**\ 請在呼叫前檢查 :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` 回傳的是否為 ``true``\ ，這樣回傳的法線就是即時有效的。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_get_collision_point>`

回傳全域座標系中射線與最近的物體相交的碰撞點。如果 :ref:`hit_from_inside<class_RayCast3D_property_hit_from_inside>` 為 ``true`` 並且射線從碰撞形狀內部開始，則該函式將回傳該射線的原點。

\ **注意：**\ 在呼叫該方法之前，請檢查 :ref:`is_colliding()<class_RayCast3D_method_is_colliding>` 是否回傳 ``true``\ ，以確保回傳的點有效且最新。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast3D_method_is_colliding>`

返回是否有任何物件與射線的向量相交（考慮向量長度）。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_RayCast3D_method_remove_exception>`

移除碰撞例外，這樣射線就會報告與 ``node`` 節點的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast3D_method_remove_exception_rid>`

移除碰撞例外，這樣射線就會報告與指定的 :ref:`RID<class_RID>` 的碰撞。

.. rst-class:: classref-item-separator

----

.. _class_RayCast3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast3D_method_set_collision_mask_value>`

根據 ``value``\ ，啟用或停用 :ref:`collision_mask<class_RayCast3D_property_collision_mask>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
