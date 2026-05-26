:github_url: hide

.. _class_AudioEffect:

AudioEffect
===========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AudioEffectAmplify<class_AudioEffectAmplify>`, :ref:`AudioEffectCapture<class_AudioEffectCapture>`, :ref:`AudioEffectChorus<class_AudioEffectChorus>`, :ref:`AudioEffectCompressor<class_AudioEffectCompressor>`, :ref:`AudioEffectDelay<class_AudioEffectDelay>`, :ref:`AudioEffectDistortion<class_AudioEffectDistortion>`, :ref:`AudioEffectEQ<class_AudioEffectEQ>`, :ref:`AudioEffectFilter<class_AudioEffectFilter>`, :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>`, :ref:`AudioEffectLimiter<class_AudioEffectLimiter>`, :ref:`AudioEffectPanner<class_AudioEffectPanner>`, :ref:`AudioEffectPhaser<class_AudioEffectPhaser>`, :ref:`AudioEffectPitchShift<class_AudioEffectPitchShift>`, :ref:`AudioEffectRecord<class_AudioEffectRecord>`, :ref:`AudioEffectReverb<class_AudioEffectReverb>`, :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`, :ref:`AudioEffectStereoEnhance<class_AudioEffectStereoEnhance>`

Classe de base pour les ressources d'effet audio.

.. rst-class:: classref-introduction-group

Description
-----------

The base :ref:`Resource<class_Resource>` for every audio effect. In the editor, an audio effect can be added to the current bus layout through the Audio panel. At run-time, it is also possible to manipulate audio effects through :ref:`AudioServer.add_bus_effect()<class_AudioServer_method_add_bus_effect>`, :ref:`AudioServer.remove_bus_effect()<class_AudioServer_method_remove_bus_effect>`, and :ref:`AudioServer.get_bus_effect()<class_AudioServer_method_get_bus_effect>`.

When applied on a bus, an audio effect creates a corresponding :ref:`AudioEffectInstance<class_AudioEffectInstance>`. The instance is directly responsible for manipulating sound, based on the original audio effect's properties.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

- `Démo d'enregistrement de l'audio du microphone <https://godotengine.org/asset-library/asset/2760>`__

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AudioEffectInstance<class_AudioEffectInstance>` | :ref:`_instantiate<class_AudioEffect_private_method__instantiate>`\ (\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioEffect_private_method__instantiate:

.. rst-class:: classref-method

:ref:`AudioEffectInstance<class_AudioEffectInstance>` **_instantiate**\ (\ ) |virtual| |required| :ref:`🔗<class_AudioEffect_private_method__instantiate>`

Surcharger cette méthode pour personnaliser l':ref:`AudioEffectInstance<class_AudioEffectInstance>` créée lorsque cet effet est appliqué sur un bus dans le panneau Audio de l'éditeur, ou par :ref:`AudioServer.add_bus_effect()<class_AudioServer_method_add_bus_effect>`.

::

    extends AudioEffect

    @export var force = 4.0

    func _instantiate():
        var effet = CustomAudioEffectInstance.new()
        effet.base = self

        return effet

\ **Note :** Il est recommandé de garder une référence à l'**AudioEffect** original dans la nouvelle instance. En fonction de l'implémentation, cela permet à l'instance d'effet d'écouter les changements durant l'exécution et d'être modifiée en conséquence.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
