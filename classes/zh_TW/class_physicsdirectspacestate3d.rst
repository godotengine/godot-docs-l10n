:github_url: hide

.. _class_PhysicsDirectSpaceState3D:

PhysicsDirectSpaceState3D
=========================

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`PhysicsDirectSpaceState3DExtension<class_PhysicsDirectSpaceState3DExtension>`

提供對 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 中物理空間的直接存取。

.. rst-class:: classref-introduction-group

說明
----

Provides direct access to a physics space in the :ref:`PhysicsServer3D<class_PhysicsServer3D>`. It's used mainly to do queries against objects and areas residing in a given space.

\ **Note:** This class is not meant to be instantiated directly. Use :ref:`World3D.direct_space_state<class_World3D_property_direct_space_state>` to get the world's physics 3D space state.

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
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState3D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3<class_Vector3>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState3D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ )     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState3D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ )                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState3D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState3D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState3D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsDirectSpaceState3D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_cast_motion>`

Checks how far a :ref:`Shape3D<class_Shape3D>` can move without colliding. All the parameters for the query, including the shape and the motion, are supplied through a :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` object.

Returns an array with the safe and unsafe proportions (between 0 and 1) of the motion. The safe proportion is the maximum fraction of the motion that can be made without a collision. The unsafe proportion is the minimum fraction of the distance that must be moved for a collision. If no collision is detected a result of ``[1.0, 1.0]`` will be returned.

\ **Note:** Any :ref:`Shape3D<class_Shape3D>`\ s that the shape is already colliding with e.g. inside of, will be ignored. Use :ref:`collide_shape()<class_PhysicsDirectSpaceState3D_method_collide_shape>` to determine the :ref:`Shape3D<class_Shape3D>`\ s that the shape is already colliding with.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3<class_Vector3>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_collide_shape>`

檢查通過 :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` 物件給出的一個形狀與該空間的交點。結果陣列包含該形狀與另一個形狀相交處的點的列表。與 :ref:`intersect_shape()<class_PhysicsDirectSpaceState3D_method_intersect_shape>` 一樣，可以限制返回結果的數量以節省處理時間。

返回的點是接觸點對的一個列表。對於每一對，第一個是在 :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` 對象中傳遞的形狀，第二個是來自物理空間的碰撞形狀。

\ **注意：**\ 該方法不考慮物件的 ``motion`` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_get_rest_info>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` object, against the space. If it collides with more than one shape, the nearest one is selected. The returned object is a dictionary containing the following fields:

\ ``collider_id``: The colliding object's ID.

\ ``linear_velocity``: The colliding object's velocity :ref:`Vector3<class_Vector3>`. If the object is an :ref:`Area3D<class_Area3D>`, the result is ``(0, 0, 0)``.

\ ``normal``: The collision normal of the query shape at the intersection point, pointing away from the intersecting object.

\ ``point``: The intersection point.

\ ``rid``: The intersecting object's :ref:`RID<class_RID>`.

\ ``shape``: The shape index of the colliding shape.

If the shape did not intersect anything, then an empty dictionary is returned instead.

\ **Note:** This method does not take into account the ``motion`` property of the object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_point>`

檢查點是否在任何實體形狀內。位置和其他參數通過 :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>` 定義。點所在的形狀會以陣列的形式返回，該陣列包含有以下欄位的字典：

\ ``collider``\ ：碰撞對象。

\ ``collider_id``\ ：碰撞對象的 ID。

\ ``rid``\ ：相交對象的\ :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：碰撞形狀的形狀索引。

可以使用 ``max_results`` 參數限制相交的數量，以減少處理時間。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_ray>`

在給定空間中偵測與射線的相交情況。射線的位置和其他參數由 :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>` 定義。返回的物件是包含以下欄位的字典：

\ ``collider``\ ：碰撞到的對象。

\ ``collider_id``\ ：碰撞到的對象的 ID。

\ ``normal``\ ：該物件表面交點處的法線，如果射線中該形狀的內部開始，並且 :ref:`PhysicsRayQueryParameters3D.hit_from_inside<class_PhysicsRayQueryParameters3D_property_hit_from_inside>` 為 ``true``\ ，則為 ``Vector3(0, 0, 0)``\ 。

\ ``position``\ ：交點。

\ ``face_index``\ ：交點處的面索引。

\ **注意：**\ 只有相交形狀是 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 時才會返回有效值。否則返回 ``-1``\ 。

\ ``rid``\ ：相交對象的 :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：碰撞形狀的形狀索引。

如果射線沒有發生相交，則返回的是空字典。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_shape>`

檢查通過 :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` 物件給出的形狀與空間的交點。相交的形狀在包含具有以下欄位的字典的陣列中返回：

\ ``collider``\ ：碰撞對象。

\ ``collider_id``\ ：碰撞對象的 ID。

\ ``rid``\ ：相交對象的 :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：碰撞形狀的形狀索引。

可以使用 ``max_results`` 參數限制相交的數量，以減少處理時間。

\ **注意：**\ 該方法不考慮物件的 ``motion`` 屬性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
