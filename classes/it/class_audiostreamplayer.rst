:github_url: hide

.. meta::
	:keywords: sound, music, song

.. _class_AudioStreamPlayer:

AudioStreamPlayer
=================

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo per la riproduzione audio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il nodo **AudioStreamPlayer** riproduce un flusso audio in modo non posizionale. È ideale per le interfacce utente, menu o musica di sottofondo.

Per utilizzare questo nodo, :ref:`stream<class_AudioStreamPlayer_property_stream>` deve essere impostato su una risorsa :ref:`AudioStream<class_AudioStream>` valida. È supportata anche la riproduzione di più suoni alla volta, vedi :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>`.

Se è necessario riprodurre l'audio in una posizione specifica, usa invece :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` o :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Flussi audio <../tutorials/audio/audio_streams>`

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

- `Demo di cambio di periferiche audio <https://godotengine.org/asset-library/asset/2758>`__

- `Demo di generatore audio <https://godotengine.org/asset-library/asset/2759>`__

- `Demo di registro audio dal microfono <https://godotengine.org/asset-library/asset/2760>`__

- `Demo di visualizzatore spettro audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`autoplay<class_AudioStreamPlayer_property_autoplay>`           | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                | :ref:`bus<class_AudioStreamPlayer_property_bus>`                     | ``&"Master"`` |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                              | :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>` | ``1``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` | :ref:`mix_target<class_AudioStreamPlayer_property_mix_target>`       | ``0``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioStreamPlayer_property_pitch_scale>`     | ``1.0``       |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>` | :ref:`playback_type<class_AudioStreamPlayer_property_playback_type>` | ``0``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`playing<class_AudioStreamPlayer_property_playing>`             | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`              | :ref:`stream<class_AudioStreamPlayer_property_stream>`               |               |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`         | ``0.0``       |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>` |               |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AudioStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_signal_finished>`

Emesso quando un suono termina la riproduzione senza interruzioni. Questo segnale *non* viene emesso quando si chiama :ref:`stop()<class_AudioStreamPlayer_method_stop>`, o quando si esce dall'albero mentre sono riprodotti dei suoni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioStreamPlayer_MixTarget:

.. rst-class:: classref-enumeration

enum **MixTarget**: :ref:`🔗<enum_AudioStreamPlayer_MixTarget>`

.. _class_AudioStreamPlayer_constant_MIX_TARGET_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_STEREO** = ``0``

L'audio verrà riprodotto solo sul primo canale. Questa è l'impostazione predefinita.

.. _class_AudioStreamPlayer_constant_MIX_TARGET_SURROUND:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_SURROUND** = ``1``

L'audio verrà riprodotto su tutti i canali surround.

.. _class_AudioStreamPlayer_constant_MIX_TARGET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_CENTER** = ``2``

L'audio verrà riprodotto sul secondo canale, che solitamente è il centro.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

Se ``true``, questo nodo chiama :ref:`play()<class_AudioStreamPlayer_method_play>` quando entra nell'albero.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Il nome del bus di destinazione. Tutti i suoni provenienti da questo nodo saranno riprodotti su questo bus.

\ **Nota:** In fase di esecuzione, se non esiste alcun bus con il nome specificato, tutti i suoni ricadranno su ``"Master"``. Vedi anche :ref:`AudioServer.get_bus_name()<class_AudioServer_method_get_bus_name>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

Il numero massimo di suoni che questo nodo può riprodurre allo stesso tempo. Chiamando :ref:`play()<class_AudioStreamPlayer_method_play>` dopo aver raggiunto questo valore interromperà i suoni più vecchi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_mix_target:

.. rst-class:: classref-property

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **mix_target** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_mix_target>`

.. rst-class:: classref-property-setget

- |void| **set_mix_target**\ (\ value\: :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>`\ )
- :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **get_mix_target**\ (\ )

I canali di destinazione del mix. Non ha alcun effetto quando sono rilevati due altoparlanti o meno (vedi :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

Il tono e il tempo dell'audio, come moltiplicatore della frequenza di campionamento di :ref:`stream<class_AudioStreamPlayer_property_stream>`. Un valore di ``2.0`` raddoppia il tono dell'audio, mentre un valore di ``0.5`` dimezza il tono.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**Sperimentale:** Questa proprietà potrebbe essere cambiata o rimossa in versioni future.

Il tipo di riproduzione dello stream player. Se impostato diversamente dal valore predefinito, forzerà quel tipo di riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

Se ``true``, questo nodo sta riproducendo suoni. Impostare questa proprietà ha lo stesso effetto di :ref:`play()<class_AudioStreamPlayer_method_play>` e :ref:`stop()<class_AudioStreamPlayer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

La risorsa :ref:`AudioStream<class_AudioStream>` da riprodurre. Impostare questa proprietà interrompe tutti i suoni attualmente in riproduzione. Se lasciato vuoto, l'**AudioStreamPlayer** non funziona.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

Se ``true``, i suoni sono messi in pausa. Impostare :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` a ``false`` riprende tutti i suoni.

\ **Nota:** Questa proprietà viene modificata automaticamente quando si esce o si entra nell'albero, oppure quando questo nodo viene messo in pausa (vedi :ref:`Node.process_mode<class_Node_property_process_mode>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Volume del suono, in decibel. Questo è un offset del volume di :ref:`stream<class_AudioStreamPlayer_property_stream>`.

\ **Nota:** Per convertire tra decibel ed energia lineare (come fanno la maggior parte dei cursori del volume), usa :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>`, o :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` e :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

Volume del suono, come valore lineare.

\ **Nota:** Questo membro modifica :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` per comodità. Il valore restituito è equivalente al risultato di :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` su :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`. Impostare questo membro equivale a impostare :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` sul risultato di :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` su un valore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamPlayer_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_playback_position>`

Restituisce la posizione nell':ref:`AudioStream<class_AudioStream>` dell'ultimo suono, in secondi. Restituisce ``0.0`` se non è riprodotto alcun suono.

\ **Nota:** La posizione non è sempre precisa, poiché :ref:`AudioServer<class_AudioServer>` non mixa l'audio in ogni frame di processo. Per ottenere risultati più accurati, aggiungi :ref:`AudioServer.get_time_since_last_mix()<class_AudioServer_method_get_time_since_last_mix>` alla posizione restituita.

\ **Nota:** Questo metodo restituisce sempre ``0.0`` se :ref:`stream<class_AudioStreamPlayer_property_stream>` è un :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`, poiché può avere più clip in riproduzione alla volta.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_stream_playback>`

Restituisce l'ultimo :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` di questo nodo, solitamente l'ultimo creato da :ref:`play()<class_AudioStreamPlayer_method_play>`. Se non è riprodotto alcun suono, questo metodo fallisce e restituisce un riproduttore vuoto.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_has_stream_playback>`

Restituisce ``true`` se un qualunque suono è attivo, anche se :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` è impostato su ``true``. Vedi anche :ref:`playing<class_AudioStreamPlayer_property_playing>` e :ref:`get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer_method_play>`

Riproduce un suono dall'inizio, o dalla posizione ``from_position`` in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer_method_seek>`

Riavvia tutti i suoni per essere riprodotti dalla posizione ``to_position``, in secondi. Non fa nulla se non è riprodotto alcun suono.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_stop>`

Interrompe tutti i suoni da questo nodo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
