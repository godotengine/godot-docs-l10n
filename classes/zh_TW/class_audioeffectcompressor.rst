:github_url: hide

.. _class_AudioEffectCompressor:

AudioEffectCompressor
=====================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為音訊總線（audio bus）新增一個向下壓縮器（downward compressor）音訊效果。

允許通過音量閾值和時間控制參數來調節動態範圍。

.. rst-class:: classref-introduction-group

說明
----

“壓縮器”會在聲音超過一定音量閾值時降低聲音的音量。

壓縮器在混音中可以有多種用途：

- 壓縮主總線上的整體音量（雖然 :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` 可能更好些）。

- 確保語音音訊片段的平衡。

- 利用另一條總線作為觸發源進行側鏈處理。該操作通過借用另一條音訊總線的音量資料來進行閾值檢測，從而降低其所附加總線的音量。這種技術在電子遊戲混音中十分常見，常用於在語音出現時自動降低背景音樂和音效的音量。這種效果也被稱為“閃避”。

- 通過設定較長的起音時間，從而突顯瞬態訊號；即允許聲音在被壓縮之前，短暫地超過音量閾值。這一技巧可用於增強音效的衝擊力。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- :doc:`音效 <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`attack_us<class_AudioEffectCompressor_property_attack_us>`   | ``20.0``  |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`gain<class_AudioEffectCompressor_property_gain>`             | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`mix<class_AudioEffectCompressor_property_mix>`               | ``1.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`ratio<class_AudioEffectCompressor_property_ratio>`           | ``4.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`release_ms<class_AudioEffectCompressor_property_release_ms>` | ``250.0`` |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`sidechain<class_AudioEffectCompressor_property_sidechain>`   | ``&""``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`threshold<class_AudioEffectCompressor_property_threshold>`   | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectCompressor_property_attack_us:

.. rst-class:: classref-property

:ref:`float<class_float>` **attack_us** = ``20.0`` :ref:`🔗<class_AudioEffectCompressor_property_attack_us>`

.. rst-class:: classref-property-setget

- |void| **set_attack_us**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attack_us**\ (\ )

當音訊音量超過閾值電平時，壓縮器的響應時間，單位為微秒。取值範圍為 20 至 2000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``0.0`` :ref:`🔗<class_AudioEffectCompressor_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

音訊訊號的增益，單位為分貝。取值範圍為 -20 至 20。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix** = ``1.0`` :ref:`🔗<class_AudioEffectCompressor_property_mix>`

.. rst-class:: classref-property-setget

- |void| **set_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix**\ (\ )

原始音訊與壓縮音訊之間的平衡。取值範圍為 0（完全乾聲）至 1（完全濕聲）。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** = ``4.0`` :ref:`🔗<class_AudioEffectCompressor_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ratio**\ (\ )

當音訊超過音量閾值電平時，所應用的壓縮量。該比率越高，對超過音量閾值電平的音訊訊號所應用的壓縮強度就越大。取值範圍為 1 到 48。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_release_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **release_ms** = ``250.0`` :ref:`🔗<class_AudioEffectCompressor_property_release_ms>`

.. rst-class:: classref-property-setget

- |void| **set_release_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_release_ms**\ (\ )

壓縮器在音量降至音量閾值電平以下後，停止降低音量的延遲時間，單位為毫秒。取值範圍為 20 到 2000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_sidechain:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **sidechain** = ``&""`` :ref:`🔗<class_AudioEffectCompressor_property_sidechain>`

.. rst-class:: classref-property-setget

- |void| **set_sidechain**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_sidechain**\ (\ )

用於音量閾值檢測的音訊總線。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.0`` :ref:`🔗<class_AudioEffectCompressor_property_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold**\ (\ )

超過該音量電平，壓縮將套用至音訊，單位為分貝。取值範圍為 -60 至 0。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
