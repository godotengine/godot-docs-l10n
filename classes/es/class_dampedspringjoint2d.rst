:github_url: hide

.. _class_DampedSpringJoint2D:

DampedSpringJoint2D
===================

**Hereda:** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una unión física que conecta dos cuerpos físicos 2D con una fuerza similar a la de un resorte.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una articulación física que conecta dos cuerpos físicos 2D con una fuerza similar a un resorte. Se comporta como un resorte que siempre quiere estirarse a una longitud dada.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`damping<class_DampedSpringJoint2D_property_damping>`         | ``1.0``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`length<class_DampedSpringJoint2D_property_length>`           | ``50.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`rest_length<class_DampedSpringJoint2D_property_rest_length>` | ``0.0``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`stiffness<class_DampedSpringJoint2D_property_stiffness>`     | ``20.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_DampedSpringJoint2D_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``1.0`` :ref:`🔗<class_DampedSpringJoint2D_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

La relación de amortiguación (damping ratio) de la unión de resorte (spring joint). Un valor entre ``0`` y ``1``. Cuando los dos cuerpos se mueven en direcciones diferentes, el sistema intenta alinearlos de nuevo con el eje del resorte. Un valor alto de :ref:`damping<class_DampedSpringJoint2D_property_damping>` obliga a los cuerpos conectados a alinearse más rápido.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``50.0`` :ref:`🔗<class_DampedSpringJoint2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

La longitud máxima de la articulación del resorte. Los dos cuerpos unidos no pueden estirarse más allá de este valor.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_rest_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **rest_length** = ``0.0`` :ref:`🔗<class_DampedSpringJoint2D_property_rest_length>`

.. rst-class:: classref-property-setget

- |void| **set_rest_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rest_length**\ (\ )

Cuando los cuerpos unidos a la articulación de resorte se mueven, se estiran o se aplastan. La articulación siempre trata de redimensionarse hacia esta longitud.

.. rst-class:: classref-item-separator

----

.. _class_DampedSpringJoint2D_property_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **stiffness** = ``20.0`` :ref:`🔗<class_DampedSpringJoint2D_property_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stiffness**\ (\ )

Cuanto más alto sea el valor, menos los cuerpos adheridos a la articulación la deformarán. La articulación aplica una fuerza opuesta a los cuerpos, producto de la rigidez multiplicada por la diferencia de tamaño de su longitud en reposo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
