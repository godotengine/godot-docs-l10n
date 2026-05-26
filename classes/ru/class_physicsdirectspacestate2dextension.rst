:github_url: hide

.. _class_PhysicsDirectSpaceState2DExtension:

PhysicsDirectSpaceState2DExtension
==================================

**Наследует:** :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **<** :ref:`Object<class_Object>`

Предоставляет виртуальные методы, которые можно переопределить для создания пользовательских реализаций :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс расширяет :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`, предоставляя дополнительные виртуальные методы, которые можно переопределить. Когда эти методы переопределяются, они будут вызываться вместо внутренних методов физического сервера.

Предназначено для использования с GDExtension для создания пользовательских реализаций :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_cast_motion<class_PhysicsDirectSpaceState2DExtension_private_method__cast_motion>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_closest_safe\: ``float*``, r_closest_unsafe\: ``float*``\ ) |virtual| |required|                                       |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_collide_shape<class_PhysicsDirectSpaceState2DExtension_private_method__collide_shape>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_results\: ``void*``, max_results\: :ref:`int<class_int>`, r_result_count\: ``int32_t*``\ ) |virtual| |required|    |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`_intersect_point<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, canvas_instance_id\: :ref:`int<class_int>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_results\: ``PhysicsServer2DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required|                                                                            |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_intersect_ray<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_ray>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, hit_from_inside\: :ref:`bool<class_bool>`, r_result\: ``PhysicsServer2DExtensionRayResult*``\ ) |virtual| |required|                                                                                         |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`_intersect_shape<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_shape>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_result\: ``PhysicsServer2DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_rest_info<class_PhysicsDirectSpaceState2DExtension_private_method__rest_info>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_rest_info\: ``PhysicsServer2DExtensionShapeRestInfo*``\ ) |virtual| |required|                                             |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_body_excluded_from_query<class_PhysicsDirectSpaceState2DExtension_method_is_body_excluded_from_query>`\ (\ body\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PhysicsDirectSpaceState2DExtension_private_method__cast_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_cast_motion**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_closest_safe\: ``float*``, r_closest_unsafe\: ``float*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__cast_motion>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__collide_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_collide_shape**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_results\: ``void*``, max_results\: :ref:`int<class_int>`, r_result_count\: ``int32_t*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__collide_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__intersect_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, canvas_instance_id\: :ref:`int<class_int>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_results\: ``PhysicsServer2DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_point>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__intersect_ray:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_intersect_ray**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, hit_from_inside\: :ref:`bool<class_bool>`, r_result\: ``PhysicsServer2DExtensionRayResult*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_ray>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__intersect_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_shape**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_result\: ``PhysicsServer2DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__intersect_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_private_method__rest_info:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_rest_info**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_rest_info\: ``PhysicsServer2DExtensionShapeRestInfo*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_private_method__rest_info>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2DExtension_method_is_body_excluded_from_query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_body_excluded_from_query**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_PhysicsDirectSpaceState2DExtension_method_is_body_excluded_from_query>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
