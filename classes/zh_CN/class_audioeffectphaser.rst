:github_url: hide

.. _class_AudioEffectPhaser:

AudioEffectPhaser
=================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

向音频总线添加一个移相器音频效果。

将原始信号和与原始信号稍有相位偏差的副本组合在一起。

.. rst-class:: classref-introduction-group

描述
----

将相移信号与原始信号相结合。使用低频振荡器控制相移信号的移动。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_AudioEffectPhaser_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_AudioEffectPhaser_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

控制滤波器频率扫描的高度。较低的值主要影响低音频率。较高的值可以推高高音。取值范围为 ``0.1`` 到 ``4.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_feedback:

.. rst-class:: classref-property

:ref:`float<class_float>` **feedback** = ``0.7`` :ref:`🔗<class_AudioEffectPhaser_property_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_feedback**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_feedback**\ (\ )

修改后声音的输出百分比。数值范围从 0.1 到 0.9。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_range_max_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **range_max_hz** = ``1600.0`` :ref:`🔗<class_AudioEffectPhaser_property_range_max_hz>`

.. rst-class:: classref-property-setget

- |void| **set_range_max_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range_max_hz**\ (\ )

决定受 LFO 调制影响的最大频率，单位为 Hz。数值范围为 10-10000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_range_min_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **range_min_hz** = ``440.0`` :ref:`🔗<class_AudioEffectPhaser_property_range_min_hz>`

.. rst-class:: classref-property-setget

- |void| **set_range_min_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range_min_hz**\ (\ )

决定受 LFO 调制影响的最小频率，单位为 Hz。数值范围为 10-10000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPhaser_property_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **rate_hz** = ``0.5`` :ref:`🔗<class_AudioEffectPhaser_property_rate_hz>`

.. rst-class:: classref-property-setget

- |void| **set_rate_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rate_hz**\ (\ )

以 Hz 为单位调整效果在整个频率范围内上下扫描的速度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
