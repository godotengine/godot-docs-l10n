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

提供對 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 中物理空間的直接存取。主要用於對駐留在給定空間中的物件和區域進行查詢。

\ **注意：**\ 該類不應直接實例化。請使用 :ref:`World3D.direct_space_state<class_World3D_property_direct_space_state>` 取得世界的 3D 物理空間狀態。

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

檢查 :ref:`Shape3D<class_Shape3D>` 能夠在不發生碰撞的情況下移動多遠。包括形狀和運動在內的所有查詢參數都通過 :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` 物件提供。

回傳包含該運動的安全和不安全比例（在 0 和 1 之間）的陣列。安全比例是該運動能夠不發生碰撞的最大分數。不安全比例是發生碰撞所需的最小分數。如果沒有檢測到碰撞，則回傳的結果為 ``[1.0, 1.0]``\ 。

\ **注意：**\ 該形狀已碰撞的 :ref:`Shape3D<class_Shape3D>` 會被忽略，例如形狀在其內部。請使用 :ref:`collide_shape()<class_PhysicsDirectSpaceState3D_method_collide_shape>` 確定該形狀已碰撞的 :ref:`Shape3D<class_Shape3D>`\ 。

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

檢查通過 :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>` 物件給出的形狀與該空間的交點。如果它與多個形狀發生碰撞，則選擇最近的一個。回傳的物件是一個包含以下欄位的字典：

\ ``collider_id``\ ：該碰撞物件的 ID。

\ ``linear_velocity``\ ：該碰撞物件的速度 :ref:`Vector3<class_Vector3>`\ 。如果物件是一個 :ref:`Area3D<class_Area3D>`\ ，則結果為 ``(0, 0, 0)``\ 。

\ ``normal``\ ：相交點處查詢形狀的碰撞法線，法線指向遠離相交物件的方向。

\ ``point``\ ：相交點。

\ ``rid``\ ：該相交物件的 :ref:`RID<class_RID>`\ 。

\ ``shape``\ ：該碰撞形狀的形狀索引。

如果該形狀沒有與任何東西相交，則回傳一個空字典。

\ **注意：**\ 該方法不考慮物件的 ``motion`` 屬性。

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
