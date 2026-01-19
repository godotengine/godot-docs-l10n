:github_url: hide

.. _class_AudioStreamRandomizer:

AudioStreamRandomizer
=====================

**Hérite de :** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Enveloppe un pool de flux audios avec un décalage de pitch et de volume.

.. rst-class:: classref-introduction-group

Description
-----------

Choisi un AudioStream aléatoire dans le pool, suivant le mode de playback et applique un décalage aléatoire au pitch et un décalage du volume pendant le playback.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` | :ref:`playback_mode<class_AudioStreamRandomizer_property_playback_mode>`                     | ``0``   |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_pitch<class_AudioStreamRandomizer_property_random_pitch>`                       | ``1.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_pitch_semitones<class_AudioStreamRandomizer_property_random_pitch_semitones>`   | ``0.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                    | :ref:`random_volume_offset_db<class_AudioStreamRandomizer_property_random_volume_offset_db>` | ``0.0`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                                        | :ref:`streams_count<class_AudioStreamRandomizer_property_streams_count>`                     | ``0``   |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`add_stream<class_AudioStreamRandomizer_method_add_stream>`\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`, weight\: :ref:`float<class_float>` = 1.0\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`get_stream<class_AudioStreamRandomizer_method_get_stream>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_stream_probability_weight<class_AudioStreamRandomizer_method_get_stream_probability_weight>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`move_stream<class_AudioStreamRandomizer_method_move_stream>`\ (\ index_from\: :ref:`int<class_int>`, index_to\: :ref:`int<class_int>`\ )                                                  |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_stream<class_AudioStreamRandomizer_method_remove_stream>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_stream<class_AudioStreamRandomizer_method_set_stream>`\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ )                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_stream_probability_weight<class_AudioStreamRandomizer_method_set_stream_probability_weight>`\ (\ index\: :ref:`int<class_int>`, weight\: :ref:`float<class_float>`\ )                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AudioStreamRandomizer_PlaybackMode:

.. rst-class:: classref-enumeration

enum **PlaybackMode**: :ref:`🔗<enum_AudioStreamRandomizer_PlaybackMode>`

.. _class_AudioStreamRandomizer_constant_PLAYBACK_RANDOM_NO_REPEATS:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_RANDOM_NO_REPEATS** = ``0``

Choisit un flux au hasard selon les coefficients de probabilité choisis pour chaque flux, mais évite de jouer le même flux deux fois de suite tant que possible. Si seulement 1 son est présent dans la pool, le même son jouera toujours, autorisant effectivement les répétitions.

.. _class_AudioStreamRandomizer_constant_PLAYBACK_RANDOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_RANDOM** = ``1``

Choisit un flux au hasard selon les coefficients de probabilité choisis pour chaque flux. Si seulement 1 son est présent dans la pool, le même son jouera toujours.

.. _class_AudioStreamRandomizer_constant_PLAYBACK_SEQUENTIAL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **PLAYBACK_SEQUENTIAL** = ``2``

Joue des flux dans l'ordre qu'ils apparaissent dans la pool de flux. Si seulement 1 son est présent dans la piscine, le même son jouera toujours.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioStreamRandomizer_property_playback_mode:

.. rst-class:: classref-property

:ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **playback_mode** = ``0`` :ref:`🔗<class_AudioStreamRandomizer_property_playback_mode>`

.. rst-class:: classref-property-setget

- |void| **set_playback_mode**\ (\ value\: :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>`\ )
- :ref:`PlaybackMode<enum_AudioStreamRandomizer_PlaybackMode>` **get_playback_mode**\ (\ )

Contrôle comment cet AudioStreamRandomizer choisit quel AudioStream joue ensuite.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_pitch:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_pitch** = ``1.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_random_pitch**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_pitch**\ (\ )

Le plus grand multiplicateur de fréquence possible de la variation aléatoire de la hauteur. La hauteur sera choisie aléatoirement dans une plage de ``1.0 / random_pitch`` et ``random_pitch``. Une valeur de ``1.0`` ne signifie aucune variation. Une valeur de ``2.0`` signifie que la hauteur sera aléatoire entre le double et la moitié.

\ **Note :** Définir cette propriété définit également :ref:`random_pitch_semitones<class_AudioStreamRandomizer_property_random_pitch_semitones>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_pitch_semitones:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_pitch_semitones** = ``0.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_pitch_semitones>`

.. rst-class:: classref-property-setget

- |void| **set_random_pitch_semitones**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_pitch_semitones**\ (\ )

La plus grande distance possible, en demi-tons, de la variation aléatoire de la hauteur. Une valeur de ``0.0`` signifie aucune variation.

\ **Note :** Définir cette propriété définit également :ref:`random_pitch<class_AudioStreamRandomizer_property_random_pitch>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_random_volume_offset_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **random_volume_offset_db** = ``0.0`` :ref:`🔗<class_AudioStreamRandomizer_property_random_volume_offset_db>`

.. rst-class:: classref-property-setget

- |void| **set_random_volume_offset_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_random_volume_offset_db**\ (\ )

L'intensité de la variation aléatoire du volume. Le volume sera augmenté ou diminué par une valeur aléatoire jusqu'à ``random_volume_offset_db``. Une valeur de ``0.0`` signifie aucune variation. Une valeur de ``3.0`` signifie que le volume sera aléatoire entre ``-3.0 dB`` et ``+3.0 dB``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_property_streams_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **streams_count** = ``0`` :ref:`🔗<class_AudioStreamRandomizer_property_streams_count>`

.. rst-class:: classref-property-setget

- |void| **set_streams_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_streams_count**\ (\ )

Le nombre de flux dans le pool de flux.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioStreamRandomizer_method_add_stream:

.. rst-class:: classref-method

|void| **add_stream**\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`, weight\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AudioStreamRandomizer_method_add_stream>`

Insère un flux à l'index spécifié. Si l'index est inférieur à zéro, l'insertion se produit à la fin de la pool sous-jacente.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_get_stream:

.. rst-class:: classref-method

:ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamRandomizer_method_get_stream>`

Renvoie le flux à l'index spécifié.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_get_stream_probability_weight:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stream_probability_weight**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamRandomizer_method_get_stream_probability_weight>`

Renvoie le coefficient de probabilité associé avec le flux à l'indice donné.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_move_stream:

.. rst-class:: classref-method

|void| **move_stream**\ (\ index_from\: :ref:`int<class_int>`, index_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_move_stream>`

Déplace un flux d'un index à un autre.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_remove_stream:

.. rst-class:: classref-method

|void| **remove_stream**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_remove_stream>`

Retire le flux à l'index spécifié.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_set_stream:

.. rst-class:: classref-method

|void| **set_stream**\ (\ index\: :ref:`int<class_int>`, stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_set_stream>`

Définit l'AudioStream à l'index spécifié.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamRandomizer_method_set_stream_probability_weight:

.. rst-class:: classref-method

|void| **set_stream_probability_weight**\ (\ index\: :ref:`int<class_int>`, weight\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamRandomizer_method_set_stream_probability_weight>`

Définit le coefficient de probabilité du flux à l'index spécifié. Plus cette valeur est élevée, plus le randomiseur choisira ce flux durant les modes de lecture aléatoire.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
