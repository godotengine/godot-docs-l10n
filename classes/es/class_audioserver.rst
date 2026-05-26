:github_url: hide

.. _class_AudioServer:

AudioServer
===========

**Hereda:** :ref:`Object<class_Object>`

Interfaz de servidor para acceso de audio de bajo nivel.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**AudioServer** es una interfaz de servidor de bajo nivel para el acceso al audio. Se encarga de crear datos de muestra (audio reproducible) así como de su reproducción a través de una interfaz de voz.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

- `Demo del Cambiador de Dispositivos de Audio <https://godotengine.org/asset-library/asset/2758>`__

- `Demo de Grabación de Audio con Micrófono <https://godotengine.org/asset-library/asset/2760>`__

- `Demo de Visualizador de Espectro de Audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_AudioServer_signal_bus_layout_changed:

.. rst-class:: classref-signal

**bus_layout_changed**\ (\ ) :ref:`🔗<class_AudioServer_signal_bus_layout_changed>`

Emitida cuando se agrega, elimina o mueve un bus de audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_signal_bus_renamed:

.. rst-class:: classref-signal

**bus_renamed**\ (\ bus_index\: :ref:`int<class_int>`, old_name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioServer_signal_bus_renamed>`

Emitida cuando el bus de audio en ``bus_index`` cambia de nombre de ``old_name`` a ``new_name``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioServer_SpeakerMode:

.. rst-class:: classref-enumeration

enum **SpeakerMode**: :ref:`🔗<enum_AudioServer_SpeakerMode>`

.. _class_AudioServer_constant_SPEAKER_MODE_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_MODE_STEREO** = ``0``

Se detectaron dos o menos altavoces.

.. _class_AudioServer_constant_SPEAKER_SURROUND_31:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_31** = ``1``

Se detectó una configuración de sonido envolvente de 3.1 canales.

.. _class_AudioServer_constant_SPEAKER_SURROUND_51:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_51** = ``2``

Se detectó una configuración de sonido envolvente de 5.1 canales.

.. _class_AudioServer_constant_SPEAKER_SURROUND_71:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_71** = ``3``

Se detectó una configuración de sonido envolvente de 7.1 canales.

.. rst-class:: classref-item-separator

----

.. _enum_AudioServer_PlaybackType:

.. rst-class:: classref-enumeration

enum **PlaybackType**: :ref:`🔗<enum_AudioServer_PlaybackType>`

.. _class_AudioServer_constant_PLAYBACK_TYPE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_DEFAULT** = ``0``

**Experimental:** Esta constante podría ser modificada o eliminada en versiones futuras.

La reproducción se considerará del tipo declarado en :ref:`ProjectSettings.audio/general/default_playback_type<class_ProjectSettings_property_audio/general/default_playback_type>`.

.. _class_AudioServer_constant_PLAYBACK_TYPE_STREAM:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_STREAM** = ``1``

**Experimental:** Esta constante podría ser modificada o eliminada en versiones futuras.

Fuerza a que la reproducción se considere como una transmisión.

.. _class_AudioServer_constant_PLAYBACK_TYPE_SAMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_SAMPLE** = ``2``

**Experimental:** Esta constante podría ser modificada o eliminada en versiones futuras.

Fuerza a que la reproducción se considere una muestra. Esto puede proporcionar una latencia más baja y una reproducción más estable (con menor riesgo de crujidos de audio), a costa de una menor flexibilidad.

\ **Nota:** Actualmente solo es compatible con la plataforma web.

\ **Nota:** Los efectos de audio no son compatibles cuando la reproducción se considera una muestra.

.. _class_AudioServer_constant_PLAYBACK_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_MAX** = ``3``

**Experimental:** Esta constante podría ser modificada o eliminada en versiones futuras.

Representa el tamaño del enum :ref:`PlaybackType<enum_AudioServer_PlaybackType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioServer_property_bus_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **bus_count** = ``1`` :ref:`🔗<class_AudioServer_property_bus_count>`

.. rst-class:: classref-property-setget

- |void| **set_bus_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bus_count**\ (\ )

Número de buses de audio disponibles.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_input_device:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_device** = ``"Default"`` :ref:`🔗<class_AudioServer_property_input_device>`

.. rst-class:: classref-property-setget

- |void| **set_input_device**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_device**\ (\ )

Nombre del dispositivo actual para la entrada de audio (ver :ref:`get_input_device_list()<class_AudioServer_method_get_input_device_list>`). En sistemas con múltiples entradas de audio (como analógica, USB o HDMI), ésto se puede usar para seleccionar el dispositivo de entrada de audio. El valor ``"Default"`` grabará audio desde la entrada de audio predeterminada del sistema. Si se establece un nombre de dispositivo no válido, el valor se revertirá a ``"Default"``.

\ **Nota:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` debe ser ``true`` para que la entrada de audio funcione. Véase también la descripción de esa configuración para advertencias relacionadas con permisos y ajustes de privacidad del sistema operativo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_output_device:

.. rst-class:: classref-property

:ref:`String<class_String>` **output_device** = ``"Default"`` :ref:`🔗<class_AudioServer_property_output_device>`

.. rst-class:: classref-property-setget

- |void| **set_output_device**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_output_device**\ (\ )

Nombre del dispositivo actual para la salida de audio (ver :ref:`get_output_device_list()<class_AudioServer_method_get_output_device_list>`). En sistemas con múltiples salidas de audio (como analógica, USB o HDMI), ésto se puede usar para seleccionar el dispositivo de salida de audio. El valor ``"Default"`` reproducirá audio a través de la salida de audio predeterminada del sistema. Si se establece un nombre de dispositivo no válido, el valor se revertirá a ``"Default"``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_playback_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **playback_speed_scale** = ``1.0`` :ref:`🔗<class_AudioServer_property_playback_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_playback_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_playback_speed_scale**\ (\ )

Scales the rate at which audio is played (i.e. setting it to ``0.5`` will make the audio be played at half its speed). See also :ref:`Engine.time_scale<class_Engine_property_time_scale>` to affect the general simulation speed, which is independent from :ref:`playback_speed_scale<class_AudioServer_property_playback_speed_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioServer_method_add_bus:

.. rst-class:: classref-method

|void| **add_bus**\ (\ at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AudioServer_method_add_bus>`

Agrega un bus en ``at_position``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_add_bus_effect:

.. rst-class:: classref-method

|void| **add_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect\: :ref:`AudioEffect<class_AudioEffect>`, at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AudioServer_method_add_bus_effect>`

Agrega un efecto :ref:`AudioEffect<class_AudioEffect>` al bus ``bus_idx`` en ``at_position``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_generate_bus_layout:

.. rst-class:: classref-method

:ref:`AudioBusLayout<class_AudioBusLayout>` **generate_bus_layout**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_generate_bus_layout>`

Genera un :ref:`AudioBusLayout<class_AudioBusLayout>` usando los buses y efectos disponibles.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_channels**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_channels>`

Devuelve el número de canales del bus en el índice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect:

.. rst-class:: classref-method

:ref:`AudioEffect<class_AudioEffect>` **get_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect>`

Devuelve el :ref:`AudioEffect<class_AudioEffect>` en la posición ``effect_idx`` en el bus ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_effect_count**\ (\ bus_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect_count>`

Devuelve el número de efectos en el bus en ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect_instance:

.. rst-class:: classref-method

:ref:`AudioEffectInstance<class_AudioEffectInstance>` **get_bus_effect_instance**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect_instance>`

Devuelve la :ref:`AudioEffectInstance<class_AudioEffectInstance>` asignada al bus dado y los indices de efecto (y opcionalmente el canal).

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_index**\ (\ bus_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_index>`

Devuelve el índice del bus con el nombre ``bus_name``. Devuelve ``-1`` si no existe ningún bus con el nombre especificado.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_bus_name**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_name>`

Devuelve el nombre del bus con el índice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_peak_volume_left_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_peak_volume_left_db**\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_peak_volume_left_db>`

Devuelve el volumen máximo del altavoz izquierdo en el índice de bus ``bus_idx`` y el índice de canal ``channel``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_peak_volume_right_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_peak_volume_right_db**\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_peak_volume_right_db>`

Devuelve el volumen máximo del altavoz derecho en el índice de bus ``bus_idx`` y el índice de canal ``channel``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_send:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bus_send**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_send>`

Devuelve el nombre del bus al que envía el bus en el índice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_volume_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_volume_db**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_volume_db>`

Devuelve el volumen del bus en el índice ``bus_idx`` en dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_volume_linear:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_volume_linear**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_volume_linear>`

Devuelve el volumen del bus en el índice ``bus_idx`` como un valor lineal.

\ **Nota:** El valor devuelto es equivalente al resultado del método @GlobalScope.db_to_linear sobre el resultado del método get_bus_volume_db.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_driver_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_driver_name**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_driver_name>`

Devuelve el nombre del controlador de audio actual. El valor predeterminado suele depender del sistema operativo, pero puede sobrescribirse mediante el argumento de línea de comandos ``--audio-driver`` :doc:`../tutorials/editor/command_line_tutorial`. ``--headless`` también establece automáticamente el controlador de audio como ``Dummy``. Véase también :ref:`ProjectSettings.audio/driver/driver<class_ProjectSettings_property_audio/driver/driver>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_buffer_length_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_buffer_length_frames**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_buffer_length_frames>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Devuelve el tamaño absoluto del búfer de entrada del micrófono. Este valor se establece como un múltiplo de la latencia de audio y puede usarse para estimar la tasa mínima a la que se deben obtener los cuadros (frames).

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_device_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_input_device_list**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_device_list>`

Devuelve los nombres de todos los dispositivos de entrada de audio detectados en el sistema.

\ **Nota:** El valor de :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` debe ser ``true`` para que la entrada de audio funcione. Véase también la descripción de esta configuración para conocer las advertencias relacionadas con los permisos y la configuración de privacidad del sistema operativo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_frames:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_input_frames**\ (\ frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_input_frames>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Devuelve un :ref:`PackedVector2Array<class_PackedVector2Array>` que contiene exactamente ``frames`` muestras de audio del búfer interno del micrófono, si está disponible. De lo contrario, devuelve un :ref:`PackedVector2Array<class_PackedVector2Array>` vacío.

El búfer se llena a una tasa de :ref:`get_input_mix_rate()<class_AudioServer_method_get_input_mix_rate>` cuadros por segundo cuando :ref:`set_input_device_active()<class_AudioServer_method_set_input_device_active>` se ha configurado correctamente en ``true``.

Las muestras son valores PCM de punto flotante con signo entre ``-1`` y ``1``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_frames_available**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_frames_available>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Returns the number of frames available to read using :ref:`get_input_frames()<class_AudioServer_method_get_input_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_mix_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_input_mix_rate**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_input_mix_rate>`

Devuelve la frecuencia de muestreo en la entrada del **AudioServer**.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_mix_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_mix_rate**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_mix_rate>`

Devuelve la frecuencia de muestreo a la salida del **AudioServer**.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_output_device_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_output_device_list**\ (\ ) :ref:`🔗<class_AudioServer_method_get_output_device_list>`

Devuelve los nombres de todos los dispositivos de salida de audio detectados en el sistema.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_output_latency:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_output_latency**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_output_latency>`

Devuelve la latencia de salida efectiva del controlador de audio. Esto se basa en :ref:`ProjectSettings.audio/driver/output_latency<class_ProjectSettings_property_audio/driver/output_latency>`, pero el valor exacto devuelto varía según el sistema operativo y el controlador de audio.

\ **Nota:** Esto puede ser costoso; no se recomienda llamar al método :ref:`get_output_latency()<class_AudioServer_method_get_output_latency>` en cada fotograma.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **get_speaker_mode**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_speaker_mode>`

Devuelve la configuración de los altavoces.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_time_since_last_mix:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_time_since_last_mix**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_time_since_last_mix>`

Returns the relative time since the last mix occurred, in seconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_time_to_next_mix:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_time_to_next_mix**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_time_to_next_mix>`

Returns the relative time until the next mix occurs, in seconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_bypassing_effects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_bypassing_effects**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_bypassing_effects>`

Si es ``true``, el bus en el índice ``bus_idx`` está omitiendo los efectos.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_effect_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_effect_enabled**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_effect_enabled>`

Si es ``true``, se habilita el efecto en el índice ``effect_idx`` en el bus en el índice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_mute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_mute**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_mute>`

Si es ``true``, el bus en el índice ``bus_idx`` se silencia.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_solo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_solo**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_solo>`

Si es ``true``, el bus en el índice ``bus_idx`` está en modo solo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_stream_registered_as_sample:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stream_registered_as_sample**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioServer_method_is_stream_registered_as_sample>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Si es ``true``, la transmisión se registra como muestra. El motor no tendrá que registrarla antes de reproducirla.

Si es ``false``, la transmisión deberá registrarse antes de reproducirla. Para evitar picos de retardo, registra la transmisión como muestra con :ref:`register_stream_as_sample()<class_AudioServer_method_register_stream_as_sample>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_AudioServer_method_lock>`

Bloquea el bucle principal del controlador de audio.

\ **Nota:** Recuerda desbloquearlo después.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_move_bus:

.. rst-class:: classref-method

|void| **move_bus**\ (\ index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_move_bus>`

Mueve el bus del índice ``index`` al índice ``to_index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_register_stream_as_sample:

.. rst-class:: classref-method

|void| **register_stream_as_sample**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioServer_method_register_stream_as_sample>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Fuerza el registro de una secuencia como muestra.

\ **Nota:** Pueden producirse picos de retardo al llamar a este método, especialmente en compilaciones de un solo subproceso. Se recomienda llamar a este método durante la carga de recursos, donde el pico de retardo podría quedar oculto, en lugar de registrar la muestra justo antes de su reproducción.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_remove_bus:

.. rst-class:: classref-method

|void| **remove_bus**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_remove_bus>`

Elimina el bus en el índice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_remove_bus_effect:

.. rst-class:: classref-method

|void| **remove_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_remove_bus_effect>`

Elimina el efecto en el índice ``effect_idx`` del bus en el índice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_bypass_effects:

.. rst-class:: classref-method

|void| **set_bus_bypass_effects**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_bypass_effects>`

Si es ``true``, el bus en el índice ``bus_idx`` está omitiendo los efectos.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_effect_enabled:

.. rst-class:: classref-method

|void| **set_bus_effect_enabled**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_effect_enabled>`

Si es ``true``, se habilita el efecto en el índice ``effect_idx`` en el bus en el índice ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_layout:

.. rst-class:: classref-method

|void| **set_bus_layout**\ (\ bus_layout\: :ref:`AudioBusLayout<class_AudioBusLayout>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_layout>`

Sobrescribe el :ref:`AudioBusLayout<class_AudioBusLayout>` actualmente utilizado.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_mute:

.. rst-class:: classref-method

|void| **set_bus_mute**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_mute>`

Si es ``true``, el bus en el índice ``bus_idx`` se silencia.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_name:

.. rst-class:: classref-method

|void| **set_bus_name**\ (\ bus_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_name>`

Establece el nombre del bus en el índice ``bus_idx`` en ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_send:

.. rst-class:: classref-method

|void| **set_bus_send**\ (\ bus_idx\: :ref:`int<class_int>`, send\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_send>`

Conecta la salida del bus en ``bus_idx`` al bus llamado ``send``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_solo:

.. rst-class:: classref-method

|void| **set_bus_solo**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_solo>`

Si es ``true``, el bus en el índice ``bus_idx`` está en modo solo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_volume_db:

.. rst-class:: classref-method

|void| **set_bus_volume_db**\ (\ bus_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_volume_db>`

Establece el volumen en decibeles del bus en el índice ``bus_idx`` a ``volume_db``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_volume_linear:

.. rst-class:: classref-method

|void| **set_bus_volume_linear**\ (\ bus_idx\: :ref:`int<class_int>`, volume_linear\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_volume_linear>`

Establece el volumen como un valor lineal del bus en el índice ``bus_idx`` a ``volume_linear``.

\ **Nota:** Usar este método equivale a llamar a :ref:`set_bus_volume_db()<class_AudioServer_method_set_bus_volume_db>` con el resultado de :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` en un valor.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_enable_tagging_used_audio_streams:

.. rst-class:: classref-method

|void| **set_enable_tagging_used_audio_streams**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_enable_tagging_used_audio_streams>`

Si se establece como ``true``, todas las instancias de :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` llamarán a :ref:`AudioStreamPlayback._tag_used_streams()<class_AudioStreamPlayback_private_method__tag_used_streams>` en cada paso de la mezcla.

\ **Nota:** Esta opción está habilitada de forma predeterminada en el editor, ya que la utilizan los plugins del editor para las vistas previas de las transmisiones de audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_input_device_active:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_input_device_active**\ (\ active\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_input_device_active>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Si ``active`` es ``true``, inicia el flujo de entrada del micrófono especificado por :ref:`input_device<class_AudioServer_property_input_device>` o devuelve un error si falla.

Si ``active`` es ``false``, detiene el flujo de entrada si está en ejecución.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_swap_bus_effects:

.. rst-class:: classref-method

|void| **swap_bus_effects**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, by_effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_swap_bus_effects>`

Intercambia la posición de dos efectos en el bus ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_AudioServer_method_unlock>`

Desbloquea el bucle principal del controlador de audio. (Después de cerrarlo, siempre debes abrirlo.)

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
