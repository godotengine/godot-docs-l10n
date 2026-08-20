:github_url: hide

.. _class_SpringBoneCollisionCapsule3D:

SpringBoneCollisionCapsule3D
============================

**Eredita:** :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una collisione a forma di capsula che interagisce con :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una collisione a forma di capsula che interagisce con :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`         | ``0.5``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`inside<class_SpringBoneCollisionCapsule3D_property_inside>`         | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_SpringBoneCollisionCapsule3D_property_mid_height>` |           |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`         | ``0.1``   |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SpringBoneCollisionCapsule3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.5`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

L'altezza totale della capsula, inclusi gli emisferi.

\ **Nota:** L':ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` di una capsula deve essere almeno il doppio del suo :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`. Se non, la capsula diventa una sfera. Se l':ref:`height<class_SpringBoneCollisionCapsule3D_property_height>` è inferiore al doppio del :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>`, le proprietà si adattano a un valore valido.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **inside** = ``false`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_inside>`

.. rst-class:: classref-property-setget

- |void| **set_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_inside**\ (\ )

Se ``true``, la collisione agisce intrappolando il giunto all'interno della collisione.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

L'altezza della capsula, esclusi gli emisferi. Questa è l'altezza della parte cilindrica centrale in mezzo alla capsula, ed è la distanza tra i centri dei due emisferi. Questo è un wrapper per :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneCollisionCapsule3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.1`` :ref:`🔗<class_SpringBoneCollisionCapsule3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della capsula.

\ **Nota:** Il :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` di una capsula non può essere maggiore della metà della sua :ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`. Se non, la capsula diventa una sfera. Se il :ref:`radius<class_SpringBoneCollisionCapsule3D_property_radius>` è maggiore della metà dell':ref:`height<class_SpringBoneCollisionCapsule3D_property_height>`, le proprietà si adattano a un valore valido.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
