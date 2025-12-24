:github_url: hide

.. _class_AudioEffectLimiter:

AudioEffectLimiter
==================

**已棄用：** Use :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` instead.

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為音訊匯流排新增軟削波限制器效果。

.. rst-class:: classref-introduction-group

說明
----

限制器類似壓縮器，但較固定，目的在阻止音量超過門檻。建議於 Master 匯流排加入，以降低削波影響。

軟削波會在接近門檻前開始壓低峰值，隨輸入增大而逐漸加強，確保不會越界。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

屬性
----

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

屬性說明
--------

.. _class_AudioEffectLimiter_property_ceiling_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **ceiling_db** = ``-0.1`` :ref:`🔗<class_AudioEffectLimiter_property_ceiling_db>`

.. rst-class:: classref-property-setget

- |void| **set_ceiling_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ceiling_db**\ (\ )

波形允許的最大值（dB），可設 -20 至 -0.1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_soft_clip_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **soft_clip_db** = ``2.0`` :ref:`🔗<class_AudioEffectLimiter_property_soft_clip_db>`

.. rst-class:: classref-property-setget

- |void| **set_soft_clip_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_soft_clip_db**\ (\ )

對被限制後的波形加上的增益（dB），可設 0–6。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_soft_clip_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **soft_clip_ratio** = ``10.0`` :ref:`🔗<class_AudioEffectLimiter_property_soft_clip_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_soft_clip_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_soft_clip_ratio**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_threshold_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold_db** = ``0.0`` :ref:`🔗<class_AudioEffectLimiter_property_threshold_db>`

.. rst-class:: classref-property-setget

- |void| **set_threshold_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold_db**\ (\ )

限制器開始作用的門檻（dB），可設 -30 至 0。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
