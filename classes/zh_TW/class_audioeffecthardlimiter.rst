:github_url: hide

.. _class_AudioEffectHardLimiter:

AudioEffectHardLimiter
======================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a limiter audio effect to an audio bus.

Prevents audio signals from exceeding a specified volume level.

.. rst-class:: classref-introduction-group

說明
----

A "limiter" disallows audio signals from exceeding a given volume threshold level in dB. Hard limiters predict volume peaks, and will smoothly apply gain reduction when a peak crosses the ceiling threshold level to prevent clipping. It preserves the waveform and prevents it from crossing the ceiling threshold level. Adding one in the Master bus is recommended as a safety measure to prevent sudden volume peaks from occurring, and to prevent distortion caused by clipping, when the volume exceeds 0 dB.

If clipping is desired, consider :ref:`AudioEffectDistortion.MODE_CLIP<class_AudioEffectDistortion_constant_MODE_CLIP>`.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

屬性
----

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

屬性說明
--------

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

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
