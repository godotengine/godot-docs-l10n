:github_url: hide

.. _class_AudioStreamPlaybackResampled:

AudioStreamPlaybackResampled
============================

**Hérite de :** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`, :ref:`AudioStreamPlaybackOggVorbis<class_AudioStreamPlaybackOggVorbis>`

Playback class used for resampled :ref:`AudioStream<class_AudioStream>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

Playback class used to mix an :ref:`AudioStream<class_AudioStream>`'s audio samples to :ref:`AudioServer.get_mix_rate()<class_AudioServer_method_get_mix_rate>` using cubic interpolation.

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
