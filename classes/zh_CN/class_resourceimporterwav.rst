:github_url: hide

.. _class_ResourceImporterWAV:

ResourceImporterWAV
===================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入 WAV 音频文件，用于播放。

.. rst-class:: classref-introduction-group

描述
----

WAV 是未经压缩的格式，能够提供比 Ogg Vorbis 和 MP3 更高的质量。解压时的 CPU 开销也最低。因此即便在低端设备上，也能够同时播放大量的 WAV 声音。

默认情况下，Godot 使用有损的 Quite OK Audio 压缩导入 WAV 文件。可以通过设置 :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>` 属性来更改。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入音频样本 <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`         | ``2``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`     | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`         | ``-1``    |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>`       | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/trim<class_ResourceImporterWAV_property_edit/trim>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/8_bit<class_ResourceImporterWAV_property_force/8_bit>`             | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` | ``44100`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/mono<class_ResourceImporterWAV_property_force/mono>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterWAV_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``2`` :ref:`🔗<class_ResourceImporterWAV_property_compress/mode>`

导入时使用的压缩模式。

- **PCM (Uncompressed)：**\ 导入音频数据，不进行压缩，保持尽可能高的质量。CPU 开销最低，但内存占用最高。

- **IMA ADPCM：**\ 导入时进行快速有损压缩，显著降低质量，但是 CPU 开销和内存占用都较低。不支持跳转，仅支持 Forward 循环模式。

- **\ `Quite OK Audio <https://qoaformat.org/>`__\ ：**\ 导入时也会进行有损压缩，CPU 开销比 IMA ADPCM 略高，但是质量要高很多，内存占用也最低。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_begin** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_begin>`

循环起始点，\ :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` 为 **Forward**\ 、\ **Ping-Pong**\ 、或 **Backward** 时使用。设置的是音频文件开始之后的采样数。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_end** = ``-1`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_end>`

循环结束点，\ :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` 为 **Forward**\ 、\ **Ping-Pong**\ 、或 **Backward** 时使用。设置的是音频文件开始之后的采样数。\ ``-1`` 表示使用音频文件的末尾作为循环结束点。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_mode** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_mode>`

控制音频如何循环。

- **Detect From WAV：**\ 使用 WAV 元数据中的循环信息。

- **Disabled：**\ 不循环音频，即便元数据显示该文件应该在播放时循环。

- **Forward：**\ 标准音频循环。从头开始正向播放音频至 :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`\ ，然后回到 :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>` 再进行重复。

- **Ping-Pong：**\ 正向播放音频至 :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`\ ，然后逆向播放至 :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`\ ，再重复这一循环。

- **Backward：**\ 从 :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>` 至 :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>` 逆向播放音频，再进行重复。

\ **注意：**\ 在 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` 中，循环音频到达音频文件末尾时不会发出 :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` 信号，因为音频会无限循环播放。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/normalize** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/normalize>`

如果为 ``true``\ ，则会将音频音量进行归一化，让最高音量等于 0 dB。启用后，音频听起来会更响，具体取决于原始的最高音量。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/trim:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/trim** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/trim>`

如果为 ``true``\ ，则会自动修剪掉音频开头和结尾处归一化后低于 -50 dB 的部分（见 :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`\ ）。这样就能够避免出现文件开头和结尾出现空白的情况，这种情况会占用不必要的文件大小，同时也会在播放时导致延迟。修剪时还会使用 500 个采样进行淡入/淡出，避免产生爆音。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/8_bit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/8_bit** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/8_bit>`

如果为 ``true``\ ，则会在源文件至少为 16 位时，强制让导入的音频使用 8 位量化。

通常不建议启用，因为 8 位量化会显著降低音质。如果你需要让文件大小更小，请考虑改用 Ogg Vorbis 或 MP3 音频。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/max_rate** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate>`

如果设成比 ``0`` 大的值，则会强制让音频的采样率降低至小于等于 :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` 的值。

可以让部分声音在不影响音质的同时降低文件大小，具体取决于声音的内容。详见\ `《最佳实践》 <../tutorials/assets_pipeline/importing_audio_samples.html#doc-importing-audio-samples-best-practices>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **force/max_rate_hz** = ``44100`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate_hz>`

导入音频采样的频率限制（单位为赫兹）。仅当 :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/mono:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/mono** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/mono>`

如果为 ``true``\ ，则会在源文件为立体声时，强制让导入的音频使用单声道。将两个声道合并能够将文件大小降低 50%。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
