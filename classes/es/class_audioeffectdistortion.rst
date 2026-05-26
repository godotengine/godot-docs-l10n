:github_url: hide

.. _class_AudioEffectDistortion:

AudioEffectDistortion
=====================

**Hereda:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a distortion audio effect to an audio bus.

Remaps audio samples using a nonlinear function to achieve a distorted sound.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A "distortion" effect modifies the waveform via a nonlinear mathematical function (see available ones in :ref:`Mode<enum_AudioEffectDistortion_Mode>`), based on the amplitude of the waveform's samples.

\ **Note:** In a nonlinear function, an input sample at *x* amplitude value, will either have its amplitude increased or decreased to a *y* value, based on the function value at *x*, which is why even at the same :ref:`drive<class_AudioEffectDistortion_property_drive>`, the output sound will vary depending on the input's volume. To change the volume while maintaining the output waveform, use :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`.

In this effect, each type is a different nonlinear function. The different types available are: clip, atan, lofi (bitcrush), overdrive, and waveshape. Every distortion type available here is symmetric: negative amplitude values are affected the same way as positive ones.

Although distortion will always change frequency content, usually by introducing high harmonics, different distortion types offer a range of sound qualities; from "soft" and "warm", to "crunchy" and "abrasive".

For games, it can help simulate sound coming from some saturated device or speaker very efficiently. It can also help the audio stand out in a mix, by introducing higher frequencies and increasing the volume.

\ **Note:** Although usually imperceptible, an enabled distortion effect still changes the sound even when :ref:`drive<class_AudioEffectDistortion_property_drive>` is set to 0. This is not a bug. If this behavior is undesirable, consider disabling the effect using :ref:`AudioServer.set_bus_effect_enabled()<class_AudioServer_method_set_bus_effect_enabled>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`drive<class_AudioEffectDistortion_property_drive>`           | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`keep_hf_hz<class_AudioEffectDistortion_property_keep_hf_hz>` | ``16000.0`` |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`Mode<enum_AudioEffectDistortion_Mode>` | :ref:`mode<class_AudioEffectDistortion_property_mode>`             | ``0``       |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`   | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`pre_gain<class_AudioEffectDistortion_property_pre_gain>`     | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioEffectDistortion_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AudioEffectDistortion_Mode>`

.. _class_AudioEffectDistortion_constant_MODE_CLIP:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_CLIP** = ``0``

Flattens the waveform at 0 dB in a sharp manner. :ref:`drive<class_AudioEffectDistortion_property_drive>` increases amplitude of samples exponentially. This mode functions as a hard clipper if :ref:`drive<class_AudioEffectDistortion_property_drive>` is set to 0, and is the only mode that clips audio signals at 0 dB.

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

Flattens the waveform in a smooth manner, following an arctangent curve. The audio decreases in volume, before flattening peaks to ``PI * 4.0`` (linear value), if it was normalized beforehand.

.. _class_AudioEffectDistortion_constant_MODE_LOFI:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_LOFI** = ``2``

Decreases audio bit depth to achieve a low-resolution audio signal, going from 16-bit to 2-bit. Can be used to emulate the sound of early digital audio devices.

.. _class_AudioEffectDistortion_constant_MODE_OVERDRIVE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_OVERDRIVE** = ``3``

Emulates the warm distortion produced by a field effect transistor, which is commonly used in solid-state musical instrument amplifiers. :ref:`drive<class_AudioEffectDistortion_property_drive>` has no effect in this mode.

.. _class_AudioEffectDistortion_constant_MODE_WAVESHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_WAVESHAPE** = ``4``

Flattens the waveform in a smooth manner, until it reaches a sharp peak at ``drive = 1``, following a generic absolute sigmoid function.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioEffectDistortion_property_drive:

.. rst-class:: classref-property

:ref:`float<class_float>` **drive** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_drive>`

.. rst-class:: classref-property-setget

- |void| **set_drive**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drive**\ (\ )

Distortion intensity. Controls how much of the input audio is affected by the distortion curve by moving from a linear function to a nonlinear one. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_keep_hf_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **keep_hf_hz** = ``16000.0`` :ref:`🔗<class_AudioEffectDistortion_property_keep_hf_hz>`

.. rst-class:: classref-property-setget

- |void| **set_keep_hf_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_keep_hf_hz**\ (\ )

Filtro de paso alto, en Hz. Las frecuencias superiores a este valor no se verán afectadas por la distorsión. El valor puede variar entre 1 y 20.000.Filtro de paso alto, en Hz. Las frecuencias superiores a este valor no se verán afectadas por la distorsión. El valor puede variar entre 1 y 20.000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **mode** = ``0`` :ref:`🔗<class_AudioEffectDistortion_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_AudioEffectDistortion_Mode>`\ )
- :ref:`Mode<enum_AudioEffectDistortion_Mode>` **get_mode**\ (\ )

Distortion type. Changes the nonlinear function used to distort the waveform. See :ref:`Mode<enum_AudioEffectDistortion_Mode>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_post_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **post_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_post_gain>`

.. rst-class:: classref-property-setget

- |void| **set_post_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_post_gain**\ (\ )

Gain after the effect, in dB. Value can range from -80 to 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_pre_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_pre_gain>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain**\ (\ )

Gain before the effect, in dB. Value can range from -60 to 60.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
