:github_url: hide

.. _class_InputEventMouse:

InputEventMouse
===============

**Eredita:** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`

Tipo di evento di input di base per gli eventi del mouse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Memorizza informazioni generali sugli eventi del mouse.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_InputEventMouse_property_button_mask>`         | ``0``                                                                  |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                   | device                                                                 | ``32`` (overrides :ref:`InputEvent<class_InputEvent_property_device>`) |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`global_position<class_InputEventMouse_property_global_position>` | ``Vector2(0, 0)``                                                      |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                           | :ref:`position<class_InputEventMouse_property_position>`               | ``Vector2(0, 0)``                                                      |
   +-------------------------------------------------------------------------+------------------------------------------------------------------------+------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventMouse_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``0`` :ref:`🔗<class_InputEventMouse_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

L'identificatore della maschera del pulsante del mouse, una o una combinazione bit a bit delle maschere dei pulsanti :ref:`MouseButton<enum_@GlobalScope_MouseButton>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

Quando ricevuto in :ref:`Node._input()<class_Node_private_method__input>` o :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, restituisce la posizione del mouse nella :ref:`Viewport<class_Viewport>` radice utilizzando il sistema di coordinate della :ref:`Viewport<class_Viewport>` radice.

Quando ricevuto in :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, restituisce la posizione del mouse nel :ref:`CanvasLayer<class_CanvasLayer>` in cui si trova il :ref:`Control<class_Control>` utilizzando il sistema di coordinate del :ref:`CanvasLayer<class_CanvasLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouse_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventMouse_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Quando ricevuto in :ref:`Node._input()<class_Node_private_method__input>` o :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, restituisce la posizione del mouse nella :ref:`Viewport<class_Viewport>` in cui si trova questo :ref:`Node<class_Node>` utilizzando il sistema di coordinate di questa :ref:`Viewport<class_Viewport>`.

Quando ricevuto in :ref:`Control._gui_input()<class_Control_private_method__gui_input>`, restituisce la posizione del mouse nel :ref:`Control<class_Control>` utilizzando il sistema di coordinate locale del :ref:`Control<class_Control>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
