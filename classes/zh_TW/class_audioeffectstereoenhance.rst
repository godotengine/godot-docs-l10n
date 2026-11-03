:github_url: hide

.. _class_AudioEffectStereoEnhance:

AudioEffectStereoEnhance
========================

**繼承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

向音訊總線新增一個立體聲處理音訊效果。

控制側邊聲道的增益，並加寬立體聲像。

.. rst-class:: classref-introduction-group

說明
----

調整左右聲道的增益，並通過相移將單聲道聲音變為立體聲。

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

   +---------------------------+---------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`pan_pullout<class_AudioEffectStereoEnhance_property_pan_pullout>`         | ``1.0`` |
   +---------------------------+---------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`surround<class_AudioEffectStereoEnhance_property_surround>`               | ``0.0`` |
   +---------------------------+---------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`time_pullout_ms<class_AudioEffectStereoEnhance_property_time_pullout_ms>` | ``0.0`` |
   +---------------------------+---------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioEffectStereoEnhance_property_pan_pullout:

.. rst-class:: classref-property

:ref:`float<class_float>` **pan_pullout** = ``1.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_pan_pullout>`

.. rst-class:: classref-property-setget

- |void| **set_pan_pullout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pan_pullout**\ (\ )

側邊聲道的增益，若存在。值為 0 時會將立體聲下混為單聲道。取值範圍為 0 到 4。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectStereoEnhance_property_surround:

.. rst-class:: classref-property

:ref:`float<class_float>` **surround** = ``0.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_surround>`

.. rst-class:: classref-property-setget

- |void| **set_surround**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_surround**\ (\ )

通過與 :ref:`time_pullout_ms<class_AudioEffectStereoEnhance_property_time_pullout_ms>` 配合進行相移來加寬立體聲像。若 :ref:`time_pullout_ms<class_AudioEffectStereoEnhance_property_time_pullout_ms>` 為 0，則僅將聲音聲像定位到左聲道。取值範圍為 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectStereoEnhance_property_time_pullout_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_pullout_ms** = ``0.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_time_pullout_ms>`

.. rst-class:: classref-property-setget

- |void| **set_time_pullout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_pullout**\ (\ )

通過與 :ref:`surround<class_AudioEffectStereoEnhance_property_surround>` 配合進行相移來加寬立體聲像。若 :ref:`surround<class_AudioEffectStereoEnhance_property_surround>` 為 0，則僅延遲右聲道。取值範圍從 0 到 50，單位為毫秒。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
