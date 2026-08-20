:github_url: hide

.. _class_AudioEffectHardLimiter:

AudioEffectHardLimiter
======================

**Hereda:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Añade un efecto de limitador de audio a un bus de audio.

Evita que las señales de audio superen un nivel de volumen especificado.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A "limiter" disallows audio signals from exceeding a given volume threshold level in dB. Hard limiters predict volume peaks, and will smoothly apply gain reduction when a peak crosses the ceiling threshold level to prevent clipping. It preserves the waveform and prevents it from crossing the ceiling threshold level. Adding one in the Master bus is recommended as a safety measure to prevent sudden volume peaks from occurring, and to prevent distortion caused by clipping, when the volume exceeds 0 dB.

If clipping is desired, consider :ref:`AudioEffectDistortion.MODE_CLIP<class_AudioEffectDistortion_constant_MODE_CLIP>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Buses de audio <../tutorials/audio/audio_buses>`

- :doc:`Efectos de audio <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`ceiling_db<class_AudioEffectHardLimiter_property_ceiling_db>`   | ``-0.3`` |
   +---------------------------+-----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`pre_gain_db<class_AudioEffectHardLimiter_property_pre_gain_db>` | ``0.0``  |
   +---------------------------+-----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`release<class_AudioEffectHardLimiter_property_release>`         | ``0.1``  |
   +---------------------------+-----------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioEffectHardLimiter_property_ceiling_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **ceiling_db** = ``-0.3`` :ref:`🔗<class_AudioEffectHardLimiter_property_ceiling_db>`

.. rst-class:: classref-property-setget

- |void| **set_ceiling_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ceiling_db**\ (\ )

The waveform's maximum allowed value, in dB. This value can range from -24 to 0.

The default value of -0.3 prevents potential inter-sample peaks (ISP) from crossing over 0 dB, which can cause slight distortion on some older hardware.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectHardLimiter_property_pre_gain_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain_db** = ``0.0`` :ref:`🔗<class_AudioEffectHardLimiter_property_pre_gain_db>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain_db**\ (\ )

Gain before limiting, in dB. Value can range from -24 to 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectHardLimiter_property_release:

.. rst-class:: classref-property

:ref:`float<class_float>` **release** = ``0.1`` :ref:`🔗<class_AudioEffectHardLimiter_property_release>`

.. rst-class:: classref-property-setget

- |void| **set_release**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_release**\ (\ )

Time it takes in seconds for the gain reduction to fully release. Value can range from 0.01 to 3.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
