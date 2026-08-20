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

Un efecto de "distorsión" modifica la forma de onda mediante una función matemática no lineal (consulta las funciones disponibles en :ref:`Mode<enum_AudioEffectDistortion_Mode>`), basándose en la amplitud de las muestras de la forma de onda.



\ **Nota:** En una función no lineal, una muestra de entrada con un valor de amplitud *x* tendrá su amplitud aumentada o reducida a un valor *y*, según el valor de la función en *x*. Por esta razón, incluso con el mismo :ref:`drive<class_AudioEffectDistortion_property_drive>`, el sonido de salida variará dependiendo del volumen de entrada. Para cambiar el volumen manteniendo la forma de onda de salida, utiliza :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`.



En este efecto, cada tipo corresponde a una función no lineal diferente. Los tipos disponibles son: clip, atan, lofi (reducción de bits), overdrive y waveshape. Todos los tipos de distorsión disponibles aquí son simétricos: los valores de amplitud negativos se ven afectados de la misma forma que los valores positivos.



Aunque la distorsión siempre cambiará el contenido de frecuencia, normalmente introduciendo armónicos superiores, los diferentes tipos de distorsión ofrecen una variedad de características sonoras; desde sonidos "suaves" y "cálidos", hasta sonidos "crujientes" y "agresivos".



En juegos, puede ayudar a simular de forma muy eficiente el sonido proveniente de un dispositivo o altavoz saturado. También puede ayudar a que el audio destaque en una mezcla, introduciendo frecuencias más altas y aumentando el volumen.



\ **Nota:** Aunque normalmente es imperceptible, un efecto de distorsión habilitado sigue modificando el sonido incluso cuando :ref:`drive<class_AudioEffectDistortion_property_drive>` está establecido en 0. Esto no es un error. Si este comportamiento no es deseado, considera desactivar el efecto mediante :ref:`AudioServer.set_bus_effect_enabled()<class_AudioServer_method_set_bus_effect_enabled>`.

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

Aplana la onda a 0 dB de forma brusca. :ref:`drive<class_AudioEffectDistortion_property_drive>` incrementa la amplitud de las muestras exponencialmente. Este modo funciona como un corte fuerte si :ref:`drive<class_AudioEffectDistortion_property_drive>` está a 0, y es el único modo que recorta las señales de audio a 0 dB.

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

Aplana la onda de forma suave, siguiendo una curva arcotangente. El volumen del audio baja antes de aplanar los picos a ``PI * 4.0`` (valor lineal), si se había normalizado previamente.

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

Aplana la onda de forma suave, hasta que alcanza un pico brusco a ``drive = 1``, siguiendo una función sigmoidea genérica absoluta.

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

Intensidad de la distorsión. Controla cuánto del audio de entrada se ve afectado por la curva de distorsión al moverse de una función lineal a una no-lineal. El valor puede variar entre 0 y 1.

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

Tipo de distorsión. Cambia la función no-lineal usada para distorsionar la onda. Ver :ref:`Mode<enum_AudioEffectDistortion_Mode>`.

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
