:github_url: hide

.. _class_Joint3D:

Joint3D
=======

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`ConeTwistJoint3D<class_ConeTwistJoint3D>`, :ref:`Generic6DOFJoint3D<class_Generic6DOFJoint3D>`, :ref:`HingeJoint3D<class_HingeJoint3D>`, :ref:`PinJoint3D<class_PinJoint3D>`, :ref:`SliderJoint3D<class_SliderJoint3D>`

Clase base abstracta para todas las articulaciones físicas 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base abstracta para todas las articulaciones en física 3D. Las articulaciones 3D unen dos cuerpos físicos (:ref:`node_a<class_Joint3D_property_node_a>` y :ref:`node_b<class_Joint3D_property_node_b>`) y aplican una restricción. Si solo se define un cuerpo, se asocia a un :ref:`StaticBody3D<class_StaticBody3D>` fijo sin formas de colisión.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Ciudad de Camioness en 3D <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`exclude_nodes_from_collision<class_Joint3D_property_exclude_nodes_from_collision>` | ``true``         |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_a<class_Joint3D_property_node_a>`                                             | ``NodePath("")`` |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_b<class_Joint3D_property_node_b>`                                             | ``NodePath("")`` |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`solver_priority<class_Joint3D_property_solver_priority>`                           | ``1``            |
   +---------------------------------+------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint3D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Joint3D_property_exclude_nodes_from_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_nodes_from_collision** = ``true`` :ref:`🔗<class_Joint3D_property_exclude_nodes_from_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

Si es ``true``, los dos cuerpos unidos no colisionan entre sí.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

Ruta al primer nodo (A) unido a la articulación. El nodo debe heredar :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Si se deja vacío y :ref:`node_b<class_Joint3D_property_node_b>` está establecido, el cuerpo se une a un :ref:`StaticBody3D<class_StaticBody3D>` fijo sin formas de colisión.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

Ruta al segundo nodo (B) unido a la articulación. El nodo debe heredar :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Si se deja vacío y :ref:`node_a<class_Joint3D_property_node_a>` está establecido, el cuerpo se une a un :ref:`StaticBody3D<class_StaticBody3D>` fijo sin formas de colisión.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_solver_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **solver_priority** = ``1`` :ref:`🔗<class_Joint3D_property_solver_priority>`

.. rst-class:: classref-property-setget

- |void| **set_solver_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_solver_priority**\ (\ )

The priority used to define which solver is executed first for multiple joints. The lower the value, the higher the priority.

\ **Note:** Only supported when using GodotPhysics3D. This property is ignored when using Jolt Physics.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Joint3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint3D_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` interno de la articulación desde :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
