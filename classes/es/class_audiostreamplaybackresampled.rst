:github_url: hide

.. _class_AudioStreamPlaybackResampled:

AudioStreamPlaybackResampled
============================

**Hereda:** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`, :ref:`AudioStreamPlaybackOggVorbis<class_AudioStreamPlaybackOggVorbis>`

Playback class used for resampled :ref:`AudioStream<class_AudioStream>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Playback class used to mix an :ref:`AudioStream<class_AudioStream>`'s audio samples to :ref:`AudioServer.get_mix_rate()<class_AudioServer_method_get_mix_rate>` using cubic interpolation.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`_get_stream_sampling_rate<class_AudioStreamPlaybackResampled_private_method__get_stream_sampling_rate>`\ (\ ) |virtual| |required| |const|                                      |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`_mix_resampled<class_AudioStreamPlaybackResampled_private_method__mix_resampled>`\ (\ dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`begin_resample<class_AudioStreamPlaybackResampled_method_begin_resample>`\ (\ )                                                                                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlaybackResampled_private_method__get_stream_sampling_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_stream_sampling_rate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStreamPlaybackResampled_private_method__get_stream_sampling_rate>`

Returns an :ref:`AudioStream<class_AudioStream>`'s sample rate, in Hz. Used to perform resampling.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackResampled_private_method__mix_resampled:

.. rst-class:: classref-method

:ref:`int<class_int>` **_mix_resampled**\ (\ dst_buffer\: ``AudioFrame*``, frame_count\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlaybackResampled_private_method__mix_resampled>`

Called by :ref:`begin_resample()<class_AudioStreamPlaybackResampled_method_begin_resample>` to mix an :ref:`AudioStream<class_AudioStream>` to :ref:`AudioServer.get_mix_rate()<class_AudioServer_method_get_mix_rate>`. Uses :ref:`_get_stream_sampling_rate()<class_AudioStreamPlaybackResampled_private_method__get_stream_sampling_rate>` as the source sample rate. Returns the number of mixed frames.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackResampled_method_begin_resample:

.. rst-class:: classref-method

|void| **begin_resample**\ (\ ) :ref:`🔗<class_AudioStreamPlaybackResampled_method_begin_resample>`

Called when an :ref:`AudioStream<class_AudioStream>` is played. Clears the cubic interpolation history and starts mixing by calling :ref:`_mix_resampled()<class_AudioStreamPlaybackResampled_private_method__mix_resampled>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
