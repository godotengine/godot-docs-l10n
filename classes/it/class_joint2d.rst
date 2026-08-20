:github_url: hide

.. _class_Joint2D:

Joint2D
=======

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`DampedSpringJoint2D<class_DampedSpringJoint2D>`, :ref:`GrooveJoint2D<class_GrooveJoint2D>`, :ref:`PinJoint2D<class_PinJoint2D>`

Classe base astratta per tutti i giunti di fisica 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base astratta per tutti i giunti nella fisica 2D. I giunti 2D uniscono due corpi fisici (:ref:`node_a<class_Joint2D_property_node_a>` e :ref:`node_b<class_Joint2D_property_node_b>`) e applicano un vincolo.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint2D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Joint2D_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0`` :ref:`🔗<class_Joint2D_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Quando :ref:`node_a<class_Joint2D_property_node_a>` e :ref:`node_b<class_Joint2D_property_node_b>` si muovono in direzioni diverse, :ref:`bias<class_Joint2D_property_bias>` controlla la velocità con cui il giunto li riporta nella loro posizione originale. Più basso è il :ref:`bias<class_Joint2D_property_bias>`, più i due corpi possono tirare sul giunto.

Quando impostato su ``0``, viene utilizzato il valore predefinito da :ref:`ProjectSettings.physics/2d/solver/default_constraint_bias<class_ProjectSettings_property_physics/2d/solver/default_constraint_bias>`.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_disable_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_collision** = ``true`` :ref:`🔗<class_Joint2D_property_disable_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

Se ``true``, i due corpi legati insieme non si scontrano tra loro.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint2D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

Percorso verso il primo corpo (A) attaccato al giunto. Il nodo deve ereditare :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint2D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

Percorso verso il secondo corpo (B) attaccato al giunto. Il nodo deve ereditare :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Joint2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint2D_method_get_rid>`

Restituisce :ref:`RID<class_RID>` interno del giunto dal :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
