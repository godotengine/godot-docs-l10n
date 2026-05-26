:github_url: hide

.. _class_AudioEffectRecord:

AudioEffectRecord
=================

**Hérite de :** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

L'effet audio utilisé pour l'enregistrement des sons venants d'un bus audio.

.. rst-class:: classref-introduction-group

Description
-----------

Allows the user to record the sound from an audio bus into an :ref:`AudioStreamWAV<class_AudioStreamWAV>`. When used on the Master audio bus, this includes all audio output by Godot.

Unlike :ref:`AudioEffectCapture<class_AudioEffectCapture>`, this effect encodes the recording with the given format (8-bit, 16-bit, or compressed) instead of giving access to the raw audio samples.

Can be used (with an :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`) to record from a microphone.

\ **Note:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` must be ``true`` for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`L'enregistrement avec le microphone <../tutorials/audio/recording_with_microphone>`

- `Démo d'enregistrement de l'audio du microphone <https://godotengine.org/asset-library/asset/2760>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Format<enum_AudioStreamWAV_Format>` | :ref:`format<class_AudioEffectRecord_property_format>` | ``1`` |
   +-------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`get_recording<class_AudioEffectRecord_method_get_recording>`\ (\ ) |const|                                         |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`is_recording_active<class_AudioEffectRecord_method_is_recording_active>`\ (\ ) |const|                             |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_recording_active<class_AudioEffectRecord_method_set_recording_active>`\ (\ record\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioEffectRecord_property_format:

.. rst-class:: classref-property

:ref:`Format<enum_AudioStreamWAV_Format>` **format** = ``1`` :ref:`🔗<class_AudioEffectRecord_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`Format<enum_AudioStreamWAV_Format>`\ )
- :ref:`Format<enum_AudioStreamWAV_Format>` **get_format**\ (\ )

Spécifie le format dans lequel l'échantillon sera enregistré.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioEffectRecord_method_get_recording:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **get_recording**\ (\ ) |const| :ref:`🔗<class_AudioEffectRecord_method_get_recording>`

Renvoie l’échantillon enregistré.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectRecord_method_is_recording_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_recording_active**\ (\ ) |const| :ref:`🔗<class_AudioEffectRecord_method_is_recording_active>`

Renvoie si l'enregistrement est actif ou non.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectRecord_method_set_recording_active:

.. rst-class:: classref-method

|void| **set_recording_active**\ (\ record\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioEffectRecord_method_set_recording_active>`

Si ``true``, le son sera enregistré. Notez que le redémarrage de l'enregistrement supprimera l'échantillon précédemment enregistré.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
