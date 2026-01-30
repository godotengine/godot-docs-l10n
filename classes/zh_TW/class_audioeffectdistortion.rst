:github_url: hide

.. _class_AudioEffectDistortion:

AudioEffectDistortion
=====================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為音訊匯流排新增失真效果。

改變聲波形以產生失真。

.. rst-class:: classref-introduction-group

說明
----

可選類型：削頂、正切、Lo-Fi（比特破碎）、Overdrive、Waveshape。

失真會改變波形與頻譜，常帶來「破裂」或「粗糙」質感；在遊戲中能高效模擬設備或喇叭飽和的聲音。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

屬性
----

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

列舉
----

.. _enum_AudioEffectDistortion_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AudioEffectDistortion_Mode>`

.. _class_AudioEffectDistortion_constant_MODE_CLIP:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_CLIP** = ``0``

削頂式數位失真，截去波形上下峰值。

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_AudioEffectDistortion_constant_MODE_LOFI:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_LOFI** = ``2``

低解析度數位失真（位元深度降低），常用於模擬早期數位設備的聲音。

.. _class_AudioEffectDistortion_constant_MODE_OVERDRIVE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_OVERDRIVE** = ``3``

模擬場效電晶體產生的溫暖失真（固態器材常見）。此模式下 :ref:`drive<class_AudioEffectDistortion_property_drive>` 無效。

.. _class_AudioEffectDistortion_constant_MODE_WAVESHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_WAVESHAPE** = ``4``

波形塑形失真常被電子音樂人用來打造更粗糙的聲音。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectDistortion_property_drive:

.. rst-class:: classref-property

:ref:`float<class_float>` **drive** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_drive>`

.. rst-class:: classref-property-setget

- |void| **set_drive**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drive**\ (\ )

失真強度，可設 0–1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_keep_hf_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **keep_hf_hz** = ``16000.0`` :ref:`🔗<class_AudioEffectDistortion_property_keep_hf_hz>`

.. rst-class:: classref-property-setget

- |void| **set_keep_hf_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_keep_hf_hz**\ (\ )

高通濾波器（Hz），高於此頻率者不受失真影響；可設 1–20000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **mode** = ``0`` :ref:`🔗<class_AudioEffectDistortion_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_AudioEffectDistortion_Mode>`\ )
- :ref:`Mode<enum_AudioEffectDistortion_Mode>` **get_mode**\ (\ )

失真類型。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_post_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **post_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_post_gain>`

.. rst-class:: classref-property-setget

- |void| **set_post_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_post_gain**\ (\ )

效果後增減的音量（dB），可設 -80 至 24。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_pre_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_pre_gain>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain**\ (\ )

效果前增減的音量（dB），可設 -60 至 60。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
