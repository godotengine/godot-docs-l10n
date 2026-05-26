:github_url: hide

.. _class_AudioEffect:

AudioEffect
===========

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AudioEffectAmplify<class_AudioEffectAmplify>`, :ref:`AudioEffectCapture<class_AudioEffectCapture>`, :ref:`AudioEffectChorus<class_AudioEffectChorus>`, :ref:`AudioEffectCompressor<class_AudioEffectCompressor>`, :ref:`AudioEffectDelay<class_AudioEffectDelay>`, :ref:`AudioEffectDistortion<class_AudioEffectDistortion>`, :ref:`AudioEffectEQ<class_AudioEffectEQ>`, :ref:`AudioEffectFilter<class_AudioEffectFilter>`, :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>`, :ref:`AudioEffectLimiter<class_AudioEffectLimiter>`, :ref:`AudioEffectPanner<class_AudioEffectPanner>`, :ref:`AudioEffectPhaser<class_AudioEffectPhaser>`, :ref:`AudioEffectPitchShift<class_AudioEffectPitchShift>`, :ref:`AudioEffectRecord<class_AudioEffectRecord>`, :ref:`AudioEffectReverb<class_AudioEffectReverb>`, :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`, :ref:`AudioEffectStereoEnhance<class_AudioEffectStereoEnhance>`

Classe di base per risorse di effetti audio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

The base :ref:`Resource<class_Resource>` for every audio effect. In the editor, an audio effect can be added to the current bus layout through the Audio panel. At run-time, it is also possible to manipulate audio effects through :ref:`AudioServer.add_bus_effect()<class_AudioServer_method_add_bus_effect>`, :ref:`AudioServer.remove_bus_effect()<class_AudioServer_method_remove_bus_effect>`, and :ref:`AudioServer.get_bus_effect()<class_AudioServer_method_get_bus_effect>`.

When applied on a bus, an audio effect creates a corresponding :ref:`AudioEffectInstance<class_AudioEffectInstance>`. The instance is directly responsible for manipulating sound, based on the original audio effect's properties.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

- `Demo di registro audio dal microfono <https://godotengine.org/asset-library/asset/2760>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AudioEffectInstance<class_AudioEffectInstance>` | :ref:`_instantiate<class_AudioEffect_private_method__instantiate>`\ (\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioEffect_private_method__instantiate:

.. rst-class:: classref-method

:ref:`AudioEffectInstance<class_AudioEffectInstance>` **_instantiate**\ (\ ) |virtual| |required| :ref:`🔗<class_AudioEffect_private_method__instantiate>`

Sovrascrivi questo metodo per personalizzare l':ref:`AudioEffectInstance<class_AudioEffectInstance>` creato quando questo effetto viene applicato su un bus nel pannello Audio dell'editor, o attraverso :ref:`AudioServer.add_bus_effect()<class_AudioServer_method_add_bus_effect>`.

::

    extends AudioEffect

    @export var strength = 4.0

    func _instantiate():
        var effect = CustomAudioEffectInstance.new()
        effect.base = self

        return effect

\ **Nota:** Si raccomanda di mantenere un riferimento all'**AudioEffect** originale nella nuova istanza. A seconda dell'implementazione questo consente all'istanza dell'effetto di ascoltare alle modifiche durante l'esecuzione e di essere pertanto modificata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
