:github_url: hide

.. _class_ResourceImporterOggVorbis:

ResourceImporterOggVorbis
=========================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importe un fichier audio Ogg Vorbis pour la lecture.

.. rst-class:: classref-introduction-group

Description
-----------

Ogg Vorbis est un format audio avec pertes, d'une meilleure qualité audio que :ref:`ResourceImporterMP3<class_ResourceImporterMP3>` à un bitrate donné.

Dans la plupart des cas, il est recommandé d'utiliser Ogg Vorbis au lieu de MP3. Cependant, si vous utilisez une source de son MP3 sans source de qualité supérieure disponible, il est recommandé d'utiliser le fichier MP3 directement pour éviter une compression avec double perte.

Ogg Vorbis nécessite plus de CPU pour décoder que :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. Si vous avez besoin de jouer beaucoup de sons simultanés, il est recommandé d'utiliser WAV pour ces sons plutôt, surtout si vous ciblez des appareils bas de gamme.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des échantillons audio <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterOggVorbis_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_buffer<class_ResourceImporterOggVorbis_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_file<class_ResourceImporterOggVorbis_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterOggVorbis_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bar_beats>`

The number of beats within a single bar in the audio track. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>` is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_beat_count>`

The length of the audio track, in beats. The actual duration of the audio file might be longer than what is indicated by this property. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>` is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bpm>`

The tempo of the audio track, measured in beats per minute. This should match the BPM measure that was used to compose the track. This is only relevant for music that wishes to make use of interactive music functionality, not sound effects.

A more convenient editor for :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>` is provided in the **Advanced Import Settings** dialog, as it lets you preview your changes without having to reimport the audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop>`

If enabled, the audio will begin playing either from the beginning or from :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>`, after playback ends by either reaching the end of the audio or reaching the end of the last beat according to the amount specified in :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>`.

\ **Note:** In :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, the :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` signal won't be emitted for looping audio when it reaches the end of the audio file, as the audio will keep playing indefinitely.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop_offset>`

Détermine où l'audio commencera à reboucler après que la lecture atteignela fin de l'audio. Cela peut être utilisé que pour ne faire boucler qu'une partie du fichier audio, ce qui est utile pour certains sons ou musique ambiants. La valeur est déterminée en secondes par rapport au début de l'audio. Une valeur de ``0.0`` fera boucler l'ensemble du fichier audio.

A seulement un effet si :ref:`loop<class_ResourceImporterOggVorbis_property_loop>` vaut ``true``.

Un éditeur plus commode pour :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` est fourni dans le dialogue **Paramètres d'import avancés**, car il vous permet de prévisualiser vos changements sans avoir à réimporter l'audio.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ResourceImporterOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_buffer>`

**Obsolète :** Use :ref:`AudioStreamOggVorbis.load_from_buffer()<class_AudioStreamOggVorbis_method_load_from_buffer>` instead.

Crée une nouvelle instance :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` depuis le tampon donné. Le tampon doit contenir des données Ogg Vorbis.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_file>`

**Obsolète :** Use :ref:`AudioStreamOggVorbis.load_from_file()<class_AudioStreamOggVorbis_method_load_from_file>` instead.

Crée une nouvelle instance :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` depuis le chemin de fichier donné. Le fichier doit être au format Ogg Vorbis.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
