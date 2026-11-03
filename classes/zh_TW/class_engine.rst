:github_url: hide

.. _class_Engine:

Engine
======

**繼承：** :ref:`Object<class_Object>`

提供對引擎屬性的存取。

.. rst-class:: classref-introduction-group

說明
----

**Engine** 單例使你可以查詢和修改專案的執行時參數，例如每秒影格數，時間縮放等。它還儲存有關 Godot 目前建置的資訊，例如目前版本。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`max_fps<class_Engine_property_max_fps>`                                         | ``0``    |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` | ``8``    |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`physics_jitter_fix<class_Engine_property_physics_jitter_fix>`                   | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`       | ``60``   |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`print_error_messages<class_Engine_property_print_error_messages>`               | ``true`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`print_to_stdout<class_Engine_property_print_to_stdout>`                         | ``true`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`time_scale<class_Engine_property_time_scale>`                                   | ``1.0``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] | :ref:`capture_script_backtraces<class_Engine_method_capture_script_backtraces>`\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const|          |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_architecture_name<class_Engine_method_get_architecture_name>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_author_info<class_Engine_method_get_author_info>`\ (\ ) |const|                                                                                   |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]           | :ref:`get_copyright_info<class_Engine_method_get_copyright_info>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_donor_info<class_Engine_method_get_donor_info>`\ (\ ) |const|                                                                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_frames_drawn<class_Engine_method_get_frames_drawn>`\ (\ )                                                                                         |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                  | :ref:`get_frames_per_second<class_Engine_method_get_frames_per_second>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_license_info<class_Engine_method_get_license_info>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_license_text<class_Engine_method_get_license_text>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MainLoop<class_MainLoop>`                                            | :ref:`get_main_loop<class_Engine_method_get_main_loop>`\ (\ ) |const|                                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_physics_frames<class_Engine_method_get_physics_frames>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                  | :ref:`get_physics_interpolation_fraction<class_Engine_method_get_physics_interpolation_fraction>`\ (\ ) |const|                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_process_frames<class_Engine_method_get_process_frames>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptLanguage<class_ScriptLanguage>`                                | :ref:`get_script_language<class_Engine_method_get_script_language>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                            |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`get_script_language_count<class_Engine_method_get_script_language_count>`\ (\ )                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                                | :ref:`get_singleton<class_Engine_method_get_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                          | :ref:`get_singleton_list<class_Engine_method_get_singleton_list>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`get_version_info<class_Engine_method_get_version_info>`\ (\ ) |const|                                                                                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                | :ref:`get_write_movie_path<class_Engine_method_get_write_movie_path>`\ (\ ) |const|                                                                         |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`has_singleton<class_Engine_method_has_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_editor_hint<class_Engine_method_is_editor_hint>`\ (\ ) |const|                                                                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_embedded_in_editor<class_Engine_method_is_embedded_in_editor>`\ (\ ) |const|                                                                       |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`is_in_physics_frame<class_Engine_method_is_in_physics_frame>`\ (\ ) |const|                                                                           |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                      | :ref:`register_script_language<class_Engine_method_register_script_language>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ )                 |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                     | :ref:`register_singleton<class_Engine_method_register_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                      | :ref:`unregister_script_language<class_Engine_method_unregister_script_language>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ )             |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                     | :ref:`unregister_singleton<class_Engine_method_unregister_singleton>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                     |
   +----------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Engine_property_max_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_fps** = ``0`` :ref:`🔗<class_Engine_property_max_fps>`

.. rst-class:: classref-property-setget

- |void| **set_max_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_fps**\ (\ )

每秒可渲染的最大影格數（FPS）。值為 ``0`` 表示影格速率不受限制。

限制 FPS 會對降低主機功耗很有協助，可以減少熱量、噪音排放並延長電池壽命。

如果 :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` 為 **Enabled** 或 **Adaptive** ，則該設定將被優先考慮，並且最大 FPS 數不能超過顯示器的刷新率。另見 :ref:`DisplayServer.screen_get_refresh_rate()<class_DisplayServer_method_screen_get_refresh_rate>`\ 。

如果 :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` 為 **Enabled**\ ，在啟用了可變刷新率（G-Sync/FreeSync）的顯示器上，使用比顯示器刷新率低幾影格的 FPS 限制，將\ `減少輸入延遲，同時可以避免撕裂 <https://blurbusters.com/howto-low-lag-vsync-on/>`__\ 。在較高的刷新率下，應增大影格率限制與顯示器刷新率之間的差值，以確保有足夠的影格數來彌補計時誤差。在這種情況下，影格率限制值的最佳公式為 ``r - (r * r) / 3600.0``\ ，其中 ``r`` 是顯示器的刷新率。

\ **注意：**\ 如果CPU或GPU跟不上專案的邏輯和渲染，則每秒的實際影格數可能仍低於該值。

\ **注意：**\ 如果 :ref:`ProjectSettings.display/window/vsync/vsync_mode<class_ProjectSettings_property_display/window/vsync/vsync_mode>` 為 **Disabled**\ ，則與無上限的影格率相比，將 FPS 限制為可以在系統上持續達到的較高值，可以減少輸入滯後。由於這是通過確保 GPU 負載低於 100% 來實現的，因此這種延遲減少僅在 GPU 瓶頸場景中有效，在 CPU 瓶頸場景中無效。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_max_physics_steps_per_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_physics_steps_per_frame** = ``8`` :ref:`🔗<class_Engine_property_max_physics_steps_per_frame>`

.. rst-class:: classref-property-setget

- |void| **set_max_physics_steps_per_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_physics_steps_per_frame**\ (\ )

每個渲染影格所能模擬的最大物理迭代數。

\ **注意：**\ 調整預設值是為了防止昂貴的物理模擬無限期地觸發更昂貴的模擬。然而，如果渲染 FPS 小於 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` 的 ``1 / max_physics_steps_per_frame``\ ，遊戲看上去會是降速的。即便在物理計算中始終使用 ``delta`` 也一樣會發生。要避免這種情況，如果已經增大了 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ ，而且遠大於其預設值，那麼建議將 :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` 也調大。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_jitter_fix:

.. rst-class:: classref-property

:ref:`float<class_float>` **physics_jitter_fix** = ``0.5`` :ref:`🔗<class_Engine_property_physics_jitter_fix>`

.. rst-class:: classref-property-setget

- |void| **set_physics_jitter_fix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_physics_jitter_fix**\ (\ )

有多少物理滴答與實際時間同步。如果為 ``0`` 或更少，則滴答完全同步。較高的值會導致遊戲中的時鐘與真即時鐘的偏差更大，但它們可以平滑影格率抖動。

\ **注意：**\ 預設值 ``0.5`` 對於大多數情況來說應該足夠了；高於 ``2`` 的值可能會導致遊戲對掉影格做出反應並出現明顯的延遲，因此不推薦使用。

\ **注意：**\ 當使用自訂物理插值解決方案或在網路遊戲中時，建議通過將該屬性設定為 ``0`` 來停用物理抖動修復。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_physics_ticks_per_second:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_ticks_per_second** = ``60`` :ref:`🔗<class_Engine_property_physics_ticks_per_second>`

.. rst-class:: classref-property-setget

- |void| **set_physics_ticks_per_second**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_ticks_per_second**\ (\ )

每秒執行的固定迭代次數。用於控制物理仿真和 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 的執行頻率。

CPU 使用率大致與物理週期頻率成正比。然而，在週期頻率非常低（通常低於 30）的情況下，物理行為可能會出現異常。在低週期頻率下，輸入響應也會變得遲鈍，因為輸入被注冊到系統和系統在下一個物理週期做出響應之間會存在延遲。較高的週期頻率可以提供更精確的物理模擬，尤其對於快速移動的物體而言。例如，賽車遊戲可以通過將週期頻率提高到高於預設的 60 來獲得更好的效果。

另見 :ref:`max_fps<class_Engine_property_max_fps>` 和 :ref:`ProjectSettings.physics/common/physics_ticks_per_second<class_ProjectSettings_property_physics/common/physics_ticks_per_second>`\ 。

\ **注意：**\ 每個渲染影格最多只能模擬 :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` 個物理週期。如果為了追趕渲染，需要在每個渲染影格中模擬更多物理週期，遊戲看上去會是降速的（即便在物理計算中始終使用 ``delta``\ ）。因此，如果增大了 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ ，而且遠大於預設值，那麼建議將 :ref:`max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` 也調大。

\ **注意：**\ 如果你將 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` 的值更改為不是 ``60`` 的倍數的值，請考慮啟用\ :doc:`物理插值 <../tutorials/physics/interpolation/index>`\ 。使用物理插值可以避免顯示器刷新率和物理更新速率不完全匹配時出現的畫面抖動。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_error_messages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_error_messages** = ``true`` :ref:`🔗<class_Engine_property_print_error_messages>`

.. rst-class:: classref-property-setget

- |void| **set_print_error_messages**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_error_messages**\ (\ )

如果為 ``false``\ ，則停止向控制台和編輯器輸出記錄輸出錯誤和警告訊息。這可用於在單元測試套件執行期間隱藏錯誤和警告訊息。該屬性等效於 :ref:`ProjectSettings.application/run/disable_stderr<class_ProjectSettings_property_application/run/disable_stderr>` 專案設定。

\ **注意：**\ 從編輯器執行專案時，該屬性不會影響編輯器的“錯誤”分頁。

\ **警告：**\ 如果在專案的任何地方將該項設定為 ``false``\ ，則重要的錯誤訊息可能會被隱藏，即使它們是從其他腳本發出的。在 ``@tool`` 腳本中，這也會影響編輯器本身。在確保錯誤訊息被啟用（預設情況下）之前，\ *不*\ 要報告錯誤。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_print_to_stdout:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **print_to_stdout** = ``true`` :ref:`🔗<class_Engine_property_print_to_stdout>`

.. rst-class:: classref-property-setget

- |void| **set_print_to_stdout**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_printing_to_stdout**\ (\ )

如果 ``false``\ ，則會阻止將訊息（例如使用 :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>`\ ）輸出到控制台、記錄檔和編輯器的“輸出”記錄中。該屬性相當於專案設定 :ref:`ProjectSettings.application/run/disable_stdout<class_ProjectSettings_property_application/run/disable_stdout>`\ 。

\ **注意：**\ 該屬性並不會阻止將腳本產生的錯誤和警告輸出到控制台或記錄檔，詳見 :ref:`print_error_messages<class_Engine_property_print_error_messages>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_property_time_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_scale** = ``1.0`` :ref:`🔗<class_Engine_property_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_time_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_scale**\ (\ )

遊戲內部時鐘更新的速度乘數，相對於真即時間。例如設定為 ``2.0`` 就會讓遊戲以二倍速執行，設定為 ``0.5`` 就會讓遊戲以一半的速度執行。

這個值會影響 :ref:`Timer<class_Timer>`\ 、\ :ref:`SceneTreeTimer<class_SceneTreeTimer>` 以及其他使用 ``delta`` 時間進行的仿真（例如 :ref:`Node._process()<class_Node_private_method__process>` 和 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）。

\ **注意：**\ 建議讓這個屬性保持大於 ``0.0``\ ，否則可能導致遊戲產生意外的行為。

\ **注意：**\ 這個屬性不會影響音訊的播放。請使用 :ref:`AudioServer.playback_speed_scale<class_AudioServer_property_playback_speed_scale>` 來調整音訊播放的速度，配合 :ref:`time_scale<class_Engine_property_time_scale>`\ 。

\ **注意：**\ 這個屬性不會自動調整 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ 。大於 ``1.0`` 時可能導致物理仿真精度的下降，因為每個物理週期都會被拉伸到覆蓋引擎中的一大段時間。修改 :ref:`time_scale<class_Engine_property_time_scale>` 大幅加速仿真速度時，請考慮同時增大 :ref:`physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ ，讓仿真更可靠。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Engine_method_capture_script_backtraces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\] **capture_script_backtraces**\ (\ include_variables\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Engine_method_capture_script_backtraces>`

捕獲並回傳所有注冊腳本語言的追蹤資訊。

預設情況下，回傳的 :ref:`ScriptBacktrace<class_ScriptBacktrace>` 僅在編輯器建置和除錯建置中包含堆疊影格。要在發佈建置中也啟用，就需要啟用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

如果 ``include_variables`` 為 ``true``\ ，則追蹤資訊中還包括捕獲時的所有全域變數（例如自動載入的單例）的名稱和值，以及各個堆疊影格中的區域變數和類成員變數。不過這個參數只有在執行遊戲時附加了除錯器的情況下才會生效，例如從編輯器執行遊戲。要在匯出建置中也啟用此功能，就需要啟用 :ref:`ProjectSettings.debug/settings/gdscript/always_track_local_variables<class_ProjectSettings_property_debug/settings/gdscript/always_track_local_variables>`\ 。

\ **警告：**\ 當 ``include_variables`` 為 ``true`` 時，捕獲的變數可能是變數中的實際值（例如 GDScript 的追蹤資訊），包含物件參照。這意味著儲存這樣的 :ref:`ScriptBacktrace<class_ScriptBacktrace>` 會阻止這些物件的釋放，因此通常不建議這麼做。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_architecture_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_architecture_name**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_architecture_name>`

回傳建置 Godot 二進位檔案所針對的 CPU 架構的名稱。可能的回傳值有 ``"x86_64"``\ 、\ ``"x86_32"``\ 、\ ``"arm64"``\ 、\ ``"arm32"``\ 、\ ``"rv64"``\ 、\ ``"ppc64"``\ 、\ ``"loongarch64"``\ 、\ ``"wasm64"`` 和 ``"wasm32"``\ 。

檢測目前建置是否為 64 位元或檢測架構型別時請勿使用架構名稱進行判斷。請使用 :ref:`OS.has_feature()<class_OS_method_has_feature>`\ ，檢測 ``"64"`` 特性標籤，或者 ``"x86"``\ 、\ ``"arm"`` 等標籤。詳見\ :doc:`《特性標籤》 <../tutorials/export/feature_tags>`\ 文件。

\ **注意：**\ 該方法\ *不回傳*\ 系統 CPU 架構的名稱（如 :ref:`OS.get_processor_name()<class_OS_method_get_processor_name>`\ ）。例如在 ``x86_64`` 系統上執行 ``x86_32`` Godot 二進位檔案時，回傳值仍為 ``"x86_32"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_author_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_author_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_author_info>`

以 :ref:`Dictionary<class_Dictionary>` 形式回傳引擎作者資訊，其中每個條目都是一個字串 :ref:`Array<class_Array>`\ ，其中包含 Godot 引擎著名貢獻者的姓名：\ ``lead_developers``\ 、\ ``founders``\ 、\ ``project_managers`` 和 ``developers``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_copyright_info:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_copyright_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_copyright_info>`

回傳包含 Godot 原始碼元件版權資訊的字典的 :ref:`Array<class_Array>`\ 。

每個 :ref:`Dictionary<class_Dictionary>` 中都包含了名稱標識符 ``name`` 以及另一個字典陣列 ``parts``\ 。後者詳細描述了對應的元件，包含的欄位如下：

- ``files`` - 受到該元件影響的原始碼檔案路徑 :ref:`Array<class_Array>`\ ；

- ``copyright`` - 該元件的所有者 :ref:`Array<class_Array>`\ ；

- ``license`` - 該元件適用的協議（例如 "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__" 或 "`CC-BY-4.0 <https://creativecommons.org/licenses/by/4.0/>`__"）。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_donor_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_donor_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_donor_info>`

回傳分類捐贈者姓名的 :ref:`Dictionary<class_Dictionary>`\ 。每個條目都是一個字串 :ref:`Array<class_Array>`\ ：

{``platinum_sponsors``, ``gold_sponsors``, ``silver_sponsors``, ``bronze_sponsors``, ``mini_sponsors``, ``gold_donors``, ``silver_donors``, ``bronze_donors``}

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_drawn:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_drawn**\ (\ ) :ref:`🔗<class_Engine_method_get_frames_drawn>`

回傳自引擎啟動以來繪製的影格的總數。

\ **注意：**\ 在無頭平台上，或者如果通過命令行使用 ``--disable-render-loop`` 停用渲染，則該方法始終回傳 ``0``\ 。請參閱 :ref:`get_process_frames()<class_Engine_method_get_process_frames>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_frames_per_second:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frames_per_second**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_frames_per_second>`

回傳每秒渲染的平均影格數（FPS），也被稱為影格速率。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_license_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_info>`

回傳 Godot 和包含的第三方元件使用的許可證的 :ref:`Dictionary<class_Dictionary>`\ 。每個條目都是一個許可證名稱（例如 "`Expat <https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants>`__"）及其關聯的文字。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_license_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_license_text**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_license_text>`

回傳完整的 Godot 許可證文字。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_main_loop:

.. rst-class:: classref-method

:ref:`MainLoop<class_MainLoop>` **get_main_loop**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_main_loop>`

回傳該 :ref:`MainLoop<class_MainLoop>` 的實例。這通常是主 :ref:`SceneTree<class_SceneTree>` 並且與 :ref:`Node.get_tree()<class_Node_method_get_tree>` 相同。

\ **注意：**\ 作為主循環的實例化型別可以通過 :ref:`ProjectSettings.application/run/main_loop_type<class_ProjectSettings_property_application/run/main_loop_type>` 更改。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_physics_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_frames>`

回傳自引擎啟動以來經過的總影格數。這個數字每個\ **物理影格**\ 都會增加。另見 :ref:`get_process_frames()<class_Engine_method_get_process_frames>`\ 。

該方法可用於在不相依性 :ref:`Timer<class_Timer>` 的情況下，減少執行昂貴的邏輯的次數：


.. tabs::

 .. code-tab:: gdscript

    func _physics_process(_delta):
        if Engine.get_physics_frames() % 2 == 0:
            pass # 此處每 2 個物理影格僅執行一次昂貴的邏輯。

 .. code-tab:: csharp

    public override void _PhysicsProcess(double delta)
    {
        base._PhysicsProcess(delta);

        if (Engine.GetPhysicsFrames() % 2 == 0)
        {
            // 此處每 2 個物理影格僅執行一次昂貴的邏輯。
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_physics_interpolation_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_interpolation_fraction**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_physics_interpolation_fraction>`

返回渲染影格時目前物理週期中的分數。可用於實作固定的時間步插值。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_process_frames:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_process_frames**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_process_frames>`

回傳自引擎啟動以來經過的總影格數，無論渲染循環是否啟用，每個\ **處理影格**\ 都會增加該數字。另見 :ref:`get_frames_drawn()<class_Engine_method_get_frames_drawn>` 和 :ref:`get_physics_frames()<class_Engine_method_get_physics_frames>`\ 。

此方法可用於在不依賴 :ref:`Timer<class_Timer>` 的情況下，減少執行昂貴的邏輯的次數：


.. tabs::

 .. code-tab:: gdscript

    func _process(_delta):
        if Engine.get_process_frames() % 5 == 0:
            pass # 此處每 5 個處理（渲染）影格僅執行一次昂貴的邏輯。

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        base._Process(delta);

        if (Engine.GetProcessFrames() % 5 == 0)
        {
            // 此處每 5 個處理（渲染）影格僅執行一次昂貴的邏輯。
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language:

.. rst-class:: classref-method

:ref:`ScriptLanguage<class_ScriptLanguage>` **get_script_language**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Engine_method_get_script_language>`

回傳給定索引 ``index`` 處的 :ref:`ScriptLanguage<class_ScriptLanguage>` 實例。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_script_language_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_script_language_count**\ (\ ) :ref:`🔗<class_Engine_method_get_script_language_count>`

返回可用指令碼語言的數量。請配合 :ref:`get_script_language()<class_Engine_method_get_script_language>` 使用。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_get_singleton>`

回傳具有給定 ``name`` 的全域單例，如果不存在則回傳 ``null``\ 。常用於外掛。另見 :ref:`has_singleton()<class_Engine_method_has_singleton>` and :ref:`get_singleton_list()<class_Engine_method_get_singleton_list>`\ 。

\ **注意：**\ 全域單例與自動載入的節點不同，後者可以在專案設定中進行設定。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_singleton_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_singleton_list**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_singleton_list>`

回傳所有可用全域單例的名稱清單。另見 :ref:`get_singleton()<class_Engine_method_get_singleton>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_version_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_version_info**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_version_info>`

以包含以下條目的 :ref:`Dictionary<class_Dictionary>` 形式回傳目前引擎版本資訊：

- ``major`` - 主要版本號為一個 int；

- ``minor`` - 次要版本號為一個 int；

- ``patch`` - 補丁版本號為一個 int；

- ``hex`` - 完整版本被編碼為一個十六進位 int，每個數字一個位元組（2 個十六進位數字）（參見下面的範例）；

- ``status`` - 狀態（例如“beta”、“rc1”、“rc2”、“stable” 等）為一串字串；

- ``build`` - 建置名稱（例如 “custom_build”）為一串字串；

- ``hash`` - 完整的 Git 提交雜湊為一串字串；

- ``timestamp`` - 以秒為單位，以 int 形式儲存 Git 提交日期 UNIX 時間戳記，如果不可用，則儲存為 ``0``\ ；

- ``string`` - 將 ``major`` + ``minor`` + ``patch`` + ``status`` + ``build`` 儲存在單個字串中。

\ ``hex`` 值的編碼方式如下，從左到右：主版本對應一位元組，次版本對應一位元組，補丁版本對應一位元組。例如，“3.1.12”將是 ``0x03010C``\ 。

\ **注意：**\ ``hex`` 值內部還是一個 :ref:`int<class_int>`\ ，輸出出來就是它的十進位表示，沒有特別的意義。使用十六進位文字從程式碼中快速比較版本：


.. tabs::

 .. code-tab:: gdscript

    if Engine.get_version_info().hex >= 0x040100:
        pass # 執行特定於版本 4.1 或更高版本的操作。
    else:
        pass # 執行特定於 4.1 之前版本的操作。

 .. code-tab:: csharp

    if ((int)Engine.GetVersionInfo()["hex"] >= 0x040100)
    {
        // 執行特定於版本 4.1 或更高版本的操作。
    }
    else
    {
        // 執行特定於 4.1 之前版本的操作。
    }



.. rst-class:: classref-item-separator

----

.. _class_Engine_method_get_write_movie_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_write_movie_path**\ (\ ) |const| :ref:`🔗<class_Engine_method_get_write_movie_path>`

回傳 :ref:`MovieWriter<class_MovieWriter>` 的輸出檔案的路徑，如果引擎未在 Movie Maker 模式下啟動，則回傳一個空字串。該預設路徑可以在 :ref:`ProjectSettings.editor/movie_writer/movie_file<class_ProjectSettings_property_editor/movie_writer/movie_file>` 中更改。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_has_singleton:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Engine_method_has_singleton>`

如果全域範圍記憶體在具有給定 ``name`` 的單例，則回傳 ``true``\ 。另見 :ref:`get_singleton()<class_Engine_method_get_singleton>`\ 。


.. tabs::

 .. code-tab:: gdscript

    print(Engine.has_singleton("OS"))          # 輸出 true
    print(Engine.has_singleton("Engine"))      # 輸出 true
    print(Engine.has_singleton("AudioServer")) # 輸出 true
    print(Engine.has_singleton("Unknown"))     # 輸出 false

 .. code-tab:: csharp

    GD.Print(Engine.HasSingleton("OS"));          // 輸出 True
    GD.Print(Engine.HasSingleton("Engine"));      // 輸出 True
    GD.Print(Engine.HasSingleton("AudioServer")); // 輸出 True
    GD.Print(Engine.HasSingleton("Unknown"));     // 輸出 False



\ **注意：**\ 全域單例與自動載入的節點不同，後者可以在專案設定中進行設定。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_editor_hint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_editor_hint**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_editor_hint>`

如果腳本目前正在編輯器中執行，則回傳 ``true``\ ，否則回傳 ``false``\ 。這對於 ``@tool`` 腳本很有用，可以有條件地繪製編輯器助手，或者防止在編輯器中意外執行會影響場景狀態的“遊戲”程式碼：


.. tabs::

 .. code-tab:: gdscript

    if Engine.is_editor_hint():
        draw_gizmos()
    else:
        simulate_physics()

 .. code-tab:: csharp

    if (Engine.IsEditorHint())
        DrawGizmos();
    else
        SimulatePhysics();



有關詳細資訊，請參閱文件中的\ :doc:`《在編輯器中執行程式碼》 <../tutorials/plugins/running_code_in_the_editor>`\ 。

\ **注意：**\ 要檢測腳本是否在編輯器\ *建置*\ 上執行（例如，當按 :kbd:`F5` 時），請改用 :ref:`OS.has_feature()<class_OS_method_has_feature>` 和 ``"editor"`` 參數。\ ``OS.has_feature("editor")`` 將在編輯器中執行腳本和從編輯器執行專案時，被評估為 ``true``\ ；但當從匯出的專案執行時，它將被評估為 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_embedded_in_editor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_embedded_in_editor**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_embedded_in_editor>`

如果引擎在編輯器中嵌入執行則回傳 ``true``\ 。可以用來防止在專案嵌入編輯器中執行時嘗試更新不支援的視窗模式或視窗標誌。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_is_in_physics_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_physics_frame**\ (\ ) |const| :ref:`🔗<class_Engine_method_is_in_physics_frame>`

如果引擎位於主循環的固定物理處理步驟內，則回傳 ``true``\ 。

::

    func _enter_tree():
        # 根據節點新增到樹中的時間，
        # 輸出 “true” 或 “false”。
        print(Engine.is_in_physics_frame())

    func _process(delta):
        print(Engine.is_in_physics_frame()) # 輸出 false

    func _physics_process(delta):
        print(Engine.is_in_physics_frame()) # 輸出 true

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **register_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_register_script_language>`

注冊一個 :ref:`ScriptLanguage<class_ScriptLanguage>` 實例，供 ``ScriptServer`` 使用。

回傳：

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` 表示成功；

- :ref:`@GlobalScope.ERR_UNAVAILABLE<class_@GlobalScope_constant_ERR_UNAVAILABLE>` 表示 ``ScriptServer`` 已達到限制，無法注冊任何新語言；

- :ref:`@GlobalScope.ERR_ALREADY_EXISTS<class_@GlobalScope_constant_ERR_ALREADY_EXISTS>` 表示 ``ScriptServer`` 已經包含一個具有相似副檔名/名稱/型別的語言。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_register_singleton:

.. rst-class:: classref-method

|void| **register_singleton**\ (\ name\: :ref:`StringName<class_StringName>`, instance\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_Engine_method_register_singleton>`

將給定的 :ref:`Object<class_Object>` ``instance`` 注冊為單例，在名稱 ``name`` 下全域可用。對於外掛很有用。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_script_language:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **unregister_script_language**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`\ ) :ref:`🔗<class_Engine_method_unregister_script_language>`

從 ``ScriptServer`` 注銷該 :ref:`ScriptLanguage<class_ScriptLanguage>` 實例。

回傳：

- :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` 表示成功；

- :ref:`@GlobalScope.ERR_DOES_NOT_EXIST<class_@GlobalScope_constant_ERR_DOES_NOT_EXIST>` 表示該語言尚未在 ``ScriptServer`` 中注冊。

.. rst-class:: classref-item-separator

----

.. _class_Engine_method_unregister_singleton:

.. rst-class:: classref-method

|void| **unregister_singleton**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Engine_method_unregister_singleton>`

移除在 ``name`` 下注冊的單例。該單例物件\ *不會*\ 被釋放。僅適用於使用 :ref:`register_singleton()<class_Engine_method_register_singleton>` 注冊的使用者定義的單例。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
