:github_url: hide

.. _class_MovieWriter:

MovieWriter
===========

**繼承：** :ref:`Object<class_Object>`

非即時影片錄製編碼器的抽象類別。

.. rst-class:: classref-introduction-group

說明
----

Godot 能夠使用非即時模擬技術錄制影片。與 ``--fixed-fps`` :doc:`命令行參數 <../tutorials/editor/command_line_tutorial>`\ 類似，會強制讓 :ref:`Node._process()<class_Node_private_method__process>` 等函式每一影格都收到相同的 ``delta``\ ，無論實際渲染花費了多長的時間。這個技術可用於錄制高畫質的影片，無論你的硬體效能如何，影格率始終都是恆定的。

Godot 內建的 **MovieWriter** 有 3 個：

- 使用 Theora 影片和 Vorbis 音訊的 OVG 容器（檔案副檔名為 ``.ogv``\ ）。有損壓縮、檔案大小中等、編碼速度快。有損壓縮品質可以通過修改 :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` 和 :ref:`ProjectSettings.editor/movie_writer/ogv/audio_quality<class_ProjectSettings_property_editor/movie_writer/ogv/audio_quality>` 來調整。生成的檔案在 Godot 中可以使用 :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` 查看，也可以使用大多數影片播放器查看，但是無法在網頁瀏覽器中查看，因為它們不支援 Theora。

- 使用 MJPEG 影片和未壓縮音訊的 AVI 容器（檔案副檔名為 ``.avi``\ ）。有損壓縮、檔案大小中等、編碼速度較快。有損壓縮品質可以通過修改 :ref:`ProjectSettings.editor/movie_writer/video_quality<class_ProjectSettings_property_editor/movie_writer/video_quality>` 來調整。生成的檔案可以使用大多數影片播放器查看，但如果要在 Web 上查看或者用 Godot 的 :ref:`VideoStreamPlayer<class_VideoStreamPlayer>` 查看，則必須先進行格式的轉換。MJPEG 不支援透明度。AVI 輸出的檔案目前最多為 4 GB 大小。

- 影片使用 PNG 影像序列、音訊使用 WAV（檔案副檔名為 ``.png``\ ）。無損壓縮、檔案大小較大、編碼速度較慢。旨在錄制後使用 `FFmpeg <https://ffmpeg.org/>`__ 等其他工具編碼為影片檔案。目前不支援透明度，即便將根視埠設為透明。

如果你需要編碼為其他格式，或者將流匯入到第三方軟體中，你可以擴充 **MovieWriter** 類，建立自己的影片錄制器。出於效能考慮，一般應該使用 GDExtension 實現。

\ **編輯器使用：**\ 預設影片檔案路徑可以在 :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>` 指定。或者在執行單個場景時，也可以在根節點上新增中繼資料 ``movie_file``\ ，可以指定錄制該場景時所使用的影片檔案路徑。設定路徑後，請點選編輯器右上角的電影膠卷圖示，啟動 Movie Maker 模式，然後和平常一樣執行場景即可。引擎會在啟動畫面結束後開始錄制，只會在引擎退出時停止錄制。再次點選電影膠卷圖示可以停用 Movie Maker 模式。請注意，Movie Maker 模式的開關不會影響正在執行的專案實例。

\ **注意：**\ MovieWriter 既可以在編輯器中使用，也可以在匯出的專案中使用，但這個功能\ *不應*\ 用來讓最終使用者錄制遊戲影片。希望錄制遊戲影片的玩家應該安裝 `OBS Studio <https://obsproject.com/>`__ 或 `SimpleScreenRecorder <https://www.maartenbaert.be/simplescreenrecorder/>`__ 等工具。

\ **注意：**\ MJPEG 支援（(\ ``.avi`` 檔案副檔名）取決於 ``jpg`` 模組，需要在編譯時啟用（預設行為）。

\ **注意：**\ OGV 支援（(\ ``.ogv`` 檔案副檔名）取決於 ``theora`` 模組，需要在編譯時啟用（預設行為）。Theora 壓縮僅在編輯器二進位檔案中可用。

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
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_write_frame<class_MovieWriter_private_method__write_frame>`\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const int32_t*``\ ) |virtual| |required|                                    |
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

回傳此 **MovieWriter** 在生成（寫入）影片時所支援的檔名副檔名清單。

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

:ref:`Error<enum_@GlobalScope_Error>` **_write_frame**\ (\ frame_image\: :ref:`Image<class_Image>`, audio_frame_block\: ``const int32_t*``\ ) |virtual| |required| :ref:`🔗<class_MovieWriter_private_method__write_frame>`

在每個渲染的影格結束時被呼叫。應寫入 ``frame_image`` 和 ``audio_frame_block`` 函式參數。

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
