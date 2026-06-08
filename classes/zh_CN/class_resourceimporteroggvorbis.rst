:github_url: hide

.. _class_ResourceImporterOggVorbis:

ResourceImporterOggVorbis
=========================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入 Ogg Vorbis 音频文件进行播放。

.. rst-class:: classref-introduction-group

描述
----

Ogg Vorbis 是一种有损音频格式，在给定比特率下，与 :ref:`ResourceImporterMP3<class_ResourceImporterMP3>` 相比具有更好的音频质量。

在大多数情况下，建议使用 Ogg Vorbis 而不是 MP3。但是，如果你使用的 MP3 音源没有更高质量的可用音源，则建议直接使用 MP3 文件以避免两次有损压缩。

Ogg Vorbis 比 :ref:`ResourceImporterWAV<class_ResourceImporterWAV>` 需要更多的 CPU 来解码。如果你需要同时播放很多声音，建议对这些声音使用 WAV，特别是针对低端设备。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入音频样本 <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>`     | ``4``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>`   | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>`                 | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`loop<class_ResourceImporterOggVorbis_property_loop>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` | ``0``     |
   +---------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_buffer<class_ResourceImporterOggVorbis_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` | :ref:`load_from_file<class_ResourceImporterOggVorbis_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterOggVorbis_property_bar_beats:

.. rst-class:: classref-property

:ref:`int<class_int>` **bar_beats** = ``4`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bar_beats>`

音频轨道中，单个小节（bar）内包含的节拍（beat）数量。这个设置仅对希望使用互动音乐（interactive music）功能的音乐有效，而不适用于音效。

在 **高级导入设置（Advanced Import Settings）** 对话框中，为 :ref:`bar_beats<class_ResourceImporterOggVorbis_property_bar_beats>` 提供了一个更方便的编辑器。因为它可以让你在预览更改效果的同时，免去反复重新导入音频的麻烦。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_beat_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **beat_count** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_beat_count>`

音频轨道的总长度（以节拍数为单位）。音频文件的实际播放时长可能会比这个属性所指示的时长要长。该设置仅对希望使用互动音乐（interactive music）功能的音乐有效，而不适用于音效。

在 **高级导入设置（Advanced Import Settings）** 对话框中，为 :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>` 提供了一个更方便的编辑器。因为它可以让你在预览更改效果的同时，免去反复重新导入音频的麻烦。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_bpm:

.. rst-class:: classref-property

:ref:`float<class_float>` **bpm** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_bpm>`

音频轨道的 tempo（节奏速度），以每分钟的节拍数（BPM）为单位进行衡量。这里填写的数值应该与创作这首曲子时使用的 BPM 保持一致。这个设置仅对希望使用互动音乐（interactive music）功能的音乐有效，而不适用于音效。

在 **高级导入设置（Advanced Import Settings）** 对话框中，为 :ref:`bpm<class_ResourceImporterOggVorbis_property_bpm>` 提供了一个更方便的编辑器。因为它可以让你在预览更改效果的同时，免去反复重新导入音频的麻烦。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``false`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop>`

如果启用，当音频播放结束（无论是播放到了音频文件的末尾，还是根据 :ref:`beat_count<class_ResourceImporterOggVorbis_property_beat_count>` 中指定的数量播放到了最后一个节拍的末尾）后，音频将会从开头或者从 :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` 指定的位置重新开始播放。

\ **注意：** 在 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 中，对于开启了循环的音频，当它播放到音频文件末尾时，不会触发 :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>`\ （播放完成）信号，因为音频会一直无限循环播放下去。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_property_loop_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **loop_offset** = ``0`` :ref:`🔗<class_ResourceImporterOggVorbis_property_loop_offset>`

确定播放到达音频结尾后音频将开始循环的位置。这可用于仅循环音频文件的一部分，这对于某些环境音或音乐很有用。该值以相对于音频开头的秒数确定。值为 ``0.0`` 将循环整个音频文件。

仅当 :ref:`loop<class_ResourceImporterOggVorbis_property_loop>` 为 ``true`` 时才有效。

\ **高级导入设置**\ 对话框中为 :ref:`loop_offset<class_ResourceImporterOggVorbis_property_loop_offset>` 提供了更方便的编辑器，因为它可以让你预览更改，且无需重新导入音频。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ResourceImporterOggVorbis_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_buffer>`

**已弃用：** Use :ref:`AudioStreamOggVorbis.load_from_buffer()<class_AudioStreamOggVorbis_method_load_from_buffer>` instead.

从给定缓冲区新建 :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` 实例。缓冲区中必须包含 Ogg Vorbis 数据。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOggVorbis_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ResourceImporterOggVorbis_method_load_from_file>`

**已弃用：** Use :ref:`AudioStreamOggVorbis.load_from_file()<class_AudioStreamOggVorbis_method_load_from_file>` instead.

从给定的文件路径新建 :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` 实例。文件必须为 Ogg Vorbis 格式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
