:github_url: hide

.. _class_InputEventGesture:

InputEventGesture
=================

**Eredita:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>`, :ref:`InputEventPanGesture<class_InputEventPanGesture>`

Classe di base astratta per i gesti tattili.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Gli InputEventGesture sono inviati quando un utente esegue un gesto supportato su un touch screen. I gesti non possono essere emulati tramite mouse, perché in genere richiedono multi-touch.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`         | device                                                     | ``0`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventGesture_property_position>` | ``Vector2(0, 0)``                                                     |
   +-------------------------------+------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventGesture_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventGesture_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

La posizione del gesto locale relativa alla :ref:`Viewport<class_Viewport>`. Se utilizzato in :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, la posizione è relativa al :ref:`Control<class_Control>` attuale che ha ricevuto questo gesto.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
