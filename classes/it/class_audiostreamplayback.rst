:github_url: hide

.. _class_AudioStreamPlayback:

AudioStreamPlayback
===================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AudioStreamPlaybackInteractive<class_AudioStreamPlaybackInteractive>`, :ref:`AudioStreamPlaybackPlaylist<class_AudioStreamPlaybackPlaylist>`, :ref:`AudioStreamPlaybackPolyphonic<class_AudioStreamPlaybackPolyphonic>`, :ref:`AudioStreamPlaybackResampled<class_AudioStreamPlaybackResampled>`, :ref:`AudioStreamPlaybackSynchronized<class_AudioStreamPlaybackSynchronized>`

Classe meta per la riproduzione audio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Può riprodurre, ripetere, mettere in pausa uno scorrimento attraverso l'audio. Vedi :ref:`AudioStream<class_AudioStream>` e :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` per l'uso.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di generatore audio <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`_get_loop_count<class_AudioStreamPlayback_private_method__get_loop_count>`\ (\ ) |virtual| |const|                                                                                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                         | :ref:`_get_parameter<class_AudioStreamPlayback_private_method__get_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`_get_playback_position<class_AudioStreamPlayback_private_method__get_playback_position>`\ (\ ) |virtual| |required| |const|                                                       |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`_is_playing<class_AudioStreamPlayback_private_method__is_playing>`\ (\ ) |virtual| |required| |const|                                                                             |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`_mix<class_AudioStreamPlayback_private_method__mix>`\ (\ buffer\: ``AudioFrame*``, rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_seek<class_AudioStreamPlayback_private_method__seek>`\ (\ position\: :ref:`float<class_float>`\ ) |virtual|                                                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_set_parameter<class_AudioStreamPlayback_private_method__set_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual|       |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_start<class_AudioStreamPlayback_private_method__start>`\ (\ from_pos\: :ref:`float<class_float>`\ ) |virtual| |required|                                                         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_stop<class_AudioStreamPlayback_private_method__stop>`\ (\ ) |virtual| |required|                                                                                                 |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_tag_used_streams<class_AudioStreamPlayback_private_method__tag_used_streams>`\ (\ ) |virtual|                                                                                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_loop_count<class_AudioStreamPlayback_method_get_loop_count>`\ (\ ) |const|                                                                                                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayback_method_get_playback_position>`\ (\ ) |const|                                                                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioSamplePlayback<class_AudioSamplePlayback>` | :ref:`get_sample_playback<class_AudioStreamPlayback_method_get_sample_playback>`\ (\ ) |const|                                                                                          |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_playing<class_AudioStreamPlayback_method_is_playing>`\ (\ ) |const|                                                                                                            |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`   | :ref:`mix_audio<class_AudioStreamPlayback_method_mix_audio>`\ (\ rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayback_method_seek>`\ (\ time\: :ref:`float<class_float>` = 0.0\ )                                                                                        |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_sample_playback<class_AudioStreamPlayback_method_set_sample_playback>`\ (\ playback_sample\: :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`\ )                         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`start<class_AudioStreamPlayback_method_start>`\ (\ from_pos\: :ref:`float<class_float>` = 0.0\ )                                                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayback_method_stop>`\ (\ )                                                                                                                                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamPlayback_private_method__get_loop_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_loop_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_loop_count>`

Metodo sovrascrivibile. Dovrebbe restituire quante volte questo flusso audio si è ripetuto. La maggior parte dei riproduttori integrati restituiscono sempre ``0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__get_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_parameter>`

Restituisce il valore attuale di un parametro di riproduzione per nome (vedi :ref:`AudioStream._get_parameter_list()<class_AudioStream_private_method__get_parameter_list>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_playback_position>`

Metodo sovrascrivibile. Dovrebbe restituire il progresso attuale lungo il flusso audio, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__is_playing>`

Metodo sovrascrivibile. Dovrebbe restituire ``true`` se questo riproduttore è attivo e sta riproducendo il suo flusso audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__mix:

.. rst-class:: classref-method

:ref:`int<class_int>` **_mix**\ (\ buffer\: ``AudioFrame*``, rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__mix>`

Sovrascrivi questo metodo per personalizzare come il flusso audio è mixato. Questo metodo viene chiamato anche se il riproduttore non è attivo.

\ **Nota:** Non è utile sovrascrivere questo metodo in GDScript o C#. Solo GDExtension può usufruirne.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ position\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__seek>`

Sovrascrivi questo metodo per personalizzare cosa succede quando cerchi questo flusso audio alla posizione ``position`` specificata, ad esempio chiamando :ref:`AudioStreamPlayer.seek()<class_AudioStreamPlayer_method_seek>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__set_parameter:

.. rst-class:: classref-method

|void| **_set_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__set_parameter>`

Imposta il valore attuale di un parametro di riproduzione per nome (vedi :ref:`AudioStream._get_parameter_list()<class_AudioStream_private_method__get_parameter_list>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__start:

.. rst-class:: classref-method

|void| **_start**\ (\ from_pos\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__start>`

Sovrascrivi questo metodo per personalizzare cosa succede quando la riproduzione inizia nella posizione specificata, ad esempio chiamando :ref:`AudioStreamPlayer.play()<class_AudioStreamPlayer_method_play>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__stop>`

Sovrascrivi questo metodo per personalizzare cosa succede quando la riproduzione è interrotta, ad esempio chiamando :ref:`AudioStreamPlayer.stop()<class_AudioStreamPlayer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__tag_used_streams:

.. rst-class:: classref-method

|void| **_tag_used_streams**\ (\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__tag_used_streams>`

Metodo sovrascrivibile. Chiamato ogni volta che il flusso audio viene mixato se la riproduzione è attiva e :ref:`AudioServer.set_enable_tagging_used_audio_streams()<class_AudioServer_method_set_enable_tagging_used_audio_streams>` è stato impostato su ``true``. I plugin dell'editor possono utilizzare questo metodo per "taggare" la posizione corrente lungo il flusso audio e visualizzarla in un'anteprima.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_loop_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loop_count**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_loop_count>`

Restituisce il numero di volte che il flusso si è ripetuto.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_playback_position>`

Restituisce la posizione attuale nel flusso, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_sample_playback:

.. rst-class:: classref-method

:ref:`AudioSamplePlayback<class_AudioSamplePlayback>` **get_sample_playback**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_sample_playback>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce l':ref:`AudioSamplePlayback<class_AudioSamplePlayback>` associato a questo **AudioStreamPlayback** per riprodurre il campione audio di questo flusso.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_is_playing>`

Restituisce ``true`` se il flusso è in riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **mix_audio**\ (\ rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlayback_method_mix_audio>`

Mixa fino a ``frames`` frame di audio dal flusso dalla posizione attuale, a una velocità di ``rate_scale``, facendo avanzare il flusso.

Restituisce un :ref:`PackedVector2Array<class_PackedVector2Array>` in cui ogni elemento contiene i livelli del volume del canale sinistro e destro di ogni frame.

\ **Nota:** Può restituire meno frame di quelli richiesti, assicurati di usare la dimensione del valore restituito.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ time\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayback_method_seek>`

Cerca il flusso al tempo ``time``, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_set_sample_playback:

.. rst-class:: classref-method

|void| **set_sample_playback**\ (\ playback_sample\: :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`\ ) :ref:`🔗<class_AudioStreamPlayback_method_set_sample_playback>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Associa l':ref:`AudioSamplePlayback<class_AudioSamplePlayback>` a questo **AudioStreamPlayback** per riprodurre il campione audio di questo flusso.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ from_pos\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayback_method_start>`

Avvia il flusso dalla posizione ``from_pos``, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayback_method_stop>`

Arresta il flusso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
