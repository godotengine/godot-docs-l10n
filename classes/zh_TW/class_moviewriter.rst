:github_url: hide

.. _class_MovieWriter:

MovieWriter
===========

**繼承：** :ref:`Object<class_Object>`

非即時影片錄製編碼器的抽象類別。

.. rst-class:: classref-introduction-group

說明
----

Godot can record videos with non-real-time simulation. Like the ``--fixed-fps`` :doc:`command line argument <../tutorials/editor/command_line_tutorial>`, this forces the reported ``delta`` in :ref:`Node._process()<class_Node_private_method__process>` functions to be identical across frames, regardless of how long it actually took to render the frame. This can be used to record high-quality videos with perfect frame pacing regardless of your hardware's capabilities.

Godot has 3 built-in **MovieWriter**\ s:

- OGV container with Theora for video and Vorbis for audio (``.ogv`` file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` and :ref:`ProjectSettings.editor/movie_writer/ogv/audio_quality<class_ProjectSettings_property_editor/movie_writer/ogv/audio_quality>`. The resulting file can be viewed in Godot with :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` and most video players, but not web browsers as they don't support Theora.

- AVI container with MJPEG for video and uncompressed audio (``.avi`` file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>`. The resulting file can be viewed in most video players, but it must be converted to another format for viewing on the web or by Godot with :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`. MJPEG does not support transparency. AVI output is currently limited to a file of 4 GB in size at most.

- PNG image sequence for video and WAV for audio (``.png`` file extension). Lossless compression, large file sizes, slow encoding. Designed to be encoded to a video file with another tool such as `FFmpeg <https://ffmpeg.org/>`__ after recording. Transparency is currently not supported, even if the root viewport is set to be transparent.

If you need to encode to a different format or pipe a stream through third-party software, you can extend the **MovieWriter** class to create your own movie writers. This should typically be done using GDExtension for performance reasons.

\ **Editor usage:** A default movie file path can be specified in :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>`. Alternatively, for running single scenes, a ``movie_file`` metadata can be added to the root node, specifying the path to a movie file that will be used when recording that scene. Once a path is set, click the video reel icon in the top-right corner of the editor to enable Movie Maker mode, then run any scene as usual. The engine will start recording as soon as the splash screen is finished, and it will only stop recording when the engine quits. Click the video reel icon again to disable Movie Maker mode. Note that toggling Movie Maker mode does not affect project instances that are already running.

\ **Note:** MovieWriter is available for use in both the editor and exported projects, but it is *not* designed for use by end users to record videos while playing. Players wishing to record gameplay videos should install tools such as `OBS Studio <https://obsproject.com/>`__ or `SimpleScreenRecorder <https://www.maartenbaert.be/simplescreenrecorder/>`__ instead.

\ **Note:** MJPEG support (``.avi`` file extension) depends on the ``jpg`` module being enabled at compile time (default behavior).

\ **Note:** OGV support (``.ogv`` file extension) depends on the ``theora`` module being enabled at compile time (default behavior). Theora compression is only available in editor binaries.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_audio_mix_rate<class_MovieWriter_private_method__get_audio_mix_rate>`\ (\ ) |virtual| |required| |const|                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`  | :ref:`_get_audio_speaker_mode<class_MovieWriter_private_method__get_audio_speaker_mode>`\ (\ ) |virtual| |required| |const|                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_supported_extensions<class_MovieWriter_private_method__get_supported_extensions>`\ (\ ) |virtual| |required| |const|                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_file<class_MovieWriter_private_method__handles_file>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const|                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_write_begin<class_MovieWriter_private_method__write_begin>`\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_write_end<class_MovieWriter_private_method__write_end>`\ (\ ) |virtual| |required|                                                                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_write_frame<class_MovieWriter_private_method__write_frame>`\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required|                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_writer<class_MovieWriter_method_add_writer>`\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static|                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MovieWriter_private_method__get_audio_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_audio_mix_rate**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_mix_rate>`

當引擎請求用於錄製音訊的音訊取樣速率時呼叫。返回的值必須以 Hz 為單位指定。如果 :ref:`_get_audio_mix_rate()<class_MovieWriter_private_method__get_audio_mix_rate>` 未被重寫，則預設為 48000 Hz。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_audio_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **_get_audio_speaker_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_audio_speaker_mode>`

當引擎請求用於錄製音訊的音訊揚聲器模式時呼叫。這可能會影響生成的音訊檔/流中的輸出通道數。如果 :ref:`_get_audio_speaker_mode()<class_MovieWriter_private_method__get_audio_speaker_mode>` 未被重寫，則預設為 :ref:`AudioServer.SPEAKER_MODE_STEREO<class_AudioServer_constant_SPEAKER_MODE_STEREO>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__get_supported_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__get_supported_extensions>`

Returns the list of supported filename extensions for movies written with this **MovieWriter**.

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__handles_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |required| |const| :ref:`🔗<class_MovieWriter_private_method__handles_file>`

當引擎確定該 **MovieWriter** 是否能夠處理位於 ``path`` 的檔時呼叫。如果該 **MovieWriter** 能夠處理給定的檔路徑，則必須返回 ``true``\ ，否則返回 ``false``\ 。通常，\ :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>` 如下被重寫，以允許使用者使用給定檔副檔名，在任何路徑下記錄一個檔：

::

    func _handles_file(path):
        # 允許指定一個帶有 `.mkv` 檔副檔名（不區分大小寫）的輸出檔，
        # 在專案設定中或使用 `--write-movie <path>` 命令列參數。
        return path.get_extension().to_lower() == "mkv"

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_begin**\ (\ movie_size\: :ref:`Vector2i<class_Vector2i>`, fps\: :ref:`int<class_int>`, base_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_begin>`

在引擎開始寫入影片和音訊資料之前呼叫一次。\ ``movie_size`` 是要保存的影片的寬度和高度。\ ``fps`` 是指定的每秒影格數，在專案設定中、或使用 ``--fixed-fps <fps>``\ :doc:`《命令列參數》 <../tutorials/editor/command_line_tutorial>`\ 指定。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_end:

.. rst-class:: classref-method

|void| **_write_end**\ (\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_end>`

當引擎完成寫入時呼叫。當引擎通過按下視窗管理器的關閉按鈕退出時，或呼叫 :ref:`SceneTree.quit()<class_SceneTree_method_quit>` 時，會發生這種情況。

\ **注意：**\ 在運作編輯器/專案的終端上，按 :kbd:`Ctrl + C`\ ，\ *不會*\ 導致 :ref:`_write_end()<class_MovieWriter_private_method__write_end>` 被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_private_method__write_frame:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_write_frame**\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const void*``\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_frame>`

在每個算繪的影格結束時被呼叫。應寫入 ``frame_image`` 和 ``audio_frame_block`` 函式參數。

.. rst-class:: classref-item-separator

----

.. _class_MovieWriter_method_add_writer:

.. rst-class:: classref-method

|void| **add_writer**\ (\ writer\: :ref:`MovieWriter<class_MovieWriter>`\ ) |static| :ref:`🔗<class_MovieWriter_method_add_writer>`

新增一個可供引擎使用的編寫器。可以通過重寫 :ref:`_handles_file()<class_MovieWriter_private_method__handles_file>`\ ，來設定支援的檔案副檔名。

\ **注意：**\ :ref:`add_writer()<class_MovieWriter_method_add_writer>` 必須在引擎初始化期間儘早呼叫才能工作，因為電影編寫被設計為與引擎的其餘部分同時啟動。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
