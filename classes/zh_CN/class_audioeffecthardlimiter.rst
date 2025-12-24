:github_url: hide

.. _class_AudioEffectHardLimiter:

AudioEffectHardLimiter
======================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为音频总线添加一个硬限制器音频效果。

.. rst-class:: classref-introduction-group

描述
----

限制器是一种旨在阻止声音超过给定dB阈值的效果。硬限幅器预测音量峰值，并将在峰值超过上限阈值时平滑地应用增益降低，以防止削波和失真。它保留了波形并防止其越过上限阈值。建议在主总线中添加一个作为安全措施，以防止出现突然的音量峰值，并防止由削波引起的失真。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`ceiling_db<class_AudioEffectHardLimiter_property_ceiling_db>`   | ``-0.3`` |
   +---------------------------+-----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`pre_gain_db<class_AudioEffectHardLimiter_property_pre_gain_db>` | ``0.0``  |
   +---------------------------+-----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`release<class_AudioEffectHardLimiter_property_release>`         | ``0.1``  |
   +---------------------------+-----------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectHardLimiter_property_ceiling_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **ceiling_db** = ``-0.3`` :ref:`🔗<class_AudioEffectHardLimiter_property_ceiling_db>`

.. rst-class:: classref-property-setget

- |void| **set_ceiling_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ceiling_db**\ (\ )

波形的最大允许值，单位为分贝。此值的范围可以是 ``-24.0`` 到 ``0.0``\ 。

默认值为 ``-0.3``\ ，可防止潜在的采样间峰值（ISP）跨越 0 dB，这种情况可能会在一些较旧的硬件上造成轻微失真。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectHardLimiter_property_pre_gain_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain_db** = ``0.0`` :ref:`🔗<class_AudioEffectHardLimiter_property_pre_gain_db>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain_db**\ (\ )

限制前应用的增益，单位为分贝。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectHardLimiter_property_release:

.. rst-class:: classref-property

:ref:`float<class_float>` **release** = ``0.1`` :ref:`🔗<class_AudioEffectHardLimiter_property_release>`

.. rst-class:: classref-property-setget

- |void| **set_release**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_release**\ (\ )

增益降低完全释放所需的时间（以秒为单位）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
