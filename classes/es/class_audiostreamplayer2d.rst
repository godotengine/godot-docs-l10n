:github_url: hide

.. meta::
	:keywords: sound, sfx

.. _class_AudioStreamPlayer2D:

AudioStreamPlayer2D
===================

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Reproduce sonido posicional en el espacio 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Reproduce audio que se atenúa según la distancia al oyente.

Por defecto, el audio se escucha desde el centro de la pantalla. Esto se puede cambiar agregando un nodo :ref:`AudioListener2D<class_AudioListener2D>` a la escena y activándolo llamando a :ref:`AudioListener2D.make_current()<class_AudioListener2D_method_make_current>`.

Véase también :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` para reproducir un sonido sin posicionamiento.

\ **Nota:** Ocultar un nodo **AudioStreamPlayer2D** no desactiva su salida de audio. Para desactivar temporalmente el audio de un **AudioStreamPlayer2D**, establece :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` a un valor muy bajo como ``-100`` (que no es audible para el oído humano).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Corriente de Audio <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                              | :ref:`area_mask<class_AudioStreamPlayer2D_property_area_mask>`               | ``0``         |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`attenuation<class_AudioStreamPlayer2D_property_attenuation>`           | ``1.0``       |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`autoplay<class_AudioStreamPlayer2D_property_autoplay>`                 | ``false``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                | :ref:`bus<class_AudioStreamPlayer2D_property_bus>`                           | ``&"Master"`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`max_distance<class_AudioStreamPlayer2D_property_max_distance>`         | ``2000.0``    |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                              | :ref:`max_polyphony<class_AudioStreamPlayer2D_property_max_polyphony>`       | ``1``         |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`panning_strength<class_AudioStreamPlayer2D_property_panning_strength>` | ``1.0``       |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioStreamPlayer2D_property_pitch_scale>`           | ``1.0``       |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>` | :ref:`playback_type<class_AudioStreamPlayer2D_property_playback_type>`       | ``0``         |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`playing<class_AudioStreamPlayer2D_property_playing>`                   | ``false``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`              | :ref:`stream<class_AudioStreamPlayer2D_property_stream>`                     |               |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`stream_paused<class_AudioStreamPlayer2D_property_stream_paused>`       | ``false``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>`               | ``0.0``       |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_linear<class_AudioStreamPlayer2D_property_volume_linear>`       |               |
   +----------------------------------------------------+------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer2D_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer2D_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer2D_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer2D_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer2D_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer2D_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AudioStreamPlayer2D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_signal_finished>`

Emitida cuando el audio deja de reproducirse.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamPlayer2D_property_area_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **area_mask** = ``0`` :ref:`🔗<class_AudioStreamPlayer2D_property_area_mask>`

.. rst-class:: classref-property-setget

- |void| **set_area_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_area_mask**\ (\ )

Determina qué capas de :ref:`Area2D<class_Area2D>` afectan el sonido para la reverberación y los efectos del bus de audio. Las áreas pueden usarse para redirigir :ref:`AudioStream<class_AudioStream>`\ s de manera que se reproduzcan en un bus de audio específico. Un ejemplo de uso sería crear un área de "agua" para que los sonidos reproducidos dentro del agua se redirijan a través de un bus de audio, haciendo que suenen como si se reprodujeran bajo el agua.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

The volume is attenuated over distance with this as an exponent.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

Si es ``true``, el audio se reproduce cuando se añade al árbol de escenas.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer2D_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Bus en el que se está reproduciendo este audio.

\ **Nota:** Al establecer esta propiedad, ten en cuenta que no se realiza ninguna validación para verificar si el nombre proporcionado coincide con un bus existente. Esto se debe a que los diseños de buses de audio podrían cargarse después de que se haya establecido esta propiedad. Si el nombre proporcionado no se puede resolver en tiempo de ejecución, se usará como valor predeterminado ``"Master"``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``2000.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

Distancia máxima desde la que se puede oír el audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer2D_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

El número máximo de sonidos que este nodo puede reproducir simultáneamente. Reproducir sonidos adicionales después de alcanzar este límite hará que se corten los sonidos más antiguos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_panning_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **panning_strength** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_panning_strength>`

.. rst-class:: classref-property-setget

- |void| **set_panning_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_panning_strength**\ (\ )

Escala la intensidad del paneo de este nodo multiplicando el valor base de :ref:`ProjectSettings.audio/general/2d_panning_strength<class_ProjectSettings_property_audio/general/2d_panning_strength>` por este factor. Valores más altos harán que el audio se panee de izquierda a derecha de manera más pronunciada que los valores bajos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

El tono y el tempo del audio, como multiplicador de la tasa de muestreo de la muestra de audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer2D_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**Experimental:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

El tipo de reproducción del reproductor de flujo. Si se establece un valor distinto al predeterminado, se forzará ese tipo de reproducción.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

If ``true``, audio is playing or is queued to be played (see :ref:`play()<class_AudioStreamPlayer2D_method_play>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer2D_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

El objeto :ref:`AudioStream<class_AudioStream>` que se va a reproducir.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer2D_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

Si es ``true``, la reproducción se pausa. Puede reanudarla estableciendo :ref:`stream_paused<class_AudioStreamPlayer2D_property_stream_paused>` en ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer2D_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Volumen base antes de la atenuación, en decibelios.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer2D_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

Volumen base antes de la atenuación, como un valor lineal.

\ **Nota:** Este miembro modifica :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` por conveniencia. El valor devuelto es equivalente al resultado de :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` aplicado a :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>`. Configurar este miembro es equivalente a establecer :ref:`volume_db<class_AudioStreamPlayer2D_property_volume_db>` al resultado de :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` aplicado a un valor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlayer2D_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_get_playback_position>`

Devuelve la posición en el :ref:`AudioStream<class_AudioStream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_get_stream_playback>`

Devuelve el objeto :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` asociado a este **AudioStreamPlayer2D**.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_has_stream_playback>`

Returns whether the :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` can return the :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` object or not.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_play>`

Pone el audio en cola para reproducirse en el siguiente cuadro de física, desde la posición dada ``from_position``, en segundos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_seek>`

Establece la posición desde la que se reproducirá el audio, en segundos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer2D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer2D_method_stop>`

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
