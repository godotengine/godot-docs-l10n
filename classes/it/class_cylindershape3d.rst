:github_url: hide

.. _class_CylinderShape3D:

CylinderShape3D
===============

**Eredita:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma cilindrica 3D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma cilindrica 3D, progettata per l'uso in fisica. Solitamente utilizzata per fornire una forma per un :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **Nota:** Ci sono diversi bug noti con le forme di collisione cilindriche. Si consiglia invece di utilizzare :ref:`CapsuleShape3D<class_CapsuleShape3D>` o :ref:`BoxShape3D<class_BoxShape3D>`.

\ **Prestazioni:** **CylinderShape3D** è veloce per verificare le collisioni, ma è più lenta di :ref:`CapsuleShape3D<class_CapsuleShape3D>`, :ref:`BoxShape3D<class_BoxShape3D>` e :ref:`SphereShape3D<class_SphereShape3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Demo dei test di fisica 3D <https://godotengine.org/asset-library/asset/2747>`__

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CylinderShape3D_property_height>` | ``2.0`` |
   +---------------------------+------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CylinderShape3D_property_radius>` | ``0.5`` |
   +---------------------------+------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CylinderShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CylinderShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

L'altezza del cilindro.

.. rst-class:: classref-item-separator

----

.. _class_CylinderShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CylinderShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio del cilindro.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
