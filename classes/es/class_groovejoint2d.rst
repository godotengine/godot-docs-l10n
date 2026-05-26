:github_url: hide

.. _class_GrooveJoint2D:

GrooveJoint2D
=============

**Hereda:** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una unión física que restringe el movimiento de dos cuerpos físicos 2D a un eje fijo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una unión física que restringe el movimiento de dos cuerpos físicos 2D a un eje fijo. Por ejemplo, un :ref:`StaticBody2D<class_StaticBody2D>` que representa una base de pistón puede adjuntarse a un :ref:`RigidBody2D<class_RigidBody2D>` que representa la cabeza del pistón, moviéndose hacia arriba y abajo.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`initial_offset<class_GrooveJoint2D_property_initial_offset>` | ``25.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`length<class_GrooveJoint2D_property_length>`                 | ``50.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GrooveJoint2D_property_initial_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_offset** = ``25.0`` :ref:`🔗<class_GrooveJoint2D_property_initial_offset>`

.. rst-class:: classref-property-setget

- |void| **set_initial_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_initial_offset**\ (\ )

La posición de anclaje inicial del cuerpo B definida por el origen de la junta y un desplazamiento local :ref:`initial_offset<class_GrooveJoint2D_property_initial_offset>` a lo largo del eje Y de la junta (a lo largo de la ranura).

.. rst-class:: classref-item-separator

----

.. _class_GrooveJoint2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``50.0`` :ref:`🔗<class_GrooveJoint2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

La longitud del surco. La ranura va desde el origen de la unión hacia :ref:`length<class_GrooveJoint2D_property_length>` a lo largo del eje Y local de la unión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
