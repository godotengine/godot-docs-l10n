:github_url: hide

.. _class_EditorFileSystem:

EditorFileSystem
================

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

編輯器可以流覽的資源檔系統。

.. rst-class:: classref-introduction-group

說明
----

這個物件儲存著檔案系統裡所有的資源的資訊，型別和其他。

\ **注意：**\ 這個類不應該被直接產生實體。應該使用下列方法 :ref:`EditorInterface.get_resource_filesystem()<class_EditorInterface_method_get_resource_filesystem>` 來讀取單例。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_type<class_EditorFileSystem_method_get_file_type>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                  |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_filesystem<class_EditorFileSystem_method_get_filesystem>`\ (\ )                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_filesystem_path<class_EditorFileSystem_method_get_filesystem_path>`\ (\ path\: :ref:`String<class_String>`\ )              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`get_scanning_progress<class_EditorFileSystem_method_get_scanning_progress>`\ (\ ) |const|                                      |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_importing<class_EditorFileSystem_method_is_importing>`\ (\ ) |const|                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_scanning<class_EditorFileSystem_method_is_scanning>`\ (\ ) |const|                                                          |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`reimport_files<class_EditorFileSystem_method_reimport_files>`\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`scan<class_EditorFileSystem_method_scan>`\ (\ )                                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`scan_sources<class_EditorFileSystem_method_scan_sources>`\ (\ )                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`update_file<class_EditorFileSystem_method_update_file>`\ (\ path\: :ref:`String<class_String>`\ )                              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_EditorFileSystem_signal_filesystem_changed:

.. rst-class:: classref-signal

**filesystem_changed**\ (\ ) :ref:`🔗<class_EditorFileSystem_signal_filesystem_changed>`

在檔案系統更改的時候觸發。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reimported:

.. rst-class:: classref-signal

**resources_reimported**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reimported>`

重新匯入資源時觸發。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reimporting:

.. rst-class:: classref-signal

**resources_reimporting**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reimporting>`

Emitted before a resource is reimported.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reload:

.. rst-class:: classref-signal

**resources_reload**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reload>`

如果在掃描檔案系統的時候，至少有一個資源被重新載入，則觸發該訊號。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_script_classes_updated:

.. rst-class:: classref-signal

**script_classes_updated**\ (\ ) :ref:`🔗<class_EditorFileSystem_signal_script_classes_updated>`

更新全域腳本類列表時觸發。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_sources_changed:

.. rst-class:: classref-signal

**sources_changed**\ (\ exist\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFileSystem_signal_sources_changed>`

如果匯入檔的來源發生變化，則觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorFileSystem_method_get_file_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_type**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystem_method_get_file_type>`

返回呼函式的資源型別，給定完整路徑。這將返回字串，如 ``"Resource"`` 或 ``"GDScript"``\ ，\ *不是*\ 檔副檔名，如 ``".gd"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_filesystem:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_filesystem**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_get_filesystem>`

獲取根目錄物件。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_filesystem_path:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_filesystem_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileSystem_method_get_filesystem_path>`

返回在 ``path`` 下檔案系統的視圖。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_scanning_progress:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_scanning_progress**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_get_scanning_progress>`

如果檔案系統正在被掃描，返回掃描的進度，值為 0-1。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_is_importing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_importing**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_is_importing>`

Returns ``true`` if resources are currently being imported.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_is_scanning:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scanning**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_is_scanning>`

如果檔案系統正在進行掃描，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_reimport_files:

.. rst-class:: classref-method

|void| **reimport_files**\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_method_reimport_files>`

重新匯入一組檔。如果這些檔或其 ``.import`` 檔案是由腳本或外部程序直接編輯的，請呼叫此函式。

如果檔案型別已更改或檔是新建立的，請使用 :ref:`update_file()<class_EditorFileSystem_method_update_file>` 或 :ref:`scan()<class_EditorFileSystem_method_scan>`\ 。

\ **注意：**\ 此函式會阻塞，直到匯入完成。但由於進度條更新，主迴圈反覆運算，包括計時器和 :ref:`Node._process()<class_Node_private_method__process>`\ ，將在匯入過程中發生。避免在匯入正在進行時呼叫 :ref:`reimport_files()<class_EditorFileSystem_method_reimport_files>` 或 :ref:`scan()<class_EditorFileSystem_method_scan>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_scan:

.. rst-class:: classref-method

|void| **scan**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_scan>`

掃描檔案系統的改動。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_scan_sources:

.. rst-class:: classref-method

|void| **scan_sources**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_scan_sources>`

檢查是否更改了已匯入資源的來源。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_update_file:

.. rst-class:: classref-method

|void| **update_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileSystem_method_update_file>`

在現有目錄中新增檔，或計畫在編輯器重新開機時更新檔資訊。可用於更新由外部程式保存的文字檔。

這不會匯入檔。要重新匯入，請呼叫 :ref:`reimport_files()<class_EditorFileSystem_method_reimport_files>` 或 :ref:`scan()<class_EditorFileSystem_method_scan>` 方法。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
