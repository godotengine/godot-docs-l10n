:github_url: hide

.. _class_AudioEffectSpectrumAnalyzerInstance:

AudioEffectSpectrumAnalyzerInstance
===================================

**Eredita:** :ref:`AudioEffectInstance<class_AudioEffectInstance>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Istanza interrogabile di un :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La parte in esecuzione di un :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`, che può essere utilizzata per richiedere l'ampiezza di un intervallo di frequenza sul suo bus host.

È possibile ottenere un'istanza di questa classe con :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

- `Demo di visualizzatore spettro audio <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_magnitude_for_frequency_range<class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range>`\ (\ from_hz\: :ref:`float<class_float>`, to_hz\: :ref:`float<class_float>`, mode\: :ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` = 1\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode:

.. rst-class:: classref-enumeration

enum **MagnitudeMode**: :ref:`🔗<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>`

.. _class_AudioEffectSpectrumAnalyzerInstance_constant_MAGNITUDE_AVERAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` **MAGNITUDE_AVERAGE** = ``0``

Utilizza il valore medio attraverso l'intervallo di frequenza come ampiezza.

.. _class_AudioEffectSpectrumAnalyzerInstance_constant_MAGNITUDE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` **MAGNITUDE_MAX** = ``1``

Utilizza il valore massimo dell'intervallo di frequenza come ampiezza.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_magnitude_for_frequency_range**\ (\ from_hz\: :ref:`float<class_float>`, to_hz\: :ref:`float<class_float>`, mode\: :ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` = 1\ ) |const| :ref:`🔗<class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range>`

Restituisce l'ampiezza delle frequenze da ``from_hz`` a ``to_hz`` in energia lineare come Vector2. Il componente ``x`` del valore restituito rappresenta il canale stereo sinistro, e ``y`` rappresenta il canale destro.

\ ``mode`` determina in che modo sarà elaborato l'intervallo di frequenza.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
