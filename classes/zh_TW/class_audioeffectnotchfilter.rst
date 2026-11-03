:github_url: hide

.. _class_AudioEffectNotchFilter:

AudioEffectNotchFilter
======================

**繼承：** :ref:`AudioEffectFilter<class_AudioEffectFilter>` **<** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

向音訊總線新增一個陷波濾波器。

.. rst-class:: classref-introduction-group

說明
----

“陷波”濾波器會衰減 :ref:`AudioEffectFilter.cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 處的頻率，並允許處於該頻率閾值之外的頻率原樣通過。它是 :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>` 的一種更窄、衰減效果更強的版本，且功能上與 :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>` 相反。

該濾波器可用於為該頻率上的其他聲音提供更多播放空間。由於它能大幅衰減頻率，因此也可以用來完全消除不需要的頻率。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- :doc:`音效 <../tutorials/audio/audio_effects>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
