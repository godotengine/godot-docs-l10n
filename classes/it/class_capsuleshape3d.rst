:github_url: hide

.. _class_CapsuleShape3D:

CapsuleShape3D
==============

**Eredita:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma a capsula 3D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma a capsula 3D, progettata per l'uso in fisica. Solitamente utilizzata per fornire una forma per un :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **Prestazioni:** **CapsuleShape3D** è veloce per verificare le collisioni. È più veloce di :ref:`CylinderShape3D<class_CylinderShape3D>`, ma è più lenta di :ref:`SphereShape3D<class_SphereShape3D>` e :ref:`BoxShape3D<class_BoxShape3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo dei test di fisica 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleShape3D_property_height>`         | ``2.0`` |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_CapsuleShape3D_property_mid_height>` |         |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleShape3D_property_radius>`         | ``0.5`` |
   +---------------------------+-------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CapsuleShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CapsuleShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

L'altezza totale della capsula, inclusi gli emisferi.

\ **Nota:** L':ref:`height<class_CapsuleShape3D_property_height>` di una capsula deve essere almeno il doppio del suo :ref:`radius<class_CapsuleShape3D_property_radius>`. Se non, la capsula diventa una sfera. Se l':ref:`height<class_CapsuleShape3D_property_height>` è inferiore al doppio del :ref:`radius<class_CapsuleShape3D_property_radius>`, le proprietà si adattano a un valore valido.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_CapsuleShape3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

L'altezza della capsula, esclusi gli emisferi. Questa è l'altezza della parte cilindrica centrale in mezzo alla capsula, ed è la distanza tra i centri dei due emisferi. Questo è un wrapper per :ref:`height<class_CapsuleShape3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CapsuleShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della capsula.

\ **Nota:** Il :ref:`radius<class_CapsuleShape3D_property_radius>` di una capsula non può essere maggiore della metà della sua :ref:`height<class_CapsuleShape3D_property_height>`. Se non, la capsula diventa una sfera. Se il :ref:`radius<class_CapsuleShape3D_property_radius>` è maggiore della metà dell':ref:`height<class_CapsuleShape3D_property_height>`, le proprietà si adattano a un valore valido.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
