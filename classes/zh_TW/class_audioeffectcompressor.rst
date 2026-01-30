:github_url: hide

.. _class_AudioEffectCompressor:

AudioEffectCompressor
=====================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為音訊匯流排新增壓縮效果。

壓縮超過指定閾值的聲音，平滑動態並提高整體音量。

.. rst-class:: classref-introduction-group

說明
----

Dynamic range compressor reduces the level of the sound when the amplitude goes over a certain threshold in Decibels. One of the main uses of a compressor is to increase the dynamic range by clipping as little as possible (when sound goes over 0dB).

Compressor has many uses in the mix:

- In the Master bus to compress the whole output (although an :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` is probably better).

- In voice channels to ensure they sound as balanced as possible.

- Sidechained. This can reduce the sound level sidechained with another audio bus for threshold detection. This technique is common in video game mixing to the level of music and SFX while voices are being heard.

- Accentuates transients by using a wider attack, making effects sound more punchy.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

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

訊號超出門檻時壓縮器的反應時間（µs），可設 20–2000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``0.0`` :ref:`🔗<class_AudioEffectCompressor_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

輸出訊號增益。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix** = ``1.0`` :ref:`🔗<class_AudioEffectCompressor_property_mix>`

.. rst-class:: classref-property-setget

- |void| **set_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix**\ (\ )

原始訊號與效果訊號的混合比例，0 為全乾、1 為全濕。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** = ``4.0`` :ref:`🔗<class_AudioEffectCompressor_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ratio**\ (\ )

音訊超過門檻後套用的壓縮比，值越高壓縮越強，可設 1–48。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_release_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **release_ms** = ``250.0`` :ref:`🔗<class_AudioEffectCompressor_property_release_ms>`

.. rst-class:: classref-property-setget

- |void| **set_release_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_release_ms**\ (\ )

當訊號跌破門檻後停止壓縮的延遲時間（ms），可設 20–2000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_sidechain:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **sidechain** = ``&""`` :ref:`🔗<class_AudioEffectCompressor_property_sidechain>`

.. rst-class:: classref-property-setget

- |void| **set_sidechain**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_sidechain**\ (\ )

使用其他匯流排作門檻偵測以降低本匯流排音量。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.0`` :ref:`🔗<class_AudioEffectCompressor_property_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold**\ (\ )

開始壓縮的門檻（dB），可設 -60 至 0。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
