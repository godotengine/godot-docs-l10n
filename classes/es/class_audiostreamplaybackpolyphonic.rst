:github_url: hide

.. _class_AudioStreamPlaybackPolyphonic:

AudioStreamPlaybackPolyphonic
=============================

**Hereda:** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Instancia de reproducción para :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Instancia de reproducción para :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`. Después de establecer la propiedad ``stream`` de :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` o :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, la instancia de reproducción puede obtenerse llamando a los métodos :ref:`AudioStreamPlayer.get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`, :ref:`AudioStreamPlayer2D.get_stream_playback()<class_AudioStreamPlayer2D_method_get_stream_playback>` o :ref:`AudioStreamPlayer3D.get_stream_playback()<class_AudioStreamPlayer3D_method_get_stream_playback>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stream_playing<class_AudioStreamPlaybackPolyphonic_method_is_stream_playing>`\ (\ stream\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                   |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`play_stream<class_AudioStreamPlaybackPolyphonic_method_play_stream>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`, from_offset\: :ref:`float<class_float>` = 0, volume_db\: :ref:`float<class_float>` = 0, pitch_scale\: :ref:`float<class_float>` = 1.0, playback_type\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>` = 0, bus\: :ref:`StringName<class_StringName>` = &"Master"\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_stream_pitch_scale<class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale>`\ (\ stream\: :ref:`int<class_int>`, pitch_scale\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_stream_volume<class_AudioStreamPlaybackPolyphonic_method_set_stream_volume>`\ (\ stream\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop_stream<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`\ (\ stream\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                       |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID:

.. rst-class:: classref-constant

**INVALID_ID** = ``-1`` :ref:`🔗<class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID>`

Devuelto por :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` en caso de que no se pudiera asignar un flujo para la reproducción.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlaybackPolyphonic_method_is_stream_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stream_playing**\ (\ stream\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_is_stream_playing>`

Returns ``true`` if the stream associated with the given integer ID is still playing. Check :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` for information on when this ID becomes invalid.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_play_stream:

.. rst-class:: classref-method

:ref:`int<class_int>` **play_stream**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`, from_offset\: :ref:`float<class_float>` = 0, volume_db\: :ref:`float<class_float>` = 0, pitch_scale\: :ref:`float<class_float>` = 1.0, playback_type\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>` = 0, bus\: :ref:`StringName<class_StringName>` = &"Master"\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_play_stream>`

Reproduce un :ref:`AudioStream<class_AudioStream>` con un desplazamiento inicial, volumen, escala de tono, tipo de reproducción y bus determinados. La reproducción comienza de inmediato.

El valor devuelto es un ID entero único asociado a esta reproducción, que puede usarse para controlarla.

Este ID se vuelve inválido cuando el flujo termina (si no está en bucle), cuando se detiene el **AudioStreamPlaybackPolyphonic**, o cuando se llama a :ref:`stop_stream()<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`.

Esta función devuelve :ref:`INVALID_ID<class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID>` si la cantidad de flujos actualmente en reproducción alcanza :ref:`AudioStreamPolyphonic.polyphony<class_AudioStreamPolyphonic_property_polyphony>`. Si necesitas una mayor polifonía máxima, incrementa este valor.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale:

.. rst-class:: classref-method

|void| **set_stream_pitch_scale**\ (\ stream\: :ref:`int<class_int>`, pitch_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale>`

Cambia la escala del tono del flujo. El argumento ``stream`` es un ID entero devuelto por :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_set_stream_volume:

.. rst-class:: classref-method

|void| **set_stream_volume**\ (\ stream\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_set_stream_volume>`

Cambia el volumen del flujo (en dB). El argumento ``stream`` es un ID entero devuelto por :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_stop_stream:

.. rst-class:: classref-method

|void| **stop_stream**\ (\ stream\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`

Detiene un flujo. El argumento ``stream`` es un ID entero devuelto por :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`, que se vuelve inválido después de llamar a esta función.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
