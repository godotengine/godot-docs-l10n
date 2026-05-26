:github_url: hide

.. _class_Joint3D:

Joint3D
=======

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`ConeTwistJoint3D<class_ConeTwistJoint3D>`, :ref:`Generic6DOFJoint3D<class_Generic6DOFJoint3D>`, :ref:`HingeJoint3D<class_HingeJoint3D>`, :ref:`PinJoint3D<class_PinJoint3D>`, :ref:`SliderJoint3D<class_SliderJoint3D>`

Classe di base astratta per tutti i giunti di fisica 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe di base astratta per tutti i giunti nella fisica 3D. I giunti 3D uniscono due corpi fisici (:ref:`node_a<class_Joint3D_property_node_a>` e :ref:`node_b<class_Joint3D_property_node_b>`) e applicano un vincolo. Se è definito solo un corpo, esso è attaccato a uno :ref:`StaticBody3D<class_StaticBody3D>` fisso senza forme di collisione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo 3D "Truck Town" <https://godotengine.org/asset-library/asset/2752>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint3D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Joint3D_property_exclude_nodes_from_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_nodes_from_collision** = ``true`` :ref:`🔗<class_Joint3D_property_exclude_nodes_from_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

Se ``true``, i due corpi legati insieme non si scontrano tra loro.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

Percorso verso il primo corpo (A) attaccato al giunto. Il nodo deve ereditare :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Se lasciato vuoto e :ref:`node_b<class_Joint3D_property_node_b>` è impostato, il corpo è collegato a uno :ref:`StaticBody3D<class_StaticBody3D>` fisso senza forme di collisione.

.. rst-class:: classref-item-separator

----

.. _class_Joint3D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint3D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

Percorso verso il secondo corpo (B) attaccato al giunto. Il nodo deve ereditare :ref:`PhysicsBody3D<class_PhysicsBody3D>`.

Se lasciato vuoto e :ref:`node_a<class_Joint3D_property_node_a>` è impostato, il corpo è collegato a uno :ref:`StaticBody3D<class_StaticBody3D>` fisso senza forme di collisione.

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

Descrizioni dei metodi
--------------------------------------------

.. _class_Joint3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint3D_method_get_rid>`

Restituisce il :ref:`RID<class_RID>` interno del giunto dal :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
