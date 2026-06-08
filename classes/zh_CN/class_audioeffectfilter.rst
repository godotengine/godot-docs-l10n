:github_url: hide

.. _class_AudioEffectFilter:

AudioEffectFilter
=================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`, :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`, :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`, :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`, :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>`, :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>`, :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`

滤波器的基类。请使用继承自该类的效果，而不要直接使用它。

.. rst-class:: classref-introduction-group

描述
----

“滤波器”使用 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 作为频率阈值来控制频率的增益。滤波器有助于为不同的声音留出空间，并能创造出有趣的效果。

有多种不同类型的滤波器继承自该类：

搁架滤波器：\ :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` 和 :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 

带通与陷波滤波器：\ :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>`\ 、\ :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>` 和 :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ 

低通与高通滤波器：\ :ref:`AudioEffectLowPassFilter<class_AudioEffectLowPassFilter>` 和 :ref:`AudioEffectHighPassFilter<class_AudioEffectHighPassFilter>`

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

- :doc:`音效 <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_AudioEffectFilter_FilterDB:

.. rst-class:: classref-enumeration

enum **FilterDB**: :ref:`🔗<enum_AudioEffectFilter_FilterDB>`

.. _class_AudioEffectFilter_constant_FILTER_6DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_6DB** = ``0``

以每倍频程 6 分贝进行截止。一个倍频程是指 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以上两倍的频率，或 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以下一半的频率。

.. _class_AudioEffectFilter_constant_FILTER_12DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_12DB** = ``1``

以每倍频程 12 分贝进行截止。一个倍频程是指 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以上两倍的频率，或 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以下一半的频率。

.. _class_AudioEffectFilter_constant_FILTER_18DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_18DB** = ``2``

以每倍频程 18 分贝进行截止。一个倍频程是指 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以上两倍的频率，或 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以下一半的频率。

.. _class_AudioEffectFilter_constant_FILTER_24DB:

.. rst-class:: classref-enumeration-constant

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **FILTER_24DB** = ``3``

以每倍频程 24 分贝进行截止。一个倍频程是指 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以上两倍的频率，或 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 以下一半的频率。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectFilter_property_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **cutoff_hz** = ``2000.0`` :ref:`🔗<class_AudioEffectFilter_property_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_cutoff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cutoff**\ (\ )

该滤波器的频率阈值，单位为 Hz。取值范围为 1 至 20500。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_db:

.. rst-class:: classref-property

:ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **db** = ``0`` :ref:`🔗<class_AudioEffectFilter_property_db>`

.. rst-class:: classref-property-setget

- |void| **set_db**\ (\ value\: :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>`\ )
- :ref:`FilterDB<enum_AudioEffectFilter_FilterDB>` **get_db**\ (\ )

截止曲线的陡峭程度，以每倍频程（高于 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 频率的两倍，或低于 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 频率的一半）分贝为单位，也称为滤波器的“阶数”。阶数越高，截止曲线越陡峭。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``1.0`` :ref:`🔗<class_AudioEffectFilter_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

受该滤波器影响的频率的增益。该属性仅适用于 :ref:`AudioEffectLowShelfFilter<class_AudioEffectLowShelfFilter>` 和 :ref:`AudioEffectHighShelfFilter<class_AudioEffectHighShelfFilter>`\ 。取值范围为 0 到 4。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectFilter_property_resonance:

.. rst-class:: classref-property

:ref:`float<class_float>` **resonance** = ``0.5`` :ref:`🔗<class_AudioEffectFilter_property_resonance>`

.. rst-class:: classref-property-setget

- |void| **set_resonance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_resonance**\ (\ )

位于 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 频率阈值处或紧邻该处的增益。取值范围为 0 到 1。

其具体行为取决于所选的滤波器类型：

- 对于搁架滤波器，它通过提升紧邻 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 频率处的频段并衰减另一侧的频段，从而起到增强或抑制效果。

- 对于带通和陷波滤波器，它会拓宽或收窄滤波器在 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 频率阈值处的带宽。

- 对于低通/高通滤波器，它会提升或衰减在 :ref:`cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 频率阈值处的频率。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
