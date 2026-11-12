:github_url: hide

.. _class_PhysicsShapeQueryParameters2D:

PhysicsShapeQueryParameters2D
=============================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Provides parameters for :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`'s methods.

.. rst-class:: classref-introduction-group

Descripción
----------------------

By changing various properties of this object, such as the shape, you can configure the parameters for :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`'s methods.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsShapeQueryParameters2D_property_collide_with_areas>`   | ``false``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsShapeQueryParameters2D_property_collide_with_bodies>` | ``true``                          |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsShapeQueryParameters2D_property_collision_mask>`           | ``4294967295``                    |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsShapeQueryParameters2D_property_exclude>`                         | ``[]``                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsShapeQueryParameters2D_property_margin>`                           | ``0.0``                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`motion<class_PhysicsShapeQueryParameters2D_property_motion>`                           | ``Vector2(0, 0)``                 |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Resource<class_Resource>`                    | :ref:`shape<class_PhysicsShapeQueryParameters2D_property_shape>`                             |                                   |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`RID<class_RID>`                              | :ref:`shape_rid<class_PhysicsShapeQueryParameters2D_property_shape_rid>`                     | ``RID()``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>`              | :ref:`transform<class_PhysicsShapeQueryParameters2D_property_transform>`                     | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicsShapeQueryParameters2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si es ``true``, la consulta tendrá en cuenta las :ref:`Area2D<class_Area2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si es ``true``, la consulta tendrá en cuenta las :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

La lista de :ref:`RID<class_RID>` de objetos que se excluirán de las colisiones. Utiliza :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>` para obtener el :ref:`RID<class_RID>` asociado con un nodo derivado de :ref:`CollisionObject2D<class_CollisionObject2D>`.

\ **Nota:** El array devuelto se copia y cualquier cambio en él no actualizará el valor de la propiedad original. Para actualizar el valor, debes modificar el array devuelto y, a continuación, asignarlo de nuevo a la propiedad.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

El margen de colisión de la forma.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_motion:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion**\ (\ )

El movimiento de la forma que se ha encolado.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_shape:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **shape** :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_shape**\ (\ )

The :ref:`Shape2D<class_Shape2D>` that will be used for collision/intersection queries. This stores the actual reference which avoids the shape to be released while being used for queries, so always prefer using this over :ref:`shape_rid<class_PhysicsShapeQueryParameters2D_property_shape_rid>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_shape_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **shape_rid** = ``RID()`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_shape_rid>`

.. rst-class:: classref-property-setget

- |void| **set_shape_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_shape_rid**\ (\ )

The queried shape's :ref:`RID<class_RID>` that will be used for collision/intersection queries. Use this over :ref:`shape<class_PhysicsShapeQueryParameters2D_property_shape>` if you want to optimize for performance using the Servers API:


.. tabs::

 .. code-tab:: gdscript

    var shape_rid = PhysicsServer2D.circle_shape_create()
    var radius = 64
    PhysicsServer2D.shape_set_data(shape_rid, radius)

    var params = PhysicsShapeQueryParameters2D.new()
    params.shape_rid = shape_rid

    # Execute physics queries here...

    # Release the shape when done with physics queries.
    PhysicsServer2D.free_rid(shape_rid)

 .. code-tab:: csharp

    RID shapeRid = PhysicsServer2D.CircleShapeCreate();
    int radius = 64;
    PhysicsServer2D.ShapeSetData(shapeRid, radius);

    var params = new PhysicsShapeQueryParameters2D();
    params.ShapeRid = shapeRid;

    // Execute physics queries here...

    // Release the shape when done with physics queries.
    PhysicsServer2D.FreeRid(shapeRid);



.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

La matriz de transformación de la forma en cuestión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
