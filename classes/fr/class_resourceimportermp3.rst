:github_url: hide

.. _class_ResourceImporterMP3:

ResourceImporterMP3
===================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importe un fichier audio MP3 pour la lecture.

.. rst-class:: classref-introduction-group

Description
-----------

MP3 est un format audio avec pertes, avec une qualité audio pire que :ref:`ResourceImporterOggVorbis<class_ResourceImporterOggVorbis>` à un bitrate donné.

Dans la plupart des cas, il est recommandé d'utiliser Ogg Vorbis au lieu de MP3. Cependant, si vous utilisez une source de son MP3 sans source de qualité supérieure disponible, il est recommandé d'utiliser le fichier MP3 directement pour éviter une compression avec double perte.

MP3 nécessite plus de CPU pour le décoder que :ref:`ResourceImporterWAV<class_ResourceImporterWAV>`. Si vous avez besoin de jouer beaucoup de sons simultanés, il est recommandé d'utiliser le WAV pour ces sons plutôt, surtout si vous ciblez des appareils bas de gamme.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des échantillons audio <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterMP3_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterMP3_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterMP3_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterMP3_property_bar_beats>`

Le nombre de mesures dans un seul battement de la piste audio. Ceci n'est pertinent que pour la musique qui souhaite utiliser la fonctionnalité de musique interactive, pas les effets sonores.

Un éditeur plus pratique pour :ref:`bar_beats<class_ResourceImporterMP3_property_bar_beats>` est fourni dans la boîte de dialogue **Paramètres d'import avancés**, car il vous permet de prévisualiser vos changements sans avoir à réimporter l'audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_beat_count>`

Le compte de battement de la piste audio. Ceci n'est pertinent que pour des musiques qui souhaitent utiliser la fonctionnalité de musique interactive, pas pour des effets sonores.

Un éditeur plus pratique pour :ref:`beat_count<class_ResourceImporterMP3_property_beat_count>` est fourni dans le dialogue **Paramètres d'import avancés**, car il vous permet de prévisualiser vos changements sans avoir à réimporter l'audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_bpm>`

Les battements par minute de la piste audio. Ceci devrait correspondre aux battements par minute utilisés pour composer la piste. Ceci n'est pertinent que pour des musiques qui souhaitent utiliser la fonctionnalité de musique interactive, pas pour des effets sonores.

Un éditeur plus pratique pour :ref:`bpm<class_ResourceImporterMP3_property_bpm>` est fourni dans le dialogue **Paramètres d'import avancés**, car il vous permet de prévisualiser vos changements sans avoir à réimporter l'audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterMP3_property_loop>`

Si activé, l'audio re-commencera à jouer du début après que la lecture se termine en atteignant la fin de l'audio.

\ **Note :** Dans :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, le signal :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` ne sera pas émis pour faire boucler l'audio quand il atteint la fin du fichier audio, car l'audio continuera de jouer indéfiniment.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterMP3_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterMP3_property_loop_offset>`

Détermine où l'audio commencera à reboucler après que la lecture atteignela fin de l'audio. Cela peut être utilisé que pour ne faire boucler qu'une partie du fichier audio, ce qui est utile pour certains sons ou musique ambiants. La valeur est déterminée en secondes par rapport au début de l'audio. Une valeur de ``0.0`` fera boucler l'ensemble du fichier audio.

A seulement un effet si :ref:`loop<class_ResourceImporterMP3_property_loop>` vaut ``true``.

Un éditeur plus commode pour :ref:`loop_offset<class_ResourceImporterMP3_property_loop_offset>` est fourni dans le dialogue **Paramètres d'import avancés**, car il vous permet de prévisualiser vos changements sans avoir à réimporter l'audio.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
