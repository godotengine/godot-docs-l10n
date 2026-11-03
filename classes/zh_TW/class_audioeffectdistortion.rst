:github_url: hide

.. _class_AudioEffectDistortion:

AudioEffectDistortion
=====================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為音訊總線新增失真音訊效果。

通過使用非線性函式重新映射音訊取樣，從而實現聲音失真。

.. rst-class:: classref-introduction-group

說明
----

“失真”效果會根據波形樣本的振幅，通過一個非線性數學函式（詳見 :ref:`Mode<enum_AudioEffectDistortion_Mode>` 中可用的型別）來修改波形。

\ **注意：** 在非線性函式中，一個振幅為 *x* 的輸入樣本，其振幅會根據函式在 *x* 處的值，被增大或減小為 *y*\ 。這就是為甚麼即使在相同的 :ref:`drive<class_AudioEffectDistortion_property_drive>`\ （驅動/強度）下，輸出的聲音也會因輸入音量的不同而產生變化。如果想要在保持輸出波形不變的情況下改變音量，請使用 :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`\ （後置增益）。

在此效果中，每種型別都對應一種不同的非線性函式。可用的不同型別包括：clip（削波）、atan（反正切）、lofi（低音質/位元深度破碎）、overdrive（過載）以及 waveshape（波形整形）。這裡提供的每種失真型別都是對稱的：負振幅值受到的影響與正振幅值完全相同。

雖然失真通常會改變頻率內容（通常是通過引入高頻諧波），但不同的失真型別能提供一系列不同的聲音質感；從“柔和”、“溫暖”到“粗糲”和“刺耳”。

對於遊戲而言，它可以非常高效地模擬聲音從某些飽和裝置或揚聲器中發出的效果。此外，通過引入更高的頻率並提升音量，它還能協助音訊在混音中脫穎而出。

\ **注意：** 雖然通常難以察覺，但即使 :ref:`drive<class_AudioEffectDistortion_property_drive>` 設定為 0，啟用的失真效果依然會改變聲音。這並非程式錯誤（Bug）。如果不希望出現這種行為，可以考慮使用 :ref:`AudioServer.set_bus_effect_enabled()<class_AudioServer_method_set_bus_effect_enabled>` 來停用該效果。

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

以一種尖銳的方式將波形在 0 dB 處壓平。\ :ref:`drive<class_AudioEffectDistortion_property_drive>`\ （驅動）參數會以指數級的方式提升樣本的振幅。如果將 :ref:`drive<class_AudioEffectDistortion_property_drive>` 設定為 0，該模式會充當硬削波器（hard clipper），並且它是唯一一種會在 0 dB 處對音訊訊號進行削波的模式。

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

以平滑的方式壓平波形，遵循反正切（arctangent）曲線。如果音訊事先經過了標準化處理，它的音量會先降低，然後將波峰壓平至 ``PI * 4.0``\ （線性值）。

.. _class_AudioEffectDistortion_constant_MODE_LOFI:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_LOFI** = ``2``

將音訊位元深度降低，以獲得從 16 位元到 2 位元的低解析度音訊訊號。可用於模擬早期數字音訊裝置的聲音。

.. _class_AudioEffectDistortion_constant_MODE_OVERDRIVE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_OVERDRIVE** = ``3``

模擬通常用於固態樂器放大器的場效應晶體管產生的暖失真。\ :ref:`drive<class_AudioEffectDistortion_property_drive>` 屬性在該模式下無效。

.. _class_AudioEffectDistortion_constant_MODE_WAVESHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_WAVESHAPE** = ``4``

以平滑的方式壓平波形，直到在 ``drive = 1`` 時達到一個尖銳的峰值，遵循一個通用的絕對 Sigmoid 函式。

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

失真強度。它通過讓音訊從線性函式向非線性函式過渡，來控制輸入音訊受失真曲線影響的程度。該值的取值範圍是 0 到 1。

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

失真型別。用於更改用來扭曲波形的非線性函式。具體可參考 :ref:`Mode<enum_AudioEffectDistortion_Mode>` 列舉。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_post_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **post_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_post_gain>`

.. rst-class:: classref-property-setget

- |void| **set_post_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_post_gain**\ (\ )

該效果後的增益，單位為分貝。取值範圍從 -80 到 24。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_pre_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_pre_gain>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain**\ (\ )

該效果前的增益，單位為分貝。取值範圍從 -60 到 60。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
