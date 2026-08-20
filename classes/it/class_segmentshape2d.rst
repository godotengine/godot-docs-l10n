:github_url: hide

.. _class_SegmentShape2D:

SegmentShape2D
==============

**Eredita:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un segmento di linea 2D utilizzato per le collisioni fisiche.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma di segmento di linea 2D, pensata per l'uso in fisica. Solitamente utilizzata per fornire una forma per un :ref:`CollisionShape2D<class_CollisionShape2D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`a<class_SegmentShape2D_property_a>` | ``Vector2(0, 0)``  |
   +-------------------------------+-------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`b<class_SegmentShape2D_property_b>` | ``Vector2(0, 10)`` |
   +-------------------------------+-------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SegmentShape2D_property_a:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **a** = ``Vector2(0, 0)`` :ref:`🔗<class_SegmentShape2D_property_a>`

.. rst-class:: classref-property-setget

- |void| **set_a**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_a**\ (\ )

La posizione del primo punto del segmento.

.. rst-class:: classref-item-separator

----

.. _class_SegmentShape2D_property_b:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **b** = ``Vector2(0, 10)`` :ref:`🔗<class_SegmentShape2D_property_b>`

.. rst-class:: classref-property-setget

- |void| **set_b**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_b**\ (\ )

La posizione del secondo punto del segmento.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
