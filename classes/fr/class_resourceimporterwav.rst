:github_url: hide

.. _class_ResourceImporterWAV:

ResourceImporterWAV
===================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importe un fichier audio WAV pour la lecture.

.. rst-class:: classref-introduction-group

Description
-----------

WAV est un format non compressé, qui peut fournir une qualité supérieure par rapport aux formats Ogg Vorbis et MP3. Il a également le plus bas coût CPU pour le décodage. Cela signifie qu'un nombre élevé de sons WAV peuvent être joués en même temps, même sur des appareils bas de gamme.

Par défaut, Godot importe les fichiers WAV en utilisant la compression Quite OK Audio avec pertes. Vous pouvez modifier ceci en définissant la propriété :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des échantillons audio <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`         | ``2``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`     | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`         | ``-1``    |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>`       | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/trim<class_ResourceImporterWAV_property_edit/trim>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/8_bit<class_ResourceImporterWAV_property_force/8_bit>`             | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` | ``44100`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/mono<class_ResourceImporterWAV_property_force/mono>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterWAV_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``2`` :ref:`🔗<class_ResourceImporterWAV_property_compress/mode>`

Le mode de compression à utiliser durant l'import.

- **PCM (non compressé) :** Importe des données audio sans aucune forme de compression, en préservant la plus haute qualité possible. A le plus bas coût CPU, mais la plus grande utilisation de mémoire.

- **IMA ADPCM :** Applique une compression rapide et avec pertes lors de l'import, en diminuant sensiblement la qualité, mais avec un faible coût CPU et d'utilisation de mémoire. Ne supporte pas la recherche et seul le mode de rebouclage Forward est pris en charge.

- **\ `Quite OK Audio <https://qoaformat.org/>`__\  :** applique également de la compression avec pertes durant l'import, a un coût CPU légèrement supérieur par rapport à IMA ADPCM, mais une qualité bien meilleure et la plus faible utilisation de mémoire.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_begin** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_begin>`

Le point de départ de la boucle, utilisé lorsque :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` vaut **Forward**, **Ping-Pong**, ou **Backward**. Ceci est défini dans en échantillons après le début du fichier audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_end** = ``-1`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_end>`

Le point de fin de la boucle, utilisé lorsque :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` vaut **Forward**, **Ping-Pong**, ou **Backward**. Ceci est défini dans en échantillons après le début du fichier audio. Une valeur de ``-1`` utilise la fin du fichier audio comme point de fin de la boucle.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_mode** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_mode>`

Controls how audio should loop.

- **Detect From WAV:** Uses loop information from the WAV metadata.

- **Disabled:** Don't loop audio, even if the metadata indicates the file playback should loop.

- **Forward:** Standard audio looping. Plays the audio forward from the beginning to :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, then returns to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>` and repeats.

- **Ping-Pong:** Plays the audio forward until :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, then backwards to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, repeating this cycle.

- **Backward:** Plays the audio backwards from :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>` to :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, then repeats.

\ **Note:** In :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, the :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` signal won't be emitted for looping audio when it reaches the end of the audio file, as the audio will keep playing indefinitely.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/normalize** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/normalize>`

If ``true``, normalize the audio volume so that its peak volume is equal to 0 dB. When enabled, normalization will make audio sound louder depending on its original peak volume.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/trim:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/trim** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/trim>`

If ``true``, automatically trim the beginning and end of the audio if it's lower than -50 dB after normalization (see :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`). This prevents having files with silence at the beginning or end, which increases their size unnecessarily and adds latency to the moment they are played back. A fade-in/fade-out period of 500 samples is also used during trimming to avoid audible pops.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/8_bit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/8_bit** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/8_bit>`

Si ``true``, force l'audio importé à utiliser la quantification 8 bits si le fichier source est de 16 bits ou plus.

Activer ceci n'est généralement pas recommandé, car la quantification 8 bits diminue considérablement la qualité audio. Si vous avez besoin de plus petites tailles de fichiers, envisagez d'utiliser de l'audio Ogg Vorbis ou MP3.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/max_rate** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate>`

Si défini à une valeur supérieure à ``0``, force le taux d'échantillonnage de l'audio à être réduit à une valeur inférieure ou égale à la valeur spécifiée dans :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>`.

Cela peut diminuer la taille du fichier de façon notable sur certains sons, sans impacter la qualité en fonction du contenu réel du son. Voir `Bonnes pratiques <../tutorials/assets_pipeline/importing_audio_samples.html#doc-importing-audio-samples-best-practices>`__ pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **force/max_rate_hz** = ``44100`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate_hz>`

La fréquence à laquelle limiter l'échantillon audio importé (en Hz). Seulement effectif si :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/mono:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/mono** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/mono>`

Si ``true``, force l'audio importé à être mono si le fichier source est stéréo. Cela diminue la taille du fichier de 50% en fusionnant les deux canaux en un.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
