:github_url: hide

.. _class_AudioEffectDistortion:

AudioEffectDistortion
=====================

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Aggiunge un effetto audio di distorsione a un bus audio.

Rimappa i campioni audio attraversa una funzione non lineare per ottenere un suono distorto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un effetto "distorsione" modifica la forma d'onda tramite una funzione matematica non lineare (vedi quelle disponibili in :ref:`Mode<enum_AudioEffectDistortion_Mode>`), basata sull'ampiezza dei campioni della forma d'onda.

\ **Nota:** In una funzione non lineare, un campione in ingresso con un valore di ampiezza *x* avrà la sua ampiezza aumentata o diminuita a un valore *y*, in base al valore della funzione in *x*, motivo per cui, anche con lo stesso :ref:`drive<class_AudioEffectDistortion_property_drive>`, il suono in uscita varierà a seconda del volume in ingresso. Per modificare il volume mantenendo la forma d'onda in uscita, usa :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`.

In questo effetto, ogni tipo corrisponde a una diversa funzione non lineare. I diversi tipi disponibili sono: clip, atan, lofi (bitcrush), overdrive e waveshape. Ogni tipo di distorsione disponibile è simmetrico: i valori di ampiezza negativi sono influenzati allo stesso modo di quelli positivi.

Sebbene la distorsione modifichi sempre il contenuto in una frequenza, solitamente introducendo armoniche acute, i diversi tipi di distorsione offrono una gamma di qualità sonore: da "soffice" e "accogliente" a "croccante" e "abrasivo".

Nei videogiochi, può essere utile per simulare, in modo molto efficace, il suono proveniente da un dispositivo o un altoparlante saturo. Può anche aiutare a far risaltare l'audio in un mix, introducendo frequenze più alte e aumentandone il volume.

\ **Nota:** Sebbene solitamente impercettibile, un effetto di distorsione abilitato modifica comunque il suono anche quando :ref:`drive<class_AudioEffectDistortion_property_drive>` è impostato su 0. Questo non è un bug. Se questo comportamento non è desiderato, si consiglia di disabilitare l'effetto usando :ref:`AudioServer.set_bus_effect_enabled()<class_AudioServer_method_set_bus_effect_enabled>`.

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

Enumerazioni
------------------------

.. _enum_AudioEffectDistortion_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AudioEffectDistortion_Mode>`

.. _class_AudioEffectDistortion_constant_MODE_CLIP:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_CLIP** = ``0``

Appiattisce la forma d'onda a 0 dB in maniera netta. :ref:`drive<class_AudioEffectDistortion_property_drive>` aumenta l'ampiezza dei campioni esponenzialmente. Questa modalità funge da hard clipper se :ref:`drive<class_AudioEffectDistortion_property_drive>` è impostato su 0 ed è l'unica modalità che tronca i segnali audio a 0 dB.

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

Appiattisce la forma d'onda in maniera graduale, seguendo una curva arcotangente. Il volume dell'audio diminuisce prima di appiattire i picchi a ``PI * 4.0`` (valore lineare), se è stato normalizzato in precedenza.

.. _class_AudioEffectDistortion_constant_MODE_LOFI:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_LOFI** = ``2``

Riduce la profondità di bit dell'audio per ottenere un segnale audio a bassa risoluzione, passando da 16 bit a 2 bit. È possibile utilizzarlo per emulare il suono di vecchi dispositivi audio digitali.

.. _class_AudioEffectDistortion_constant_MODE_OVERDRIVE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_OVERDRIVE** = ``3``

Emula l'accogliente distorsione prodotta da un transistor a effetto di campo, che è comunemente usato negli amplificatori per strumenti musicali a stato solido. La proprietà :ref:`drive<class_AudioEffectDistortion_property_drive>` non ha effetto in questa modalità.

.. _class_AudioEffectDistortion_constant_MODE_WAVESHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_WAVESHAPE** = ``4``

Appiattisce la forma d'onda in maniera graduale, fino a raggiungere un picco netto a ``drive = 1``, seguendo una generica funzione sigmoide assoluta.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioEffectDistortion_property_drive:

.. rst-class:: classref-property

:ref:`float<class_float>` **drive** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_drive>`

.. rst-class:: classref-property-setget

- |void| **set_drive**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drive**\ (\ )

Intensità della distorsione. Controlla quanto il segnale audio in ingresso è influenzato dalla curva di distorsione, passando da una funzione lineare a una non lineare. Il valore può variare da 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_keep_hf_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **keep_hf_hz** = ``16000.0`` :ref:`🔗<class_AudioEffectDistortion_property_keep_hf_hz>`

.. rst-class:: classref-property-setget

- |void| **set_keep_hf_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_keep_hf_hz**\ (\ )

Filtro a passa-alto, in Hz. Le frequenze superiori a questo valore non saranno influenzate dalla distorsione. Il valore può variare da 1 a 20000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **mode** = ``0`` :ref:`🔗<class_AudioEffectDistortion_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_AudioEffectDistortion_Mode>`\ )
- :ref:`Mode<enum_AudioEffectDistortion_Mode>` **get_mode**\ (\ )

Tipo di distorsione. Cambia la funzione non lineare utilizzata per distorcere la forma d'onda. Vedi :ref:`Mode<enum_AudioEffectDistortion_Mode>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_post_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **post_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_post_gain>`

.. rst-class:: classref-property-setget

- |void| **set_post_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_post_gain**\ (\ )

Guadagno dopo l'effetto, in dB. Il valore può variare da -80 a 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_pre_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_pre_gain>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain**\ (\ )

Guadagno prima dell'effetto, in dB. Il valore può variare da -60 a 60.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
