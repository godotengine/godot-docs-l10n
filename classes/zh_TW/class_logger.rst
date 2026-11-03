:github_url: hide

.. _class_Logger:

Logger
======

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

自訂記錄記錄器，能夠從內部錯誤/警告流接收訊息。

.. rst-class:: classref-introduction-group

說明
----

自訂記錄記錄器，能夠從內部錯誤/警告流接收訊息。記錄記錄器通過 :ref:`OS.add_logger()<class_OS_method_add_logger>` 注冊。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`記錄 <../tutorials/scripting/logging>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_log_error<class_Logger_private_method__log_error>`\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_log_message<class_Logger_private_method__log_message>`\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                                                                                                                                                         |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Logger_ErrorType:

.. rst-class:: classref-enumeration

enum **ErrorType**: :ref:`🔗<enum_Logger_ErrorType>`

.. _class_Logger_constant_ERROR_TYPE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_ERROR** = ``0``

接收到的訊息是錯誤。

.. _class_Logger_constant_ERROR_TYPE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_WARNING** = ``1``

接收到的訊息是警告。

.. _class_Logger_constant_ERROR_TYPE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SCRIPT** = ``2``

接收到的訊息是腳本錯誤。

.. _class_Logger_constant_ERROR_TYPE_SHADER:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SHADER** = ``3``

接收到的訊息是著色器錯誤。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Logger_private_method__log_error:

.. rst-class:: classref-method

|void| **_log_error**\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_error>`

當有錯誤被記錄時會呼叫此方法。該錯誤會提供其來源的 ``function``\ （函式名）、\ ``file``\ （檔名）和 ``line``\ （行號），以及生成該錯誤的 ``code``\ （錯誤程式碼）或一段 ``rationale``\ （原因說明）。

\ ``error_type`` 所提供的錯誤型別在 :ref:`ErrorType<enum_Logger_ErrorType>` 列舉中有具體描述。

此外，\ ``script_backtraces`` 會為每種腳本語言提供對應的回溯資訊。預設情況下，這些資訊僅在編輯器建置（editor builds）和除錯建置（debug builds）中包含堆疊影格。如果你希望在發佈建置（release builds）中也啟用它們，需要開啟 :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`\ 。

\ **警告：** 此方法可能會被主執行緒以外的其他執行緒呼叫，甚至可能同時被呼叫。因此，在實作該方法時，你需要採取某種執行緒安全措施，比如使用 :ref:`Mutex<class_Mutex>`\ （互斥鎖）。

\ **注意：** ``script_backtraces`` 不會包含任何被捕獲的變數，因為這樣做的效能開銷極高。如果你需要取得這些變數，需要在 **Logger** 的虛方法內部，使用 :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>` 自行捕獲回溯資訊。

\ **注意：** 不支援在此方法內部使用類似 :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` 或 :ref:`@GlobalScope.push_warning()<class_@GlobalScope_method_push_warning>` 這樣的函式來記錄錯誤，因為這可能會導致無限遞歸。這些錯誤只會顯示在控制台輸出中。

.. rst-class:: classref-item-separator

----

.. _class_Logger_private_method__log_message:

.. rst-class:: classref-method

|void| **_log_message**\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_message>`

當記錄訊息時呼叫。如果 ``error`` 為 ``true``\ ，則該訊息應發送到 ``stderr``\ 。

\ **警告：**\ 該方法可能會從主執行緒以外的其他執行緒呼叫，甚至可能同時被多個執行緒呼叫，因此需要在實作該方法時確保執行緒安全，例如使用 :ref:`Mutex<class_Mutex>`\ 。

\ **注意：**\ 不支援在該方法中使用 :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>` 等函式記錄其他訊息，因為這可能導致無限遞歸。這些訊息只會顯示在控制台輸出中。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
