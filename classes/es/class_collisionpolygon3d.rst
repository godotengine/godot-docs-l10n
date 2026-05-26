:github_url: hide

.. _class_CollisionPolygon3D:

CollisionPolygon3D
==================

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo que proporciona una forma de polígono engrosada (un prisma) a un padre :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un nodo que proporciona una forma de polígono engrosada (un prisma) a un padre :ref:`CollisionObject3D<class_CollisionObject3D>` y permite editarla. El polígono puede ser cóncavo o convexo. Esto puede dar una forma de detección a un :ref:`Area3D<class_Area3D>` o convertir un :ref:`PhysicsBody3D<class_PhysicsBody3D>` en un objeto sólido.

\ **Advertencia:** Un :ref:`CollisionShape3D<class_CollisionShape3D>` con una escala no uniforme probablemente no se comportará como se espera. Asegúrate de mantener su escala igual en todos los ejes y ajusta su recurso de forma (shape resource) en su lugar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`debug_color<class_CollisionPolygon3D_property_debug_color>` | ``Color(0, 0, 0, 0)``    |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`debug_fill<class_CollisionPolygon3D_property_debug_fill>`   | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`depth<class_CollisionPolygon3D_property_depth>`             | ``1.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`disabled<class_CollisionPolygon3D_property_disabled>`       | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`margin<class_CollisionPolygon3D_property_margin>`           | ``0.04``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_CollisionPolygon3D_property_polygon>`         | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CollisionPolygon3D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionPolygon3D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

El color de la forma de colisión (collision shape) que se muestra en el editor, o en el proyecto en ejecución si la opción **Depuración > Formas de colisión visibles** está marcada en la parte superior del editor.

\ **Nota:** El valor por defecto es :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. El valor ``Color(0, 0, 0, 0)`` documentado aquí es un marcador de posición (placeholder) y no el color de depuración real por defecto.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_debug_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_fill** = ``true`` :ref:`🔗<class_CollisionPolygon3D_property_debug_fill>`

.. rst-class:: classref-property-setget

- |void| **set_enable_debug_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_debug_fill**\ (\ )

Si es ``true``, cuando se muestre la forma, mostrará un color de relleno sólido además de su estructura alámbrica.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CollisionPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Longitud en la que la colisión resultante se extiende en cualquier dirección perpendicular a su polígono 2D.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon3D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Si es ``true``, no se producirá ninguna colisión. Esta propiedad debe cambiarse con :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_CollisionPolygon3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

El margen de colisión para el :ref:`Shape3D<class_Shape3D>` generado. Véase :ref:`Shape3D.margin<class_Shape3D_property_margin>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Array de vértices que definen el polígono 2D en el plano XY local.

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
