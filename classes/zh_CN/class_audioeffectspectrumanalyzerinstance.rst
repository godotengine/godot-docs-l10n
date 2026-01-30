:github_url: hide

.. _class_AudioEffectSpectrumAnalyzerInstance:

AudioEffectSpectrumAnalyzerInstance
===================================

**继承：** :ref:`AudioEffectInstance<class_AudioEffectInstance>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` 的可查询实例。

.. rst-class:: classref-introduction-group

描述
----

:ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` 的运行时部分，可以用来查询宿主总线上某个频率范围内的幅度。

可以使用 :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>` 获取该类的实例。

.. rst-class:: classref-introduction-group

教程
----

- `音频频谱可视化演示 <https://godotengine.org/asset-library/asset/2762>`__

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

枚举
----

.. _enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode:

.. rst-class:: classref-enumeration

enum **MagnitudeMode**: :ref:`🔗<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>`

.. _class_AudioEffectSpectrumAnalyzerInstance_constant_MAGNITUDE_AVERAGE:

.. rst-class:: classref-enumeration-constant

:ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` **MAGNITUDE_AVERAGE** = ``0``

使用频率范围内的平均值作为幅度。

.. _class_AudioEffectSpectrumAnalyzerInstance_constant_MAGNITUDE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` **MAGNITUDE_MAX** = ``1``

使用频率范围内的最大值作为幅度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_magnitude_for_frequency_range**\ (\ from_hz\: :ref:`float<class_float>`, to_hz\: :ref:`float<class_float>`, mode\: :ref:`MagnitudeMode<enum_AudioEffectSpectrumAnalyzerInstance_MagnitudeMode>` = 1\ ) |const| :ref:`🔗<class_AudioEffectSpectrumAnalyzerInstance_method_get_magnitude_for_frequency_range>`

返回从 ``from_hz`` 到 ``to_hz`` 频率范围内的幅度，使用线性能量单位，返回的是 Vector2。返回值的 ``x`` 分量代表左声道、\ ``y`` 分量代表右声道。

\ ``mode`` 决定的是频率范围的处理方式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
