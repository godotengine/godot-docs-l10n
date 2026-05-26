:github_url: hide

.. _class_AudioEffectPanner:

AudioEffectPanner
=================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a panner audio effect to an audio bus.

Pans the sound left or right.

.. rst-class:: classref-introduction-group

描述
----

Determines how much of the audio signal is sent to the left and right channels. This helps with audio spatialization, giving sounds distinct places in a mix.

\ :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` and :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` handle panning automatically, following where the source of the sound is on the screen.

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

   +---------------------------+--------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`pan<class_AudioEffectPanner_property_pan>` | ``0.0`` |
   +---------------------------+--------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectPanner_property_pan:

.. rst-class:: classref-property

:ref:`float<class_float>` **pan** = ``0.0`` :ref:`🔗<class_AudioEffectPanner_property_pan>`

.. rst-class:: classref-property-setget

- |void| **set_pan**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pan**\ (\ )

Pan position. Negative values pan the sound to the left, positive pan to the right. Value can range from -1 to 1.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
