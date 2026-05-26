:github_url: hide

.. _class_Joint2D:

Joint2D
=======

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`DampedSpringJoint2D<class_DampedSpringJoint2D>`, :ref:`GrooveJoint2D<class_GrooveJoint2D>`, :ref:`PinJoint2D<class_PinJoint2D>`

Clase base abstracta para todas las articulaciones físicas 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base abstracta para todas las articulaciones en la física 2D. Las articulaciones 2D unen dos cuerpos físicos (:ref:`node_a<class_Joint2D_property_node_a>` y :ref:`node_b<class_Joint2D_property_node_b>`) y aplican una restricción.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`bias<class_Joint2D_property_bias>`                           | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`disable_collision<class_Joint2D_property_disable_collision>` | ``true``         |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_a<class_Joint2D_property_node_a>`                       | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_b<class_Joint2D_property_node_b>`                       | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint2D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Joint2D_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0`` :ref:`🔗<class_Joint2D_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Cuando :ref:`node_a<class_Joint2D_property_node_a>` y :ref:`node_b<class_Joint2D_property_node_b>` se mueven en diferentes direcciones, el :ref:`bias<class_Joint2D_property_bias>` controla la rapidez con que la articulación los devuelve a su posición original. Cuanto más bajo sea el :ref:`bias<class_Joint2D_property_bias>`, más pueden los dos cuerpos tirar de la articulación.

Cuando se establece en ``0``, se utiliza el valor predeterminado de :ref:`ProjectSettings.physics/2d/solver/default_constraint_bias<class_ProjectSettings_property_physics/2d/solver/default_constraint_bias>`.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_disable_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_collision** = ``true`` :ref:`🔗<class_Joint2D_property_disable_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

Si es ``true``, los dos cuerpos unidos no colisionan entre sí.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint2D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

Ruta al primer cuerpo (A) unido a la articulación. El nodo debe heredar :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint2D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

Ruta al segundo cuerpo (B) unido a la articulación. El nodo debe heredar :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Joint2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint2D_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` interno de la articulación del :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
