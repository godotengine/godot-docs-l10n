:github_url: hide

.. _class_AudioStream:

AudioStream
===========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AudioStreamGenerator<class_AudioStreamGenerator>`, :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`, :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`, :ref:`AudioStreamMP3<class_AudioStreamMP3>`, :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`, :ref:`AudioStreamPlaylist<class_AudioStreamPlaylist>`, :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`, :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, :ref:`AudioStreamSynchronized<class_AudioStreamSynchronized>`, :ref:`AudioStreamWAV<class_AudioStreamWAV>`

Classe di base per i flussi audio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Base class for audio streams. Audio streams are used for sound effects and music playback, and support WAV (via :ref:`AudioStreamWAV<class_AudioStreamWAV>`), Ogg (via :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`), and MP3 (via :ref:`AudioStreamMP3<class_AudioStreamMP3>`) file formats.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Flussi audio <../tutorials/audio/audio_streams>`

- `Demo di generatore audio <https://godotengine.org/asset-library/asset/2759>`__

- `Demo di registro audio dal microfono <https://godotengine.org/asset-library/asset/2760>`__

- `Demo di visualizzatore spettro audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_bar_beats<class_AudioStream_private_method__get_bar_beats>`\ (\ ) |virtual| |const|                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_beat_count<class_AudioStream_private_method__get_beat_count>`\ (\ ) |virtual| |const|                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_bpm<class_AudioStream_private_method__get_bpm>`\ (\ ) |virtual| |const|                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_length<class_AudioStream_private_method__get_length>`\ (\ ) |virtual| |const|                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_parameter_list<class_AudioStream_private_method__get_parameter_list>`\ (\ ) |virtual| |const|                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_stream_name<class_AudioStream_private_method__get_stream_name>`\ (\ ) |virtual| |const|                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_tags<class_AudioStream_private_method__get_tags>`\ (\ ) |virtual| |const|                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_loop<class_AudioStream_private_method__has_loop>`\ (\ ) |virtual| |const|                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`            | :ref:`_instantiate_playback<class_AudioStream_private_method__instantiate_playback>`\ (\ ) |virtual| |required| |const| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_monophonic<class_AudioStream_private_method__is_monophonic>`\ (\ ) |virtual| |const|                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_be_sampled<class_AudioStream_method_can_be_sampled>`\ (\ ) |const|                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioSample<class_AudioSample>`                            | :ref:`generate_sample<class_AudioStream_method_generate_sample>`\ (\ ) |const|                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_length<class_AudioStream_method_get_length>`\ (\ ) |const|                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`            | :ref:`instantiate_playback<class_AudioStream_method_instantiate_playback>`\ (\ )                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_meta_stream<class_AudioStream_method_is_meta_stream>`\ (\ ) |const|                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_monophonic<class_AudioStream_method_is_monophonic>`\ (\ ) |const|                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AudioStream_signal_parameter_list_changed:

.. rst-class:: classref-signal

**parameter_list_changed**\ (\ ) :ref:`🔗<class_AudioStream_signal_parameter_list_changed>`

Segnale da emettere per notificare quando la lista dei parametri è modificata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStream_private_method__get_bar_beats:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_bar_beats**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bar_beats>`

Sovrascrivi questo metodo per restituire i battiti per battuta di questo flusso.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_beat_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_beat_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_beat_count>`

Metodo sovrascivibile. Dovrebbe restituire il numero totale di battiti di questo flusso audio. Utilizzato dal motore per determinare la posizione di ogni battito.

Idealmente, il valore restituito dovrebbe essere basato sulla frequenza di campionamento del flusso (:ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`, per esempio).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_bpm**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bpm>`

Metodo sovrascivibile. Dovrebbe restituire il tempo di questo flusso audio, in battiti al minuto (BPM). Utilizzato dal motore per determinare la posizione di ogni battito.

Idealmente, il valore restituito dovrebbe essere basato sulla frequenza di campionamento del flusso (:ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`, per esempio).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_length>`

Sovrascrivi questo metodo per personalizzare il valore restituito da :ref:`get_length()<class_AudioStream_method_get_length>`. Dovrebbe restituire la durata di questo flusso audio, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_parameter_list>`

Restituite i parametri controllabili di questo flusso. Questo array contiene dizionari con un formato di descrizione della proprietà (vedi :ref:`Object.get_property_list()<class_Object_method_get_property_list>`). Inoltre, un valore predefinito per questo parametro deve essere aggiunto a ogni dizionario nel campo "default_value".

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_stream_name**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_stream_name>`

Sovrascrivi questo metodo per personalizzare il nome assegnato a questo flusso audio. Non usato dal motore.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_tags:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_tags**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_tags>`

Sovrascrivi questo metodo per personalizzare i tag per questo flusso audio. Dovrebbe restituire un :ref:`Dictionary<class_Dictionary>` di stringhe con il tag come chiave e il suo contenuto come valore.

I tag comunemente utilizzati includono ``title``, ``artist``, ``album``, ``tracknumber`` e ``date``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__has_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_loop**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__has_loop>`

Sovrascrivi questo metodo per restituire ``true`` se questo flusso si ripete.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStream_private_method__instantiate_playback>`

Sovrascrivi questo metodo per personalizzare il valore restituito da :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>`. Dovrebbe restituire un nuovo :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` creato quando il flusso viene riprodotto (come da un :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_monophonic**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__is_monophonic>`

Sovrascrivi questo metodo per personalizzare il valore restituito da :ref:`is_monophonic()<class_AudioStream_method_is_monophonic>`. Dovrebbe restituire ``true`` se questo flusso audio supporta solo un canale.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_can_be_sampled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_be_sampled**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_can_be_sampled>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce se l'**AudioStream** attuale può essere utilizzato come campione. Solo i flussi statici possono essere campionati.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_generate_sample:

.. rst-class:: classref-method

:ref:`AudioSample<class_AudioSample>` **generate_sample**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_generate_sample>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Genera un :ref:`AudioSample<class_AudioSample>` basato sul flusso attuale.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_get_length>`

Restituisce la durata del flusso audio in secondi. Se questo flusso è un :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, restituisce la durata dell'ultimo flusso riprodotto. Se questo flusso ha una lunghezza indefinita (ad esempio per :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` e :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`), restituisce ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **instantiate_playback**\ (\ ) :ref:`🔗<class_AudioStream_method_instantiate_playback>`

Restituisce un :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` nuovamente creato, a scopo di riprodurre questo flusso audio. Utile per quando si desidera estendere :ref:`_instantiate_playback()<class_AudioStream_private_method__instantiate_playback>` ma chiamando :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>` da una sotto-risorsa AudioStream mantenuta internamente. È possibile trovare un esempio al riguardo nel codice sorgente per ``AudioStreamRandomPitch::instantiate_playback``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_meta_stream:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_meta_stream**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_meta_stream>`

Restituisce ``true`` se il flusso è una collezione di altri flussi, altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_monophonic**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_monophonic>`

Restituisce ``true`` se questo flusso audio supporta solo un canale (*monofonia*), o ``false`` se il flusso audio supporta due o più canali (*polifonia*).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
