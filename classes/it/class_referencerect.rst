:github_url: hide

.. _class_ReferenceRect:

ReferenceRect
=============

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un riferimento rettangolare per progettare le interfacce utente.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un riquadro rettangolare che mostra solo un bordo colorato attorno al suo rettangolo (vedi :ref:`Control.get_rect()<class_Control_method_get_rect>`). È utilizzata per visualizzare le estensioni di un :ref:`Control<class_Control>`, a scopi di test.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`border_color<class_ReferenceRect_property_border_color>` | ``Color(1, 0, 0, 1)`` |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`border_width<class_ReferenceRect_property_border_width>` | ``1.0``               |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`editor_only<class_ReferenceRect_property_editor_only>`   | ``true``              |
   +---------------------------+----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ReferenceRect_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_ReferenceRect_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

Imposta il colore dei bordi del **ReferenceRect**.

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_border_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_width** = ``1.0`` :ref:`🔗<class_ReferenceRect_property_border_width>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_width**\ (\ )

Imposta la larghezza del bordo del **ReferenceRect**. Il bordo cresce sia verso l'interno sia verso l'esterno rispetto al rettangolo.

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``true`` :ref:`🔗<class_ReferenceRect_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_editor_only**\ (\ )

Se ``true``, il **ReferenceRect** sarà visibile solo nell'editor. Altrimenti, il **ReferenceRect** sarà visibile nel progetto in esecuzione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
