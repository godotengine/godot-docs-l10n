:github_url: hide

.. _class_CapsuleShape2D:

CapsuleShape2D
==============

**Eredita:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma a capsula 2D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma a capsula 2D, progettata per l'uso in fisica. Solitamente utilizzata per fornire una forma per un :ref:`CollisionShape2D<class_CollisionShape2D>`.

\ **Prestazioni:** **CapsuleShape2D** è veloce per verificare le collisioni, ma è più lenta di :ref:`RectangleShape2D<class_RectangleShape2D>` e :ref:`CircleShape2D<class_CircleShape2D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleShape2D_property_height>`         | ``30.0`` |
   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_CapsuleShape2D_property_mid_height>` |          |
   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleShape2D_property_radius>`         | ``10.0`` |
   +---------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CapsuleShape2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``30.0`` :ref:`🔗<class_CapsuleShape2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

L'altezza totale della capsula, inclusi i semicerchi.

\ **Nota:** L':ref:`height<class_CapsuleShape2D_property_height>` di una capsula deve essere almeno il doppio del suo :ref:`radius<class_CapsuleShape2D_property_radius>`. Se non, la capsula diventa un cerchio. Se l':ref:`height<class_CapsuleShape2D_property_height>` è inferiore al doppio del :ref:`radius<class_CapsuleShape2D_property_radius>`, le proprietà si adattano a un valore valido.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape2D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_CapsuleShape2D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

L'altezza della capsula, esclusi i semicerchi. Questa è l'altezza della parte rettangolare centrale in mezzo alla capsula, ed è la distanza tra i centri dei due semicerchi. Questo è un wrapper per :ref:`height<class_CapsuleShape2D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_CapsuleShape2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Il raggio della capsula.

\ **Nota:** Il :ref:`radius<class_CapsuleShape2D_property_radius>` di una capsula non può essere maggiore della metà della sua :ref:`height<class_CapsuleShape2D_property_height>`. Se non, la capsula diventa un cerchio. Se il :ref:`radius<class_CapsuleShape2D_property_radius>` è maggiore della metà dell':ref:`height<class_CapsuleShape2D_property_height>`, le proprietà si adattano a un valore valido.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
