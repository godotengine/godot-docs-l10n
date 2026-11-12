:github_url: hide

.. _class_PhysicsPointQueryParameters2D:

PhysicsPointQueryParameters2D
=============================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona parámetros para :ref:`PhysicsDirectSpaceState2D.intersect_point()<class_PhysicsDirectSpaceState2D_method_intersect_point>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

By changing various properties of this object, such as the point position, you can configure the parameters for :ref:`PhysicsDirectSpaceState2D.intersect_point()<class_PhysicsDirectSpaceState2D_method_intersect_point>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                              | :ref:`canvas_instance_id<class_PhysicsPointQueryParameters2D_property_canvas_instance_id>`   | ``0``             |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsPointQueryParameters2D_property_collide_with_areas>`   | ``false``         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsPointQueryParameters2D_property_collide_with_bodies>` | ``true``          |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsPointQueryParameters2D_property_collision_mask>`           | ``4294967295``    |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsPointQueryParameters2D_property_exclude>`                         | ``[]``            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`position<class_PhysicsPointQueryParameters2D_property_position>`                       | ``Vector2(0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicsPointQueryParameters2D_property_canvas_instance_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **canvas_instance_id** = ``0`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_canvas_instance_id>`

.. rst-class:: classref-property-setget

- |void| **set_canvas_instance_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_canvas_instance_id**\ (\ )

If different from ``0``, restricts the query to a specific canvas layer specified by its instance ID. See :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

If ``0``, restricts the query to the Viewport's default canvas layer.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si es ``true``, la consulta tendrá en cuenta las :ref:`Area2D<class_Area2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si es ``true``, la consulta tendrá en cuenta las :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

La lista de :ref:`RID<class_RID>` de objetos que se excluirán de las colisiones. Utiliza :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>` para obtener el :ref:`RID<class_RID>` asociado con un nodo derivado de :ref:`CollisionObject2D<class_CollisionObject2D>`.

\ **Nota:** El array devuelto se copia y cualquier cambio en él no actualizará el valor de la propiedad original. Para actualizar el valor, debes modificar el array devuelto y, a continuación, asignarlo de nuevo a la propiedad.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

La posición que se consulta, en coordenadas globales.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
