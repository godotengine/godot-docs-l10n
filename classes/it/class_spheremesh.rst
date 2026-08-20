:github_url: hide

.. _class_SphereMesh:

SphereMesh
==========

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe che rappresenta una :ref:`PrimitiveMesh<class_PrimitiveMesh>` sferica.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe che rappresenta una :ref:`PrimitiveMesh<class_PrimitiveMesh>` sferica.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SphereMesh_property_height>`                   | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`is_hemisphere<class_SphereMesh_property_is_hemisphere>`     | ``false`` |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_SphereMesh_property_radial_segments>` | ``64``    |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SphereMesh_property_radius>`                   | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_SphereMesh_property_rings>`                     | ``32``    |
   +---------------------------+-------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SphereMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_SphereMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Altezza totale della sfera.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_is_hemisphere:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_hemisphere** = ``false`` :ref:`🔗<class_SphereMesh_property_is_hemisphere>`

.. rst-class:: classref-property-setget

- |void| **set_is_hemisphere**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_hemisphere**\ (\ )

Se ``true``, è creato un emisfero (una mezza sfera) invece di una sfera intera.

\ **Nota:** Per ottenere un emisfero regolare, l'altezza e il raggio della sfera devono essere uguali.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_SphereMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

Il numero di segmenti radiali sulla sfera.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_SphereMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della sfera.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``32`` :ref:`🔗<class_SphereMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Il numero di segmenti lungo l'altezza della sfera.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
