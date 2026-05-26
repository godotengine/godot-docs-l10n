:github_url: hide

.. _class_CollisionPolygon2D:

CollisionPolygon2D
==================

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo que proporciona una forma de polígono a un padre :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un nodo que proporciona una forma de polígono a un padre :ref:`CollisionObject2D<class_CollisionObject2D>` y permite editarla. El polígono puede ser cóncavo o convexo. Esto puede dar una forma de detección a un :ref:`Area2D<class_Area2D>`, convertir un :ref:`PhysicsBody2D<class_PhysicsBody2D>` en un objeto sólido, o dar una forma hueca a un :ref:`StaticBody2D<class_StaticBody2D>`.

\ **Advertencia:** Un **CollisionPolygon2D** con una escala no uniforme probablemente no se comportará como se espera. Asegúrate de mantener su escala igual en todos los ejes y ajusta su polígono en su lugar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` | :ref:`build_mode<class_CollisionPolygon2D_property_build_mode>`                             | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`disabled<class_CollisionPolygon2D_property_disabled>`                                 | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`one_way_collision<class_CollisionPolygon2D_property_one_way_collision>`               | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`one_way_collision_margin<class_CollisionPolygon2D_property_one_way_collision_margin>` | ``1.0``                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_CollisionPolygon2D_property_polygon>`                                   | ``PackedVector2Array()`` |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_CollisionPolygon2D_BuildMode:

.. rst-class:: classref-enumeration

enum **BuildMode**: :ref:`🔗<enum_CollisionPolygon2D_BuildMode>`

.. _class_CollisionPolygon2D_constant_BUILD_SOLIDS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SOLIDS** = ``0``

Las colisiones incluirán el polígono y su área contenida. En este modo, el nodo tiene el mismo efecto que varios nodos :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, uno para cada forma convexa en la descomposición convexa del polígono (pero sin la sobrecarga de múltiples nodos).

.. _class_CollisionPolygon2D_constant_BUILD_SEGMENTS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SEGMENTS** = ``1``

Las colisiones solo incluirán los bordes del polígono. En este modo, el nodo tiene el mismo efecto que un único :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` hecho de segmentos, con la restricción de que cada segmento (después del primero) comienza donde termina el anterior, y el último termina donde comienza el primero (formando un polígono cerrado pero hueco).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CollisionPolygon2D_property_build_mode:

.. rst-class:: classref-property

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **build_mode** = ``0`` :ref:`🔗<class_CollisionPolygon2D_property_build_mode>`

.. rst-class:: classref-property-setget

- |void| **set_build_mode**\ (\ value\: :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>`\ )
- :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **get_build_mode**\ (\ )

Modo de construcción de colisión.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Si es ``true``, no se detectarán colisiones. Esta propiedad debe cambiarse con :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

Si es ``true``, solo los bordes que miren hacia arriba, con relación a la rotación de **CollisionPolygon2D**, colisionarán con otros objetos.

\ **Nota:** Esta propiedad no tiene ningún efecto si este **CollisionPolygon2D** es hijo de un nodo :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

El margen utilizado para la colisión en un sentido (en píxeles). Valores más altos harán la forma más gruesa, y funcionará mejor para los colisionadores que entran en el polígono a alta velocidad.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

The polygon's list of vertices. Each point will be connected to the next, and the final point will be connected to the first.

\ **Note:** The returned vertices are in the local coordinate space of the given **CollisionPolygon2D**.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
