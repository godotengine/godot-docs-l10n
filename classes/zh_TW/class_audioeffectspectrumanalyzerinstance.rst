:github_url: hide

.. _class_AudioEffectSpectrumAnalyzerInstance:

AudioEffectSpectrumAnalyzerInstance
===================================

**繼承：** :ref:`AudioEffectInstance<class_AudioEffectInstance>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

可查詢的 :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` 執行個體。

.. rst-class:: classref-introduction-group

說明
----

:ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` 的執行階段部分，可用於查詢其所在匯流排上指定頻率範圍的能量大小。

可透過 :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>` 取得此類別的實體。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊匯流排 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

- `音訊頻譜視覺化範例 <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_magnitude_for_frequency_range<class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range>`\ (\ from_hz\: :ref:`float<class_float>`, to_hz\: :ref:`float<class_float>`, mode\: :ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` = 1\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode:

.. rst-class:: classref-enumeration

enum **MagnitudeMode**: :ref:`🔗<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>`

.. _class_AudioEffectSpectrumAnalyzerInstance_constant_MAGNITUDE_AVERAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` **MAGNITUDE_AVERAGE** = ``0``

使用該頻率範圍的平均值作為幅度。

.. _class_AudioEffectSpectrumAnalyzerInstance_constant_MAGNITUDE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` **MAGNITUDE_MAX** = ``1``

使用該頻率範圍的最大值作為幅度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_magnitude_for_frequency_range**\ (\ from_hz\: :ref:`float<class_float>`, to_hz\: :ref:`float<class_float>`, mode\: :ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` = 1\ ) |const| :ref:`🔗<class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range>`

返回 ``from_hz`` 到 ``to_hz`` 頻率範圍的線性能量大小，型別為 Vector2。其中 ``x`` 表左聲道，\ ``y`` 表右聲道。

\ ``mode`` 決定該頻率範圍的處理方式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
