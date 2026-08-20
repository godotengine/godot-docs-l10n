:github_url: hide

.. _class_AudioServer:

AudioServer
===========

**Eredita:** :ref:`Object<class_Object>`

Interfaccia di server per l'accesso ad audio di basso livello.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**AudioServer** è un'interfaccia di server di basso livello per l'accesso all'audio. È responsabile della creazione di dati campione (audio riproducibile) e della loro riproduzione tramite un'interfaccia vocale.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- `Demo di cambio di periferiche audio <https://godotengine.org/asset-library/asset/2758>`__

- `Demo di registro audio dal microfono <https://godotengine.org/asset-library/asset/2760>`__

- `Demo di visualizzatore spettro audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`       | :ref:`bus_count<class_AudioServer_property_bus_count>`                       | ``1``         |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>` | :ref:`input_device<class_AudioServer_property_input_device>`                 | ``"Default"`` |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>` | :ref:`output_device<class_AudioServer_property_output_device>`               | ``"Default"`` |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`   | :ref:`playback_speed_scale<class_AudioServer_property_playback_speed_scale>` | ``1.0``       |
   +-----------------------------+------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_bus<class_AudioServer_method_add_bus>`\ (\ at_position\: :ref:`int<class_int>` = -1\ )                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_bus_effect<class_AudioServer_method_add_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect\: :ref:`AudioEffect<class_AudioEffect>`, at_position\: :ref:`int<class_int>` = -1\ )  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioBusLayout<class_AudioBusLayout>`           | :ref:`generate_bus_layout<class_AudioServer_method_generate_bus_layout>`\ (\ ) |const|                                                                                                           |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_channels<class_AudioServer_method_get_bus_channels>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioEffect<class_AudioEffect>`                 | :ref:`get_bus_effect<class_AudioServer_method_get_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ )                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_effect_count<class_AudioServer_method_get_bus_effect_count>`\ (\ bus_idx\: :ref:`int<class_int>`\ )                                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioEffectInstance<class_AudioEffectInstance>` | :ref:`get_bus_effect_instance<class_AudioServer_method_get_bus_effect_instance>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_index<class_AudioServer_method_get_bus_index>`\ (\ bus_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_bus_name<class_AudioServer_method_get_bus_name>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_peak_volume_left_db<class_AudioServer_method_get_bus_peak_volume_left_db>`\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const|                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_peak_volume_right_db<class_AudioServer_method_get_bus_peak_volume_right_db>`\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const|                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                   | :ref:`get_bus_send<class_AudioServer_method_get_bus_send>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_volume_db<class_AudioServer_method_get_bus_volume_db>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_volume_linear<class_AudioServer_method_get_bus_volume_linear>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_driver_name<class_AudioServer_method_get_driver_name>`\ (\ ) |const|                                                                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_input_buffer_length_frames<class_AudioServer_method_get_input_buffer_length_frames>`\ (\ )                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_input_device_list<class_AudioServer_method_get_input_device_list>`\ (\ )                                                                                                               |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`   | :ref:`get_input_frames<class_AudioServer_method_get_input_frames>`\ (\ frames\: :ref:`int<class_int>`\ )                                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_input_frames_available<class_AudioServer_method_get_input_frames_available>`\ (\ )                                                                                                     |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_input_mix_rate<class_AudioServer_method_get_input_mix_rate>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_mix_rate<class_AudioServer_method_get_mix_rate>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_output_device_list<class_AudioServer_method_get_output_device_list>`\ (\ )                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_output_latency<class_AudioServer_method_get_output_latency>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`      | :ref:`get_speaker_mode<class_AudioServer_method_get_speaker_mode>`\ (\ ) |const|                                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_time_since_last_mix<class_AudioServer_method_get_time_since_last_mix>`\ (\ ) |const|                                                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_time_to_next_mix<class_AudioServer_method_get_time_to_next_mix>`\ (\ ) |const|                                                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_bypassing_effects<class_AudioServer_method_is_bus_bypassing_effects>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_effect_enabled<class_AudioServer_method_is_bus_effect_enabled>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_mute<class_AudioServer_method_is_bus_mute>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_solo<class_AudioServer_method_is_bus_solo>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_stream_registered_as_sample<class_AudioServer_method_is_stream_registered_as_sample>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ )                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`lock<class_AudioServer_method_lock>`\ (\ )                                                                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`move_bus<class_AudioServer_method_move_bus>`\ (\ index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ )                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`register_stream_as_sample<class_AudioServer_method_register_stream_as_sample>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ )                                                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_bus<class_AudioServer_method_remove_bus>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                      |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_bus_effect<class_AudioServer_method_remove_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ )                                                  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_bypass_effects<class_AudioServer_method_set_bus_bypass_effects>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_effect_enabled<class_AudioServer_method_set_bus_effect_enabled>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )     |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_layout<class_AudioServer_method_set_bus_layout>`\ (\ bus_layout\: :ref:`AudioBusLayout<class_AudioBusLayout>`\ )                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_mute<class_AudioServer_method_set_bus_mute>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_name<class_AudioServer_method_set_bus_name>`\ (\ bus_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                            |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_send<class_AudioServer_method_set_bus_send>`\ (\ bus_idx\: :ref:`int<class_int>`, send\: :ref:`StringName<class_StringName>`\ )                                                    |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_solo<class_AudioServer_method_set_bus_solo>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_volume_db<class_AudioServer_method_set_bus_volume_db>`\ (\ bus_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )                                               |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_volume_linear<class_AudioServer_method_set_bus_volume_linear>`\ (\ bus_idx\: :ref:`int<class_int>`, volume_linear\: :ref:`float<class_float>`\ )                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_enable_tagging_used_audio_streams<class_AudioServer_method_set_enable_tagging_used_audio_streams>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                 | :ref:`set_input_device_active<class_AudioServer_method_set_input_device_active>`\ (\ active\: :ref:`bool<class_bool>`\ )                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`swap_bus_effects<class_AudioServer_method_swap_bus_effects>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, by_effect_idx\: :ref:`int<class_int>`\ )             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`unlock<class_AudioServer_method_unlock>`\ (\ )                                                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AudioServer_signal_bus_layout_changed:

.. rst-class:: classref-signal

**bus_layout_changed**\ (\ ) :ref:`🔗<class_AudioServer_signal_bus_layout_changed>`

Emesso quando un bus audio viene aggiunto, eliminato, o spostato.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_signal_bus_renamed:

.. rst-class:: classref-signal

**bus_renamed**\ (\ bus_index\: :ref:`int<class_int>`, old_name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioServer_signal_bus_renamed>`

Emesso quando il bus audio a ``bus_index`` viene rinominato da ``old_name`` a ``new_name``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioServer_SpeakerMode:

.. rst-class:: classref-enumeration

enum **SpeakerMode**: :ref:`🔗<enum_AudioServer_SpeakerMode>`

.. _class_AudioServer_constant_SPEAKER_MODE_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_MODE_STEREO** = ``0``

Sono stati rilevati due o meno speaker.

.. _class_AudioServer_constant_SPEAKER_SURROUND_31:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_31** = ``1``

È stato rilevato una configurazione surround a 3.1 canali.

.. _class_AudioServer_constant_SPEAKER_SURROUND_51:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_51** = ``2``

È stata rilevata una configurazione surround a 5.1 canali.

.. _class_AudioServer_constant_SPEAKER_SURROUND_71:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_71** = ``3``

È stata rilevata una configurazione surround a 7.1 canali.

.. rst-class:: classref-item-separator

----

.. _enum_AudioServer_PlaybackType:

.. rst-class:: classref-enumeration

enum **PlaybackType**: :ref:`🔗<enum_AudioServer_PlaybackType>`

.. _class_AudioServer_constant_PLAYBACK_TYPE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_DEFAULT** = ``0``

**Sperimentale:** Questa costante potrebbe essere cambiata o rimossa in versioni future.

La riproduzione sarà considerata del tipo dichiarato a :ref:`ProjectSettings.audio/general/default_playback_type<class_ProjectSettings_property_audio/general/default_playback_type>`.

.. _class_AudioServer_constant_PLAYBACK_TYPE_STREAM:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_STREAM** = ``1``

**Sperimentale:** Questa costante potrebbe essere cambiata o rimossa in versioni future.

Costringe la riproduzione a essere considerata come un flusso.

.. _class_AudioServer_constant_PLAYBACK_TYPE_SAMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_SAMPLE** = ``2``

**Sperimentale:** Questa costante potrebbe essere cambiata o rimossa in versioni future.

Costringe la riproduzione a essere considerata come un campione. Questo può fornire latenza inferiore e una riproduzione più stabile (con meno rischio di audio scoppiettante), al costo di avere meno flessibilità.

\ **Nota:** Solo attualmente supportato sulla piattaforma web.

\ **Nota:** Gli :ref:`AudioEffect<class_AudioEffect>` non sono supportati quando la riproduzione è considerata come campione.

.. _class_AudioServer_constant_PLAYBACK_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_MAX** = ``3``

**Sperimentale:** Questa costante potrebbe essere cambiata o rimossa in versioni future.

Rappresenta la dimensione dell'enumerazione :ref:`PlaybackType<enum_AudioServer_PlaybackType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioServer_property_bus_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **bus_count** = ``1`` :ref:`🔗<class_AudioServer_property_bus_count>`

.. rst-class:: classref-property-setget

- |void| **set_bus_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bus_count**\ (\ )

Numero di bus audio disponibili.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_input_device:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_device** = ``"Default"`` :ref:`🔗<class_AudioServer_property_input_device>`

.. rst-class:: classref-property-setget

- |void| **set_input_device**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_device**\ (\ )

Nome del dispositivo attuale per l'ingresso audio (vedi :ref:`get_input_device_list()<class_AudioServer_method_get_input_device_list>`). Su sistemi con più ingressi audio (come audio analogico, USB, e HDMI), questo può essere usato per scegliere il dispositivo di ingresso audio. Il valore ``"Default"`` registrerà l'audio sull'ingresso audio predefinito a livello di sistema. Se è impostato un nome di dispositivo non valido, il valore sarà reindirizzato a ``"Default"``.

\ **Nota:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` deve essere ``true`` affinché l'input di audio funzioni. Vedi anche la descrizione di quella impostazione per avvertenze riguardo le autorizzazioni e le impostazioni sulla privacy del sistema operativo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_output_device:

.. rst-class:: classref-property

:ref:`String<class_String>` **output_device** = ``"Default"`` :ref:`🔗<class_AudioServer_property_output_device>`

.. rst-class:: classref-property-setget

- |void| **set_output_device**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_output_device**\ (\ )

Nome del dispositivo attuale per l'uscita audio (vedi :ref:`get_output_device_list()<class_AudioServer_method_get_output_device_list>`). Su sistemi con uscite audio multiple (come audio analogico, USB, e HDMI), questo può essere usato per scegliere il dispositivo di uscita audio. Il valore ``"Default"`` riprodurrà l'audio sull'uscita audio predefinita a livello di sistema. Se è impostato un nome di dispositivo non valido, il valore sarà reindirizzato a ``"Default"``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_playback_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **playback_speed_scale** = ``1.0`` :ref:`🔗<class_AudioServer_property_playback_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_playback_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_playback_speed_scale**\ (\ )

Scale la frequenza in cui l'audio viene riprodotto (ossia impostandolo a ``0.5`` farà riprodurre l'audio a metà della sua velocità). Vedi anche :ref:`Engine.time_scale<class_Engine_property_time_scale>` per influenzare la velocità di simulazione generale, che è indipendente da :ref:`playback_speed_scale<class_AudioServer_property_playback_speed_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioServer_method_add_bus:

.. rst-class:: classref-method

|void| **add_bus**\ (\ at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AudioServer_method_add_bus>`

Aggiunge un bus a ``at_position``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_add_bus_effect:

.. rst-class:: classref-method

|void| **add_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect\: :ref:`AudioEffect<class_AudioEffect>`, at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AudioServer_method_add_bus_effect>`

Aggiunge un effetto :ref:`AudioEffect<class_AudioEffect>` al bus ``bus_idx`` a ``at_position``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_generate_bus_layout:

.. rst-class:: classref-method

:ref:`AudioBusLayout<class_AudioBusLayout>` **generate_bus_layout**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_generate_bus_layout>`

Genera un :ref:`AudioBusLayout<class_AudioBusLayout>` utilizzando i bus e gli effetti disponibili.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_channels**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_channels>`

Restituisce il numero di canali del bus all'indice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect:

.. rst-class:: classref-method

:ref:`AudioEffect<class_AudioEffect>` **get_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect>`

Restituisce l':ref:`AudioEffect<class_AudioEffect>` alla posizione ``effect_idx`` nel bus ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_effect_count**\ (\ bus_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect_count>`

Restituisce il numero di effetti sul bus all'indice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect_instance:

.. rst-class:: classref-method

:ref:`AudioEffectInstance<class_AudioEffectInstance>` **get_bus_effect_instance**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect_instance>`

Restituisce l':ref:`AudioEffectInstance<class_AudioEffectInstance>` assegnato agli indici del bus e dell'effetto forniti (e facoltativamente il canale).

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_index**\ (\ bus_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_index>`

Restituisce l'indice del bus con il nome ``bus_name``. Restituisce ``-1`` se non esiste un bus con il nome specificato.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_bus_name**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_name>`

Restituisce il nome del bus con l'indice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_peak_volume_left_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_peak_volume_left_db**\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_peak_volume_left_db>`

Restituisce il volume di picco dell'altoparlante sinistro del bus all'indice ``bus_idx`` e nel canale all'indice ``channel``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_peak_volume_right_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_peak_volume_right_db**\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_peak_volume_right_db>`

Restituisce il volume di picco dell'altoparlante destro del bus all'indice ``bus_idx`` e nel canale all'indice ``channel``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_send:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bus_send**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_send>`

Restituisce il nome del bus al quale il bus all'indice ``bus_idx`` trasmette.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_volume_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_volume_db**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_volume_db>`

Restituisce il volume del bus all'indice ``bus_idx`` in dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_volume_linear:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_volume_linear**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_volume_linear>`

Restituisce il volume del bus all'indice ``bus_idx`` come valore lineare.

\ **Nota:** Il valore restituito è equivalente al risultato di :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` sul risultato di :ref:`get_bus_volume_db()<class_AudioServer_method_get_bus_volume_db>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_driver_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_driver_name**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_driver_name>`

Restituisce il nome del driver audio attuale. Il valore predefinito solitamente dipende dal sistema operativo, ma può essere sostituito tramite l':doc:`argomento della riga di comando <../tutorials/editor/command_line_tutorial>` ``--audio-driver``. ``--headless`` imposta automaticamente il driver audio su ``Dummy``. Vedi anche :ref:`ProjectSettings.audio/driver/driver<class_ProjectSettings_property_audio/driver/driver>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_buffer_length_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_buffer_length_frames**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_buffer_length_frames>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce la dimensione assoluta del buffer di input del microfono. Questo è impostato su un multiplo della latenza audio e può servire per stimare la frequenza minima alla quale bisogna recuperare i frame.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_device_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_input_device_list**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_device_list>`

Restituisce i nomi di tutti i dispositivi di ingresso audio rilevati sul sistema.

\ **Nota:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` deve essere ``true`` affinché l'input di audio funzioni. Vedi anche la descrizione di quella impostazione per avvertenze riguardo le autorizzazioni e le impostazioni sulla privacy del sistema operativo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_frames:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_input_frames**\ (\ frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_input_frames>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce un :ref:`PackedVector2Array<class_PackedVector2Array>` contenente esattamente ``frames`` campioni audio dal buffer interno del microfono, se disponibile, altrimenti restituisce un :ref:`PackedVector2Array<class_PackedVector2Array>` vuoto.

Il buffer viene riempito alla frequenza di :ref:`get_input_mix_rate()<class_AudioServer_method_get_input_mix_rate>` frame al secondo quando :ref:`set_input_device_active()<class_AudioServer_method_set_input_device_active>` è stato impostato con successo su ``true``.

I campioni sono valori PCM a virgola mobile con segno, compresi tra ``-1`` e ``1``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_frames_available**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_frames_available>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce il numero di frame disponibili per la lettura usando :ref:`get_input_frames()<class_AudioServer_method_get_input_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_mix_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_input_mix_rate**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_input_mix_rate>`

Restituisce la frequenza di campionamento all'uscita dell'**AudioServer**.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_mix_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_mix_rate**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_mix_rate>`

Restituisce la frequenza di campionamento all'uscita del **AudioServer**.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_output_device_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_output_device_list**\ (\ ) :ref:`🔗<class_AudioServer_method_get_output_device_list>`

Restituisce i nomi di tutti i dispositivi di uscita audio rilevati sul sistema.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_output_latency:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_output_latency**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_output_latency>`

Restituisce la latenza di uscita effettiva del driver audio. Questo si basa su :ref:`ProjectSettings.audio/driver/output_latency<class_ProjectSettings_property_audio/driver/output_latency>`, ma il valore esatto restituito sarà diverso a seconda del sistema operativo e del driver audio.

\ **Nota:** Questo può essere costoso; non è consigliato chiamare :ref:`get_output_latency()<class_AudioServer_method_get_output_latency>` ogni frame.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **get_speaker_mode**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_speaker_mode>`

Restituisce la configurazione degli speaker.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_time_since_last_mix:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_time_since_last_mix**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_time_since_last_mix>`

Restituisce il tempo relativo trascorso dall'ultimo mixaggio, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_time_to_next_mix:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_time_to_next_mix**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_time_to_next_mix>`

Restituisce il tempo relativo che manca per il prossimo mixaggio, in secondi.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_bypassing_effects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_bypassing_effects**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_bypassing_effects>`

Se ``true``, il bus all'indice ``bus_idx`` sta bypassando gli effetti.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_effect_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_effect_enabled**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_effect_enabled>`

Se ``true``, l'effetto all'indice ``effect_idx`` sul bus all'indice ``bus_idx`` è abilitato.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_mute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_mute**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_mute>`

Se ``true``, il bus all'indice ``bus_idx`` è muto.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_solo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_solo**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_solo>`

Se ``true``, il bus all'indice ``bus_idx`` è in modalità assolo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_stream_registered_as_sample:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stream_registered_as_sample**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioServer_method_is_stream_registered_as_sample>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Se ``true``, il flusso è registrato come campione. Il motore non lo dovrà registrare prima di riprodurre il campione.

Se ``false``, il flusso dovrà essere registrato prima di essere riprodotto. Per prevenire i picchi di ritardo, registra il flusso come campione con :ref:`register_stream_as_sample()<class_AudioServer_method_register_stream_as_sample>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_AudioServer_method_lock>`

Blocca il ciclo principale del driver audio.

\ **Nota:** Ricorda di sbloccarlo successivamente.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_move_bus:

.. rst-class:: classref-method

|void| **move_bus**\ (\ index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_move_bus>`

Sposta il bus dall'indice ``index`` all'indice ``to_index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_register_stream_as_sample:

.. rst-class:: classref-method

|void| **register_stream_as_sample**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioServer_method_register_stream_as_sample>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Obbliga la registrazione di un flusso come campione.

\ **Nota:** Si possono verificare i picchi di ritardo quando si chiama questo metodo, soprattutto su build a thread singolo. Si suggerisce di chiamare questo metodo durante il caricamento delle risorse, dove il picco di ritardo potrebbe essere mascherato, invece di registrare il campione subito prima che debba essere riprodotto.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_remove_bus:

.. rst-class:: classref-method

|void| **remove_bus**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_remove_bus>`

Rimuove il bus all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_remove_bus_effect:

.. rst-class:: classref-method

|void| **remove_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_remove_bus_effect>`

Rimuove l'effetto all'indice ``effect_idx`` dal bus all'indice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_bypass_effects:

.. rst-class:: classref-method

|void| **set_bus_bypass_effects**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_bypass_effects>`

Se ``true``, il bus all'indice ``bus_idx`` sta bypassando gli effetti.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_effect_enabled:

.. rst-class:: classref-method

|void| **set_bus_effect_enabled**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_effect_enabled>`

Se ``true``, l'effetto all'indice ``effect_idx`` sul bus all'indice ``bus_idx`` è abilitato.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_layout:

.. rst-class:: classref-method

|void| **set_bus_layout**\ (\ bus_layout\: :ref:`AudioBusLayout<class_AudioBusLayout>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_layout>`

Sostituisce l':ref:`AudioBusLayout<class_AudioBusLayout>` attualmente utilizzato.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_mute:

.. rst-class:: classref-method

|void| **set_bus_mute**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_mute>`

Se ``true``, il bus all'indice ``bus_idx`` è muto.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_name:

.. rst-class:: classref-method

|void| **set_bus_name**\ (\ bus_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_name>`

Imposta il nome del bus all'indice ``bus_idx`` a ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_send:

.. rst-class:: classref-method

|void| **set_bus_send**\ (\ bus_idx\: :ref:`int<class_int>`, send\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_send>`

Collega l'uscita del bus all'indice ``bus_idx`` al bus con il nome ``send``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_solo:

.. rst-class:: classref-method

|void| **set_bus_solo**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_solo>`

Se ``true``, il bus all'indice ``bus_idx`` è in modalità assolo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_volume_db:

.. rst-class:: classref-method

|void| **set_bus_volume_db**\ (\ bus_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_volume_db>`

Imposta il volume in decibel del bus all'indice ``bus_idx`` su ``volume_db``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_volume_linear:

.. rst-class:: classref-method

|void| **set_bus_volume_linear**\ (\ bus_idx\: :ref:`int<class_int>`, volume_linear\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_volume_linear>`

Imposta il volume come valore lineare del bus all'indice ``bus_idx`` su ``volume_linear``.

\ **Nota:** L'utilizzo di questo metodo equivale a chiamare :ref:`set_bus_volume_db()<class_AudioServer_method_set_bus_volume_db>` con il risultato di :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` su un valore.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_enable_tagging_used_audio_streams:

.. rst-class:: classref-method

|void| **set_enable_tagging_used_audio_streams**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_enable_tagging_used_audio_streams>`

Se impostato su ``true``, tutte le istanze di :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` chiameranno :ref:`AudioStreamPlayback._tag_used_streams()<class_AudioStreamPlayback_private_method__tag_used_streams>` ogni passo di mixaggio.

\ **Nota:** Questo è abilitato per impostazione predefinita nell'editor, in quanto viene utilizzato dai plugin dell'editor per le anteprime del flusso audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_input_device_active:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_input_device_active**\ (\ active\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_input_device_active>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Se ``active`` è ``true``, avvia il flusso di input del microfono specificato da :ref:`input_device<class_AudioServer_property_input_device>` o restituisce un errore se non riesce.

Se ``active`` è ``false``, interrompe il flusso di input se è in esecuzione.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_swap_bus_effects:

.. rst-class:: classref-method

|void| **swap_bus_effects**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, by_effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_swap_bus_effects>`

Scambia la posizione di due effetti nel bus all'indice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_AudioServer_method_unlock>`

Sblocca il loop principale del driver audio. (Dopo averlo bloccato, dovresti sempre sbloccarlo.)

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
