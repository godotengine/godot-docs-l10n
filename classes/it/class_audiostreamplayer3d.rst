:github_url: hide

.. meta::
	:keywords: sound, sfx

.. _class_AudioStreamPlayer3D:

AudioStreamPlayer3D
===================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Riproduce un suono posizionale in uno spazio 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Riproduce l'audio con effetti sonori posizionali, in base alla posizione relativa dell'ascoltatore audio. Gli effetti posizionali includono attenuazione della distanza, direzionalità ed effetto Doppler. Per un maggiore realismo, viene applicato un filtro passa-basso ai suoni distanti. Questo può essere disabilitato impostando :ref:`attenuation_filter_cutoff_hz<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>` su ``20500``.

Per impostazione predefinita, l'audio viene ascoltato dalla posizione della telecamera. Questo può essere modificato aggiungendo un nodo :ref:`AudioListener3D<class_AudioListener3D>` alla scena e abilitandolo chiamando :ref:`AudioListener3D.make_current()<class_AudioListener3D_method_make_current>` su di esso.

Vedi anche :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` per riprodurre un suono non posizionale.

\ **Nota:** Nascondere un nodo **AudioStreamPlayer3D** non disabilita la sua produzione audio. Per disabilitare temporaneamente la produzione audio di un'**AudioStreamPlayer3D**, imposta :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` su un valore molto basso come ``-100`` (che non è percettibile dall'udito umano).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Flussi audio <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                                              | :ref:`area_mask<class_AudioStreamPlayer3D_property_area_mask>`                                                       | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`attenuation_filter_cutoff_hz<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>`                 | ``5000.0``    |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`attenuation_filter_db<class_AudioStreamPlayer3D_property_attenuation_filter_db>`                               | ``-24.0``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` | :ref:`attenuation_model<class_AudioStreamPlayer3D_property_attenuation_model>`                                       | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`autoplay<class_AudioStreamPlayer3D_property_autoplay>`                                                         | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`bus<class_AudioStreamPlayer3D_property_bus>`                                                                   | ``&"Master"`` |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>`   | :ref:`doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>`                                         | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`emission_angle_degrees<class_AudioStreamPlayer3D_property_emission_angle_degrees>`                             | ``45.0``      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`emission_angle_enabled<class_AudioStreamPlayer3D_property_emission_angle_enabled>`                             | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`emission_angle_filter_attenuation_db<class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db>` | ``-12.0``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`max_db<class_AudioStreamPlayer3D_property_max_db>`                                                             | ``3.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>`                                                 | ``0.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                                              | :ref:`max_polyphony<class_AudioStreamPlayer3D_property_max_polyphony>`                                               | ``1``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`panning_strength<class_AudioStreamPlayer3D_property_panning_strength>`                                         | ``1.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`                                                   | ``1.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>`                 | :ref:`playback_type<class_AudioStreamPlayer3D_property_playback_type>`                                               | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`playing<class_AudioStreamPlayer3D_property_playing>`                                                           | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`                              | :ref:`stream<class_AudioStreamPlayer3D_property_stream>`                                                             |               |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`stream_paused<class_AudioStreamPlayer3D_property_stream_paused>`                                               | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>`                                                       | ``10.0``      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>`                                                       | ``0.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`volume_linear<class_AudioStreamPlayer3D_property_volume_linear>`                                               |               |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer3D_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer3D_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer3D_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer3D_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer3D_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer3D_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AudioStreamPlayer3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_signal_finished>`

Emesso al termine della riproduzione dell'audio.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioStreamPlayer3D_AttenuationModel:

.. rst-class:: classref-enumeration

enum **AttenuationModel**: :ref:`🔗<enum_AudioStreamPlayer3D_AttenuationModel>`

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_INVERSE_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_INVERSE_DISTANCE** = ``0``

Attenuazione del volume in base alla distanza lineare.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_INVERSE_SQUARE_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_INVERSE_SQUARE_DISTANCE** = ``1``

Attenuazione del volume in base al quadrato della distanza.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_LOGARITHMIC:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_LOGARITHMIC** = ``2``

Attenuazione del volume in base alla distanza logaritmica.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_DISABLED** = ``3``

Nessuna attenuazione del volume in base alla distanza. Il suono sarà comunque udito in base alla posizione, a differenza di un :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`. :ref:`ATTENUATION_DISABLED<class_AudioStreamPlayer3D_constant_ATTENUATION_DISABLED>` può essere combinato con una :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` maggiore di ``0.0`` per ottenere un'attenuazione lineare fissata a una sfera di una dimensione definita.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamPlayer3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_AudioStreamPlayer3D_DopplerTracking>`

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

Disabilita il tracciamento Doppler.

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

Esegue il tracciamento doppler durante i frame di processo (vedi :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

Esegue il tracciamento doppler durante i frame di processo di fisica (vedi :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioStreamPlayer3D_property_area_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **area_mask** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_area_mask>`

.. rst-class:: classref-property-setget

- |void| **set_area_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_area_mask**\ (\ )

Determina quali strati di un :ref:`Area3D<class_Area3D>` influenzano il suono per gli effetti di riverbero e per i bus audio. Le aree possono essere utilizzate per reindirizzare gli :ref:`AudioStream<class_AudioStream>` in modo che siano riprodotti in un determinato bus audio. Un esempio di come potrebbe essere utilizzato è creando un'area di "acqua", in modo che i suoni riprodotti nell'acqua siano reindirizzati attraverso un bus audio per farli sembrare come se fossero riprodotti sott'acqua.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation_filter_cutoff_hz** = ``5000.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_filter_cutoff_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation_filter_cutoff_hz**\ (\ )

La frequenza di taglio del filtro passa-basso di attenuazione, in Hz. Un suono al di sopra di questa frequenza viene attenuato di più di un suono al di sotto di questa frequenza. Per disabilitare questo effetto, impostalo su ``20500`` poiché questa frequenza è superiore al limite dell'udito umano.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_filter_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation_filter_db** = ``-24.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_filter_db>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_filter_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation_filter_db**\ (\ )

Quantità di quanto il filtro influisce sul volume, in decibel.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_model:

.. rst-class:: classref-property

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **attenuation_model** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_model>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_model**\ (\ value\: :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>`\ )
- :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **get_attenuation_model**\ (\ )

Decide se l'audio deve diventare più silenzioso con la distanza in modo lineare, quadratico, logaritmico o non essere influenzato dalla distanza, effettivamente disabilitando l'attenuazione.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

Se ``true``, l'audio viene riprodotto quando il nodo AudioStreamPlayer3D viene aggiunto all'albero di scene.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer3D_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Il bus su cui viene riprodotto questo audio.

\ **Nota:** Quando imposti questa proprietà, tieni presente che non viene eseguita alcuna convalida per vedere se il nome specificato corrisponde a un bus esistente. Questo perché i layout del bus audio potrebbero essere caricati dopo aver impostato questa proprietà. Se questo nome specificato non può essere risolto in fase di esecuzione, tornerà a ``"Master"``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

Decide in quale fase calcolare l'effetto Doppler.

\ **Nota:** Se :ref:`doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` non è :ref:`DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>` ma il :ref:`Camera3D<class_Camera3D>`/:ref:`AudioListener3D<class_AudioListener3D>` attuale ha il tracciamento Doppler disabilitato, l'effetto Doppler sarà udito ma non terrà conto del movimento dell'ascoltatore attuale. Se si desidera un effetto Doppler accurato, è necessario abilitare il tracciamento Doppler sia su **AudioStreamPlayer3D** sia sul :ref:`Camera3D<class_Camera3D>`/:ref:`AudioListener3D<class_AudioListener3D>` attuale.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_angle_degrees** = ``45.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_angle**\ (\ )

L'angolazione in cui l'audio raggiunge l'ascoltatore senza attenuazione.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emission_angle_enabled** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emission_angle_enabled**\ (\ )

Se ``true``, l'audio deve essere attenuato in base alla direzione del suono.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_angle_filter_attenuation_db** = ``-12.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle_filter_attenuation_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_angle_filter_attenuation_db**\ (\ )

Fattore di attenuazione usato se l'ascoltatore è al di fuori di :ref:`emission_angle_degrees<class_AudioStreamPlayer3D_property_emission_angle_degrees>` e :ref:`emission_angle_enabled<class_AudioStreamPlayer3D_property_emission_angle_enabled>` è impostato, in decibel.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_db** = ``3.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_db>`

.. rst-class:: classref-property-setget

- |void| **set_max_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_db**\ (\ )

Imposta il massimo assoluto del livello sonoro, in decibel.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

La distanza oltre la quale il suono non può più essere udito. Ha effetto solo se impostato su un valore maggiore di ``0.0``. :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` funziona in tandem con :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>`. Tuttavia, a differenza di :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>` il cui comportamento dipende da :ref:`attenuation_model<class_AudioStreamPlayer3D_property_attenuation_model>`, :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` funziona sempre in modo lineare. Questo può essere utilizzato per impedire a **AudioStreamPlayer3D** di richiedere il mixaggio audio quando l'ascoltatore è lontano, il che risparmia risorse sulla CPU.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

Il numero massimo di suoni che questo nodo può riprodurre allo stesso tempo. Riproducendo ulteriori suoni dopo aver raggiunto questo valore interromperà i suoni più vecchi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_panning_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **panning_strength** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_panning_strength>`

.. rst-class:: classref-property-setget

- |void| **set_panning_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_panning_strength**\ (\ )

Scala l'intensità del panning per questo nodo moltiplicando la :ref:`ProjectSettings.audio/general/3d_panning_strength<class_ProjectSettings_property_audio/general/3d_panning_strength>` base per questo fattore. Se il prodotto è ``0.0``, il panning stereo è disabilitato e il volume è lo stesso per tutti i canali. Se il prodotto è ``1.0``, uno dei canali sarà silenziato quando il suono si trova esattamente a sinistra (o a destra) dell'ascoltatore.

Le disposizioni stereo a due altoparlanti implementano lo `standard WebAudio per il panning StereoPannerNode <https://webaudio.github.io/web-audio-api/#stereopanner-algorithm>`__, dove il volume è il coseno di metà dell'angolo azimutale rispetto all'orecchio.

Per altre disposizioni di altoparlanti, come 5.1 e 7.1, è implementato l'algoritmo SPCAP (Speaker-Placement Correction Amplitude).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

Il tono e il tempo dell'audio, come moltiplicatore della frequenza di campionamento del campione audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**Sperimentale:** Questa proprietà potrebbe essere cambiata o rimossa in versioni future.

Il tipo di riproduzione dello stream player. Se impostato diversamente dal valore predefinito, forzerà quel tipo di riproduzione.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

Se ``true``, l'audio è in riproduzione o è in coda per la riproduzione (vedi :ref:`play()<class_AudioStreamPlayer3D_method_play>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer3D_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

La risorsa :ref:`AudioStream<class_AudioStream>` da riprodurre.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

Se ``true``, la riproduzione è in pausa. È possibile riprenderla impostando :ref:`stream_paused<class_AudioStreamPlayer3D_property_stream_paused>` su ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_unit_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **unit_size** = ``10.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_unit_size>`

.. rst-class:: classref-property-setget

- |void| **set_unit_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_unit_size**\ (\ )

Il fattore per l'effetto di attenuazione. Valori più alti rendono il suono udibile a una distanza maggiore.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Il livello sonoro di base prima dell'attenuazione, in decibel.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer3D_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

Il livello sonoro di base prima dell'attenuazione, come valore lineare.

\ **Nota:** Questo membro modifica :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` per comodità. Il valore restituito è equivalente al risultato di :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` su :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>`. Impostare questo membro equivale a impostare :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` sul risultato di :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` su un valore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioStreamPlayer3D_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_get_playback_position>`

Restituisce la posizione nell':ref:`AudioStream<class_AudioStream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_get_stream_playback>`

Restituisce l'oggetto :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` associato a questo **AudioStreamPlayer3D**.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_has_stream_playback>`

Restituisce se :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` può restituire o meno l'oggetto :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_play>`

Mette in coda l'audio da riprodurre sul frame successivo di fisica, dalla posizione specificata ``from_position``, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_seek>`

Imposta la posizione da cui sarà riprodotto l'audio, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_stop>`

Arresta l'audio.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
