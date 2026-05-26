:github_url: hide

.. _class_InputEvent:

InputEvent
==========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`InputEventAction<class_InputEventAction>`, :ref:`InputEventFromWindow<class_InputEventFromWindow>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventMIDI<class_InputEventMIDI>`, :ref:`InputEventShortcut<class_InputEventShortcut>`

Classe di base astratta per gli eventi di input.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe di base astratta per tutti i tipi di eventi di input. Vedi :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Viewport e trasformazioni di canvas <../tutorials/2d/2d_transforms>`

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`device<class_InputEvent_property_device>` | ``0`` |
   +-----------------------+-------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`accumulate<class_InputEvent_method_accumulate>`\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ )                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`as_text<class_InputEvent_method_as_text>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_action_strength<class_InputEvent_method_get_action_strength>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action<class_InputEvent_method_is_action>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_pressed<class_InputEvent_method_is_action_pressed>`\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_released<class_InputEvent_method_is_action_released>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                             |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_type<class_InputEvent_method_is_action_type>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_canceled<class_InputEvent_method_is_canceled>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_echo<class_InputEvent_method_is_echo>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_match<class_InputEvent_method_is_match>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_pressed<class_InputEvent_method_is_pressed>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_released<class_InputEvent_method_is_released>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InputEvent<class_InputEvent>` | :ref:`xformed_by<class_InputEvent_method_xformed_by>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_InputEvent_constant_DEVICE_ID_EMULATION:

.. rst-class:: classref-constant

**DEVICE_ID_EMULATION** = ``-1`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_EMULATION>`

ID dispositivo utilizzato per l'input del mouse emulato da un touchscreen o per l'input touch emulato da un mouse. Può essere utilizzato per distinguere l'input del mouse emulato dall'input del mouse fisico o l'input touch emulato dall'input touch fisico.

.. _class_InputEvent_constant_DEVICE_ID_KEYBOARD:

.. rst-class:: classref-constant

**DEVICE_ID_KEYBOARD** = ``16`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_KEYBOARD>`

Device ID used for input from a keyboard. This can be used to distinguish keyboard input events from joypad input events.

.. _class_InputEvent_constant_DEVICE_ID_MOUSE:

.. rst-class:: classref-constant

**DEVICE_ID_MOUSE** = ``32`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_MOUSE>`

Device ID used for input from a mouse. This can be used to distinguish mouse input events from joypad input events.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEvent_property_device:

.. rst-class:: classref-property

:ref:`int<class_int>` **device** = ``0`` :ref:`🔗<class_InputEvent_property_device>`

.. rst-class:: classref-property-setget

- |void| **set_device**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_device**\ (\ )

ID dispositivo dell'evento.

\ **Nota:** :ref:`device<class_InputEvent_property_device>` può essere negativo per casi d'uso speciali che non fanno riferimento a dispositivi fisicamente presenti sul sistema. Vedi :ref:`DEVICE_ID_EMULATION<class_InputEvent_constant_DEVICE_ID_EMULATION>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_InputEvent_method_accumulate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **accumulate**\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputEvent_method_accumulate>`

Restituisce ``true`` se l'evento di input specificato e questo evento di input possono essere sommati (solo per gli eventi di tipo :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`).

La posizione, la posizione globale e la velocità dell'evento di input specificato verranno copiate. Il ``relative`` risultante è una somma di entrambi gli eventi. I modificatori di entrambi gli eventi devono essere identici.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_as_text>`

Restituisce una rappresentazione :ref:`String<class_String>` dell'evento.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_get_action_strength:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_action_strength**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_get_action_strength>`

Restituisce un valore compreso tra 0,0 e 1,0 a seconda dello stato delle azioni specificate. Utile per ottenere il valore degli eventi di tipo :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

Se ``exact_match`` è ``false``, ignora i modificatori di input aggiuntivi per gli eventi :ref:`InputEventKey<class_InputEventKey>` e :ref:`InputEventMouseButton<class_InputEventMouseButton>` e la direzione per gli eventi :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action>`

Restituisce ``true`` se questo evento di input corrisponde a un'azione predefinita di qualsiasi tipo.

Se ``exact_match`` è ``false``, ignora ulteriori modificatori di input per gli eventi :ref:`InputEventKey<class_InputEventKey>` e :ref:`InputEventMouseButton<class_InputEventMouseButton>` e la direzione per gli eventi :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_pressed**\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_pressed>`

Returns ``true`` if the given action matches this event and is being pressed (and is not an echo event for :ref:`InputEventKey<class_InputEventKey>` events, unless ``allow_echo`` is ``true``). Not relevant for events of type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` or :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

If ``exact_match`` is ``false``, it ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

\ **Note:** Due to keyboard ghosting, :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` may return ``false`` even if one of the action's keys is pressed. See `Input examples <../tutorials/inputs/input_examples.html#keyboard-events>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_released**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_released>`

Returns ``true`` if the given action matches this event and is released (i.e. not pressed). Not relevant for events of type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` or :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

If ``exact_match`` is ``false``, it ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_type**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_type>`

Restituisce ``true`` se il tipo di questo evento di input è uno che si può assegnare a un'azione di input: :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventAction<class_InputEventAction>`. Restituisce ``false`` per tutti gli altri tipi di evento di input.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_canceled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_canceled**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_canceled>`

Restituisce ``true`` se questo evento di input è stato cancellato.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_echo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_echo**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_echo>`

Restituisce ``true`` se questo evento di input è un evento eco (solo per eventi di tipo :ref:`InputEventKey<class_InputEventKey>`). Un evento eco è un evento da un tasto ripetuto inviato quando l'utente tiene premuto il tasto. Qualsiasi altro tipo di evento restituisce ``false``.

\ **Nota:** La frequenza con cui sono inviati gli eventi eco è in genere di circa 20 eventi al secondo (dopo aver tenuto premuto il tasto per circa mezzo secondo). Tuttavia, il ritardo/velocità di ripetizione del tasto può essere modificato dall'utente o disabilitato completamente nelle impostazioni del sistema operativo. Per garantire che il progetto funzioni correttamente su tutte le configurazioni, non dare per scontato che l'utente abbia una configurazione di ripetizione del tasto specifica nel comportamento del progetto.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_match:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_match**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_InputEvent_method_is_match>`

Returns ``true`` if the specified ``event`` matches this event. Only valid for action events, which include key (:ref:`InputEventKey<class_InputEventKey>`), button (:ref:`InputEventMouseButton<class_InputEventMouseButton>` or :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`), axis :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, and action (:ref:`InputEventAction<class_InputEventAction>`) events.

If ``exact_match`` is ``false``, the check ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

\ **Note:** This method only considers the event configuration (such as the keyboard key or the joypad axis), not state information like :ref:`is_pressed()<class_InputEvent_method_is_pressed>`, :ref:`is_released()<class_InputEvent_method_is_released>`, :ref:`is_echo()<class_InputEvent_method_is_echo>`, or :ref:`is_canceled()<class_InputEvent_method_is_canceled>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_pressed>`

Restituisce ``true`` se questo evento di input è premuto. Non rilevante per eventi di tipo :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` o :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

\ **Nota:** A causa del ghosting della tastiera, :ref:`is_pressed()<class_InputEvent_method_is_pressed>` potrebbe restituire ``false`` anche se è premuto uno dei tasti dell'azione. Per maggiori informazioni, vedi `Esempi di input <../tutorials/inputs/input_examples.html#keyboard-events>`__ nella documentazione.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_released**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_released>`

Restituisce ``true`` se questo evento di input è rilasciato. Non applicabile per gli eventi di tipo :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` o :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_xformed_by:

.. rst-class:: classref-method

:ref:`InputEvent<class_InputEvent>` **xformed_by**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_InputEvent_method_xformed_by>`

Restituisce una copia dell'evento di input specificato che è stato compensato da ``local_ofs`` e trasformato da ``xform``. Applicabile per eventi di tipo :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>` e :ref:`InputEventPanGesture<class_InputEventPanGesture>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
