:github_url: hide

.. _class_PhysicsDirectSpaceState2DExtension:

PhysicsDirectSpaceState2DExtension
==================================

**Hereda:** :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **<** :ref:`Object<class_Object>`

Proporciona métodos virtuales que pueden ser sobrescritos para crear implementaciones personalizadas de :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase extiende :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` al proporcionar métodos virtuales adicionales que pueden ser sobrescritos. Cuando estos métodos se sobrescriben, se llamarán en lugar de los métodos internos del servidor de física.

Pensado para su uso con GDExtension para crear implementaciones personalizadas de :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
