:github_url: hide

.. _class_AudioEffectRecord:

AudioEffectRecord
=================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于录制来自音频总线的声音的音频效果。

.. rst-class:: classref-introduction-group

描述
----

允许用户将音频总线的声音录制到 :ref:`AudioStreamWAV<class_AudioStreamWAV>` 中。当在“主”音频总线上使用时，这包括 Godot 的所有音频输出。

与 :ref:`AudioEffectCapture<class_AudioEffectCapture>` 不同，该效果以给定格式（8 位、16 位或压缩）对录音进行编码，而不是提供对原始音频样本的访问。

可被用于（与 :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>` 一起）从麦克风进行录音。

\ **注意：**\ :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` 必须为 ``true`` 音频输入才能正常工作。另见该设置的说明，了解与权限和操作系统隐私设置相关的注意事项。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用麦克风录音 <../tutorials/audio/recording_with_microphone>`

- `音频麦克风录音演示 <https://godotengine.org/asset-library/asset/2760>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------+--------------------------------------------------------+-------+
   | :ref:`Format<enum_AudioStreamWAV_Format>` | :ref:`format<class_AudioEffectRecord_property_format>` | ``1`` |
   +-------------------------------------------+--------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`get_recording<class_AudioEffectRecord_method_get_recording>`\ (\ ) |const|                                         |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`is_recording_active<class_AudioEffectRecord_method_is_recording_active>`\ (\ ) |const|                             |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_recording_active<class_AudioEffectRecord_method_set_recording_active>`\ (\ record\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectRecord_property_format:

.. rst-class:: classref-property

:ref:`Format<enum_AudioStreamWAV_Format>` **format** = ``1`` :ref:`🔗<class_AudioEffectRecord_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`Format<enum_AudioStreamWAV_Format>`\ )
- :ref:`Format<enum_AudioStreamWAV_Format>` **get_format**\ (\ )

指定样本的记录格式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioEffectRecord_method_get_recording:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **get_recording**\ (\ ) |const| :ref:`🔗<class_AudioEffectRecord_method_get_recording>`

返回录音的样本。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectRecord_method_is_recording_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_recording_active**\ (\ ) |const| :ref:`🔗<class_AudioEffectRecord_method_is_recording_active>`

返回录音是否处于激活状态。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectRecord_method_set_recording_active:

.. rst-class:: classref-method

|void| **set_recording_active**\ (\ record\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioEffectRecord_method_set_recording_active>`

如果为 ``true``\ ，将录制声音。请注意，重新开始录音将移除先前录音的样本。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
