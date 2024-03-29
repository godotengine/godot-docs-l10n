:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/4.2/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/4.2/doc/classes/PhysicsDirectSpaceState3DExtension.xml.

.. _class_PhysicsDirectSpaceState3DExtension:

PhysicsDirectSpaceState3DExtension
==================================

**继承：** :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **<** :ref:`Object<class_Object>`

提供能够覆盖的虚方法，用于创建自定义的 :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` 实现。

.. rst-class:: classref-introduction-group

描述
----

这个类扩展自 :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`\ ，额外提供了可覆盖的虚方法。调用时会使用这些覆盖后的方法代替物理服务器中的内部方法。

旨在用于 GDExtension，用于创建 :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` 的自定义实现。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_cast_motion<class_PhysicsDirectSpaceState3DExtension_private_method__cast_motion>` **(** :ref:`RID<class_RID>` shape_rid, :ref:`Transform3D<class_Transform3D>` transform, :ref:`Vector3<class_Vector3>` motion, :ref:`float<class_float>` margin, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, float* closest_safe, float* closest_unsafe, PhysicsServer3DExtensionShapeRestInfo* info **)** |virtual|      |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_collide_shape<class_PhysicsDirectSpaceState3DExtension_private_method__collide_shape>` **(** :ref:`RID<class_RID>` shape_rid, :ref:`Transform3D<class_Transform3D>` transform, :ref:`Vector3<class_Vector3>` motion, :ref:`float<class_float>` margin, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, void* results, :ref:`int<class_int>` max_results, int32_t* result_count **)** |virtual|                  |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`_get_closest_point_to_object_volume<class_PhysicsDirectSpaceState3DExtension_private_method__get_closest_point_to_object_volume>` **(** :ref:`RID<class_RID>` object, :ref:`Vector3<class_Vector3>` point **)** |virtual| |const|                                                                                                                                                                                                                                                               |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`_intersect_point<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_point>` **(** :ref:`Vector3<class_Vector3>` position, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, PhysicsServer3DExtensionShapeResult* results, :ref:`int<class_int>` max_results **)** |virtual|                                                                                                                        |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_intersect_ray<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_ray>` **(** :ref:`Vector3<class_Vector3>` from, :ref:`Vector3<class_Vector3>` to, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, :ref:`bool<class_bool>` hit_from_inside, :ref:`bool<class_bool>` hit_back_faces, :ref:`bool<class_bool>` pick_ray, PhysicsServer3DExtensionRayResult* result **)** |virtual|                 |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`_intersect_shape<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_shape>` **(** :ref:`RID<class_RID>` shape_rid, :ref:`Transform3D<class_Transform3D>` transform, :ref:`Vector3<class_Vector3>` motion, :ref:`float<class_float>` margin, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, PhysicsServer3DExtensionShapeResult* result_count, :ref:`int<class_int>` max_results **)** |virtual| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_rest_info<class_PhysicsDirectSpaceState3DExtension_private_method__rest_info>` **(** :ref:`RID<class_RID>` shape_rid, :ref:`Transform3D<class_Transform3D>` transform, :ref:`Vector3<class_Vector3>` motion, :ref:`float<class_float>` margin, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, PhysicsServer3DExtensionShapeRestInfo* rest_info **)** |virtual|                                                 |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_body_excluded_from_query<class_PhysicsDirectSpaceState3DExtension_method_is_body_excluded_from_query>` **(** :ref:`RID<class_RID>` body **)** |const|                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsDirectSpaceState3DExtension_private_method__cast_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_cast_motion** **(** :ref:`RID<class_RID>` shape_rid, :ref:`Transform3D<class_Transform3D>` transform, :ref:`Vector3<class_Vector3>` motion, :ref:`float<class_float>` margin, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, float* closest_safe, float* closest_unsafe, PhysicsServer3DExtensionShapeRestInfo* info **)** |virtual|

.. container:: contribute

	目前没有这个方法的描述。请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ ！

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__collide_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_collide_shape** **(** :ref:`RID<class_RID>` shape_rid, :ref:`Transform3D<class_Transform3D>` transform, :ref:`Vector3<class_Vector3>` motion, :ref:`float<class_float>` margin, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, void* results, :ref:`int<class_int>` max_results, int32_t* result_count **)** |virtual|

.. container:: contribute

	目前没有这个方法的描述。请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ ！

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__get_closest_point_to_object_volume:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_closest_point_to_object_volume** **(** :ref:`RID<class_RID>` object, :ref:`Vector3<class_Vector3>` point **)** |virtual| |const|

.. container:: contribute

	目前没有这个方法的描述。请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ ！

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__intersect_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_point** **(** :ref:`Vector3<class_Vector3>` position, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, PhysicsServer3DExtensionShapeResult* results, :ref:`int<class_int>` max_results **)** |virtual|

.. container:: contribute

	目前没有这个方法的描述。请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ ！

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__intersect_ray:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_intersect_ray** **(** :ref:`Vector3<class_Vector3>` from, :ref:`Vector3<class_Vector3>` to, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, :ref:`bool<class_bool>` hit_from_inside, :ref:`bool<class_bool>` hit_back_faces, :ref:`bool<class_bool>` pick_ray, PhysicsServer3DExtensionRayResult* result **)** |virtual|

.. container:: contribute

	目前没有这个方法的描述。请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ ！

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__intersect_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_shape** **(** :ref:`RID<class_RID>` shape_rid, :ref:`Transform3D<class_Transform3D>` transform, :ref:`Vector3<class_Vector3>` motion, :ref:`float<class_float>` margin, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, PhysicsServer3DExtensionShapeResult* result_count, :ref:`int<class_int>` max_results **)** |virtual|

.. container:: contribute

	目前没有这个方法的描述。请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ ！

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__rest_info:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_rest_info** **(** :ref:`RID<class_RID>` shape_rid, :ref:`Transform3D<class_Transform3D>` transform, :ref:`Vector3<class_Vector3>` motion, :ref:`float<class_float>` margin, :ref:`int<class_int>` collision_mask, :ref:`bool<class_bool>` collide_with_bodies, :ref:`bool<class_bool>` collide_with_areas, PhysicsServer3DExtensionShapeRestInfo* rest_info **)** |virtual|

.. container:: contribute

	目前没有这个方法的描述。请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ ！

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_method_is_body_excluded_from_query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_body_excluded_from_query** **(** :ref:`RID<class_RID>` body **)** |const|

.. container:: contribute

	目前没有这个方法的描述。请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ ！

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法没有副作用。不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，所以可以直接使用类名调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效操作符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列标志构成的位掩码整数。)`
