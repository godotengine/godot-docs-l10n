:github_url: hide

.. _class_VideoStreamPlayer:

VideoStreamPlayer
=================

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un controllo utilizzato per la riproduzione video.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un controllo utilizzato per la riproduzione di risorse :ref:`VideoStream<class_VideoStream>`.

I formati video supportati sono `Ogg Theora <https://www.theora.org/>`__ (``.ogv``, :ref:`VideoStreamTheora<class_VideoStreamTheora>`) e qualsiasi formato esposto tramite un estensione in GDExtension.

\ **Attenzione:** Sul Web, la riproduzione video *avrà* prestazioni scadenti a causa della mancanza di ottimizzazioni in assembly specifiche per l'architettura.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Riproduzione di video <../tutorials/animation/playing_videos>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                 | :ref:`audio_track<class_VideoStreamPlayer_property_audio_track>`         | ``0``         |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`autoplay<class_VideoStreamPlayer_property_autoplay>`               | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                 | :ref:`buffering_msec<class_VideoStreamPlayer_property_buffering_msec>`   | ``500``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`   | :ref:`bus<class_VideoStreamPlayer_property_bus>`                         | ``&"Master"`` |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`expand<class_VideoStreamPlayer_property_expand>`                   | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`loop<class_VideoStreamPlayer_property_loop>`                       | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`               | :ref:`paused<class_VideoStreamPlayer_property_paused>`                   | ``false``     |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`speed_scale<class_VideoStreamPlayer_property_speed_scale>`         | ``1.0``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`VideoStream<class_VideoStream>` | :ref:`stream<class_VideoStreamPlayer_property_stream>`                   |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`stream_position<class_VideoStreamPlayer_property_stream_position>` |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`volume<class_VideoStreamPlayer_property_volume>`                   |               |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`             | :ref:`volume_db<class_VideoStreamPlayer_property_volume_db>`             | ``0.0``       |
   +---------------------------------------+--------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`get_stream_length<class_VideoStreamPlayer_method_get_stream_length>`\ (\ ) |const| |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_stream_name<class_VideoStreamPlayer_method_get_stream_name>`\ (\ ) |const|     |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_video_texture<class_VideoStreamPlayer_method_get_video_texture>`\ (\ ) |const| |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_playing<class_VideoStreamPlayer_method_is_playing>`\ (\ ) |const|               |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`play<class_VideoStreamPlayer_method_play>`\ (\ )                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`stop<class_VideoStreamPlayer_method_stop>`\ (\ )                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_VideoStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_signal_finished>`

Emesso al termine della riproduzione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VideoStreamPlayer_property_audio_track:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_track** = ``0`` :ref:`🔗<class_VideoStreamPlayer_property_audio_track>`

.. rst-class:: classref-property-setget

- |void| **set_audio_track**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_track**\ (\ )

La traccia audio incorporata da riprodurre.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autoplay**\ (\ )

Se ``true``, la riproduzione viene avviata quando la scena viene caricata.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_buffering_msec:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffering_msec** = ``500`` :ref:`🔗<class_VideoStreamPlayer_property_buffering_msec>`

.. rst-class:: classref-property-setget

- |void| **set_buffering_msec**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffering_msec**\ (\ )

La durata in millisecondi da memorizzare nel buffer durante la riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_VideoStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Il bus audio da usare per la riproduzione del suono.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_expand:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **expand** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_expand>`

.. rst-class:: classref-property-setget

- |void| **set_expand**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_expand**\ (\ )

Se ``true``, il video si adatta alle dimensioni del controllo. Altrimenti, le dimensioni minime del controllo saranno regolate automaticamente per adattarsi alle dimensioni del flusso video.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Se ``true``, il video si riavvia quando raggiunge la sua fine.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_VideoStreamPlayer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Se ``true``, il video è messo in pausa.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_VideoStreamPlayer_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

La scala di velocità attuale del flusso. ``1.0`` è la velocità normale, mentre ``2.0`` è una velocità doppia e ``0.5`` è una velocità dimezzata. Una scala di velocità di ``0.0`` mette in pausa il video, come impostare :ref:`paused<class_VideoStreamPlayer_property_paused>` su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`VideoStream<class_VideoStream>` **stream** :ref:`🔗<class_VideoStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`VideoStream<class_VideoStream>`\ )
- :ref:`VideoStream<class_VideoStream>` **get_stream**\ (\ )

Il flusso video assegnato. Vedi la descrizione per i formati supportati.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_stream_position:

.. rst-class:: classref-property

:ref:`float<class_float>` **stream_position** :ref:`🔗<class_VideoStreamPlayer_property_stream_position>`

.. rst-class:: classref-property-setget

- |void| **set_stream_position**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stream_position**\ (\ )

La posizione attuale del flusso, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume** :ref:`🔗<class_VideoStreamPlayer_property_volume>`

.. rst-class:: classref-property-setget

- |void| **set_volume**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume**\ (\ )

Il volume audio come valore lineare.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_VideoStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Il volume audio in dB.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VideoStreamPlayer_method_get_stream_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_length**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_length>`

La lunghezza del flusso attuale, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stream_name**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_stream_name>`

Restituisce il nome del flusso video oppure ``"<No Stream>"`` se nessun flusso video è assegnato.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_get_video_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_video_texture**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_get_video_texture>`

Restituisce il fotogramma attuale sotto forma di una :ref:`Texture2D<class_Texture2D>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_VideoStreamPlayer_method_is_playing>`

Restituisce ``true`` se il video è in riproduzione.

\ **Nota:** il video è ancora considerato in riproduzione se messo in pausa durante la riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_method_play>`

Avvia la riproduzione del video dall'inizio. Se il video è in pausa, questo non lo farà riprendere.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_VideoStreamPlayer_method_stop>`

Arresta la riproduzione video e imposta la posizione del flusso su 0.

\ **Nota:** Sebbene la posizione del flusso sia impostata su 0, il primo fotogramma del flusso video non diventerà il fotogramma attuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
