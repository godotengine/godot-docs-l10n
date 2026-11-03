:github_url: hide

.. _class_EngineDebugger:

EngineDebugger
==============

**繼承：** :ref:`Object<class_Object>`

暴露內部除錯器。

.. rst-class:: classref-introduction-group

說明
----

**EngineDebugger** 處理編輯器與正在運作的遊戲之間的通信。它會在運作遊戲時啟動，可以通過它收發訊息，還負責管理效能分析器。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_breakpoints<class_EngineDebugger_method_clear_breakpoints>`\ (\ )                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`debug<class_EngineDebugger_method_debug>`\ (\ can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ )                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_depth<class_EngineDebugger_method_get_depth>`\ (\ ) |const|                                                                                                                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_lines_left<class_EngineDebugger_method_get_lines_left>`\ (\ ) |const|                                                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_capture<class_EngineDebugger_method_has_capture>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_profiler<class_EngineDebugger_method_has_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`insert_breakpoint<class_EngineDebugger_method_insert_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ )                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_active<class_EngineDebugger_method_is_active>`\ (\ )                                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_breakpoint<class_EngineDebugger_method_is_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) |const|                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_profiling<class_EngineDebugger_method_is_profiling>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_skipping_breakpoints<class_EngineDebugger_method_is_skipping_breakpoints>`\ (\ ) |const|                                                                                                                                 |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`line_poll<class_EngineDebugger_method_line_poll>`\ (\ )                                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`profiler_add_frame_data<class_EngineDebugger_method_profiler_add_frame_data>`\ (\ name\: :ref:`StringName<class_StringName>`, data\: :ref:`Array<class_Array>`\ )                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`profiler_enable<class_EngineDebugger_method_profiler_enable>`\ (\ name\: :ref:`StringName<class_StringName>`, enable\: :ref:`bool<class_bool>`, arguments\: :ref:`Array<class_Array>` = []\ )                               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`register_message_capture<class_EngineDebugger_method_register_message_capture>`\ (\ name\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ )                                               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`register_profiler<class_EngineDebugger_method_register_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`, profiler\: :ref:`EngineProfiler<class_EngineProfiler>`\ )                                                 |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`remove_breakpoint<class_EngineDebugger_method_remove_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ )                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`script_debug<class_EngineDebugger_method_script_debug>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`, can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`send_message<class_EngineDebugger_method_send_message>`\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`\ )                                                                                      |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_depth<class_EngineDebugger_method_set_depth>`\ (\ depth\: :ref:`int<class_int>`\ )                                                                                                                                      |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_lines_left<class_EngineDebugger_method_set_lines_left>`\ (\ lines\: :ref:`int<class_int>`\ )                                                                                                                            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`unregister_message_capture<class_EngineDebugger_method_unregister_message_capture>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`unregister_profiler<class_EngineDebugger_method_unregister_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EngineDebugger_method_clear_breakpoints:

.. rst-class:: classref-method

|void| **clear_breakpoints**\ (\ ) :ref:`🔗<class_EngineDebugger_method_clear_breakpoints>`

清除所有斷點。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_debug:

.. rst-class:: classref-method

|void| **debug**\ (\ can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EngineDebugger_method_debug>`

在執行腳本時觸發除錯中斷，可以使用 ``can_continue`` 指定程式是否能夠繼續執行，還可以指定該中斷是否是由斷點導致的。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_depth**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_get_depth>`

**實驗性：** 此方法可能在未來版本中變更或移除。

回傳目前除錯深度。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_get_lines_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_lines_left**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_get_lines_left>`

**實驗性：** 此方法可能在未來版本中變更或移除。

回傳剩餘的行數。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_has_capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_capture**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_has_capture>`

如果存在具有給定名稱的捕獲，則返回 ``true``\ ，否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_has_profiler:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_profiler**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_has_profiler>`

如果存在具有給定名稱的分析器，則返回 ``true``\ ，否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_insert_breakpoint:

.. rst-class:: classref-method

|void| **insert_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_insert_breakpoint>`

使用給定的 ``source`` 和 ``line`` 插入一個新斷點。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) :ref:`🔗<class_EngineDebugger_method_is_active>`

如果除錯器處於活動狀態，則返回 ``true``\ ，否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_breakpoint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EngineDebugger_method_is_breakpoint>`

如果給定的 ``source`` 和 ``line`` 代表一個已存在的斷點，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_profiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_profiling**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_is_profiling>`

如果存在具有給定名稱的分析器，並且該分析器處於活動狀態，則返回 ``true``\ ，否則返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_skipping_breakpoints:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_skipping_breakpoints**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_is_skipping_breakpoints>`

如果除錯器跳過斷點，則回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_line_poll:

.. rst-class:: classref-method

|void| **line_poll**\ (\ ) :ref:`🔗<class_EngineDebugger_method_line_poll>`

強制除錯器事件的一個處理循環。該方法的目的是當腳本可能過於繁忙時不時地處理事件，以便可以捕獲無限循環之類的錯誤。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_profiler_add_frame_data:

.. rst-class:: classref-method

|void| **profiler_add_frame_data**\ (\ name\: :ref:`StringName<class_StringName>`, data\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EngineDebugger_method_profiler_add_frame_data>`

使用給定的 ``name`` 和 ``data`` 呼叫分析器中的 ``add`` 可調用體。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_profiler_enable:

.. rst-class:: classref-method

|void| **profiler_enable**\ (\ name\: :ref:`StringName<class_StringName>`, enable\: :ref:`bool<class_bool>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EngineDebugger_method_profiler_enable>`

使用給定的 ``name`` 和 ``arguments`` 呼叫分析器中的 ``toggle`` 可呼叫體。會根據 ``enable`` 參數啟用/停用同一分析器。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_register_message_capture:

.. rst-class:: classref-method

|void| **register_message_capture**\ (\ name\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EngineDebugger_method_register_message_capture>`

使用名稱 ``name`` 注冊訊息捕獲。如果 ``name`` 為“my_message”則會為“my_message:”開頭的訊息呼叫給定的可呼叫體。

可呼叫體必須接受訊息字串和資料陣列參數。如果能夠識別該訊息，則可呼叫體應回傳 ``true``\ 。

\ **注意：**\ 可呼叫體收到的訊息已剝離前綴，這一點與 :ref:`EditorDebuggerPlugin._capture()<class_EditorDebuggerPlugin_private_method__capture>` 不同。範例見 :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>` 的描述。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_register_profiler:

.. rst-class:: classref-method

|void| **register_profiler**\ (\ name\: :ref:`StringName<class_StringName>`, profiler\: :ref:`EngineProfiler<class_EngineProfiler>`\ ) :ref:`🔗<class_EngineDebugger_method_register_profiler>`

使用給定的名稱 ``name`` 註冊分析器。詳情見 :ref:`EngineProfiler<class_EngineProfiler>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_remove_breakpoint:

.. rst-class:: classref-method

|void| **remove_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_remove_breakpoint>`

使用給定的 ``source`` 和 ``line`` 移除一個斷點。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_script_debug:

.. rst-class:: classref-method

|void| **script_debug**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`, can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EngineDebugger_method_script_debug>`

在執行腳本時觸發除錯中斷，可以使用 ``can_continue`` 指定程式是否能夠繼續執行，還可以指定該中斷是否是由斷點導致的。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_send_message:

.. rst-class:: classref-method

|void| **send_message**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EngineDebugger_method_send_message>`

發送訊息，內容為給定的 ``message`` 和 ``data`` 陣列。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_set_depth:

.. rst-class:: classref-method

|void| **set_depth**\ (\ depth\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EngineDebugger_method_set_depth>`

**實驗性：** 此方法可能在未來版本中變更或移除。

設定目前除錯深度。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_set_lines_left:

.. rst-class:: classref-method

|void| **set_lines_left**\ (\ lines\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EngineDebugger_method_set_lines_left>`

**實驗性：** 此方法可能在未來版本中變更或移除。

設定目前剩餘的除錯行。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_unregister_message_capture:

.. rst-class:: classref-method

|void| **unregister_message_capture**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_unregister_message_capture>`

將具有給定名稱 ``name`` 的訊息捕獲解除註冊。

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_unregister_profiler:

.. rst-class:: classref-method

|void| **unregister_profiler**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_unregister_profiler>`

將具有給定名稱 ``name`` 的分析器解除註冊。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
