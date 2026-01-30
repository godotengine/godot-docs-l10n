:github_url: hide

.. _class_PhysicsDirectSpaceState2DExtension:

PhysicsDirectSpaceState2DExtension
==================================

**继承：** :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **<** :ref:`Object<class_Object>`

提供能够覆盖的虚方法，用于创建自定义的 :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` 实现。

.. rst-class:: classref-introduction-group

描述
----

这个类扩展自 :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`\ ，提供了额外可覆盖的虚方法。覆盖这些方法后，就会代替物理服务器的内部方法进行调用。

旨在通过 GDExtension 创建自定义的 :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` 实现使用。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_cast_motion<class_PhysicsDirectSpaceState2DExtension_private_method__cast_motion>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, closest_safe\: ``float*``, closest_unsafe\: ``float*``\ ) |virtual| |required|                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_collide_shape<class_PhysicsDirectSpaceState2DExtension_private_method__collide_shape>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, results\: ``void*``, max_results\: :ref:`int<class_int>`, result_count\: ``int32_t*``\ ) |virtual| |required|      |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`_intersect_point<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, canvas_instance_id\: :ref:`int<class_int>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, results\: ``PhysicsServer2DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required|                                                                            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_intersect_ray<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_ray>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, hit_from_inside\: :ref:`bool<class_bool>`, result\: ``PhysicsServer2DExtensionRayResult*``\ ) |virtual| |required|                                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`_intersect_shape<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_shape>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, result\: ``PhysicsServer2DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_rest_info<class_PhysicsDirectSpaceState2DExtension_private_method__rest_info>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, rest_info\: ``PhysicsServer2DExtensionShapeRestInfo*``\ ) |virtual| |required|                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_body_excluded_from_query<class_PhysicsDirectSpaceState2DExtension_method_is_body_excluded_from_query>`\ (\ body\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                 |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsDirectSpaceState2DExtension_private_method__cast_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_cast_motion**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, closest_safe\: ``float*``, closest_unsafe\: ``float*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__cast_motion>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__collide_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_collide_shape**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, results\: ``void*``, max_results\: :ref:`int<class_int>`, result_count\: ``int32_t*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__collide_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__intersect_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, canvas_instance_id\: :ref:`int<class_int>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, results\: ``PhysicsServer2DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_point>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__intersect_ray:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_intersect_ray**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, hit_from_inside\: :ref:`bool<class_bool>`, result\: ``PhysicsServer2DExtensionRayResult*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_ray>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__intersect_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_shape**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, result\: ``PhysicsServer2DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__rest_info:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_rest_info**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, rest_info\: ``PhysicsServer2DExtensionShapeRestInfo*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__rest_info>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_method_is_body_excluded_from_query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_body_excluded_from_query**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_method_is_body_excluded_from_query>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
