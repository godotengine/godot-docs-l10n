:github_url: hide

.. meta::
	:keywords: sound, sfx

.. _class_AudioStreamPlayer3D:

AudioStreamPlayer3D
===================

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Reproduce sonido posicional en el espacio 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Reproduce audio con efectos de sonido posicionales, basados en la posición relativa del oyente de audio. Los efectos posicionales incluyen atenuación por distancia, direccionalidad y efecto Doppler. Para mayor realismo, se aplica un filtro pasa-bajos a los sonidos distantes. Esto se puede desactivar estableciendo :ref:`attenuation_filter_cutoff_hz<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>` en ``20500``.

Por defecto, el audio se escucha desde la posición de la cámara. Esto se puede cambiar agregando un nodo :ref:`AudioListener3D<class_AudioListener3D>` a la escena y activándolo llamando a :ref:`AudioListener3D.make_current()<class_AudioListener3D_method_make_current>`.

Véase también :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` para reproducir un sonido sin posicionamiento.

\ **Nota:** Ocultar un nodo **AudioStreamPlayer3D** no desactiva su salida de audio. Para desactivar temporalmente el audio de un **AudioStreamPlayer3D**, establece :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` a un valor muy bajo como ``-100`` (que no es audible para el oído humano).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Corriente de Audio <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_AudioStreamPlayer3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_signal_finished>`

Emitida cuando el audio deja de reproducirse.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioStreamPlayer3D_AttenuationModel:

.. rst-class:: classref-enumeration

enum **AttenuationModel**: :ref:`🔗<enum_AudioStreamPlayer3D_AttenuationModel>`

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_INVERSE_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_INVERSE_DISTANCE** = ``0``

Atenuación de la sonoridad según la distancia lineal.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_INVERSE_SQUARE_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_INVERSE_SQUARE_DISTANCE** = ``1``

Atenuación de la sonoridad según la distancia al cuadrado.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_LOGARITHMIC:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_LOGARITHMIC** = ``2``

Atenuación de la sonoridad según la distancia logarítmica.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_DISABLED** = ``3``

Sin atenuación de la sonoridad según la distancia. El sonido seguirá oyéndose posicionalmente, a diferencia de un :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`. :ref:`ATTENUATION_DISABLED<class_AudioStreamPlayer3D_constant_ATTENUATION_DISABLED>` se puede combinar con un valor de :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` mayor que ``0.0`` para lograr una atenuación lineal sujeta a una esfera de un tamaño definido.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamPlayer3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_AudioStreamPlayer3D_DopplerTracking>`

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

Desactiva el rastreo doppler.

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

Ejecuta el seguimiento Doppler durante los fotogramas del proceso (véase :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

Ejecuta el seguimiento Doppler durante los fotogramas de la física (véase :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamPlayer3D_property_area_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **area_mask** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_area_mask>`

.. rst-class:: classref-property-setget

- |void| **set_area_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_area_mask**\ (\ )

Determina qué capas de :ref:`Area3D<class_Area3D>` afectan el sonido para la reverberación y los efectos del bus de audio. Las áreas pueden usarse para redirigir :ref:`AudioStream<class_AudioStream>`\ s para que se reproduzcan en un bus de audio determinado. Un ejemplo de cómo podrías usar esto es creando un área de "agua" para que los sonidos reproducidos en el agua sean redirigidos a través de un bus de audio para hacer que suenen como si se estuvieran reproduciendo bajo el agua.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation_filter_cutoff_hz** = ``5000.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_filter_cutoff_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation_filter_cutoff_hz**\ (\ )

La frecuencia de corte del filtro de paso bajo de atenuación, en Hz. Un sonido por encima de esta frecuencia se atenúa más que un sonido por debajo de esta frecuencia. Para deshabilitar este efecto, establece esto en ``20500``, ya que esta frecuencia está por encima del límite de audición humana.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_filter_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation_filter_db** = ``-24.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_filter_db>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_filter_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation_filter_db**\ (\ )

Cantidad en que el filtro afecta el volumen, en decibelios.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_model:

.. rst-class:: classref-property

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **attenuation_model** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_model>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_model**\ (\ value\: :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>`\ )
- :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **get_attenuation_model**\ (\ )

Decide si el audio debe ser más silencioso con la distancia lineal, cuadrática, logarítmica, o no ser afectado por la distancia, desactivando efectivamente la atenuación.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

Si es ``true``, el audio se reproduce cuando el nodo AudioStreamPlayer3D se añade al árbol de escenas.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer3D_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

El bus en el que se está reproduciendo este audio.

\ **Nota:** Al establecer esta propiedad, ten en cuenta que no se realiza ninguna validación para comprobar si el nombre dado coincide con un bus existente. Esto se debe a que las configuraciones de los buses de audio podrían cargarse después de que se establezca esta propiedad. Si este nombre dado no puede resolverse en tiempo de ejecución, se recurrirá a ``"Master"``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

Decide en qué paso se debe calcular el efecto Doppler.

\ **Nota:** Si :ref:`doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` no es :ref:`DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>` pero el :ref:`Camera3D<class_Camera3D>`/:ref:`AudioListener3D<class_AudioListener3D>` actual tiene el seguimiento Doppler deshabilitado, el efecto Doppler se escuchará pero no tendrá en cuenta el movimiento del oyente actual. Si se desea un efecto Doppler preciso, el seguimiento Doppler debe estar habilitado tanto en el **AudioStreamPlayer3D** como en el :ref:`Camera3D<class_Camera3D>`/:ref:`AudioListener3D<class_AudioListener3D>` actual.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_angle_degrees** = ``45.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_angle**\ (\ )

El ángulo en el que el audio llega a un oyente sin atenuarse.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emission_angle_enabled** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emission_angle_enabled**\ (\ )

Si es ``true``, el audio debe atenuarse según la dirección del sonido.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_angle_filter_attenuation_db** = ``-12.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle_filter_attenuation_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_angle_filter_attenuation_db**\ (\ )

Factor de atenuación utilizado si el oyente está fuera de :ref:`emission_angle_degrees<class_AudioStreamPlayer3D_property_emission_angle_degrees>` y :ref:`emission_angle_enabled<class_AudioStreamPlayer3D_property_emission_angle_enabled>` está habilitado, en decibelios.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_db** = ``3.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_db>`

.. rst-class:: classref-property-setget

- |void| **set_max_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_db**\ (\ )

Establece el máximo absoluto del nivel de sonido, en decibelios.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

La distancia a partir de la cual el sonido ya no se puede escuchar en absoluto. Solo tiene efecto si se establece a un valor mayor que ``0.0``. :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` funciona en conjunto con :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>`. Sin embargo, a diferencia de :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>` cuyo comportamiento depende del :ref:`attenuation_model<class_AudioStreamPlayer3D_property_attenuation_model>`, :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` siempre funciona de forma lineal. Esto se puede usar para evitar que el **AudioStreamPlayer3D** requiera mezcla de audio cuando el oyente está lejos, lo que ahorra recursos de la CPU.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

El número máximo de sonidos que este nodo puede reproducir simultáneamente. Reproducir sonidos adicionales después de alcanzar este límite hará que se corten los sonidos más antiguos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_panning_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **panning_strength** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_panning_strength>`

.. rst-class:: classref-property-setget

- |void| **set_panning_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_panning_strength**\ (\ )

Escala la fuerza de paneo para este nodo multiplicando la base :ref:`ProjectSettings.audio/general/3d_panning_strength<class_ProjectSettings_property_audio/general/3d_panning_strength>` por este factor. Si el producto es ``0.0``, entonces el paneo estéreo está desactivado y el volumen es el mismo para todos los canales. Si el producto es ``1.0``, entonces uno de los canales se silenciará cuando el sonido se encuentre exactamente a la izquierda (o a la derecha) del oyente.

Las disposiciones estéreo de dos altavoces implementan el `Estándar WebAudio para StereoPannerNode Panning <https://webaudio.github.io/web-audio-api/#stereopanner-algorithm>`__ donde el volumen es el coseno de la mitad del ángulo de acimut al oído.

Para otras disposiciones de altavoces, como el 5.1 y el 7.1, se implementa el algoritmo SPCAP (Speaker-Placement Correction Amplitude).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

El tono y el tempo del audio, como multiplicador de la tasa de muestreo de la muestra de audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**Experimental:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

El tipo de reproducción del reproductor de flujo. Si se establece un valor distinto al predeterminado, se forzará ese tipo de reproducción.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

If ``true``, audio is playing or is queued to be played (see :ref:`play()<class_AudioStreamPlayer3D_method_play>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer3D_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

El recurso :ref:`AudioStream<class_AudioStream>` que se va a reproducir.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

Si es ``true``, la reproducción se pausa. Puede reanudarla estableciendo :ref:`stream_paused<class_AudioStreamPlayer3D_property_stream_paused>` en ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_unit_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **unit_size** = ``10.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_unit_size>`

.. rst-class:: classref-property-setget

- |void| **set_unit_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_unit_size**\ (\ )

El factor para el efecto de atenuación. Valores más altos hacen que el sonido sea escuchado a mayor distancia.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

El nivel de sonido base antes de la atenuación, en decibelios.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer3D_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

El nivel de sonido base antes de la atenuación, como un valor lineal.

\ **Nota:** Este miembro modifica :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` para mayor comodidad. El valor devuelto es equivalente al resultado de :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` en :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>`. Establecer este miembro es equivalente a establecer :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` al resultado de :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` en un valor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlayer3D_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_get_playback_position>`

Devuelve la posición en el :ref:`AudioStream<class_AudioStream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_get_stream_playback>`

Devuelve el objeto :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` asociado a este **AudioStreamPlayer3D**.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_has_stream_playback>`

Returns whether the :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` can return the :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` object or not.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_play>`

Pone el audio en cola para reproducirse en el siguiente cuadro de física, desde la posición dada ``from_position``, en segundos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_seek>`

Establece la posición desde la que se reproducirá el audio, en segundos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_stop>`

Detiene el audio.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
