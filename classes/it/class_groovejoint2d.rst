:github_url: hide

.. _class_GrooveJoint2D:

GrooveJoint2D
=============

**Eredita:** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un giunto fisico che limita il movimento di due corpi fisici 2D a un asse fisso.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un giunto fisico che limita il movimento di due corpi fisici 2D a un asse fisso. Ad esempio, uno :ref:`StaticBody2D<class_StaticBody2D>` che rappresenta la base di un pistone può essere attaccato a un :ref:`RigidBody2D<class_RigidBody2D>` che rappresenta la testa del pistone, muovendosi verso l'alto e verso il basso.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GrooveJoint2D_property_initial_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_offset** = ``25.0`` :ref:`🔗<class_GrooveJoint2D_property_initial_offset>`

.. rst-class:: classref-property-setget

- |void| **set_initial_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_initial_offset**\ (\ )

La posizione di ancoraggio iniziale del corpo B, definita dall'origine del giunto e da uno scostamento locale :ref:`initial_offset<class_GrooveJoint2D_property_initial_offset>` lungo l'asse Y del giunto (lungo la scanalatura).

.. rst-class:: classref-item-separator

----

.. _class_GrooveJoint2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``50.0`` :ref:`🔗<class_GrooveJoint2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

La lunghezza della scanalatura. La scanalatura va dall'origine del giunto verso :ref:`length<class_GrooveJoint2D_property_length>` lungo l'asse Y locale del giunto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
