:github_url: hide

.. _class_AudioEffectHardLimiter:

AudioEffectHardLimiter
======================

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Aggiunge un effetto audio limiter a un bus audio.

Impedisce ai segnali audio di superare un livello specificato di volume.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un "limiter" (o limitatore) impedisce ai segnali audio di superare una determinata soglia di volume in dB. I limiter rigidi prevedono i picchi di volume, e applicheranno gradualmente una riduzione del guadagno quando un picco attraversa la soglia superiore per evitare clipping. Mantiene la forma d'onda e la impedisce di attraversare la soglia superiore. Aggiungere questo effetto nel bus Master è raccomandato come misura di sicurezza per evitare che ci siano picchi di volume improvvisi, e per evitare distorsioni causate da clipping, quando il volume supera 0 dB.

Se si desidera il clipping, considera :ref:`AudioEffectDistortion.MODE_CLIP<class_AudioEffectDistortion_constant_MODE_CLIP>`.

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioEffectHardLimiter_property_ceiling_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **ceiling_db** = ``-0.3`` :ref:`🔗<class_AudioEffectHardLimiter_property_ceiling_db>`

.. rst-class:: classref-property-setget

- |void| **set_ceiling_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ceiling_db**\ (\ )

Il valore massimo consentito della forma d'onda, in decibel. Questo valore può variare da -24.0 a 0.0.

Il valore predefinito di -0.3 impedisce eventuali picchi all'interno dei campioni (ISP) di oltrepassare 0 dB, che possono causare una lieve distorsione su alcuni vecchi dispositivi.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectHardLimiter_property_pre_gain_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain_db** = ``0.0`` :ref:`🔗<class_AudioEffectHardLimiter_property_pre_gain_db>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain_db**\ (\ )

Guadagno prima di limitare, in dB. Il valore può variare da -24 a 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectHardLimiter_property_release:

.. rst-class:: classref-property

:ref:`float<class_float>` **release** = ``0.1`` :ref:`🔗<class_AudioEffectHardLimiter_property_release>`

.. rst-class:: classref-property-setget

- |void| **set_release**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_release**\ (\ )

Tempo necessario in secondi affinché la riduzione del guadagno venga rilasciata completamente. Il valore può variare da 0.01 a 3.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
