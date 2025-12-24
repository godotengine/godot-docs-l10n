:github_url: hide

.. _class_MovieWriter:

MovieWriter
===========

**继承：** :ref:`Object<class_Object>`

非实时视频录制编码器的抽象类。

.. rst-class:: classref-introduction-group

描述
----

Godot 能够使用非实时模拟技术录制视频。与 ``--fixed-fps`` :doc:`命令行参数 <../tutorials/editor/command_line_tutorial>`\ 类似，会强制让 :ref:`Node._process()<class_Node_private_method__process>` 等函数每一帧都收到相同的 ``delta``\ ，无论实际渲染花费了多长的时间。这个技术可用于录制高画质的视频，无论你的硬件性能如何，帧率始终都是恒定的。

Godot 内置的 **MovieWriter** 有 3 个：

- 使用 Theora 视频和 Vorbis 音频的 OVG 容器（文件扩展名为 ``.ogv``\ ）。有损压缩、文件大小中等、编码速度快。有损压缩质量可以通过修改 :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` 和 :ref:`ProjectSettings.editor/movie_writer/ogv/audio_quality<class_ProjectSettings_property_editor/movie_writer/ogv/audio_quality>` 来调整。生成的文件在 Godot 中可以使用 :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` 查看，也可以使用大多数视频播放器查看，但是无法在网页浏览器中查看，因为它们不支持 Theora。

- 使用 MJPEG 视频和未压缩音频的 AVI 容器（文件扩展名为 ``.avi``\ ）。有损压缩、文件大小中等、编码速度较快。有损压缩质量可以通过修改 :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` 来调整。生成的文件可以使用大多数视频播放器查看，但如果要在 Web 上查看或者用 Godot 的 :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` 查看，则必须先进行格式的转换。MJPEG 不支持透明度。AVI 输出的文件目前最多为 4 GB 大小。

- 视频使用 PNG 图像序列、音频使用 WAV（文件扩展名为 ``.png``\ ）。无损压缩、文件大小较大、编码速度较慢。旨在录制后使用 `FFmpeg <https://ffmpeg.org/>`__ 等其他工具编码为视频文件。目前不支持透明度，即便将根视口设为透明。

如果你需要编码为其他格式，或者将流导入到第三方软件中，你可以扩展 **MovieWriter** 类，创建自己的影片写入器。出于性能考虑，一般应该使用 GDExtension 实现。

\ **编辑器使用：**\ 默认影片文件路径可以在 :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>` 指定。或者在运行单个场景时，也可以在根节点上添加元数据 ``movie_file``\ ，可以指定录制该场景时所使用的影片文件路径。设置路径后，请点击编辑器右上角的电影胶卷图标，启动 Movie Maker 模式，然后和平常一样运行场景即可。引擎会在启动画面结束后开始录制，只会在引擎退出时停止录制。再次点击电影胶卷图标可以禁用 Movie Maker 模式。请注意，Movie Maker 模式的开关不会影响正在运行的项目实例。

\ **注意：**\ MovieWriter 既可以在编辑器中使用，也可以在导出的项目中使用，但这个功能\ *不应*\ 用来让最终用户录制游戏视频。希望录制游戏视频的玩家应该安装 `OBS Studio <https://obsproject.com/>`__ 或 `SimpleScreenRecorder <https://www.maartenbaert.be/simplescreenrecorder/>`__ 等工具。

\ **注意：**\ MJPEG 支持（(``.avi`` 文件扩展名）依赖于 ``jpg`` 模块，需要在编译时启用（默认行为）。

\ **注意：**\ OGV 支持（(``.ogv`` 文件扩展名）依赖于 ``theora`` 模块，需要在编译时启用（默认行为）。Theora 压缩仅在编辑器二进制文件中可用。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`_get_audio_mix_rate<class_MovieWriter_private_method__get_audio_mix_rate>`\ (\ ) |virtual| |required| |const|                                                                                               |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` | :ref:`_get_audio_speaker_mode<class_MovieWriter_private_method__get_audio_speaker_mode>`\ (\ ) |virtual| |required| |const|                                                                                       |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`_handles_file<class_MovieWriter_private_method__handles_file>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                       |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`            | :ref:`_write_begin<class_MovieWriter_private_method__write_begin>`\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`_write_end<class_MovieWriter_private_method__write_end>`\ (\ ) |virtual| |required|                                                                                                                         |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`            | :ref:`_write_frame<class_MovieWriter_private_method__write_frame>`\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required|                                       |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`add_writer<class_MovieWriter_method_add_writer>`\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static|                                                                                             |
   +--------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MovieWriter_private_method__get_audio_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_audio_mix_rate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_mix_rate>`

当引擎请求用于录制音频的音频采样率时调用。返回的值必须以 Hz 为单位指定。如果 :ref:`_get_audio_mix_rate()<class_MovieWriter_private_method__get_audio_mix_rate>` 未被重写，则默认为 48000 Hz。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_audio_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **_get_audio_speaker_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_speaker_mode>`

当引擎请求用于录制音频的音频扬声器模式时调用。这可能会影响生成的音频文件/流中的输出通道数。如果 :ref:`_get_audio_speaker_mode()<class_MovieWriter_private_method__get_audio_speaker_mode>` 未被重写，则默认为 :ref:`AudioServer.SPEAKER_MODE_STEREO<class_AudioServer_constant_SPEAKER_MODE_STEREO>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__handles_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__handles_file>`

当引擎确定该 **MovieWriter** 是否能够处理位于 ``path`` 的文件时调用。如果该 **MovieWriter** 能够处理给定的文件路径，则必须返回 ``true``\ ，否则返回 ``false``\ 。通常，\ :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>` 如下被重写，以允许用户使用给定文件扩展名，在任何路径下记录一个文件：

::

    func _handles_file(path):
        # 允许指定一个带有 `.mkv` 文件扩展名（不区分大小写）的输出文件，
        # 在项目设置中或使用 `--write-movie <path>` 命令行参数。
        return path.get_extension().to_lower() == "mkv"

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_begin**\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_begin>`

在引擎开始写入视频和音频数据之前调用一次。\ ``movie_size`` 是要保存的视频的宽度和高度。\ ``fps`` 是指定的每秒帧数，在项目设置中或使用 ``--fixed-fps <fps>``\ :doc:`《命令行参数》 <../tutorials/editor/command_line_tutorial>`\ 指定。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_end:

.. rst-class:: classref-method

|void| **_write_end**\ (\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_end>`

当引擎完成写入时调用。当引擎通过按下窗口管理器的关闭按钮退出时，或调用 :ref:`SceneTree.quit()<class_SceneTree_method_quit>` 时，会发生这种情况。

\ **注意：**\ 在运行编辑器/项目的终端上，按 :kbd:`Ctrl + C`\ ，\ *不会*\ 导致 :ref:`_write_end()<class_MovieWriter_private_method__write_end>` 被调用。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_frame:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_frame**\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_frame>`

在每个渲染的帧结束时被调用。应写入 ``frame_image`` 和 ``audio_frame_block`` 函数参数。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_method_add_writer:

.. rst-class:: classref-method

|void| **add_writer**\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static| :ref:`🔗<class_MovieWriter_method_add_writer>`

添加一个可供引擎使用的编写器。可以通过重写 :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>`\ ，来设置支持的文件扩展名。

\ **注意：**\ :ref:`add_writer()<class_MovieWriter_method_add_writer>` 必须在引擎初始化期间尽早调用才能工作，因为电影编写被设计为与引擎的其余部分同时启动。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
