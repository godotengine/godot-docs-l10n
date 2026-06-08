:github_url: hide

.. _class_AudioEffectLimiter:

AudioEffectLimiter
==================

**已弃用：** Use :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` instead.

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

向音频总线添加一个软削波限制器音频效果。

.. rst-class:: classref-introduction-group

描述
----

“限制器”是一种旨在防止音频信号超过特定的音量阈值电平的音频效果，其工作原理通常是通过降低音量或对音频进行“软削波”来实现的。强烈建议在主总线上添加一个限制器，以防止当音量超过 0 分贝时发生削波。

软削波会在音量阈值以下略微降低峰值，并随着输入音量的增加而逐渐增强其效果，从而使峰值永远不会超过阈值电平。

如果需要硬削波，请考虑 :ref:`AudioEffectDistortion.MODE_CLIP<class_AudioEffectDistortion_constant_MODE_CLIP>`\ 。

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

   +---------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`ceiling_db<class_AudioEffectLimiter_property_ceiling_db>`           | ``-0.1`` |
   +---------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`soft_clip_db<class_AudioEffectLimiter_property_soft_clip_db>`       | ``2.0``  |
   +---------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`soft_clip_ratio<class_AudioEffectLimiter_property_soft_clip_ratio>` | ``10.0`` |
   +---------------------------+---------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`threshold_db<class_AudioEffectLimiter_property_threshold_db>`       | ``0.0``  |
   +---------------------------+---------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectLimiter_property_ceiling_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **ceiling_db** = ``-0.1`` :ref:`🔗<class_AudioEffectLimiter_property_ceiling_db>`

.. rst-class:: classref-property-setget

- |void| **set_ceiling_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ceiling_db**\ (\ )

波形的最大允许值，单位是分贝。数值范围从 -20 到 -0.1。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_soft_clip_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **soft_clip_db** = ``2.0`` :ref:`🔗<class_AudioEffectLimiter_property_soft_clip_db>`

.. rst-class:: classref-property-setget

- |void| **set_soft_clip_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_soft_clip_db**\ (\ )

调整受限波形的音量，单位为分贝。取值范围为 0 到 6。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_soft_clip_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **soft_clip_ratio** = ``10.0`` :ref:`🔗<class_AudioEffectLimiter_property_soft_clip_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_soft_clip_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_soft_clip_ratio**\ (\ )

该属性对音频无效。由于该限制器效果已被弃用，请改用 :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectLimiter_property_threshold_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold_db** = ``0.0`` :ref:`🔗<class_AudioEffectLimiter_property_threshold_db>`

.. rst-class:: classref-property-setget

- |void| **set_threshold_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold_db**\ (\ )

限制器开始生效的音量阈值电平，单位为分贝。取值范围为 -30 到 0。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
