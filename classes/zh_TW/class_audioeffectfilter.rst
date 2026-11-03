:github_url: hide

.. _class_AudioEffectFilter:

AudioEffectFilter
=================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`, :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`, :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>`, :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>`, :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`

濾波器的基底類別。請使用繼承自該類的效果，而不要直接使用它。

.. rst-class:: classref-introduction-group

說明
----

“濾波器”使用 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 作為頻率閾值來控制頻率的增益。濾波器有助於為不同的聲音留出空間，並能創造出有趣的效果。

有多種不同型別的濾波器繼承自該類：

擱架濾波器：\ :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` 和 :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 

帶通與陷波濾波器：\ :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`\ 、\ :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>` 和 :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ 

低通與高通濾波器：\ :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>` 和 :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`

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

   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` | ``2000.0`` |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` | :ref:`db<class_AudioEffectFilter_property_db>`               | ``0``      |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`gain<class_AudioEffectFilter_property_gain>`           | ``1.0``    |
   +--------------------------------------------------+--------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                        | :ref:`resonance<class_AudioEffectFilter_property_resonance>` | ``0.5``    |
   +--------------------------------------------------+--------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AudioEffectFilter_FilterDB:

.. rst-class:: classref-enumeration

enum **FilterDB**: :ref:`🔗<enum_AudioEffectFilter_FilterDB>`

.. _class_AudioEffectFilter_constant_FILTER_6DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_6DB** = ``0``

以每倍頻程 6 分貝進行截止。一個倍頻程是指 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以上兩倍的頻率，或 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以下一半的頻率。

.. _class_AudioEffectFilter_constant_FILTER_12DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_12DB** = ``1``

以每倍頻程 12 分貝進行截止。一個倍頻程是指 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以上兩倍的頻率，或 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以下一半的頻率。

.. _class_AudioEffectFilter_constant_FILTER_18DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_18DB** = ``2``

以每倍頻程 18 分貝進行截止。一個倍頻程是指 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以上兩倍的頻率，或 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以下一半的頻率。

.. _class_AudioEffectFilter_constant_FILTER_24DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_24DB** = ``3``

以每倍頻程 24 分貝進行截止。一個倍頻程是指 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以上兩倍的頻率，或 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以下一半的頻率。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectFilter_property_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **cutoff_hz** = ``2000.0`` :ref:`🔗<class_AudioEffectFilter_property_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_cutoff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cutoff**\ (\ )

該濾波器的頻率閾值，單位為 Hz。取值範圍為 1 至 20500。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_db:

.. rst-class:: classref-property

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **db** = ``0`` :ref:`🔗<class_AudioEffectFilter_property_db>`

.. rst-class:: classref-property-setget

- |void| **set_db**\ (\ value\: :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>`\ )
- :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **get_db**\ (\ )

截止曲線的陡峭程度，以每倍頻程（高於 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 頻率的兩倍，或低於 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 頻率的一半）分貝為單位，也稱為濾波器的“階數”。階數越高，截止曲線越陡峭。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``1.0`` :ref:`🔗<class_AudioEffectFilter_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

受該濾波器影響的頻率的增益。該屬性僅適用於 :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` 和 :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 。取值範圍為 0 到 4。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_resonance:

.. rst-class:: classref-property

:ref:`float<class_float>` **resonance** = ``0.5`` :ref:`🔗<class_AudioEffectFilter_property_resonance>`

.. rst-class:: classref-property-setget

- |void| **set_resonance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_resonance**\ (\ )

位於 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 頻率閾值處或緊鄰該處的增益。取值範圍為 0 到 1。

其具體行為取決於所選的濾波器型別：

- 對於擱架濾波器，它通過提升緊鄰 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 頻率處的頻段並衰減另一側的頻段，從而起到增強或抑制效果。

- 對於帶通和陷波濾波器，它會拓寬或收窄濾波器在 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 頻率閾值處的頻寬。

- 對於低通/高通濾波器，它會提升或衰減在 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 頻率閾值處的頻率。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
