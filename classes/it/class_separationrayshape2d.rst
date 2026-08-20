:github_url: hide

.. _class_SeparationRayShape2D:

SeparationRayShape2D
====================

**Eredita:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma di raggio 2D utilizzata per le collisioni fisiche che tenta di separarsi da qualsiasi collisore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una forma di raggio 2D, pensata per l'uso in fisica. Solitamente utilizzata per fornire una forma per un :ref:`CollisionShape2D<class_CollisionShape2D>`. Quando un **SeparationRayShape2D** entra in collisione con un oggetto, cerca di separarsene spostando il suo punto finale sul punto di collisione. Ad esempio, un **SeparationRayShape2D** accanto a un personaggio può consentirgli di salire subito quando tocca le scale.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`length<class_SeparationRayShape2D_property_length>`                 | ``20.0``  |
   +---------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`slide_on_slope<class_SeparationRayShape2D_property_slide_on_slope>` | ``false`` |
   +---------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SeparationRayShape2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``20.0`` :ref:`🔗<class_SeparationRayShape2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

La lunghezza del raggio.

.. rst-class:: classref-item-separator

----

.. _class_SeparationRayShape2D_property_slide_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_slope** = ``false`` :ref:`🔗<class_SeparationRayShape2D_property_slide_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_slope**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_slide_on_slope**\ (\ )

Se ``false`` (predefinito), la forma si separa sempre e restituisce una normale lungo la propria direzione.

Se ``true``, la forma può restituire la normale corretta e separarsi in qualsiasi direzione, consentendo un movimento di scorrimento sulle pendenze.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
