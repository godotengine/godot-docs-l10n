:github_url: hide

.. _class_AudioEffectSpectrumAnalyzer:

AudioEffectSpectrumAnalyzer
===========================

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Creates an :ref:`AudioEffectInstance<class_AudioEffectInstance>` which performs frequency analysis and exposes results to be accessed in real-time.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Calculates a Fourier Transform of the audio signal. This effect does not alter the audio. Can be used for creating real-time audio visualizations, like a spectrogram.

This resource configures an :ref:`AudioEffectSpectrumAnalyzerInstance<class_AudioEffectSpectrumAnalyzerInstance>`, which performs the actual analysis at runtime. An instance should be obtained with :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>` to make use of this effect.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

- `Demo di visualizzatore spettro audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                | :ref:`buffer_length<class_AudioEffectSpectrumAnalyzer_property_buffer_length>` | ``2.0`` |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+---------+
   | :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` | :ref:`fft_size<class_AudioEffectSpectrumAnalyzer_property_fft_size>`           | ``2``   |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioEffectSpectrumAnalyzer_FFTSize:

.. rst-class:: classref-enumeration

enum **FFTSize**: :ref:`🔗<enum_AudioEffectSpectrumAnalyzer_FFTSize>`

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_256** = ``0``

Utilizza un memoria buffer di 256 campioni per la trasformata di Fourier veloce. Latenza più bassa, ma meno stabile nel tempo.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_512** = ``1``

Utilizza un memoria buffer di 512 campioni per la trasformata di Fourier veloce. Latenza bassa, ma meno stabile nel tempo.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_1024** = ``2``

Utilizza un memoria buffer di 1024 campioni per la trasformata di Fourier veloce. Questo è un compromesso tra la latenza e la stabilita nel tempo.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_2048** = ``3``

Utilizza un memoria buffer di 2048 campioni per la trasformata di Fourier veloce. Latenza alta, ma stabile nel tempo.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_4096:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_4096** = ``4``

Utilizza un memoria buffer di 4096 campioni per la trasformata di Fourier veloce. Latenza più alta, ma la più stabile nel tempo.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_MAX** = ``5``

Rappresenta la dimensione dell'enumerazione :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioEffectSpectrumAnalyzer_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``2.0`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

The length of the buffer to keep, in seconds. Higher values keep data around for longer, but require more memory. Value can range from 0.1 to 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectSpectrumAnalyzer_property_fft_size:

.. rst-class:: classref-property

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **fft_size** = ``2`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_fft_size>`

.. rst-class:: classref-property-setget

- |void| **set_fft_size**\ (\ value\: :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>`\ )
- :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **get_fft_size**\ (\ )

Le dimensioni del buffer di `trasformata di Fourier veloce <https://it.wikipedia.org/wiki/Trasformata_di_Fourier_veloce>`__. Valori più alti attenuano l'analisi dello spettro nel tempo, ma hanno una latenza maggiore. Gli effetti di questa latenza maggiore sono particolarmente evidenti con improvvisi cambiamenti di amplitudine.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
