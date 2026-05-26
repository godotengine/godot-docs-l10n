:github_url: hide

.. _class_JavaScriptBridge:

JavaScriptBridge
================

**繼承：** :ref:`Object<class_Object>`

單例，在 Web 匯出中將引擎與流覽器的 JavaScript 本文連接。

.. rst-class:: classref-introduction-group

說明
----

The JavaScriptBridge singleton is implemented only in the Web export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.

\ **Note:** This singleton can be disabled at build-time to improve security. By default, the JavaScriptBridge singleton is enabled. Official export templates also have the JavaScriptBridge singleton enabled. See :doc:`Compiling for the Web <../engine_details/development/compiling/compiling_for_web>` in the documentation for more information.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`The JavaScriptBridge singleton <../tutorials/platform/web/javascript_bridge>`

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

Creates a reference to a :ref:`Callable<class_Callable>` that can be used as a callback by JavaScript. The reference must be kept until the callback happens, or it won't be called at all. See :ref:`JavaScriptObject<class_JavaScriptObject>` for usage.

\ **Note:** The callback function must take exactly one :ref:`Array<class_Array>` argument, which is going to be the JavaScript `arguments object <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments>`__ converted to an array.

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

\ **注意：**\ 如果 :ref:`download_buffer()<class_JavaScriptBridge_method_download_buffer>` 不是從使用者互動（例如按鈕點擊）中調用的，流覽器可能會阻止下載。

\ **注意：**\ 如果快速連續發出多個下載請求，流覽器可能會要求使用者同意或阻止下載。

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_eval:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **eval**\ (\ code\: :ref:`String<class_String>`, use_global_execution_context\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JavaScriptBridge_method_eval>`

Execute the string ``code`` as JavaScript code within the browser window. This is a call to the actual global JavaScript function ``eval()``.

If ``use_global_execution_context`` is ``true``, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.

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

Returns ``true`` if the given ``javascript_object`` is of type `ArrayBuffer <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer>`__, `DataView <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView>`__, or one of the many `typed array objects <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray>`__.

.. rst-class:: classref-item-separator

----

.. _class_JavaScriptBridge_method_js_buffer_to_packed_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **js_buffer_to_packed_byte_array**\ (\ javascript_buffer\: :ref:`JavaScriptObject<class_JavaScriptObject>`\ ) :ref:`🔗<class_JavaScriptBridge_method_js_buffer_to_packed_byte_array>`

Returns a copy of ``javascript_buffer``'s contents as a :ref:`PackedByteArray<class_PackedByteArray>`. See also :ref:`is_js_buffer()<class_JavaScriptBridge_method_is_js_buffer>`.

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

\ **注意：**\ 你的套用程式將\ **在所有流覽器標籤頁中重新載入**\ 。

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
