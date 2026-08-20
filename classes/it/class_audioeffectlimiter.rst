:github_url: hide

.. _class_AudioEffectLimiter:

AudioEffectLimiter
==================

**Deprecato:** Use :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` instead.

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Aggiunge un effetto audio limiter soft-clip a un bus audio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un "limiter" (o limitatore) è un effetto audio progettato per impedire che i segnali audio superino una determinata soglia di volume e, in genere, funziona riducendo il volume o applicando un soft clipping all'audio. Si consiglia sempre di aggiungerlo al bus Master per evitare il clipping quando il volume supera 0 dB.

Il soft clipping inizia a ridurre i picchi poco sotto la soglia di volume e aumenta progressivamente il suo effetto all'aumentare del volume in ingresso, in modo tale che la soglia non venga mai superata.

Se si desidera un clipping più rigido, si consiglia di usare :ref:`AudioEffectDistortion.MODE_CLIP<class_AudioEffectDistortion_constant_MODE_CLIP>`.

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

   +---------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`ceiling_db<class_AudioEffectLimiter_property_ceiling_db>`           | ``-0.1`` |
   +---------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`soft_clip_db<class_AudioEffectLimiter_property_soft_clip_db>`       | ``2.0``  |
   +---------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`soft_clip_ratio<class_AudioEffectLimiter_property_soft_clip_ratio>` | ``10.0`` |
   +---------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`threshold_db<class_AudioEffectLimiter_property_threshold_db>`       | ``0.0``  |
   +---------------------------+---------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioEffectLimiter_property_ceiling_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **ceiling_db** = ``-0.1`` :ref:`🔗<class_AudioEffectLimiter_property_ceiling_db>`

.. rst-class:: classref-property-setget

- |void| **set_ceiling_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ceiling_db**\ (\ )

Il valore massimo consentito della forma d'onda, in dB. Il valore può variare da -20 a -0.1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_soft_clip_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **soft_clip_db** = ``2.0`` :ref:`🔗<class_AudioEffectLimiter_property_soft_clip_db>`

.. rst-class:: classref-property-setget

- |void| **set_soft_clip_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_soft_clip_db**\ (\ )

Modifica il volume delle onde limitate, in dB. Il valore può variare da 0 a 6.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_soft_clip_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **soft_clip_ratio** = ``10.0`` :ref:`🔗<class_AudioEffectLimiter_property_soft_clip_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_soft_clip_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_soft_clip_ratio**\ (\ )

Questa proprietà non ha alcun effetto sull'audio. Utilizza :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` invece, poiché questo effetto limitatore è deprecato.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_threshold_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold_db** = ``0.0`` :ref:`🔗<class_AudioEffectLimiter_property_threshold_db>`

.. rst-class:: classref-property-setget

- |void| **set_threshold_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold_db**\ (\ )

Il volume di soglia a partire dal quale il limiter comincia a essere attivo, in dB. Il valore può variare da -30 a 0.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
