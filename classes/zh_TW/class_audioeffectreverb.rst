:github_url: hide

.. _class_AudioEffectReverb:

AudioEffectReverb
=================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

向音訊匯流排新增混響效果。

.. rst-class:: classref-introduction-group

說明
----

模擬房間、音樂廳、洞穴或開放空間等聲學環境。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`damping<class_AudioEffectReverb_property_damping>`                     | ``0.5``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`dry<class_AudioEffectReverb_property_dry>`                             | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`hipass<class_AudioEffectReverb_property_hipass>`                       | ``0.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`predelay_feedback<class_AudioEffectReverb_property_predelay_feedback>` | ``0.4``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`predelay_msec<class_AudioEffectReverb_property_predelay_msec>`         | ``150.0`` |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`room_size<class_AudioEffectReverb_property_room_size>`                 | ``0.8``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`spread<class_AudioEffectReverb_property_spread>`                       | ``1.0``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`wet<class_AudioEffectReverb_property_wet>`                             | ``0.5``   |
   +---------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectReverb_property_damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping** = ``0.5`` :ref:`🔗<class_AudioEffectReverb_property_damping>`

.. rst-class:: classref-property-setget

- |void| **set_damping**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping**\ (\ )

定義虛擬房間牆面的反射度，取值 0–1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_dry:

.. rst-class:: classref-property

:ref:`float<class_float>` **dry** = ``1.0`` :ref:`🔗<class_AudioEffectReverb_property_dry>`

.. rst-class:: classref-property-setget

- |void| **set_dry**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_dry**\ (\ )

原始聲音的輸出百分比；0 時僅輸出處理後的聲音。取值 0–1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_hipass:

.. rst-class:: classref-property

:ref:`float<class_float>` **hipass** = ``0.0`` :ref:`🔗<class_AudioEffectReverb_property_hipass>`

.. rst-class:: classref-property-setget

- |void| **set_hpf**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_hpf**\ (\ )

高通濾波器會通過高於截止頻率的訊號並衰減低於該頻率的訊號。取值 0–1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_predelay_feedback:

.. rst-class:: classref-property

:ref:`float<class_float>` **predelay_feedback** = ``0.4`` :ref:`🔗<class_AudioEffectReverb_property_predelay_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_predelay_feedback**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_predelay_feedback**\ (\ )

預延遲輸出百分比，取值 0–1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_predelay_msec:

.. rst-class:: classref-property

:ref:`float<class_float>` **predelay_msec** = ``150.0`` :ref:`🔗<class_AudioEffectReverb_property_predelay_msec>`

.. rst-class:: classref-property-setget

- |void| **set_predelay_msec**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_predelay_msec**\ (\ )

原始訊號與混響早期反射間的時間（毫秒）。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_room_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **room_size** = ``0.8`` :ref:`🔗<class_AudioEffectReverb_property_room_size>`

.. rst-class:: classref-property-setget

- |void| **set_room_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_room_size**\ (\ )

模擬房間尺寸，越大回聲越多。取值 0–1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_spread:

.. rst-class:: classref-property

:ref:`float<class_float>` **spread** = ``1.0`` :ref:`🔗<class_AudioEffectReverb_property_spread>`

.. rst-class:: classref-property-setget

- |void| **set_spread**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spread**\ (\ )

調整混響尾音的立體聲寬度；1 為最寬。取值 0–1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectReverb_property_wet:

.. rst-class:: classref-property

:ref:`float<class_float>` **wet** = ``0.5`` :ref:`🔗<class_AudioEffectReverb_property_wet>`

.. rst-class:: classref-property-setget

- |void| **set_wet**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wet**\ (\ )

處理後聲音的輸出百分比；0 時僅輸出原始聲音。取值 0–1。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
