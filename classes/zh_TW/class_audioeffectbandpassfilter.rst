:github_url: hide

.. _class_AudioEffectBandPassFilter:

AudioEffectBandPassFilter
=========================

**繼承：** :ref:`AudioEffectFilter<class_AudioEffectFilter>` **<** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為音訊總線新增一個帶通濾波器。

.. rst-class:: classref-introduction-group

說明
----

帶通（Band-pass）濾波器允許 :ref:`AudioEffectFilter.cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 處的頻率不受影響地通過，同時衰減該頻率閾值之外的頻率。它是 :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`\ （帶限濾波器）和 :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ （陷波濾波器）的相反效果。

這種濾波器可以用來模擬聲音從劣質揚聲器中傳出來的聽感。

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
