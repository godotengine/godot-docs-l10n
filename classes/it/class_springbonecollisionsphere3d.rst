:github_url: hide

.. _class_SpringBoneCollisionSphere3D:

SpringBoneCollisionSphere3D
===========================

**Eredita:** :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una collisione a forma di sfera che interagisce con :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una collisione a forma di sfera che interagisce con :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`inside<class_SpringBoneCollisionSphere3D_property_inside>` | ``false`` |
   +---------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SpringBoneCollisionSphere3D_property_radius>` | ``0.1``   |
   +---------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SpringBoneCollisionSphere3D_property_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **inside** = ``false`` :ref:`🔗<class_SpringBoneCollisionSphere3D_property_inside>`

.. rst-class:: classref-property-setget

- |void| **set_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_inside**\ (\ )

Se ``true``, la collisione agisce intrappolando il giunto all'interno della collisione.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionSphere3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.1`` :ref:`🔗<class_SpringBoneCollisionSphere3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della sfera.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
