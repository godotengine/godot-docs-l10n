:github_url: hide

.. _class_JavaScriptBridge:

JavaScriptBridge
================

**繼承：** :ref:`Object<class_Object>`

單例，在 Web 匯出中將引擎與流覽器的 JavaScript 本文連接。

.. rst-class:: classref-introduction-group

說明
----

JavaScriptBridge 單例僅在 Web 匯出中實作。它用於存取瀏覽器的 JavaScript 情境。這允許與嵌入頁面或呼叫第三方 JavaScript API 進行互動。

\ **注意：**\ 可以在建置時停用該單例以提高安全性。預設情況下，啟用 JavaScriptBridge 單例。官方匯出範本也啟用了 JavaScriptBridge 單例。有關詳細資訊，請參閱文件中的\ :doc:`《為 Web 平台編譯》 <../engine_details/development/compiling/compiling_for_web>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`JavaScriptBridge 單例 <../tutorials/platform/web/javascript_bridge>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`create_callback<class_JavaScriptBridge_method_create_callback>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`create_object<class_JavaScriptBridge_method_create_object>`\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg|                                                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`download_buffer<class_JavaScriptBridge_method_download_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                   | :ref:`eval<class_JavaScriptBridge_method_eval>`\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ )                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`force_fs_sync<class_JavaScriptBridge_method_force_fs_sync>`\ (\ )                                                                                                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaScriptObject<class_JavaScriptObject>` | :ref:`get_interface<class_JavaScriptBridge_method_get_interface>`\ (\ interface\: :ref:`String<class_String>`\ )                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_js_buffer<class_JavaScriptBridge_method_is_js_buffer>`\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`js_buffer_to_packed_byte_array<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ )                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`pwa_needs_update<class_JavaScriptBridge_method_pwa_needs_update>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`pwa_update<class_JavaScriptBridge_method_pwa_update>`\ (\ )                                                                                                                                                                        |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_JavaScriptBridge_signal_pwa_update_available:

.. rst-class:: classref-signal

**pwa_update_available**\ (\ ) :ref:`🔗<class_JavaScriptBridge_signal_pwa_update_available>`

在偵測到該漸進式網路套用程式的更新，但因為存在活動的較早版本而等待啟動時觸發。要強制立即執行更新，請參閱 :ref:`pwa_update()<class_JavaScriptBridge_method_pwa_update>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_JavaScriptBridge_method_create_callback:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **create_callback**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_JavaScriptBridge_method_create_callback>`

建立一個對 :ref:`Callable<class_Callable>` 的參照，JavaScript 可以用它作為回呼。回呼前必須保持參照，否則無法呼叫。用法見 :ref:`JavaScriptObject<class_JavaScriptObject>`\ 。

\ **注意：**\ 回呼函式必須只能接受單一 :ref:`Array<class_Array>` 參數，是轉換成陣列後的 JavaScript `參數物件 <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_create_object:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **create_object**\ (\ object\: :ref:`String<class_String>`, ...\ ) |vararg| :ref:`🔗<class_JavaScriptBridge_method_create_object>`

使用 ``new`` 建構子建立一個新的 JavaScript 物件。\ ``object`` 必須是 JavaScript ``window`` 的有效屬性。有關用法，請參閱 :ref:`JavaScriptObject<class_JavaScriptObject>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_download_buffer:

.. rst-class:: classref-method

|void| **download_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`, name\: :ref:`String<class_String>`, mime\: :ref:`String<class_String>` = "application/octet-stream"\ ) :ref:`🔗<class_JavaScriptBridge_method_download_buffer>`

提示使用者下載一個包含指定 ``buffer`` 的檔。該檔將具有給定的 ``name`` 和 ``mime`` 型別。

\ **注意：**\ 流覽器可能會覆蓋根據檔 ``name`` 的副檔名提供的 `MIME 型別 <https://en.wikipedia.org/wiki/Media_type>`__\ 。

\ **注意：**\ 如果 :ref:`download_buffer()<class_JavaScriptBridge_method_download_buffer>` 不是從使用者互動（例如按鈕點選）中調用的，流覽器可能會阻止下載。

\ **注意：**\ 如果快速連續發出多個下載請求，流覽器可能會要求使用者同意或阻止下載。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_eval:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **eval**\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JavaScriptBridge_method_eval>`

在瀏覽器視窗中將字串 ``code`` 作為 JavaScript 程式碼執行。這是對實際的全域 JavaScript 函式 ``eval()`` 的呼叫。

如果 ``use_global_execution_context`` 為 ``true``\ ，則程式碼將在全域執行情境中被求值。否則，它將在引擎執行時環境中的函式的執行情境中進行求值。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_force_fs_sync:

.. rst-class:: classref-method

|void| **force_fs_sync**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_force_fs_sync>`

強制同步持久化檔案系統（當啟用時）。

\ **注意：**\ 這僅對不能使用 :ref:`FileAccess<class_FileAccess>` 寫入檔的模組或擴充有用。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_get_interface:

.. rst-class:: classref-method

:ref:`JavaScriptObject<class_JavaScriptObject>` **get_interface**\ (\ interface\: :ref:`String<class_String>`\ ) :ref:`🔗<class_JavaScriptBridge_method_get_interface>`

返回一個可以被腳本使用的 JavaScript 物件的介面。\ ``interface`` 必須是 JavaScript ``window`` 的有效屬性。回呼函式必須接受單個 :ref:`Array<class_Array>` 參數，它將包含 JavaScript ``arguments``\ 。有關用法，請參閱 :ref:`JavaScriptObject<class_JavaScriptObject>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_is_js_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_js_buffer**\ (\ javascript_object\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_is_js_buffer>`

如果給定的 ``javascript_object`` 是 `ArrayBuffer <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer>`__\ 、\ `DataView <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView>`__ 或任意一種 `typed array objects <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray>`__\ ，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_js_buffer_to_packed_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **js_buffer_to_packed_byte_array**\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`

以 :ref:`PackedByteArray<class_PackedByteArray>` 的形式回傳 ``javascript_buffer`` 中內容的副本。另見 :ref:`is_js_buffer()<class_JavaScriptBridge_method_is_js_buffer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_needs_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **pwa_needs_update**\ (\ ) |const| :ref:`🔗<class_JavaScriptBridge_method_pwa_needs_update>`

如果該漸進式網路套用程式有新版本等待啟動，則返回 ``true``\ 。

\ **注意：**\ 只在匯出為漸進式網路套用程式（Progressive Web App）時相關。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_pwa_update:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pwa_update**\ (\ ) :ref:`🔗<class_JavaScriptBridge_method_pwa_update>`

執行該漸進式網路套用程式的線上更新。強制安裝新版本並重新載入該頁面。

\ **注意：**\ 你的套用程式將\ **在所有流覽器分頁中重新載入**\ 。

\ **注意：**\ 只在匯出為漸進式網路套用程式（Progressive Web App）且 :ref:`pwa_needs_update()<class_JavaScriptBridge_method_pwa_needs_update>` 返回 ``true`` 時相關。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
