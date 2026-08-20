:github_url: hide

.. _class_VideoStreamPlayback:

VideoStreamPlayback
===================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe interna utilizzata da :ref:`VideoStream<class_VideoStream>` per gestire lo stato di riproduzione quando viene riprodotto da un :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe è pensata per essere sostituita dalle estensioni del decoder video con implementazioni personalizzate di :ref:`VideoStream<class_VideoStream>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_channels<class_VideoStreamPlayback_private_method__get_channels>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_length<class_VideoStreamPlayback_private_method__get_length>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_mix_rate<class_VideoStreamPlayback_private_method__get_mix_rate>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_playback_position<class_VideoStreamPlayback_private_method__get_playback_position>`\ (\ ) |virtual| |const|                                                                                                          |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_get_texture<class_VideoStreamPlayback_private_method__get_texture>`\ (\ ) |virtual| |const|                                                                                                                              |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_paused<class_VideoStreamPlayback_private_method__is_paused>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_playing<class_VideoStreamPlayback_private_method__is_playing>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_play<class_VideoStreamPlayback_private_method__play>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_seek<class_VideoStreamPlayback_private_method__seek>`\ (\ time\: :ref:`float<class_float>`\ ) |virtual|                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_audio_track<class_VideoStreamPlayback_private_method__set_audio_track>`\ (\ idx\: :ref:`int<class_int>`\ ) |virtual|                                                                                                 |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_paused<class_VideoStreamPlayback_private_method__set_paused>`\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                      |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_stop<class_VideoStreamPlayback_private_method__stop>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_update<class_VideoStreamPlayback_private_method__update>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required|                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`mix_audio<class_VideoStreamPlayback_method_mix_audio>`\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_VideoStreamPlayback_private_method__get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_channels**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_channels>`

Restituisce il numero di canali audio.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_length>`

Restituisce la durata del video in secondi, se nota, oppure 0 se sconosciuta.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_mix_rate**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_mix_rate>`

Restituisce la frequenza di campionamento audio utilizzata per il mixaggio.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_playback_position>`

Restituisce il timestamp di riproduzione attuale. Chiamato in risposta al getter di :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_texture**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_texture>`

Assegna una :ref:`Texture2D<class_Texture2D>` in cui saranno disegnati i fotogrammi video decodificati.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_paused:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_paused**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_paused>`

Restituisce lo stato di pausa, come impostato da :ref:`_set_paused()<class_VideoStreamPlayback_private_method__set_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_playing>`

Restituisce lo stato di riproduzione, come determinato dalle chiamate a :ref:`_play()<class_VideoStreamPlayback_private_method__play>` e :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__play:

.. rst-class:: classref-method

|void| **_play**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__play>`

Chiamato in risposta a :ref:`VideoStreamPlayer.autoplay<class_VideoStreamPlayer_property_autoplay>` o :ref:`VideoStreamPlayer.play()<class_VideoStreamPlayer_method_play>`. Nota che la riproduzione manuale potrebbe anche richiamare :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>` più volte prima che questo metodo sia chiamato. :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` dovrebbe restituire ``true`` una volta in riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ time\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__seek>`

Ricerca a ``time`` secondi. Chiamato in risposta al setter di :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_audio_track:

.. rst-class:: classref-method

|void| **_set_audio_track**\ (\ idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_audio_track>`

Seleziona la traccia audio all'indice ``idx``. Chiamato all'avvio della riproduzione e in risposta al setter di :ref:`VideoStreamPlayer.audio_track<class_VideoStreamPlayer_property_audio_track>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_paused:

.. rst-class:: classref-method

|void| **_set_paused**\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_paused>`

Imposta lo stato di pausa della riproduzione video. :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` deve restituire ``paused``. Chiamato in risposta al setter di :ref:`VideoStreamPlayer.paused<class_VideoStreamPlayer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__stop>`

Arresta la riproduzione. Può essere chiamato più volte prima di :ref:`_play()<class_VideoStreamPlayback_private_method__play>`, o in risposta a :ref:`VideoStreamPlayer.stop()<class_VideoStreamPlayer_method_stop>`. :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` dovrebbe restituire ``false`` una volta arrestato.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__update:

.. rst-class:: classref-method

|void| **_update**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_VideoStreamPlayback_private_method__update>`

Elabora la riproduzione video per ``delta`` secondi. Chiamato ogni frame finché sia :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` sia :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` restituiscono ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`int<class_int>` **mix_audio**\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_VideoStreamPlayback_method_mix_audio>`

Genera ``num_frames`` frame audio (di :ref:`_get_channels()<class_VideoStreamPlayback_private_method__get_channels>` float ciascuno) da ``buffer``, a partire dall'indice ``offset`` nell'array. Restituisce il numero di frame audio generati oppure -1 in caso di errore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
