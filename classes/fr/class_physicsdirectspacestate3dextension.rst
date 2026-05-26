:github_url: hide

.. _class_PhysicsDirectSpaceState3DExtension:

PhysicsDirectSpaceState3DExtension
==================================

**Hérite de :** :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **<** :ref:`Object<class_Object>`

Fournit des méthodes virtuelles qui peuvent être redéfinies pour créer des implémentations personnalisées de :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe étend :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` en fournissant des méthodes virtuelles supplémentaires qui peuvent être redéfinies. Lorsque ces méthodes sont redéfinies, elles seront appelées au lieu des méthodes internes du serveur de physique.

Destinée à être utilisée avec GDExtension pour créer des implémentations personnalisées de :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_cast_motion<class_PhysicsDirectSpaceState3DExtension_private_method__cast_motion>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_closest_safe\: ``float*``, r_closest_unsafe\: ``float*``, r_info\: ``PhysicsServer3DExtensionShapeRestInfo*``\ ) |virtual| |required| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_collide_shape<class_PhysicsDirectSpaceState3DExtension_private_method__collide_shape>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_results\: ``void*``, max_results\: :ref:`int<class_int>`, r_result_count\: ``int32_t*``\ ) |virtual| |required|                   |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`_get_closest_point_to_object_volume<class_PhysicsDirectSpaceState3DExtension_private_method__get_closest_point_to_object_volume>`\ (\ object\: :ref:`RID<class_RID>`, point\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                                            |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`_intersect_point<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_point>`\ (\ position\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_results\: ``PhysicsServer3DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required|                                                                                                                                       |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_intersect_ray<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, hit_from_inside\: :ref:`bool<class_bool>`, hit_back_faces\: :ref:`bool<class_bool>`, pick_ray\: :ref:`bool<class_bool>`, r_result\: ``PhysicsServer3DExtensionRayResult*``\ ) |virtual| |required|                          |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`_intersect_shape<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_shape>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_result_count\: ``PhysicsServer3DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required|          |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_rest_info<class_PhysicsDirectSpaceState3DExtension_private_method__rest_info>`\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_rest_info\: ``PhysicsServer3DExtensionShapeRestInfo*``\ ) |virtual| |required|                                                            |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_body_excluded_from_query<class_PhysicsDirectSpaceState3DExtension_method_is_body_excluded_from_query>`\ (\ body\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PhysicsDirectSpaceState3DExtension_private_method__cast_motion:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_cast_motion**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_closest_safe\: ``float*``, r_closest_unsafe\: ``float*``, r_info\: ``PhysicsServer3DExtensionShapeRestInfo*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__cast_motion>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__collide_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_collide_shape**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_results\: ``void*``, max_results\: :ref:`int<class_int>`, r_result_count\: ``int32_t*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__collide_shape>`

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

:ref:`int<class_int>` **_intersect_point**\ (\ position\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_results\: ``PhysicsServer3DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_point>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__intersect_ray:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_intersect_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, hit_from_inside\: :ref:`bool<class_bool>`, hit_back_faces\: :ref:`bool<class_bool>`, pick_ray\: :ref:`bool<class_bool>`, r_result\: ``PhysicsServer3DExtensionRayResult*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_ray>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__intersect_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_intersect_shape**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_result_count\: ``PhysicsServer3DExtensionShapeResult*``, max_results\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__intersect_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_private_method__rest_info:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_rest_info**\ (\ shape_rid\: :ref:`RID<class_RID>`, transform\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, margin\: :ref:`float<class_float>`, collision_mask\: :ref:`int<class_int>`, collide_with_bodies\: :ref:`bool<class_bool>`, collide_with_areas\: :ref:`bool<class_bool>`, r_rest_info\: ``PhysicsServer3DExtensionShapeRestInfo*``\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_private_method__rest_info>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3DExtension_method_is_body_excluded_from_query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_body_excluded_from_query**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_PhysicsDirectSpaceState3DExtension_method_is_body_excluded_from_query>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
