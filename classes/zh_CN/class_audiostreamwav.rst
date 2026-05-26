:github_url: hide

.. _class_AudioStreamWAV:

AudioStreamWAV
==============

**继承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存储从 WAV 文件加载的音频数据。

.. rst-class:: classref-introduction-group

描述
----

AudioStreamWAV 存储从 WAV 文件加载的声音样本。要播放存储的声音，请使用 :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`\ （用于非空间定位音频）或 :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`/:ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`\ （用于空间定位音频）。声音可以循环播放。

这个类还可用于存储动态生成的 PCM 音频数据。另见 :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` 以了解程序化音频生成。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`运行时文件加载与保存 <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`data<class_AudioStreamWAV_property_data>`             | ``PackedByteArray()`` |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`Format<enum_AudioStreamWAV_Format>`     | :ref:`format<class_AudioStreamWAV_property_format>`         | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`loop_end<class_AudioStreamWAV_property_loop_end>`     | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` | :ref:`loop_mode<class_AudioStreamWAV_property_loop_mode>`   | ``0``                 |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                         | :ref:`mix_rate<class_AudioStreamWAV_property_mix_rate>`     | ``44100``             |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`stereo<class_AudioStreamWAV_property_stereo>`         | ``false``             |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>`           | :ref:`tags<class_AudioStreamWAV_property_tags>`             | ``{}``                |
   +-----------------------------------------------+-------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`load_from_buffer<class_AudioStreamWAV_method_load_from_buffer>`\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamWAV<class_AudioStreamWAV>` | :ref:`load_from_file<class_AudioStreamWAV_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static|                              |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`save_to_wav<class_AudioStreamWAV_method_save_to_wav>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                 |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioStreamWAV_Format:

.. rst-class:: classref-enumeration

enum **Format**: :ref:`🔗<enum_AudioStreamWAV_Format>`

.. _class_AudioStreamWAV_constant_FORMAT_8_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_8_BITS** = ``0``

8 位 PCM 音频编解码器。

.. _class_AudioStreamWAV_constant_FORMAT_16_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_16_BITS** = ``1``

16 位 PCM 音频编解码器。

.. _class_AudioStreamWAV_constant_FORMAT_IMA_ADPCM:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_IMA_ADPCM** = ``2``

音频按照 IMA ADPCM 进行有损压缩。

.. _class_AudioStreamWAV_constant_FORMAT_QOA:

.. rst-class:: classref-enumeration-constant

:ref:`Format<enum_AudioStreamWAV_Format>` **FORMAT_QOA** = ``3``

音频按照 `Quite OK Audio <https://qoaformat.org/>`__ 进行有损压缩。

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamWAV_LoopMode:

.. rst-class:: classref-enumeration

enum **LoopMode**: :ref:`🔗<enum_AudioStreamWAV_LoopMode>`

.. _class_AudioStreamWAV_constant_LOOP_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_DISABLED** = ``0``

音频不循环。

.. _class_AudioStreamWAV_constant_LOOP_FORWARD:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_FORWARD** = ``1``

音频在 :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` 和 :ref:`loop_end<class_AudioStreamWAV_property_loop_end>` 之间循环数据，仅向前播放。

.. _class_AudioStreamWAV_constant_LOOP_PINGPONG:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_PINGPONG** = ``2``

音频在 :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` 和 :ref:`loop_end<class_AudioStreamWAV_property_loop_end>` 之间循环数据，来回播放。

.. _class_AudioStreamWAV_constant_LOOP_BACKWARD:

.. rst-class:: classref-enumeration-constant

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **LOOP_BACKWARD** = ``3``

音频在 :ref:`loop_begin<class_AudioStreamWAV_property_loop_begin>` 和 :ref:`loop_end<class_AudioStreamWAV_property_loop_end>` 之间循环数据，仅向后播放。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioStreamWAV_property_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **data** = ``PackedByteArray()`` :ref:`🔗<class_AudioStreamWAV_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_data**\ (\ )

包含音频的字节数据。

\ **注意：**\ 如果 :ref:`format<class_AudioStreamWAV_property_format>` 为 :ref:`FORMAT_8_BITS<class_AudioStreamWAV_constant_FORMAT_8_BITS>`\ ，该属性应为带符号 8 位 PCM 数据。从无符号 8 位 PCM 数据转换时，请将每个字节减去 128。

\ **注意：**\ 如果 :ref:`format<class_AudioStreamWAV_property_format>` 为 :ref:`FORMAT_QOA<class_AudioStreamWAV_constant_FORMAT_QOA>`\ ，该属性应为完整 QOA 文件的数据。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_format:

.. rst-class:: classref-property

:ref:`Format<enum_AudioStreamWAV_Format>` **format** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`Format<enum_AudioStreamWAV_Format>`\ )
- :ref:`Format<enum_AudioStreamWAV_Format>` **get_format**\ (\ )

音频格式。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **loop_begin** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_begin>`

.. rst-class:: classref-property-setget

- |void| **set_loop_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_loop_begin**\ (\ )

循环起始点（单位为采样数，相对于该流开头）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **loop_end** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_end>`

.. rst-class:: classref-property-setget

- |void| **set_loop_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_loop_end**\ (\ )

循环结束点（单位为采样数，相对于该流开头）。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_loop_mode:

.. rst-class:: classref-property

:ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **loop_mode** = ``0`` :ref:`🔗<class_AudioStreamWAV_property_loop_mode>`

.. rst-class:: classref-property-setget

- |void| **set_loop_mode**\ (\ value\: :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>`\ )
- :ref:`LoopMode<enum_AudioStreamWAV_LoopMode>` **get_loop_mode**\ (\ )

循环模式。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_mix_rate:

.. rst-class:: classref-property

:ref:`int<class_int>` **mix_rate** = ``44100`` :ref:`🔗<class_AudioStreamWAV_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mix_rate**\ (\ )

混合这个音频的采样率。更高的数值需要更多的存储空间，但会带来更好的质量。

在游戏中，常用的采样率有 ``11025``\ 、\ ``16000``\ 、\ ``22050``\ 、\ ``32000``\ 、\ ``44100``\ 、\ ``48000``\ 。

根据 `Nyquist-Shannon sampling theorem <https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem>`__ ，当超过 40000 赫兹时，人类的听觉没有质量上的差别（因为大多数人只能听到 ~20000 赫兹，往往更少）。如果你要使用语音等音高较低的声音，则可以使用 ``32000`` 或 ``22050`` 等较低的采样率，不会降低质量。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_stereo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stereo** = ``false`` :ref:`🔗<class_AudioStreamWAV_property_stereo>`

.. rst-class:: classref-property-setget

- |void| **set_stereo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_stereo**\ (\ )

如果为 ``true``\ ，则音频为立体声。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_property_tags:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **tags** = ``{}`` :ref:`🔗<class_AudioStreamWAV_property_tags>`

.. rst-class:: classref-property-setget

- |void| **set_tags**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_tags**\ (\ )

如果在 WAV 数据中存在标签，则包含用户定义的标签。

常用标签包括标题 ``title``\ 、艺术家 ``artist``\ 、专辑 ``album``\ 、音轨号 ``tracknumber``\ 、日期 ``date``\ （\ ``date`` 没有标准日期格式）。

\ **注意：**\ 无法\ *保证*\ 每个文件中都有某个标签，因此请考虑键可能不是始终存在。

\ **注意：**\ 目前仅支持使用 ``LIST`` 块并且标识符为 ``INFO`` 的 WAV 文件编码标签。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_AudioStreamWAV_method_load_from_buffer:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **load_from_buffer**\ (\ stream_data\: :ref:`PackedByteArray<class_PackedByteArray>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_AudioStreamWAV_method_load_from_buffer>`

从给定缓冲区新建 **AudioStreamWAV** 实例。缓冲区中必须包含 WAV 数据。

\ ``options`` 中的键值对与 :ref:`ResourceImporterWAV<class_ResourceImporterWAV>` 的属性对应。\ ``options`` 的用法与 :ref:`load_from_file()<class_AudioStreamWAV_method_load_from_file>` 一致。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_method_load_from_file:

.. rst-class:: classref-method

:ref:`AudioStreamWAV<class_AudioStreamWAV>` **load_from_file**\ (\ path\: :ref:`String<class_String>`, options\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_AudioStreamWAV_method_load_from_file>`

从给定的文件路径新建 **AudioStreamWAV** 实例。文件必须为 WAV 格式。

\ ``options`` 中的键值对与 :ref:`ResourceImporterWAV<class_ResourceImporterWAV>` 的属性对应。

\ **示例：**\ 将拖放的第一个文件作为 WAV 加载并播放：

::

    @onready var audio_player = $AudioStreamPlayer

    func _ready():
        get_window().files_dropped.connect(_on_files_dropped)

    func _on_files_dropped(files):
        if files[0].get_extension() == "wav":
            audio_player.stream = AudioStreamWAV.load_from_file(files[0], {
                    "force/max_rate": true,
                    "force/max_rate_hz": 11025
                })
            audio_player.play()

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamWAV_method_save_to_wav:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_wav**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AudioStreamWAV_method_save_to_wav>`

将 AudioStreamWAV 作为 WAV 文件保存到 ``path``\ 。无法保存 IMA ADPCM 或 Quite OK Audio 格式的样本。

\ **注意：**\ 如果缺少 ``.wav`` 扩展名，则会自动将其追加到 ``path``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
