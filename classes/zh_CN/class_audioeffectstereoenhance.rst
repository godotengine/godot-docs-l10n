:github_url: hide

.. _class_AudioEffectStereoEnhance:

AudioEffectStereoEnhance
========================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a stereo manipulation audio effect to an audio bus.

Controls gain of the side channels, and widens the stereo image.

.. rst-class:: classref-introduction-group

描述
----

Adjusts gain of the left and right channels, and makes mono sounds stereo through phase shifting.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_AudioEffectStereoEnhance_property_pan_pullout:

.. rst-class:: classref-property

:ref:`float<class_float>` **pan_pullout** = ``1.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_pan_pullout>`

.. rst-class:: classref-property-setget

- |void| **set_pan_pullout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pan_pullout**\ (\ )

Gain of the side channels, if they exist. A value of 0 will downmix stereo to mono. Value can range from 0 to 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectStereoEnhance_property_surround:

.. rst-class:: classref-property

:ref:`float<class_float>` **surround** = ``0.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_surround>`

.. rst-class:: classref-property-setget

- |void| **set_surround**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_surround**\ (\ )

Widens the stereo image through phase shifting in conjunction with :ref:`time_pullout_ms<class_AudioEffectStereoEnhance_property_time_pullout_ms>`. Just pans sound to the left channel if :ref:`time_pullout_ms<class_AudioEffectStereoEnhance_property_time_pullout_ms>` is 0. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectStereoEnhance_property_time_pullout_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_pullout_ms** = ``0.0`` :ref:`🔗<class_AudioEffectStereoEnhance_property_time_pullout_ms>`

.. rst-class:: classref-property-setget

- |void| **set_time_pullout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_pullout**\ (\ )

Widens the stereo image through phase shifting in conjunction with :ref:`surround<class_AudioEffectStereoEnhance_property_surround>`. Just delays the right channel if :ref:`surround<class_AudioEffectStereoEnhance_property_surround>` is 0. Value is in milliseconds, and can range from 0 to 50.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
