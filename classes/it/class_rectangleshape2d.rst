:github_url: hide

.. _class_RectangleShape2D:

RectangleShape2D
================

**Eredita:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma di rettangolo 2D utilizzata per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma di rettangolo 2D, progettata per l'uso in fisica. Solitamente utilizzata per fornire una forma per un :ref:`CollisionShape2D<class_CollisionShape2D>`.

\ **Prestazioni:** **RectangleShape2D** è veloce per verificare le collisioni. È più veloce di :ref:`CapsuleShape2D<class_CapsuleShape2D>`, ma più lenta di :ref:`CircleShape2D<class_CircleShape2D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo 2D "Pong 2D" <https://godotengine.org/asset-library/asset/2728>`__

- `Demo di personaggio cinematico in 2D <https://godotengine.org/asset-library/asset/2719>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------+---------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_RectangleShape2D_property_size>` | ``Vector2(20, 20)`` |
   +-------------------------------+---------------------------------------------------+---------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RectangleShape2D_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(20, 20)`` :ref:`🔗<class_RectangleShape2D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

La larghezza e l'altezza del rettangolo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
