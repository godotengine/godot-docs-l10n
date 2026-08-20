:github_url: hide

.. _class_InputEventFromWindow:

InputEventFromWindow
====================

**Eredita:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`

Classe base astratta per eventi di input basati su :ref:`Viewport<class_Viewport>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

L'InputEventFromWindow rappresenta eventi ricevuti specificamente dalle finestre. Ciò include eventi del mouse, eventi della tastiera nelle finestre focalizzate o azioni del touch screen.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`window_id<class_InputEventFromWindow_property_window_id>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventFromWindow_property_window_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **window_id** = ``0`` :ref:`🔗<class_InputEventFromWindow_property_window_id>`

.. rst-class:: classref-property-setget

- |void| **set_window_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_window_id**\ (\ )

L'ID di un :ref:`Window<class_Window>` che ha ricevuto questo evento.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
