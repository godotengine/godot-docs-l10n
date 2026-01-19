:github_url: hide

.. _class_PhysicsDirectSpaceState2D:

PhysicsDirectSpaceState2D
=========================

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`PhysicsDirectSpaceState2DExtension<class_PhysicsDirectSpaceState2DExtension>`

提供對 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 中物理空間的直接存取。

.. rst-class:: classref-introduction-group

說明
----

Provides direct access to a physics space in the :ref:`PhysicsServer2D<class_PhysicsServer2D>`. It's used mainly to do queries against objects and areas residing in a given space.

\ **Note:** This class is not meant to be instantiated directly. Use :ref:`World2D.direct_space_state<class_World2D_property_direct_space_state>` to get the world's physics 2D space state.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`發射射線 <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState2D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState2D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState2D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState2D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState2D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState2D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsDirectSpaceState2D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion>`

檢查 :ref:`Shape2D<class_Shape2D>` 能夠在不發生碰撞的情況下移動多遠。包括形狀和運動在內的所有查詢參數都通過 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 物件提供。

返回包含該運動的安全和不安全比例（在 0 和 1 之間）的陣列。安全比例是該運動能夠不發生碰撞的最大分數。不安全比例是發生碰撞所需的最小分數。如果沒有偵測到碰撞，則返回的結果為 ``[1.0, 1.0]``\ 。

\ **注意：**\ 該形狀已碰撞的 :ref:`Shape2D<class_Shape2D>` 會被忽略，例如形狀在其內部。請使用 :ref:`collide_shape()<class_PhysicsDirectSpaceState2D_method_collide_shape>` 確定該形狀已碰撞的 :ref:`Shape2D<class_Shape2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape>`

檢查通過 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 物件給出的一個形狀與該空間的交點。結果陣列包含該形狀與另一個形狀相交處的點的列表。與 :ref:`intersect_shape()<class_PhysicsDirectSpaceState2D_method_intersect_shape>` 一樣，可以限制返回結果的數量以節省處理時間。

返回的點是接觸點對的一個列表。對於每一對，第一個是在 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 對象中傳遞的形狀，第二個是來自物理空間的碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space. If it collides with more than one shape, the nearest one is selected. The returned object is a dictionary containing the following fields:

\ ``collider_id``: The colliding object's ID.

\ ``linear_velocity``: The colliding object's velocity :ref:`Vector2<class_Vector2>`. If the object is an :ref:`Area2D<class_Area2D>`, the result is ``(0, 0)``.

\ ``normal``: The collision normal of the query shape at the intersection point, pointing away from the intersecting object.

\ ``point``: The intersection point.

\ ``rid``: The intersecting object's :ref:`RID<class_RID>`.

\ ``shape``: The shape index of the colliding shape.

If the shape did not intersect anything, then an empty dictionary is returned instead.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point>`

檢查點是否在任何實體形狀內。位置和其他參數通過 :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>` 定義。點所在的形狀在包含具有以下欄位的字典的陣列中返回：

\ ``collider``\ ：碰撞對象。

\ ``collider_id``\ ：碰撞對象的 ID。

\ ``rid``\ ：相交對象的 :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：碰撞形狀的形狀索引。

可以使用 ``max_results`` 參數限制相交的數量，以減少處理時間。

\ **注意：**\ 在 ``Segments`` 建構模式下，\ :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` 和 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 不是實體形狀。因此，它們不會被偵測到。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray>`

與一個給定空間中的一個射線相交。射線位置和其他參數通過 :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>` 定義。返回的物件是一個包含以下欄位的字典：

\ ``collider``\ ：該碰撞對象。

\ ``collider_id``\ ：該碰撞對象的 ID。

\ ``normal``\ ：在相交點處該對象的表面法線；如果射線從形狀內部開始，並且 :ref:`PhysicsRayQueryParameters2D.hit_from_inside<class_PhysicsRayQueryParameters2D_property_hit_from_inside>` 為 ``true``\ ，則為 ``Vector2(0, 0)``\ 。

\ ``position``\ ：該相交點。

\ ``rid``\ ：該相交對象的 :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：該碰撞形狀的形狀索引。

如果射線沒有與任何東西相交，則返回一個空字典。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape>`

檢查通過 :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` 物件給出的形狀與空間的交點。相交的形狀會以陣列的形式返回，該陣列包含有以下欄位的字典：

\ ``collider``\ ：碰撞對象。

\ ``collider_id``\ ：碰撞對象的 ID。

\ ``rid``\ ：相交對象的\ :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：碰撞形狀的形狀索引。

可以使用 ``max_results`` 參數限制相交的數量，以減少處理時間。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
