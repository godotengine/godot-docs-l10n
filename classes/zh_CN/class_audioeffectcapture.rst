:github_url: hide

.. _class_AudioEffectCapture:

AudioEffectCapture
==================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Exposes audio samples from an audio bus in real-time, such that it can be accessed as data.

.. rst-class:: classref-introduction-group

描述
----

Copies all audio frames, also known as "samples" or "audio samples", from the attached audio bus into its internal ring buffer. This effect does not alter the audio. Can be used for storing real-time audio data for playback, and for creating real-time audio visualizations, like an oscilloscope.

Application code should consume these audio frames from this ring buffer using :ref:`get_buffer()<class_AudioEffectCapture_method_get_buffer>` and process it as needed, for example to capture data from an :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`, implement application-defined effects, or to transmit audio over the network. When capturing audio data from a microphone, the format of the samples will be stereo 32-bit floating-point PCM.

Unlike :ref:`AudioEffectRecord<class_AudioEffectRecord>`, this effect only returns the raw audio samples instead of encoding them into an :ref:`AudioStream<class_AudioStream>`.

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

Length of the internal ring buffer, in seconds. Higher values keep data around for longer, but require more memory. Value can range from 0.01 to 10.

\ **Note:** Setting the buffer length will have no effect if already initialized.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioEffectCapture_method_can_get_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_get_buffer**\ (\ frames\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_can_get_buffer>`

Returns ``true`` if at least ``frames`` samples are available to read in the internal ring buffer.

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

Gets the next ``frames`` samples from the internal ring buffer.

Returns a :ref:`PackedVector2Array<class_PackedVector2Array>` containing exactly ``frames`` samples if available, or an empty :ref:`PackedVector2Array<class_PackedVector2Array>` if insufficient data was available.

The samples are signed floating-point PCM between ``-1`` and ``1``. You will have to scale them if you want to use them as 8 or 16-bit integer samples. (``v = 0x7fff * samples[0].x``)

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_buffer_length_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_buffer_length_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_buffer_length_frames>`

Returns the total size of the internal ring buffer in number of samples.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_discarded_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_discarded_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_discarded_frames>`

Returns the number of samples discarded from the audio bus due to full buffer.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_available**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_frames_available>`

Returns the number of samples available to read using :ref:`get_buffer()<class_AudioEffectCapture_method_get_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCapture_method_get_pushed_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_pushed_frames**\ (\ ) |const| :ref:`🔗<class_AudioEffectCapture_method_get_pushed_frames>`

Returns the number of samples inserted from the audio bus.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
