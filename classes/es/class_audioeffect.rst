:github_url: hide

.. _class_AudioEffect:

AudioEffect
===========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AudioEffectAmplify<class_AudioEffectAmplify>`, :ref:`AudioEffectCapture<class_AudioEffectCapture>`, :ref:`AudioEffectChorus<class_AudioEffectChorus>`, :ref:`AudioEffectCompressor<class_AudioEffectCompressor>`, :ref:`AudioEffectDelay<class_AudioEffectDelay>`, :ref:`AudioEffectDistortion<class_AudioEffectDistortion>`, :ref:`AudioEffectEQ<class_AudioEffectEQ>`, :ref:`AudioEffectFilter<class_AudioEffectFilter>`, :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>`, :ref:`AudioEffectLimiter<class_AudioEffectLimiter>`, :ref:`AudioEffectPanner<class_AudioEffectPanner>`, :ref:`AudioEffectPhaser<class_AudioEffectPhaser>`, :ref:`AudioEffectPitchShift<class_AudioEffectPitchShift>`, :ref:`AudioEffectRecord<class_AudioEffectRecord>`, :ref:`AudioEffectReverb<class_AudioEffectReverb>`, :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`, :ref:`AudioEffectStereoEnhance<class_AudioEffectStereoEnhance>`

Clase base para recursos de efectos de audio.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The base :ref:`Resource<class_Resource>` for every audio effect. In the editor, an audio effect can be added to the current bus layout through the Audio panel. At run-time, it is also possible to manipulate audio effects through :ref:`AudioServer.add_bus_effect()<class_AudioServer_method_add_bus_effect>`, :ref:`AudioServer.remove_bus_effect()<class_AudioServer_method_remove_bus_effect>`, and :ref:`AudioServer.get_bus_effect()<class_AudioServer_method_get_bus_effect>`.

When applied on a bus, an audio effect creates a corresponding :ref:`AudioEffectInstance<class_AudioEffectInstance>`. The instance is directly responsible for manipulating sound, based on the original audio effect's properties.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

- `Demo de Grabación de Audio con Micrófono <https://godotengine.org/asset-library/asset/2760>`__

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AudioEffectInstance<class_AudioEffectInstance>` | :ref:`_instantiate<class_AudioEffect_private_method__instantiate>`\ (\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioEffect_private_method__instantiate:

.. rst-class:: classref-method

:ref:`AudioEffectInstance<class_AudioEffectInstance>` **_instantiate**\ (\ ) |virtual| |required| :ref:`🔗<class_AudioEffect_private_method__instantiate>`

Sobrescribe este método para personalizar el :ref:`AudioEffectInstance<class_AudioEffectInstance>` creado cuando este efecto se aplica en un bus en el panel de Audio del editor, o a través de :ref:`AudioServer.add_bus_effect()<class_AudioServer_method_add_bus_effect>`.

::

    extends AudioEffect

    @export var strength = 4.0

    func _instantiate():
        var effect = CustomAudioEffectInstance.new()
        effect.base = self

        return effect

\ **Nota:** Se recomienda mantener una referencia al **AudioEffect** original en la nueva instancia. Dependiendo de la implementación, esto permite que la instancia del efecto escuche los cambios en tiempo de ejecución y se modifique en consecuencia.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
