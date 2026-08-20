:github_url: hide

.. _class_BoxShape3D:

BoxShape3D
==========

**Eredita:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma a scatola 3D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma a scatola 3D, progettata per l'uso in fisica. Solitamente utilizzata per fornire una forma per un :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **Prestazioni:** **BoxShape3D** è veloce per verificare le collisioni. È più veloce di :ref:`CapsuleShape3D<class_CapsuleShape3D>` e :ref:`CylinderShape3D<class_CylinderShape3D>`, ma è più lenta di :ref:`SphereShape3D<class_SphereShape3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo dei test di fisica 3D <https://godotengine.org/asset-library/asset/2747>`__

- `Demo di personaggio cinematico 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Demo di gioco piattaforme 3D <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxShape3D_property_size>` | ``Vector3(1, 1, 1)`` |
   +-------------------------------+---------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_BoxShape3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxShape3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

La larghezza, l'altezza, e la profondità della scatola.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
