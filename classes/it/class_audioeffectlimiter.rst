:github_url: hide

.. _class_AudioEffectLimiter:

AudioEffectLimiter
==================

**Deprecato:** Use :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` instead.

**Eredita:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a soft-clip limiter audio effect to an audio bus.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A "limiter" is an audio effect designed to stop audio signals from exceeding a specified volume threshold level, and usually works by decreasing the volume or soft-clipping the audio. Adding one in the Master bus is always recommended to prevent clipping when the volume goes above 0 dB.

Soft clipping starts to decrease the peaks a little below the volume threshold level and progressively increases its effect as the input volume increases such that the threshold level is never exceeded.

If hard clipping is desired, consider :ref:`AudioEffectDistortion.MODE_CLIP<class_AudioEffectDistortion_constant_MODE_CLIP>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Bus audio <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

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

The waveform's maximum allowed value, in dB. Value can range from -20 to -0.1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_soft_clip_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **soft_clip_db** = ``2.0`` :ref:`🔗<class_AudioEffectLimiter_property_soft_clip_db>`

.. rst-class:: classref-property-setget

- |void| **set_soft_clip_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_soft_clip_db**\ (\ )

Modifies the volume of the limited waves, in dB. Value can range from 0 to 6.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_soft_clip_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **soft_clip_ratio** = ``10.0`` :ref:`🔗<class_AudioEffectLimiter_property_soft_clip_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_soft_clip_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_soft_clip_ratio**\ (\ )

This property has no effect on the audio. Use :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` instead, as this Limiter effect is deprecated.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_threshold_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold_db** = ``0.0`` :ref:`🔗<class_AudioEffectLimiter_property_threshold_db>`

.. rst-class:: classref-property-setget

- |void| **set_threshold_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold_db**\ (\ )

The volume threshold level from which the limiter begins to be active, in dB. Value can range from -30 to 0.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
