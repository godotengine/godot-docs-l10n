:github_url: hide

.. _class_PhysicsRayQueryParameters3D:

PhysicsRayQueryParameters3D
===========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona parámetros para :ref:`PhysicsDirectSpaceState3D.intersect_ray()<class_PhysicsDirectSpaceState3D_method_intersect_ray>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

By changing various properties of this object, such as the ray position, you can configure the parameters for :ref:`PhysicsDirectSpaceState3D.intersect_ray()<class_PhysicsDirectSpaceState3D_method_intersect_ray>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsRayQueryParameters3D_property_collide_with_areas>`   | ``false``            |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsRayQueryParameters3D_property_collide_with_bodies>` | ``true``             |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsRayQueryParameters3D_property_collision_mask>`           | ``4294967295``       |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsRayQueryParameters3D_property_exclude>`                         | ``[]``               |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                      | :ref:`from<class_PhysicsRayQueryParameters3D_property_from>`                               | ``Vector3(0, 0, 0)`` |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                            | :ref:`hit_back_faces<class_PhysicsRayQueryParameters3D_property_hit_back_faces>`           | ``true``             |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                            | :ref:`hit_from_inside<class_PhysicsRayQueryParameters3D_property_hit_from_inside>`         | ``false``            |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                      | :ref:`to<class_PhysicsRayQueryParameters3D_property_to>`                                   | ``Vector3(0, 0, 0)`` |
   +----------------------------------------------------+--------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>` | :ref:`create<class_PhysicsRayQueryParameters3D_method_create>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>` = 4294967295, exclude\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] = []\ ) |static| |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicsRayQueryParameters3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsRayQueryParameters3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si es ``true``, la consulta tendrá en cuenta las :ref:`Area3D<class_Area3D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsRayQueryParameters3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si es ``true``, la consulta tendrá en cuenta los :ref:`PhysicsBody3D<class_PhysicsBody3D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsRayQueryParameters3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters3D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsRayQueryParameters3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

La lista de :ref:`RID<class_RID>` de objetos que se excluirán de las colisiones. Utiliza :ref:`CollisionObject3D.get_rid()<class_CollisionObject3D_method_get_rid>` para obtener el :ref:`RID<class_RID>` asociado con un nodo derivado de :ref:`CollisionObject3D<class_CollisionObject3D>`.

\ **Nota:** El array devuelto se copia y cualquier cambio en él no actualizará el valor de la propiedad original. Para actualizar el valor, debes modificar el array devuelto y, a continuación, asignarlo de nuevo a la propiedad.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters3D_property_from:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **from** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsRayQueryParameters3D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_from**\ (\ )

El punto de inicio del rayo que se está consultando, en coordenadas globales.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters3D_property_hit_back_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_back_faces** = ``true`` :ref:`🔗<class_PhysicsRayQueryParameters3D_property_hit_back_faces>`

.. rst-class:: classref-property-setget

- |void| **set_hit_back_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_back_faces_enabled**\ (\ )

If ``true``, the query will hit back faces with concave polygon shapes with back face enabled or heightmap shapes.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters3D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_PhysicsRayQueryParameters3D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

Si es ``true``, la consulta detectará un impacto al comenzar dentro de las formas. En este caso, la normal de colisión será ``Vector3(0, 0, 0)``. No afecta a las formas de polígono cóncavo ni a las formas de mapa de altura.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsRayQueryParameters3D_property_to:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **to** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsRayQueryParameters3D_property_to>`

.. rst-class:: classref-property-setget

- |void| **set_to**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_to**\ (\ )

El punto final del rayo que se está consultando, en coordenadas globales.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicsRayQueryParameters3D_method_create:

.. rst-class:: classref-method

:ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>` **create**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, collision_mask\: :ref:`int<class_int>` = 4294967295, exclude\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] = []\ ) |static| :ref:`🔗<class_PhysicsRayQueryParameters3D_method_create>`

Devuelve un nuevo objeto **PhysicsRayQueryParameters3D** preconfigurado. Úsalo para crear rápidamente parámetros de consulta utilizando las opciones más comunes.

::

    var query = PhysicsRayQueryParameters3D.create(position, position + Vector3(0, -10, 0))
    var collision = get_world_3d().direct_space_state.intersect_ray(query)

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
