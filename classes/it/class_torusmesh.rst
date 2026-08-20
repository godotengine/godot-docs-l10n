:github_url: hide

.. _class_TorusMesh:

TorusMesh
=========

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe che rappresenta un :ref:`PrimitiveMesh<class_PrimitiveMesh>` toro.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe che rappresenta un :ref:`PrimitiveMesh<class_PrimitiveMesh>` toro.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`inner_radius<class_TorusMesh_property_inner_radius>`   | ``0.5`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`outer_radius<class_TorusMesh_property_outer_radius>`   | ``1.0`` |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`ring_segments<class_TorusMesh_property_ring_segments>` | ``32``  |
   +---------------------------+--------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`rings<class_TorusMesh_property_rings>`                 | ``64``  |
   +---------------------------+--------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TorusMesh_property_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_radius** = ``0.5`` :ref:`🔗<class_TorusMesh_property_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_radius**\ (\ )

Il raggio interno del toro.

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_outer_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_radius** = ``1.0`` :ref:`🔗<class_TorusMesh_property_outer_radius>`

.. rst-class:: classref-property-setget

- |void| **set_outer_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_radius**\ (\ )

Il raggio esterno del toro.

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_ring_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **ring_segments** = ``32`` :ref:`🔗<class_TorusMesh_property_ring_segments>`

.. rst-class:: classref-property-setget

- |void| **set_ring_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ring_segments**\ (\ )

Il numero di spigoli di cui è costituito ciascun anello del toro.

.. rst-class:: classref-item-separator

----

.. _class_TorusMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``64`` :ref:`🔗<class_TorusMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Il numero di sezioni di cui è costituito il toro.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
