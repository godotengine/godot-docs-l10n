:github_url: hide

.. _class_Shape2D:

Shape2D
=======

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CapsuleShape2D<class_CapsuleShape2D>`, :ref:`CircleShape2D<class_CircleShape2D>`, :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, :ref:`RectangleShape2D<class_RectangleShape2D>`, :ref:`SegmentShape2D<class_SegmentShape2D>`, :ref:`SeparationRayShape2D<class_SeparationRayShape2D>`, :ref:`WorldBoundaryShape2D<class_WorldBoundaryShape2D>`

用於物理碰撞的 2D 形狀的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

所有 2D 形狀的抽象基底類別，針對物理使用設計。

\ **性能：**\ 對圖元形狀進行碰撞偵測很快，尤其是 :ref:`CircleShape2D<class_CircleShape2D>`\ 。\ :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` 較慢，\ :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` 最慢。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape2D_property_custom_solver_bias>` | ``0.0`` |
   +---------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide<class_Shape2D_method_collide>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                                                       |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_and_get_contacts<class_Shape2D_method_collide_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                                     |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`collide_with_motion<class_Shape2D_method_collide_with_motion>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`collide_with_motion_and_get_contacts<class_Shape2D_method_collide_with_motion_and_get_contacts>`\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`draw<class_Shape2D_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ )                                                                                                                                                                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`get_rect<class_Shape2D_method_get_rect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Shape2D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape2D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

該形狀的的自訂求解器偏差。定義了強制接觸分離涉及到這個形狀時，物體會做出多大的反應。

設為 ``0.0`` 時，使用的預設值為 :ref:`ProjectSettings.physics/2d/solver/default_contact_bias<class_ProjectSettings_property_physics/2d/solver/default_contact_bias>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Shape2D_method_collide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide>`

如果該形狀與另一個形狀發生碰撞，返回 ``true``\ 。

本方法需要該形狀的變換矩陣（\ ``local_xform``\ ）、要檢查與該形狀碰撞的形狀（\ ``with_shape``\ ）、以及那個形狀的變換矩陣（\ ``shape_xform``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Shape2D_method_collide_and_get_contacts>`

返回該形狀與另一形狀接觸的接觸點對的列表。

如果不存在碰撞，則返回的列表為空。否則，返回的列表中包含的是成對排列的接觸點，在該形狀邊界上的點和 ``with_shape`` 邊界上的點之間交替排列。

有了碰撞對 A 和 B，就可以通過 ``(B - A).normalized()`` 計算碰撞法線，通過 ``(B - A).length()`` 計算碰撞深度。這些資訊通常用於分離形狀，在碰撞求解器中比較常見。

這個方法需要用到該形狀的變換矩陣（\ ``local_xform``\ ）、要檢查與該形狀是否碰撞的形狀（\ ``with_shape``\ ）、以及那個形狀的變換矩陣（\ ``shape_xform``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_with_motion**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion>`

返回套用給定的運動後，這個形狀是否會與另一個形狀發生碰撞。

這個方法需要這個形狀的變換矩陣（\ ``local_xform``\ ），要在這個形狀上測試的運動（\ ``local_motion``\ ），檢查碰撞的形狀（\ ``with_shape``\ ），那個形狀的變換矩陣（\ ``shape_xform``\ ），以及用於測試其他物體的運動（\ ``shape_motion``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_collide_with_motion_and_get_contacts:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **collide_with_motion_and_get_contacts**\ (\ local_xform\: :ref:`Transform2D<class_Transform2D>`, local_motion\: :ref:`Vector2<class_Vector2>`, with_shape\: :ref:`Shape2D<class_Shape2D>`, shape_xform\: :ref:`Transform2D<class_Transform2D>`, shape_motion\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Shape2D_method_collide_with_motion_and_get_contacts>`

返回如果套用了給定的移動後，該形狀將接觸另一形狀的接觸點對列表。

如果不存在碰撞，則返回的列表為空。否則，返回的列表中包含的是成對排列的接觸點，在該形狀邊界上的點和 ``with_shape`` 邊界上的點之間會交替出現。

有了碰撞對 A 和 B，就可以通過 ``(B - A).normalized()`` 計算碰撞法線，通過 ``(B - A).length()`` 計算碰撞深度。這些資訊通常用於分離形狀，在碰撞求解器中比較常見。

本方法需要用到該形狀的變換矩陣（\ ``local_xform``\ ）、要在該形狀上測試的運動（\ ``local_motion``\ ）、要檢查與該形狀是否碰撞的形狀（\ ``with_shape``\ ）、那個形狀的變換矩陣（\ ``shape_xform``\ ）、以及要在其他形狀上測試的運動（\ ``shape_motion``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Shape2D_method_draw>`

用 :ref:`RenderingServer<class_RenderingServer>` API 在 :ref:`CanvasItem<class_CanvasItem>` 上繪製實體形狀，並填充指定的顏色 ``color``\ 。確切的繪製方法是每個形狀特有的，無法配置。

.. rst-class:: classref-item-separator

----

.. _class_Shape2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Shape2D_method_get_rect>`

返回代表形狀邊界的 :ref:`Rect2<class_Rect2>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
