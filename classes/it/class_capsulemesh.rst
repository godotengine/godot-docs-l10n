:github_url: hide

.. _class_CapsuleMesh:

CapsuleMesh
===========

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe che rappresenta una :ref:`PrimitiveMesh<class_PrimitiveMesh>` a forma di capsula.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe che rappresenta una :ref:`PrimitiveMesh<class_PrimitiveMesh>` a forma di capsula.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleMesh_property_height>`                   | ``2.0`` |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_CapsuleMesh_property_radial_segments>` | ``64``  |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleMesh_property_radius>`                   | ``0.5`` |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`rings<class_CapsuleMesh_property_rings>`                     | ``8``   |
   +---------------------------+--------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CapsuleMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CapsuleMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Altezza totale della mesh a capsula (incluse le estremità emisferiche).

\ **Nota:** L':ref:`height<class_CapsuleMesh_property_height>` di una capsula deve essere almeno il doppio del suo :ref:`radius<class_CapsuleMesh_property_radius>`. Se non, la capsula diventa un cerchio. Se l':ref:`height<class_CapsuleMesh_property_height>` è inferiore al doppio del :ref:`radius<class_CapsuleMesh_property_radius>`, le proprietà si adattano a un valore valido.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_CapsuleMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

Numero di segmenti radiali sulla mesh a capsula.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CapsuleMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Raggio della mesh a capsula.

\ **Nota:** Il :ref:`radius<class_CapsuleMesh_property_radius>` di una capsula non può essere maggiore della metà della sua :ref:`height<class_CapsuleMesh_property_height>`. Se non, la capsula diventa un cerchio. Se il :ref:`radius<class_CapsuleMesh_property_radius>` è maggiore della metà dell':ref:`height<class_CapsuleMesh_property_height>`, le proprietà si adattano a un valore valido.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``8`` :ref:`🔗<class_CapsuleMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Numero di anelli lungo l'altezza della capsula.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
