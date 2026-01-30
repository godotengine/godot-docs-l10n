:github_url: hide

.. _class_PhysicsDirectSpaceState3DExtension:

PhysicsDirectSpaceState3DExtension
==================================

**繼承：** :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **<** :ref:`Object<class_Object>`

提供能夠覆蓋的虛方法，用於建立自訂的 :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` 實作。

.. rst-class:: classref-introduction-group

說明
----

這個類擴充自 :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`\ ，額外提供了可覆蓋的虛方法。呼叫時會使用這些覆蓋後的方法代替物理伺服器中的內部方法。

旨在用於 GDExtension，用於建立 :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` 的自訂實作。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_cast_motion<class_PhysicsDirectSpaceState3DExtension_private_method__cast_motion>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, closest_safe\: ``float*``, closest_unsafe\: ``float*``, info\: ``PhysicsServer3DExtensionShapeRestInfo*``\ ) |virtual| |required| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_collide_shape<class_PhysicsDirectSpaceState3DExtension_private_method__collide_shape>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, results\: ``void*``, max_results\: :ref:`int<class_int>`, result_count\: ``int32_t*``\ ) |virtual| |required|                 |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`_get_closest_point_to_object_volume<class_PhysicsDirectSpaceState3DExtension_private_method__get_closest_point_to_object_volume>`\ (\ object\: :ref:`RID<class_RID>`, point\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                                      |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`_intersect_point<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_point>`\ (\ position\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, results\: ``PhysicsServer3DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required|                                                                                                                                   |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_intersect_ray<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, hit_from_inside\: :ref:`bool<class_bool>`, hit_back_faces\: :ref:`bool<class_bool>`, pick_ray\: :ref:`bool<class_bool>`, result\: ``PhysicsServer3DExtensionRayResult*``\ ) |virtual| |required|                      |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`_intersect_shape<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_shape>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, result_count\: ``PhysicsServer3DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required|      |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_rest_info<class_PhysicsDirectSpaceState3DExtension_private_method__rest_info>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, rest_info\: ``PhysicsServer3DExtensionShapeRestInfo*``\ ) |virtual| |required|                                                        |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_body_excluded_from_query<class_PhysicsDirectSpaceState3DExtension_method_is_body_excluded_from_query>`\ (\ body\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                            |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsDirectSpaceState3DExtension_private_method__cast_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_cast_motion**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, closest_safe\: ``float*``, closest_unsafe\: ``float*``, info\: ``PhysicsServer3DExtensionShapeRestInfo*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__cast_motion>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__collide_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_collide_shape**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, results\: ``void*``, max_results\: :ref:`int<class_int>`, result_count\: ``int32_t*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__collide_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__get_closest_point_to_object_volume:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_closest_point_to_object_volume**\ (\ object\: :ref:`RID<class_RID>`, point\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__get_closest_point_to_object_volume>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__intersect_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_point**\ (\ position\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, results\: ``PhysicsServer3DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_point>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__intersect_ray:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_intersect_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, hit_from_inside\: :ref:`bool<class_bool>`, hit_back_faces\: :ref:`bool<class_bool>`, pick_ray\: :ref:`bool<class_bool>`, result\: ``PhysicsServer3DExtensionRayResult*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_ray>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__intersect_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_shape**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, result_count\: ``PhysicsServer3DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__rest_info:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_rest_info**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, rest_info\: ``PhysicsServer3DExtensionShapeRestInfo*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__rest_info>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_method_is_body_excluded_from_query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_body_excluded_from_query**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_method_is_body_excluded_from_query>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
