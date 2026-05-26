:github_url: hide

.. _class_AudioStreamPlayback:

AudioStreamPlayback
===================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AudioStreamPlaybackInteractive<class_AudioStreamPlaybackInteractive>`, :ref:`AudioStreamPlaybackPlaylist<class_AudioStreamPlaybackPlaylist>`, :ref:`AudioStreamPlaybackPolyphonic<class_AudioStreamPlaybackPolyphonic>`, :ref:`AudioStreamPlaybackResampled<class_AudioStreamPlaybackResampled>`, :ref:`AudioStreamPlaybackSynchronized<class_AudioStreamPlaybackSynchronized>`

Meta clase para reproducir el audio.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Puede reproducir, loopear, pausar y desplazarse a través del audio. Véase :ref:`AudioStream<class_AudioStream>` y :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` para su uso.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Generador de Audio <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlayback_private_method__get_loop_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_loop_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_loop_count>`

Método sobrescribible. Debe devolver cuántas veces se ha repetido este flujo de audio en bucle. La mayoría de las reproducciones integradas siempre devuelven ``0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__get_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_parameter>`

Devuelve el valor actual de un parámetro de reproducción por nombre (véase :ref:`AudioStream._get_parameter_list()<class_AudioStream_private_method__get_parameter_list>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_playback_position>`

Overridable method. Should return the current progress along the audio stream, in seconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__is_playing>`

Método sobrescribible. Debe devolver ``true`` si esta reproducción está activa y reproduciendo su flujo de audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__mix:

.. rst-class:: classref-method

:ref:`int<class_int>` **_mix**\ (\ buffer\: ``AudioFrame*``, rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__mix>`

Sobrescribe este método para personalizar cómo se mezcla el flujo de audio. Este método se llama incluso si la reproducción no está activa.

\ **Nota:** No es útil sobrescribir este método en GDScript o C#. Solo GDExtension puede aprovecharlo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ position\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__seek>`

Sobrescribe este método para personalizar qué sucede al buscar una posición en este flujo de audio en la ``position`` dada, como por ejemplo llamando a :ref:`AudioStreamPlayer.seek()<class_AudioStreamPlayer_method_seek>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__set_parameter:

.. rst-class:: classref-method

|void| **_set_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__set_parameter>`

Establece el valor actual de un parámetro de reproducción por su nombre (ver :ref:`AudioStream._get_parameter_list()<class_AudioStream_private_method__get_parameter_list>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__start:

.. rst-class:: classref-method

|void| **_start**\ (\ from_pos\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__start>`

Sobrescribe este método para personalizar lo que ocurre cuando la reproducción comienza en la posición indicada, por ejemplo, al llamar a :ref:`AudioStreamPlayer.play()<class_AudioStreamPlayer_method_play>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__stop>`

Sobrescriba este método para personalizar lo que sucede cuando se detiene la reproducción, como por ejemplo al llamar a :ref:`AudioStreamPlayer.stop()<class_AudioStreamPlayer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__tag_used_streams:

.. rst-class:: classref-method

|void| **_tag_used_streams**\ (\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__tag_used_streams>`

Método que se puede sobrescribir. Se llama siempre que se mezcla el flujo de audio si la reproducción está activa y :ref:`AudioServer.set_enable_tagging_used_audio_streams()<class_AudioServer_method_set_enable_tagging_used_audio_streams>` se ha establecido en ``true``. Los complementos del editor pueden usar este método para "marcar" la posición actual a lo largo del flujo de audio y mostrarla en una vista previa.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_loop_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loop_count**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_loop_count>`

Returns the number of times the stream has looped.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_playback_position>`

Returns the current position in the stream, in seconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_sample_playback:

.. rst-class:: classref-method

:ref:`AudioSamplePlayback<class_AudioSamplePlayback>` **get_sample_playback**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_sample_playback>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Returns the :ref:`AudioSamplePlayback<class_AudioSamplePlayback>` associated with this **AudioStreamPlayback** for playing back the audio sample of this stream.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_is_playing>`

Returns ``true`` if the stream is playing.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **mix_audio**\ (\ rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlayback_method_mix_audio>`

Mezcla hasta ``frames`` de audio del flujo desde la posición actual, a una velocidad de ``rate_scale``, avanzando el flujo.

Devuelve un :ref:`PackedVector2Array<class_PackedVector2Array>` donde cada elemento contiene los niveles de volumen de los canales izquierdo y derecho de cada frame.

\ **Nota:** Puede devolver menos frames de los solicitados; asegúrate de usar el tamaño del valor devuelto.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ time\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayback_method_seek>`

Seeks the stream at the given ``time``, in seconds.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_set_sample_playback:

.. rst-class:: classref-method

|void| **set_sample_playback**\ (\ playback_sample\: :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`\ ) :ref:`🔗<class_AudioStreamPlayback_method_set_sample_playback>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Associates :ref:`AudioSamplePlayback<class_AudioSamplePlayback>` to this **AudioStreamPlayback** for playing back the audio sample of this stream.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ from_pos\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayback_method_start>`

Inicia la transmisión desde la ``from_pos`` dada, en segundos.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayback_method_stop>`

Detiene la transmisión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
