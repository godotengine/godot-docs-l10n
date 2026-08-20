:github_url: hide

.. _class_WebRTCDataChannel:

WebRTCDataChannel
=================

**Eredita:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`WebRTCDataChannelExtension<class_WebRTCDataChannelExtension>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------+-------+
   | :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` | :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>` | ``1`` |
   +----------------------------------------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`close<class_WebRTCDataChannel_method_close>`\ (\ )                                               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_buffered_amount<class_WebRTCDataChannel_method_get_buffered_amount>`\ (\ ) |const|           |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_id<class_WebRTCDataChannel_method_get_id>`\ (\ ) |const|                                     |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                              | :ref:`get_label<class_WebRTCDataChannel_method_get_label>`\ (\ ) |const|                               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_max_packet_life_time<class_WebRTCDataChannel_method_get_max_packet_life_time>`\ (\ ) |const| |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_max_retransmits<class_WebRTCDataChannel_method_get_max_retransmits>`\ (\ ) |const|           |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                              | :ref:`get_protocol<class_WebRTCDataChannel_method_get_protocol>`\ (\ ) |const|                         |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` | :ref:`get_ready_state<class_WebRTCDataChannel_method_get_ready_state>`\ (\ ) |const|                   |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_negotiated<class_WebRTCDataChannel_method_is_negotiated>`\ (\ ) |const|                       |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_ordered<class_WebRTCDataChannel_method_is_ordered>`\ (\ ) |const|                             |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                    | :ref:`poll<class_WebRTCDataChannel_method_poll>`\ (\ )                                                 |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`was_string_packet<class_WebRTCDataChannel_method_was_string_packet>`\ (\ ) |const|               |
   +----------------------------------------------------------+--------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_WebRTCDataChannel_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebRTCDataChannel_WriteMode>`

.. _class_WebRTCDataChannel_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_TEXT** = ``0``

Indica al canale di inviare dati su questo canale sotto forma di testo. Un peer esterno (non Godot) riceverebbe questo come una stringa.

.. _class_WebRTCDataChannel_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **WRITE_MODE_BINARY** = ``1``

Indica al canale di inviare dati su questo canale sotto forma binaria. Un peer esterno (non-Godot) riceverebbe questo come un buffer di array o blob.

.. rst-class:: classref-item-separator

----

.. _enum_WebRTCDataChannel_ChannelState:

.. rst-class:: classref-enumeration

enum **ChannelState**: :ref:`🔗<enum_WebRTCDataChannel_ChannelState>`

.. _class_WebRTCDataChannel_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CONNECTING** = ``0``

Il canale è stato creato, ma sta ancora cercando di connettersi.

.. _class_WebRTCDataChannel_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_OPEN** = ``1``

Il canale è attualmente aperto, e i dati possono circolare su di esso.

.. _class_WebRTCDataChannel_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSING** = ``2``

Il canale è in fase di chiusura, non saranno accettati nuovi messaggi, ma quelli già in coda saranno svuotati.

.. _class_WebRTCDataChannel_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **STATE_CLOSED** = ``3``

Il canale è stato chiuso, o la connessione non è riuscita.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_WebRTCDataChannel_property_write_mode:

.. rst-class:: classref-property

:ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **write_mode** = ``1`` :ref:`🔗<class_WebRTCDataChannel_property_write_mode>`

.. rst-class:: classref-property-setget

- |void| **set_write_mode**\ (\ value\: :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>`\ )
- :ref:`WriteMode<enum_WebRTCDataChannel_WriteMode>` **get_write_mode**\ (\ )

La modalità di trasferimento da utilizzare quando si invia il pacchetto in uscita. Può essere testo o binario.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_WebRTCDataChannel_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_close>`

Chiude questo canale di dati, notificando l'altro peer.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_buffered_amount>`

Restituisce il numero di byte attualmente in coda per essere inviati su questo canale.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_id>`

Restituisce l'ID assegnato a questo canale durante la creazione (o assegnato automaticamente durante la negoziazione).

Se il canale non è negoziato fuori banda l'ID sarà disponibile solo dopo che la connessione è stabilita (restituirà ``65535`` fino ad allora).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_label**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_label>`

Restituisce l'etichetta assegnata a questo canale durante la creazione.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_packet_life_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_packet_life_time**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_packet_life_time>`

Restituisce il valore ``maxPacketLifeTime`` assegnato a questo canale durante la creazione.

Sarà ``65535`` se non specificato.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_max_retransmits:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_max_retransmits**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_max_retransmits>`

Restituisce il valore ``maxRetransmits`` assegnato a questo canale durante la creazione.

Sarà ``65535`` se non specificato.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_protocol**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_protocol>`

Restituisce il sottoprotocollo assegnato a questo canale durante la creazione. Una stringa vuota se non specificata.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_get_ready_state:

.. rst-class:: classref-method

:ref:`ChannelState<enum_WebRTCDataChannel_ChannelState>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_get_ready_state>`

Restituisce lo stato attuale di questo canale.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_negotiated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_negotiated**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_negotiated>`

Restituisce ``true`` se questo canale è stato creato con configurazione fuori banda.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_is_ordered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_ordered**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_is_ordered>`

Restituisce ``true`` se questo canale è stato creato con l'ordinazione abilitata (predefinito).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_WebRTCDataChannel_method_poll>`

Riservato, ma non usato per il momento.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCDataChannel_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebRTCDataChannel_method_was_string_packet>`

Restituisce ``true`` se l'ultimo pacchetto ricevuto è stato trasferito come testo. Vedi :ref:`write_mode<class_WebRTCDataChannel_property_write_mode>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
