:github_url: hide

.. _class_AudioEffectSpectrumAnalyzer:

AudioEffectSpectrumAnalyzer
===========================

**Hereda:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Efecto de audio que puede usarse para visualizaciones de audio en tiempo real.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este efecto de audio no afecta la salida de sonido, pero puede utilizarse para visualizaciones de audio en tiempo real.

Este recurso configura una instancia de :ref:`AudioEffectSpectrumAnalyzerInstance<class_AudioEffectSpectrumAnalyzerInstance>`, que realiza el análisis propiamente dicho en tiempo de ejecución. Se puede obtener una instancia mediante :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>`.

Véase también :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` para generar sonidos de forma procedural.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Visualizador de Espectro de Audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                                | :ref:`buffer_length<class_AudioEffectSpectrumAnalyzer_property_buffer_length>` | ``2.0``  |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` | :ref:`fft_size<class_AudioEffectSpectrumAnalyzer_property_fft_size>`           | ``2``    |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                                | :ref:`tap_back_pos<class_AudioEffectSpectrumAnalyzer_property_tap_back_pos>`   | ``0.01`` |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AudioEffectSpectrumAnalyzer_FFTSize:

.. rst-class:: classref-enumeration

enum **FFTSize**: :ref:`🔗<enum_AudioEffectSpectrumAnalyzer_FFTSize>`

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_256** = ``0``

Utiliza un búfer de 256 muestras para la transformación rápida de Fourier. La latencia es mínima, pero la estabilidad a lo largo del tiempo es menor.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_512** = ``1``

Utiliza un búfer de 512 muestras para la transformación rápida de Fourier. Baja latencia, pero menos estable en el tiempo.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_1024** = ``2``

Utiliza un búfer de 1024 muestras para la transformación rápida de Fourier. Esto supone un equilibrio entre latencia y estabilidad a lo largo del tiempo.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_2048** = ``3``

Utiliza un búfer de 2048 muestras para la transformación rápida de Fourier. Alta latencia, pero estable en el tiempo.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_4096:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_4096** = ``4``

Utiliza un búfer de 4096 muestras para la transformación rápida de Fourier. La latencia es máxima, pero la estabilidad a lo largo del tiempo es máxima.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_MAX** = ``5``

Representa el tamaño del enum :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioEffectSpectrumAnalyzer_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``2.0`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

La duración del búfer que se mantendrá (en segundos). Los valores más altos conservan los datos durante más tiempo, pero requieren más memoria.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectSpectrumAnalyzer_property_fft_size:

.. rst-class:: classref-property

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **fft_size** = ``2`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_fft_size>`

.. rst-class:: classref-property-setget

- |void| **set_fft_size**\ (\ value\: :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>`\ )
- :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **get_fft_size**\ (\ )

El tamaño del búfer de `Transformada rápida de Fourier <https://en.wikipedia.org/wiki/Fast_Fourier_transform>`__. Valores más altos suavizan el análisis del espectro a lo largo del tiempo, pero generan mayor latencia. Los efectos de esta mayor latencia son especialmente notables con cambios repentinos de amplitud.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectSpectrumAnalyzer_property_tap_back_pos:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap_back_pos** = ``0.01`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_tap_back_pos>`

.. rst-class:: classref-property-setget

- |void| **set_tap_back_pos**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap_back_pos**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
