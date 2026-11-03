:github_url: hide

.. _class_AudioEffectPhaser:

AudioEffectPhaser
=================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

向音訊總線新增一個移相器音訊效果。

建立多個陷波和峰值濾波器，使其在頻譜上來回掃動。

.. rst-class:: classref-introduction-group

說明
----

“移相器”效果會建立一份原始音訊的副本，並通過運用一系列全通濾波級（本效果中包含 6 級），使該副本在整個頻率範圍內以不同方式旋轉相位。該副本會使用低頻振蕩器進行調制，並與原始音訊相疊加，從而產生在頻譜中來回掃動的波峰與波谷。

該效果可被用於製造一種“玻璃質感”或“氣泡湧動”般的音色。

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

   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`depth<class_AudioEffectPhaser_property_depth>`               | ``1.0``    |
   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`feedback<class_AudioEffectPhaser_property_feedback>`         | ``0.7``    |
   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`range_max_hz<class_AudioEffectPhaser_property_range_max_hz>` | ``1600.0`` |
   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`range_min_hz<class_AudioEffectPhaser_property_range_min_hz>` | ``440.0``  |
   +---------------------------+--------------------------------------------------------------------+------------+
   | :ref:`float<class_float>` | :ref:`rate_hz<class_AudioEffectPhaser_property_rate_hz>`           | ``0.5``    |
   +---------------------------+--------------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectPhaser_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_AudioEffectPhaser_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

效果強度。取值範圍為 0.1 至 4.0。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_feedback:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback** = ``0.7`` :ref:`🔗<class_AudioEffectPhaser_property_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_feedback**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback**\ (\ )

被回饋回全通濾波器的已濾波音訊的音量比例。該值越高，由該效果產生的峰值濾波器就越尖銳、越響亮。取值範圍在 0.1 到 0.9 之間。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_range_max_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **range_max_hz** = ``1600.0`` :ref:`🔗<class_AudioEffectPhaser_property_range_max_hz>`

.. rst-class:: classref-property-setget

- |void| **set_range_max_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range_max_hz**\ (\ )

決定受低頻振蕩器調制影響的最高頻率，單位為 Hz。取值範圍為 10 至 10000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_range_min_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **range_min_hz** = ``440.0`` :ref:`🔗<class_AudioEffectPhaser_property_range_min_hz>`

.. rst-class:: classref-property-setget

- |void| **set_range_min_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range_min_hz**\ (\ )

決定受低頻振蕩器調制影響的最低頻率，單位為 Hz。取值範圍為 10 至 10000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **rate_hz** = ``0.5`` :ref:`🔗<class_AudioEffectPhaser_property_rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_rate_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rate_hz**\ (\ )

調整效果在頻率範圍內上下掃頻的速率，單位為 Hz。取值範圍為 0.01 至 20。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
