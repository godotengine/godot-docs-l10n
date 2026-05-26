:github_url: hide

.. _class_AudioEffectEQ:

AudioEffectEQ
=============

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AudioEffectEQ10<class_AudioEffectEQ10>`, :ref:`AudioEffectEQ21<class_AudioEffectEQ21>`, :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`

Base class for audio equalizers (EQ). Gives you control over frequencies.

Use it to create a custom equalizer if :ref:`AudioEffectEQ6<class_AudioEffectEQ6>`, :ref:`AudioEffectEQ10<class_AudioEffectEQ10>`, or :ref:`AudioEffectEQ21<class_AudioEffectEQ21>` don't fit your needs.

.. rst-class:: classref-introduction-group

描述
----

An "equalizer" gives you control over the gain of frequencies in the entire spectrum, by allowing their adjustment through bands. A band is a point in the frequency spectrum, and each band means a division of the spectrum that can be adjusted.

Use equalizers to compensate for existing deficiencies in the audio, make room for other elements, or remove undesirable frequencies. AudioEffectEQs are useful on the Master bus to balance the entire mix or give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be disabled when headphones are plugged in).

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_band_count<class_AudioEffectEQ_method_get_band_count>`\ (\ ) |const|                                                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_band_gain_db<class_AudioEffectEQ_method_get_band_gain_db>`\ (\ band_idx\: :ref:`int<class_int>`\ ) |const|                                |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_band_gain_db<class_AudioEffectEQ_method_set_band_gain_db>`\ (\ band_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioEffectEQ_method_get_band_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_band_count**\ (\ ) |const| :ref:`🔗<class_AudioEffectEQ_method_get_band_count>`

返回均衡器的频段数。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectEQ_method_get_band_gain_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_band_gain_db**\ (\ band_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectEQ_method_get_band_gain_db>`

返回指定索引处的波段增益，单位为 dB。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectEQ_method_set_band_gain_db:

.. rst-class:: classref-method

|void| **set_band_gain_db**\ (\ band_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioEffectEQ_method_set_band_gain_db>`

设置指定索引处的波段增益，单位为 dB。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
