:github_url: hide

.. _class_ShapeCast2D:

ShapeCast2D
===========

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma 2D que barre una región del espacio para detectar objetos :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Shape casting allows to detect collision objects by sweeping its :ref:`shape<class_ShapeCast2D_property_shape>` along the cast direction determined by :ref:`target_position<class_ShapeCast2D_property_target_position>`. This is similar to :ref:`RayCast2D<class_RayCast2D>`, but it allows for sweeping a region of space, rather than just a straight line. **ShapeCast2D** can detect multiple collision objects. It is useful for things like wide laser beams or snapping a simple shape to a floor.

Immediate collision overlaps can be done with the :ref:`target_position<class_ShapeCast2D_property_target_position>` set to ``Vector2(0, 0)`` and by calling :ref:`force_shapecast_update()<class_ShapeCast2D_method_force_shapecast_update>` within the same physics frame. This helps to overcome some limitations of :ref:`Area2D<class_Area2D>` when used as an instantaneous detection area, as collision information isn't immediately available to it.

\ **Note:** Shape casting is more computationally expensive than ray casting.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_ShapeCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_ShapeCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Array<class_Array>`     | :ref:`collision_result<class_ShapeCast2D_property_collision_result>`       | ``[]``             |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_ShapeCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_ShapeCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`     | :ref:`margin<class_ShapeCast2D_property_margin>`                           | ``0.0``            |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`max_results<class_ShapeCast2D_property_max_results>`                 | ``32``             |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Shape2D<class_Shape2D>` | :ref:`shape<class_ShapeCast2D_property_shape>`                             |                    |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_ShapeCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_ShapeCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_ShapeCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_ShapeCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_shapecast_update<class_ShapeCast2D_method_force_shapecast_update>`\ (\ )                                                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_safe_fraction<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_unsafe_fraction<class_ShapeCast2D_method_get_closest_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_ShapeCast2D_method_get_collider>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_ShapeCast2D_method_get_collider_rid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_ShapeCast2D_method_get_collider_shape>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_ShapeCast2D_method_get_collision_count>`\ (\ ) |const|                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_ShapeCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_ShapeCast2D_method_get_collision_normal>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_ShapeCast2D_method_get_collision_point>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_ShapeCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_ShapeCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_ShapeCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_ShapeCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ShapeCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_ShapeCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si es ``true``, se informará de las colisiones con :ref:`Area2D<class_Area2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_ShapeCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si es ``true``, se informará de las colisiones con :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_ShapeCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The shape's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collision_result:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **collision_result** = ``[]`` :ref:`🔗<class_ShapeCast2D_property_collision_result>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_collision_result**\ (\ )

Devuelve la información completa de la colisión del barrido de colisión. Los datos devueltos son los mismos que en el método :ref:`PhysicsDirectSpaceState2D.get_rest_info()<class_PhysicsDirectSpaceState2D_method_get_rest_info>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_ShapeCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si es ``true``, se informará de las colisiones.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_ShapeCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Si es ``true``, el nodo padre será excluido de la detección de colisiones.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_ShapeCast2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

El margen de colisión de la forma. Un margen más grande ayuda a detectar colisiones de forma más consistente, a costa de la precisión.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_max_results:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_results** = ``32`` :ref:`🔗<class_ShapeCast2D_property_max_results>`

.. rst-class:: classref-property-setget

- |void| **set_max_results**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_results**\ (\ )

El número de intersecciones se puede limitar con este parámetro, para reducir el tiempo de procesamiento.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_ShapeCast2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

La forma que se usará para las consultas de colisión.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_ShapeCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

El punto de destino de la forma, relativo a la :ref:`Node2D.position<class_Node2D_property_position>` de este nodo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ShapeCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_ShapeCast2D_method_add_exception>`

Añade una excepción de colisión para que la forma no reporte colisiones con el nodo especificado.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast2D_method_add_exception_rid>`

Añade una excepción de colisión para que la forma no reporte colisiones con el :ref:`RID<class_RID>` especificado.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_ShapeCast2D_method_clear_exceptions>`

Elimina todas las excepciones de colisión para esta forma.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_force_shapecast_update:

.. rst-class:: classref-method

|void| **force_shapecast_update**\ (\ ) :ref:`🔗<class_ShapeCast2D_method_force_shapecast_update>`

Updates the collision information for the shape immediately, without waiting for the next ``_physics_process`` call. Use this method, for example, when the shape or its parent has changed state.

\ **Note:** Setting :ref:`enabled<class_ShapeCast2D_property_enabled>` to ``true`` is not required for this to work.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_closest_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`

Returns the fraction from this cast's origin to its :ref:`target_position<class_ShapeCast2D_property_target_position>` of how far the shape can move without triggering a collision, as a value between ``0.0`` and ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_closest_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_closest_collision_unsafe_fraction>`

Returns the fraction from this cast's origin to its :ref:`target_position<class_ShapeCast2D_property_target_position>` of how far the shape must move to trigger a collision, as a value between ``0.0`` and ``1.0``.

In ideal conditions this would be the same as :ref:`get_closest_collision_safe_fraction()<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`, however shape casting is calculated in discrete steps, so the precise point of collision can occur between two calculated positions.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider>`

Returns the collided :ref:`Object<class_Object>` of one of the multiple collisions at ``index``, or ``null`` if no object is intersecting the shape (i.e. :ref:`is_colliding()<class_ShapeCast2D_method_is_colliding>` returns ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider_rid>`

Returns the :ref:`RID<class_RID>` of the collided object of one of the multiple collisions at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider_shape>`

Returns the shape ID of the colliding shape of one of the multiple collisions at ``index``, or ``0`` if no object is intersecting the shape (i.e. :ref:`is_colliding()<class_ShapeCast2D_method_is_colliding>` returns ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_count>`

El número de colisiones detectadas en el punto de impacto. Utiliza esto para iterar sobre múltiples colisiones como las proporcionadas por los métodos :ref:`get_collider()<class_ShapeCast2D_method_get_collider>`, :ref:`get_collider_shape()<class_ShapeCast2D_method_get_collider_shape>`, :ref:`get_collision_point()<class_ShapeCast2D_method_get_collision_point>` y :ref:`get_collision_normal()<class_ShapeCast2D_method_get_collision_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_mask_value>`

Devuelve si la capa especificada de :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_normal>`

Devuelve la normal de una de las múltiples colisiones en ``index`` del objeto que se interseca.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_point>`

Devuelve el punto de colisión de una de las múltiples colisiones en ``index`` donde la forma se interseca con el objeto que colisiona.

\ **Nota:** Este punto está en el sistema de coordenadas **global**.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_is_colliding>`

Returns whether any object is intersecting with the shape's vector (considering the vector length).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_ShapeCast2D_method_remove_exception>`

Elimina una excepción de colisión para que la forma vuelva a informar de colisiones con el nodo especificado.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast2D_method_remove_exception_rid>`

Removes a collision exception so the shape does report collisions with the specified :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ShapeCast2D_method_set_collision_mask_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>`, dado un ``layer_number`` entre 1 y 32.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
