:github_url: hide

.. _class_AudioEffectCapture:

AudioEffectCapture
==================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

从音频总线上实时捕捉音频。

.. rst-class:: classref-introduction-group

描述
----

AudioEffectCapture 是一种 AudioEffect，可将所有音频帧从附加的音频效果总线复制到其内部的环形缓冲区中。

应用程序代码应使用 :ref:`get_buffer()<class_AudioEffectCapture_method_get_buffer>` 从该环形缓冲区中消耗这些音频帧，并根据需要对其进行处理，例如从 :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>` 捕获数据，实现应用程序定义的效果，或通过网络传输音频。从麦克风捕获音频数据时，样本格式将为立体声 32 位浮点 PCM。

与 :ref:`AudioEffectRecord<class_AudioEffectRecord>` 不同，该效果仅返回原始音频样本，而不是将它们编码到 :ref:`AudioStream<class_AudioStream>` 中。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`buffer_length<class_AudioEffectCapture_property_buffer_length>` | ``0.1`` |
   +---------------------------+-----------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`can_get_buffer<class_AudioEffectCapture_method_can_get_buffer>`\ (\ frames\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_buffer<class_AudioEffectCapture_method_clear_buffer>`\ (\ )                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_buffer<class_AudioEffectCapture_method_get_buffer>`\ (\ frames\: :ref:`int<class_int>`\ )                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_buffer_length_frames<class_AudioEffectCapture_method_get_buffer_length_frames>`\ (\ ) |const|             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_discarded_frames<class_AudioEffectCapture_method_get_discarded_frames>`\ (\ ) |const|                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_frames_available<class_AudioEffectCapture_method_get_frames_available>`\ (\ ) |const|                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_pushed_frames<class_AudioEffectCapture_method_get_pushed_frames>`\ (\ ) |const|                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectCapture_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.1`` :ref:`🔗<class_AudioEffectCapture_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

内部环形缓冲区的长度，单位为秒。如果已经初始化，设置缓冲区长度将没有效果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioEffectCapture_method_can_get_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_get_buffer**\ (\ frames\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_can_get_buffer>`

如果内部环形缓冲区中至少有 ``frames`` 个音频帧可供读取，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_clear_buffer:

.. rst-class:: classref-method

|void| **clear_buffer**\ (\ ) :ref:`🔗<class_AudioEffectCapture_method_clear_buffer>`

清空内部环形缓冲。

\ **注意：**\ 捕获时调用这个方法可能造成样本的丢失，导致播放时产生噪音。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_buffer:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_buffer**\ (\ frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioEffectCapture_method_get_buffer>`

从内部环形缓冲区获取后续 ``frames`` 个音频样本。

如果足够的话，则返回一个恰好包含 ``frames`` 个音频样本的 :ref:`PackedVector2Array<class_PackedVector2Array>`\ ；如果可用数据不足，则返回一个空的 :ref:`PackedVector2Array<class_PackedVector2Array>`\ 。

样本是有符号浮点 PCM，在 ``-1`` 和 ``1`` 之间。如果想要作为 8 位或 16 位整型样本使用则需要进行缩放。（\ ``v = 0x7fff * samples[0].x``\ ）

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_buffer_length_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_buffer_length_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_buffer_length_frames>`

返回内部环形缓冲区的总大小，以帧为单位。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_discarded_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_discarded_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_discarded_frames>`

返回由于缓冲区满而从音频总线上丢弃的音频帧的数量。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_available**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_frames_available>`

返回可使用 :ref:`get_buffer()<class_AudioEffectCapture_method_get_buffer>` 读取的帧数。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_pushed_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_pushed_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_pushed_frames>`

返回从音频总线插入的音频帧的数量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
