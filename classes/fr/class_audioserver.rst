:github_url: hide

.. _class_AudioServer:

AudioServer
===========

**Hérite de :** :ref:`Object<class_Object>`

Interface de serveur pour l'accès audio de bas niveau.

.. rst-class:: classref-introduction-group

Description
-----------

**AudioServer** est une interface bas-niveau du serveur pour l'accès audio. Il est chargé de créer des données échantillonnées (audio jouable) mais aussi la lecture par une interface orale.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- `Démo de changement de périphérique audio <https://godotengine.org/asset-library/asset/2758>`__

- `Démo d'enregistrement de l'audio du microphone <https://godotengine.org/asset-library/asset/2760>`__

- `Démo de visualiseur de spectre audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`       | :ref:`bus_count<class_AudioServer_property_bus_count>`                       | ``1``         |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>` | :ref:`input_device<class_AudioServer_property_input_device>`                 | ``"Default"`` |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>` | :ref:`output_device<class_AudioServer_property_output_device>`               | ``"Default"`` |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`   | :ref:`playback_speed_scale<class_AudioServer_property_playback_speed_scale>` | ``1.0``       |
   +-----------------------------+------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_bus<class_AudioServer_method_add_bus>`\ (\ at_position\: :ref:`int<class_int>` = -1\ )                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_bus_effect<class_AudioServer_method_add_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect\: :ref:`AudioEffect<class_AudioEffect>`, at_position\: :ref:`int<class_int>` = -1\ )  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioBusLayout<class_AudioBusLayout>`           | :ref:`generate_bus_layout<class_AudioServer_method_generate_bus_layout>`\ (\ ) |const|                                                                                                           |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_channels<class_AudioServer_method_get_bus_channels>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioEffect<class_AudioEffect>`                 | :ref:`get_bus_effect<class_AudioServer_method_get_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ )                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_effect_count<class_AudioServer_method_get_bus_effect_count>`\ (\ bus_idx\: :ref:`int<class_int>`\ )                                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioEffectInstance<class_AudioEffectInstance>` | :ref:`get_bus_effect_instance<class_AudioServer_method_get_bus_effect_instance>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_index<class_AudioServer_method_get_bus_index>`\ (\ bus_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_bus_name<class_AudioServer_method_get_bus_name>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_peak_volume_left_db<class_AudioServer_method_get_bus_peak_volume_left_db>`\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const|                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_peak_volume_right_db<class_AudioServer_method_get_bus_peak_volume_right_db>`\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const|                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                   | :ref:`get_bus_send<class_AudioServer_method_get_bus_send>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_volume_db<class_AudioServer_method_get_bus_volume_db>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_volume_linear<class_AudioServer_method_get_bus_volume_linear>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_driver_name<class_AudioServer_method_get_driver_name>`\ (\ ) |const|                                                                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_input_buffer_length_frames<class_AudioServer_method_get_input_buffer_length_frames>`\ (\ )                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_input_device_list<class_AudioServer_method_get_input_device_list>`\ (\ )                                                                                                               |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`   | :ref:`get_input_frames<class_AudioServer_method_get_input_frames>`\ (\ frames\: :ref:`int<class_int>`\ )                                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_input_frames_available<class_AudioServer_method_get_input_frames_available>`\ (\ )                                                                                                     |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_input_mix_rate<class_AudioServer_method_get_input_mix_rate>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_mix_rate<class_AudioServer_method_get_mix_rate>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_output_device_list<class_AudioServer_method_get_output_device_list>`\ (\ )                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_output_latency<class_AudioServer_method_get_output_latency>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`      | :ref:`get_speaker_mode<class_AudioServer_method_get_speaker_mode>`\ (\ ) |const|                                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_time_since_last_mix<class_AudioServer_method_get_time_since_last_mix>`\ (\ ) |const|                                                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_time_to_next_mix<class_AudioServer_method_get_time_to_next_mix>`\ (\ ) |const|                                                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_bypassing_effects<class_AudioServer_method_is_bus_bypassing_effects>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_effect_enabled<class_AudioServer_method_is_bus_effect_enabled>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_mute<class_AudioServer_method_is_bus_mute>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_solo<class_AudioServer_method_is_bus_solo>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_stream_registered_as_sample<class_AudioServer_method_is_stream_registered_as_sample>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ )                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`lock<class_AudioServer_method_lock>`\ (\ )                                                                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`move_bus<class_AudioServer_method_move_bus>`\ (\ index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ )                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`register_stream_as_sample<class_AudioServer_method_register_stream_as_sample>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ )                                                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_bus<class_AudioServer_method_remove_bus>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                      |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_bus_effect<class_AudioServer_method_remove_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ )                                                  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_bypass_effects<class_AudioServer_method_set_bus_bypass_effects>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_effect_enabled<class_AudioServer_method_set_bus_effect_enabled>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )     |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_layout<class_AudioServer_method_set_bus_layout>`\ (\ bus_layout\: :ref:`AudioBusLayout<class_AudioBusLayout>`\ )                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_mute<class_AudioServer_method_set_bus_mute>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_name<class_AudioServer_method_set_bus_name>`\ (\ bus_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                            |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_send<class_AudioServer_method_set_bus_send>`\ (\ bus_idx\: :ref:`int<class_int>`, send\: :ref:`StringName<class_StringName>`\ )                                                    |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_solo<class_AudioServer_method_set_bus_solo>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_volume_db<class_AudioServer_method_set_bus_volume_db>`\ (\ bus_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )                                               |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_volume_linear<class_AudioServer_method_set_bus_volume_linear>`\ (\ bus_idx\: :ref:`int<class_int>`, volume_linear\: :ref:`float<class_float>`\ )                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_enable_tagging_used_audio_streams<class_AudioServer_method_set_enable_tagging_used_audio_streams>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                 | :ref:`set_input_device_active<class_AudioServer_method_set_input_device_active>`\ (\ active\: :ref:`bool<class_bool>`\ )                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`swap_bus_effects<class_AudioServer_method_swap_bus_effects>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, by_effect_idx\: :ref:`int<class_int>`\ )             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`unlock<class_AudioServer_method_unlock>`\ (\ )                                                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_AudioServer_signal_bus_layout_changed:

.. rst-class:: classref-signal

**bus_layout_changed**\ (\ ) :ref:`🔗<class_AudioServer_signal_bus_layout_changed>`

Émis lorsqu'un bus audio est ajouté, supprimé ou déplacé.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_signal_bus_renamed:

.. rst-class:: classref-signal

**bus_renamed**\ (\ bus_index\: :ref:`int<class_int>`, old_name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioServer_signal_bus_renamed>`

Émis lorsque le bus audio à l'index ``bus_index`` est renommé de ``old_name`` à ``new_name``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AudioServer_SpeakerMode:

.. rst-class:: classref-enumeration

enum **SpeakerMode**: :ref:`🔗<enum_AudioServer_SpeakerMode>`

.. _class_AudioServer_constant_SPEAKER_MODE_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_MODE_STEREO** = ``0``

Deux enceintes ou moins sont détectées.

.. _class_AudioServer_constant_SPEAKER_SURROUND_31:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_31** = ``1``

Une configuration surround 3.1 a été détecté.

.. _class_AudioServer_constant_SPEAKER_SURROUND_51:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_51** = ``2``

Une configuration surround 5.1 a été détecté.

.. _class_AudioServer_constant_SPEAKER_SURROUND_71:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_71** = ``3``

Une configuration surround 7.1 a été détecté.

.. rst-class:: classref-item-separator

----

.. _enum_AudioServer_PlaybackType:

.. rst-class:: classref-enumeration

enum **PlaybackType**: :ref:`🔗<enum_AudioServer_PlaybackType>`

.. _class_AudioServer_constant_PLAYBACK_TYPE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_DEFAULT** = ``0``

**Expérimental :** Cette constante peut être changée ou retirée dans de futures versions.

La lecture sera considérée du type déclaré dans :ref:`ProjectSettings.audio/general/default_playback_type<class_ProjectSettings_property_audio/general/default_playback_type>`.

.. _class_AudioServer_constant_PLAYBACK_TYPE_STREAM:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_STREAM** = ``1``

**Expérimental :** Cette constante peut être changée ou retirée dans de futures versions.

Forcer la lecture à considérée comme un flux.

.. _class_AudioServer_constant_PLAYBACK_TYPE_SAMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_SAMPLE** = ``2``

**Expérimental :** Cette constante peut être changée ou retirée dans de futures versions.

Forcer la lecture à être considérée comme un échantillon. Cela peut fournir une latence plus faible et une lecture plus stable (avec moins de risque de craquements audio), au coût d'avoir moins de flexibilité.

\ **Note :** Actuellement seulement supporté sur la plateforme web.

\ **Note :** Les :ref:`AudioEffect<class_AudioEffect>`\ s ne sont pas pris en charge lorsque la lecture est considérée comme un échantillon.

.. _class_AudioServer_constant_PLAYBACK_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_MAX** = ``3``

**Expérimental :** Cette constante peut être changée ou retirée dans de futures versions.

Représente la taille de l'énumération :ref:`PlaybackType<enum_AudioServer_PlaybackType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioServer_property_bus_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **bus_count** = ``1`` :ref:`🔗<class_AudioServer_property_bus_count>`

.. rst-class:: classref-property-setget

- |void| **set_bus_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bus_count**\ (\ )

Nombre de bus audio disponibles.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_input_device:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_device** = ``"Default"`` :ref:`🔗<class_AudioServer_property_input_device>`

.. rst-class:: classref-property-setget

- |void| **set_input_device**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_device**\ (\ )

Le nom du périphérique actuel pour l'entrée audio (voir :ref:`get_input_device_list()<class_AudioServer_method_get_input_device_list>`). Sur les systèmes avec plusieurs entrées audio (comme l'audio analogique, USB et HDMI), ceci peut être utilisé pour sélectionner le périphérique d'entrée audio. La valeur ``"Default"`` enregistrera l'audio sur l'entrée audio par défaut du système. Si un nom de périphérique invalide est défini, la valeur sera remise sur ``"Default"``.

\ **Note :** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` doit valoir ``true`` pour que l'entrée audio fonctionne. Voir aussi la description de ce paramètre pour les avertissements liés aux autorisations et aux paramètres de confidentialité du système d'exploitation.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_output_device:

.. rst-class:: classref-property

:ref:`String<class_String>` **output_device** = ``"Default"`` :ref:`🔗<class_AudioServer_property_output_device>`

.. rst-class:: classref-property-setget

- |void| **set_output_device**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_output_device**\ (\ )

Le nom du périphérique actuel pour la sortie audio (voir :ref:`get_output_device_list()<class_AudioServer_method_get_output_device_list>`). Sur les systèmes avec plusieurs sorties audio (tels que l'audio analogique, USB et HDMI), cela peut être utilisé pour sélectionner le périphérique de sortie de l'audio. La valeur ``"Default"`` jouera l'audio sur la sortie audio par défaut au niveau du système. Si un nom de périphérique invalide est défini, la valeur sera remise sur ``"Default"``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_playback_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **playback_speed_scale** = ``1.0`` :ref:`🔗<class_AudioServer_property_playback_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_playback_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_playback_speed_scale**\ (\ )

Redimensionne le taux auquel l'audio est joué (c.-à-d. le définir à ``0.5`` fera que l'audio soit joué à la moitié de sa vitesse). Voir aussi :ref:`Engine.time_scale<class_Engine_property_time_scale>` pour affecter la vitesse de simulation générale, qui est indépendante de :ref:`playback_speed_scale<class_AudioServer_property_playback_speed_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioServer_method_add_bus:

.. rst-class:: classref-method

|void| **add_bus**\ (\ at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AudioServer_method_add_bus>`

Ajoute un bus à la position ``at_position``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_add_bus_effect:

.. rst-class:: classref-method

|void| **add_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect\: :ref:`AudioEffect<class_AudioEffect>`, at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AudioServer_method_add_bus_effect>`

Ajoute un effet :ref:`AudioEffect<class_AudioEffect>` au bus ``bus_idx`` à la position ``at_position``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_generate_bus_layout:

.. rst-class:: classref-method

:ref:`AudioBusLayout<class_AudioBusLayout>` **generate_bus_layout**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_generate_bus_layout>`

Génère un :ref:`AudioBusLayout<class_AudioBusLayout>` en utilisant les bus et effets disponibles.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_channels**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_channels>`

Renvoie le nombre de canaux du bus à l'index ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect:

.. rst-class:: classref-method

:ref:`AudioEffect<class_AudioEffect>` **get_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect>`

Renvoie l':ref:`AudioEffect<class_AudioEffect>` en position ``effect_idx`` dans le bus ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_effect_count**\ (\ bus_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect_count>`

Renvoie le nombre d'effets pour le bus ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect_instance:

.. rst-class:: classref-method

:ref:`AudioEffectInstance<class_AudioEffectInstance>` **get_bus_effect_instance**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect_instance>`

Renvoie l':ref:`AudioEffectInstance<class_AudioEffectInstance>` assignée au bus et aux indices de l'effet donnés (et le canal en option).

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_index**\ (\ bus_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_index>`

Renvoie l'index du bus avec le nom ``bus_name``. Renvoie ``-1`` si aucun bus avec le nom spécifié n'existe.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_bus_name**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_name>`

Renvoie le nom du bus avec l'index ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_peak_volume_left_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_peak_volume_left_db**\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_peak_volume_left_db>`

Renvoie le pic de volume du haut-parleur gauche à l'index de bus ``bus_idx`` et l'index de canal ``channel``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_peak_volume_right_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_peak_volume_right_db**\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_peak_volume_right_db>`

Renvoie le pic de volume du haut-parleur droit à l'index de bus ``bus_idx`` et l'index de canal ``channel``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_send:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bus_send**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_send>`

Renvoie le nom du bus vers lequel le bus à l'index ``bus_idx`` envoie l'audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_volume_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_volume_db**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_volume_db>`

Renvoie le volume du bus à l'index ``bus_idx`` en dB.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_volume_linear:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_volume_linear**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_volume_linear>`

Renvoie le volume du bus à l'index ``bus_idx`` en tant que valeur linéaire.

\ **Note :** La valeur renvoyée est équivalente au résultat de :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` sur le résultat de :ref:`get_bus_volume_db()<class_AudioServer_method_get_bus_volume_db>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_driver_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_driver_name**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_driver_name>`

Renvoie le nom du pilote audio actuel. La valeur par défaut dépend généralement du système d'exploitation, mais peut être remplacée par l':doc:`argument de ligne de commande <../tutorials/editor/command_line_tutorial>` ``--audio-driver``. ``--headless`` définit aussi automatiquement le pilote audio à ``Dummy``. Voir aussi :ref:`ProjectSettings.audio/driver/driver<class_ProjectSettings_property_audio/driver/driver>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_buffer_length_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_buffer_length_frames**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_buffer_length_frames>`

**Expérimental :** Cette méthode peut être changée ou retirée dans de futures versions.

Renvoie la taille absolue du tampon d'entrée du microphone. Il s'agit d'un multiple de la latence audio et peut être utilisé pour estimer le taux minimum auquel les trames doivent être récupérées.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_device_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_input_device_list**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_device_list>`

Renvoie les noms de tous les périphériques d'entrée audio détectés sur le système.

\ **Note : ** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` doit valoir ``true`` pour que l'entrée audio marche. Voir aussi la description du paramètre pour les avertissements liées aux autorisations et aux paramètres de confidentialité du système d'exploitation.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_frames:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_input_frames**\ (\ frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_input_frames>`

**Expérimental :** Cette méthode peut être changée ou retirée dans de futures versions.

Renvoie un :ref:`PackedVector2Array<class_PackedVector2Array>` contenant exactement ``frames`` d'échantillons audio du buffer du microphone interne si disponible, sinon renvoie un :ref:`PackedVector2Array<class_PackedVector2Array>` vide.

Le buffer est rempli au taux de :ref:`get_input_mix_rate()<class_AudioServer_method_get_input_mix_rate>` images par seconde lorsque :ref:`set_input_device_active()<class_AudioServer_method_set_input_device_active>` a été définie avec succès à ``true``.

Les échantillons sont des valeurs PCM flottantes entre ``-1`` et ``1``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_frames_available**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_frames_available>`

**Expérimental :** Cette méthode peut être changée ou retirée dans de futures versions.

Renvoie le nombre de trames disponibles à la lecture en utilisant :ref:`get_input_frames()<class_AudioServer_method_get_input_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_mix_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_input_mix_rate**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_input_mix_rate>`

Renvoie la fréquence d'échantillonnage de l'entrée de l'**AudioServer**.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_mix_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_mix_rate**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_mix_rate>`

Renvoie le débit de sortie du **AudioServer**.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_output_device_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_output_device_list**\ (\ ) :ref:`🔗<class_AudioServer_method_get_output_device_list>`

Renvoie les noms de tous les appareils de sortie audio détectés sur le système.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_output_latency:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_output_latency**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_output_latency>`

Renvoie la latence de sortie effective du pilote audio. Ceci est basé sur :ref:`ProjectSettings.audio/driver/output_latency<class_ProjectSettings_property_audio/driver/output_latency>`, mais la valeur de retour exacte diffère selon le système d'exploitation et le pilote audio.

\ **Note :** Cela peut être coûteux, il n'est pas recommandé d'appeler :ref:`get_output_latency()<class_AudioServer_method_get_output_latency>` à chaque trame.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **get_speaker_mode**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_speaker_mode>`

Renvoie la configuration du haut-parleur.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_time_since_last_mix:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_time_since_last_mix**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_time_since_last_mix>`

Renvoie le temps relatif écoulé depuis le dernier mixage.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_time_to_next_mix:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_time_to_next_mix**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_time_to_next_mix>`

Renvoie la durée avant le prochain mixage.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_bypassing_effects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_bypassing_effects**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_bypassing_effects>`

Si ``true``, le bus à l'index ``bus_idx`` ignore les effets.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_effect_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_effect_enabled**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_effect_enabled>`

Si ``true``, l'effet à l'index ``effect_idx`` sur le bus à l'index ``bus_idx`` est activé.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_mute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_mute**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_mute>`

Si ``true``, le bus à la position ``bus_idx`` est muet.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_solo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_solo**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_solo>`

Si ``true``, le bus à l'index ``bus_idx`` est en mode solo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_stream_registered_as_sample:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stream_registered_as_sample**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioServer_method_is_stream_registered_as_sample>`

**Expérimental :** Cette méthode peut être changée ou retirée dans de futures versions.

Si ``true``, le flux est enregistré en tant qu'échantillon. Le moteur n'aura pas à l'enregistrer avant de jouer l'échantillon.

Si ``false``, le flux devra être enregistré avant de le jouer. Pour éviter les pics de lag, enregistrez le flux comme échantillon avec :ref:`register_stream_as_sample()<class_AudioServer_method_register_stream_as_sample>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_AudioServer_method_lock>`

Verrouille la boucle principale du pilote audio.

\ **Note :** Il est important de la déverrouiller après utilisation.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_move_bus:

.. rst-class:: classref-method

|void| **move_bus**\ (\ index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_move_bus>`

Déplace le bus de la position ``index`` à ``to_index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_register_stream_as_sample:

.. rst-class:: classref-method

|void| **register_stream_as_sample**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioServer_method_register_stream_as_sample>`

**Expérimental :** Cette méthode peut être changée ou retirée dans de futures versions.

Force l'enregistrement d'un flux en tant qu'échantillon.

\ **Note :** Des pics de lag peuvent survenir lors de l'appel de cette méthode, en particulier sur les compilation en single-thread. Il est suggéré d'appeler cette méthode pendant le chargement des ressources, où le pic de lag pourrait être masqué, au lieu d'enregistrer l'échantillon juste avant qu'il ne soit joué.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_remove_bus:

.. rst-class:: classref-method

|void| **remove_bus**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_remove_bus>`

Retire le bus à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_remove_bus_effect:

.. rst-class:: classref-method

|void| **remove_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_remove_bus_effect>`

Retire l'effet à l'index ``effect_idx`` du bus à l'index ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_bypass_effects:

.. rst-class:: classref-method

|void| **set_bus_bypass_effects**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_bypass_effects>`

Si ``true``, le bus à l'index ``bus_idx`` ignore les effets.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_effect_enabled:

.. rst-class:: classref-method

|void| **set_bus_effect_enabled**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_effect_enabled>`

Si ``true``, l'effet à l'index ``effect_idx`` sur le bus à l'index ``bus_idx`` est activé.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_layout:

.. rst-class:: classref-method

|void| **set_bus_layout**\ (\ bus_layout\: :ref:`AudioBusLayout<class_AudioBusLayout>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_layout>`

Remplace le :ref:`AudioBusLayout<class_AudioBusLayout>` actuellement utilisé.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_mute:

.. rst-class:: classref-method

|void| **set_bus_mute**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_mute>`

Si ``true``, le bus à la position ``bus_idx`` est muet.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_name:

.. rst-class:: classref-method

|void| **set_bus_name**\ (\ bus_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_name>`

Définit le nom du bus à l'index ``bus_idx`` en ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_send:

.. rst-class:: classref-method

|void| **set_bus_send**\ (\ bus_idx\: :ref:`int<class_int>`, send\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_send>`

Connecte la sortie du bus à l'index ``bus_idx`` au bus nommé ``send``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_solo:

.. rst-class:: classref-method

|void| **set_bus_solo**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_solo>`

Si ``true``, le bus à l'index ``bus_idx`` est en mode solo.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_volume_db:

.. rst-class:: classref-method

|void| **set_bus_volume_db**\ (\ bus_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_volume_db>`

Définit le volume du bus à l'index ``bus_idx`` à ``volume_db``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_volume_linear:

.. rst-class:: classref-method

|void| **set_bus_volume_linear**\ (\ bus_idx\: :ref:`int<class_int>`, volume_linear\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_volume_linear>`

Définit le volume en tant que valeur linéaire du bus d'index ``bus_idx`` à ``volume_linear``.

\ **Note :** L'utilisation de cette méthode équivaut à appeler :ref:`set_bus_volume_db()<class_AudioServer_method_set_bus_volume_db>` avec le résultat de :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` sur une valeur.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_enable_tagging_used_audio_streams:

.. rst-class:: classref-method

|void| **set_enable_tagging_used_audio_streams**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_enable_tagging_used_audio_streams>`

S'il est défini à ``true``, toutes les instances de :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` appelleront :ref:`AudioStreamPlayback._tag_used_streams()<class_AudioStreamPlayback_private_method__tag_used_streams>` à chaque étape de mixage.

\ **Note :** Ceci est activé par défaut dans l'éditeur, car il est utilisé par les plugins d'éditeur pour les prévisualisations des flux audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_input_device_active:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_input_device_active**\ (\ active\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_input_device_active>`

**Expérimental :** Cette méthode peut être changée ou retirée dans de futures versions.

Si ``active`` vaut ``true``, démarre le flux d'entrée du microphone spécifié par :ref:`input_device<class_AudioServer_property_input_device>` ou renvoie une erreur s'il a échoué.

Si ``active`` vaut ``false``, arrête le flux d'entrée s'il est en cours d'exécution.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_swap_bus_effects:

.. rst-class:: classref-method

|void| **swap_bus_effects**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, by_effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_swap_bus_effects>`

Échange la position de deux effets dans le bus d'index ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_AudioServer_method_unlock>`

Déverrouille la boucle principale du pilote audio. (Après le verrouillage, vous devriez toujours le déverrouiller.)

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
