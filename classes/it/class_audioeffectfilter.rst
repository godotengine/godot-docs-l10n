:github_url: hide

.. _class_AudioEffectFilter:

AudioEffectFilter
=================

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`, :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`, :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>`, :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>`, :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`

Classe base per i filtri. Utilizza effetti che ereditano da questa classe anziché utilizzarla direttamente.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un "filtro" controlla il guadagno delle frequenze, usando :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` come soglia di frequenza. I filtri possono aiutare a dare spazio a ciascun suono e a creare effetti interessanti.

Esistono diversi tipi di filtro che ereditano da questa classe:

Filtri shelf: :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` e :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 

Filtri passa-banda e notch: :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>` e :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ 

Filtri passa-basso/passa-alto: :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>` e :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Effetti audio <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` | ``2000.0`` |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` | :ref:`db<class_AudioEffectFilter_property_db>`               | ``0``      |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`gain<class_AudioEffectFilter_property_gain>`           | ``1.0``    |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`resonance<class_AudioEffectFilter_property_resonance>` | ``0.5``    |
   +--------------------------------------------------+--------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioEffectFilter_FilterDB:

.. rst-class:: classref-enumeration

enum **FilterDB**: :ref:`🔗<enum_AudioEffectFilter_FilterDB>`

.. _class_AudioEffectFilter_constant_FILTER_6DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_6DB** = ``0``

Taglio a 6 dB per ottava. Un'ottava corrisponde al doppio della frequenza sopra :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` o alla metà della frequenza sotto :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_12DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_12DB** = ``1``

Taglio a 12 dB per ottava. Un'ottava corrisponde al doppio della frequenza sopra :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` o alla metà della frequenza sotto :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_18DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_18DB** = ``2``

Taglio a 18 dB per ottava. Un'ottava corrisponde al doppio della frequenza sopra :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` o alla metà della frequenza sotto :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. _class_AudioEffectFilter_constant_FILTER_24DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_24DB** = ``3``

Taglio a 24 dB per ottava. Un'ottava corrisponde al doppio della frequenza sopra :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` o alla metà della frequenza sotto :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioEffectFilter_property_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **cutoff_hz** = ``2000.0`` :ref:`🔗<class_AudioEffectFilter_property_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_cutoff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cutoff**\ (\ )

Soglia di frequenza per il filtro, in Hz. Il valore può variare da 1 a 20500.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_db:

.. rst-class:: classref-property

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **db** = ``0`` :ref:`🔗<class_AudioEffectFilter_property_db>`

.. rst-class:: classref-property-setget

- |void| **set_db**\ (\ value\: :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>`\ )
- :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **get_db**\ (\ )

Pendenza della curva di taglio in dB per ottava (il doppio della frequenza sopra :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` o la metà della frequenza sotto :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`), nota anche come "ordine" del filtro. Gli ordini più elevati hanno un taglio più aggressivo.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``1.0`` :ref:`🔗<class_AudioEffectFilter_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

Guadagno delle frequenze influenzate dal filtro. Questa proprietà è disponibile solo per :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` e :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`. Il valore può variare da 0 a 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_resonance:

.. rst-class:: classref-property

:ref:`float<class_float>` **resonance** = ``0.5`` :ref:`🔗<class_AudioEffectFilter_property_resonance>`

.. rst-class:: classref-property-setget

- |void| **set_resonance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_resonance**\ (\ )

Guadagno esattamente o proprio vicino alla soglia di frequenza :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`. Il valore può variare da 0 a 1.

Il suo comportamento esatto dipende dal tipo di filtro selezionato:

- Per i filtri shelf, accentua o maschera l'ordine, aumentando le frequenze adiacenti alla frequenza :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` e diminuendo le frequenze sul lato opposto.

- Per i filtri passa-banda e notch, allarga o restringe il filtro sulla nella soglia di frequenza :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

- Per i filtri passa-basso/passa-alto, aumenta o diminuisce le frequenze nella soglia di frequenza :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
