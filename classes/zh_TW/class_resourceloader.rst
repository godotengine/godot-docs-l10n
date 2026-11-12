:github_url: hide

.. _class_ResourceLoader:

ResourceLoader
==============

**繼承：** :ref:`Object<class_Object>`

用於載入資源檔的單例。

.. rst-class:: classref-introduction-group

說明
----

用於從檔案系統載入資源檔案的單例。

會使用引擎中（內建或外掛）注冊的許多 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 類將檔案載入到記憶體中並將其轉換為引擎可以使用的格式。

\ **注意：**\ 你需要先將檔案匯入引擎，才能使用 :ref:`load()<class_ResourceLoader_method_load>` 進行載入。如果你想在執行時載入 :ref:`Image<class_Image>`\ ，可以使用 :ref:`Image.load()<class_Image_method_load>`\ 。如果你想匯入音訊檔案，可以使用 :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>` 中描述的程式碼段。

\ **注意：**\ 純文字檔案等非資源檔案無法使用 **ResourceLoader** 讀取。請改用 :ref:`FileAccess<class_FileAccess>` 來處理這些檔案，注意預設情況下不會匯出非資源檔案（匯出說明見 :ref:`FileAccess<class_FileAccess>` 類描述）。

.. rst-class:: classref-introduction-group

教學
----

- `多執行緒載入演示 <https://godotengine.org/asset-library/asset/2778>`__

- `作業系統測試演示 <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_resource_format_loader<class_ResourceLoader_method_add_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ )                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`exists<class_ResourceLoader_method_exists>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ )                                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`get_cached_ref<class_ResourceLoader_method_get_cached_ref>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_dependencies<class_ResourceLoader_method_get_dependencies>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_recognized_extensions_for_type<class_ResourceLoader_method_get_recognized_extensions_for_type>`\ (\ type\: :ref:`String<class_String>`\ )                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`get_resource_type<class_ResourceLoader_method_get_resource_type>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_resource_uid<class_ResourceLoader_method_get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`has_cached<class_ResourceLoader_method_has_cached>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`list_directory<class_ResourceLoader_method_list_directory>`\ (\ directory_path\: :ref:`String<class_String>`\ )                                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load<class_ResourceLoader_method_load>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ )                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load_threaded_get<class_ResourceLoader_method_load_threaded_get>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` | :ref:`load_threaded_get_status<class_ResourceLoader_method_load_threaded_get_status>`\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ )                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`load_threaded_request<class_ResourceLoader_method_load_threaded_request>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`remove_resource_format_loader<class_ResourceLoader_method_remove_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ )                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_abort_on_missing_resources<class_ResourceLoader_method_set_abort_on_missing_resources>`\ (\ abort\: :ref:`bool<class_bool>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ResourceLoader_ThreadLoadStatus:

.. rst-class:: classref-enumeration

enum **ThreadLoadStatus**: :ref:`🔗<enum_ResourceLoader_ThreadLoadStatus>`

.. _class_ResourceLoader_constant_THREAD_LOAD_INVALID_RESOURCE:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_INVALID_RESOURCE** = ``0``

該資源無效，或尚未使用 :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` 載入。

.. _class_ResourceLoader_constant_THREAD_LOAD_IN_PROGRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_IN_PROGRESS** = ``1``

該資源仍在載入中。

.. _class_ResourceLoader_constant_THREAD_LOAD_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_FAILED** = ``2``

載入過程中發生了錯誤，導致失敗。

.. _class_ResourceLoader_constant_THREAD_LOAD_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_LOADED** = ``3``

資源成功載入，可以通過 :ref:`load_threaded_get()<class_ResourceLoader_method_load_threaded_get>` 存取。

.. rst-class:: classref-item-separator

----

.. _enum_ResourceLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceLoader_CacheMode>`

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

主資源（請求載入的資源）及所有子資源都既不會從快取中檢索也不會儲存到快取中。相依項目（外部資源）使用 :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>` 載入。

.. _class_ResourceLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

主資源（請求載入的資源）、子資源、相依項目（外部資源）如果在快取中存在，則將從快取中檢索，不進行載入。如果未快取則將進行載入，然後儲存到快取中。相同的規則將沿著相依性關係樹（外部資源）遞歸傳播。

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

與 :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>` 類似，但會檢查主資源（請求載入的資源）及每個子資源的快取。如果在快取中存在，只要載入的型別和快取的型別匹配，就會使用儲存的資料刷新已經存在的實例。否則會重新作為全新的物件建立。

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

與 :ref:`CACHE_MODE_IGNORE<class_ResourceLoader_constant_CACHE_MODE_IGNORE>` 類似，但沿相依性關係樹（外部資源）遞歸傳播。

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

與 :ref:`CACHE_MODE_REPLACE<class_ResourceLoader_constant_CACHE_MODE_REPLACE>` 類似，但沿相依性關係樹（外部資源）遞歸傳播。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ResourceLoader_method_add_resource_format_loader:

.. rst-class:: classref-method

|void| **add_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceLoader_method_add_resource_format_loader>`

註冊一個新的 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ 。ResourceLoader 將會按照 :ref:`load()<class_ResourceLoader_method_load>` 中的描述使用 ResourceFormatLoader。

對於用 GDScript 編寫的 ResourceFormatLoader，此方法將隱式執行（詳見 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **exists**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_ResourceLoader_method_exists>`

回傳給定路徑 ``path`` 是否存在已識別的資源。

可選的 ``type_hint`` 可用於進一步指定 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 應處理的 :ref:`Resource<class_Resource>` 型別。任何繼承自 :ref:`Resource<class_Resource>` 的內容都可以用作型別提示，例如 :ref:`Image<class_Image>`\ 。

\ **注意：**\ 如果使用了 :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`\ ，則這個方法會為接管的路徑回傳 ``true``\ ，即便對應的資源尚未儲存（即僅存在於資源快取中）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_cached_ref:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_cached_ref**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_cached_ref>`

返迴路徑 ``path`` 對應的資源參照快取。

\ **注意：**\ 如果資源尚未快取，則會回傳無效 :ref:`Resource<class_Resource>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_dependencies>`

返迴路徑為 ``path`` 的資源的相依項目。

每個相依項目都是一個字串，可以用 ``::`` 分割為若干部分。分割後只會有一個部分或三個部分，其中第二個部分始終為空。如果只有一個部分，則包含的是檔案路徑。如果有三個部分，則第一個部分包含的是 UID、第三個部分包含的是回退路徑。

::

    for dependency in ResourceLoader.get_dependencies(path):
        if dependency.contains("::"):
            print(dependency.get_slice("::", 0)) # 輸出 UID。
            print(dependency.get_slice("::", 2)) # 輸出回退路徑。
        else:
            print(dependency) # 輸出路徑。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_recognized_extensions_for_type:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions_for_type**\ (\ type\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_recognized_extensions_for_type>`

返回資源型別的已識別副檔名列表。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_resource_type**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_type>`

Returns the resource type associated with a given resource path.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_uid>`

返回與一個給定資源路徑關聯的 ID，如果不存在此類 ID，則返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_has_cached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cached**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_has_cached>`

返回給定 ``path`` 的快取資源是否可用。

一旦引擎載入了資源，它將被快取在記憶體中以加快存取速度，未來呼叫 :ref:`load()<class_ResourceLoader_method_load>` 方法將使用快取版本。可以通過在具有相同路徑的新資源上使用 :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>` 來覆蓋快取資源。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_list_directory:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_directory**\ (\ directory_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_list_directory>`

列出目錄，回傳其中包含的所有資源和子目錄。資源檔案使用原始檔名，與匯出前編輯器中看到的一致。目錄末尾有 ``"/"``\ 。

::

    # 輸出 ["extra_data/", "model.gltf", "model.tscn", "model_slime.png"]
    print(ResourceLoader.list_directory("res://assets/enemies/slime"))

\ **注意：**\ 該方法回傳的檔案和目錄的順序並不固定，不同作業系統回傳的順序可能不同。

\ **注意：**\ 正常遍歷檔案系統請使用 :ref:`DirAccess<class_DirAccess>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load>`

在給定的 ``path`` 中載入資源，並將結果快取以供進一步存取。

按順序查詢注冊的 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ，以找到可以處理檔案副檔名的第一個 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ，然後嘗試載入。如果載入失敗，則還會嘗試其餘的 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ 。

可選的 ``type_hint`` 可用於進一步指定 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 應處理的 :ref:`Resource<class_Resource>` 型別。任何繼承自 :ref:`Resource<class_Resource>` 的東西都可以用作型別提示，例如 :ref:`Image<class_Image>`\ 。

\ ``cache_mode`` 屬性定義在載入資源時是否以及如何使用或更新快取。

如果沒有 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` 可以處理該檔案則回傳空資源，如果指定路徑的檔案未找到則會輸出錯誤。

GDScript 具有一個簡化的 :ref:`@GDScript.load()<class_@GDScript_method_load>` 內建方法，可在大多數情況下使用，而 **ResourceLoader** 供更進階的情況使用。

\ **注意：**\ 如果 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 為 ``true``\ ，則 :ref:`@GDScript.load()<class_@GDScript_method_load>` 無法在匯出後的專案中讀取已轉換的檔案。如果你需要在執行時載入存在於 PCK 中的檔案，請將 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 設定為 ``false``\ 。

\ **注意：**\ 載入相對路徑前會加上 ``"res://"`` 前綴，請確保使用絕對路徑，以免造成預料之外的結果。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load_threaded_get**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get>`

回傳由 :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` 載入的資源。

如果在載入執行緒完成之前呼叫此方法（即 :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` 不是 :ref:`THREAD_LOAD_LOADED<class_ResourceLoader_constant_THREAD_LOAD_LOADED>`\ ），則呼叫執行緒將被阻塞，直到資源載入完成。不過，建議使用 :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` 來瞭解載入何時已經實際完成。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get_status:

.. rst-class:: classref-method

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **load_threaded_get_status**\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get_status>`

回傳使用 :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` 在 ``path`` 處啟動的執行緒載入操作的狀態。

還可以通過 ``progress`` 傳遞陣列變數，會回傳一個包含執行緒載入完成比例的單元素的陣列（在 ``0.0`` 和 ``1.0`` 之間）。

\ **注意：**\ 該方法的推薦使用方式是在不同的影格期間呼叫（例如在 :ref:`Node._process()<class_Node_private_method__process>` 中，而不是循環中）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_threaded_request**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_request>`

使用執行緒載入資源。如果 ``use_sub_threads`` 為 ``true``\ ，將使用多個執行緒來載入資源，這會使載入更快，但可能會影響主執行緒（從而導致遊戲降速）。

\ ``cache_mode`` 屬性定義在載入資源時是否以及如何使用或更新快取。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_remove_resource_format_loader:

.. rst-class:: classref-method

|void| **remove_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ) :ref:`🔗<class_ResourceLoader_method_remove_resource_format_loader>`

取消註冊給定的 :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_set_abort_on_missing_resources:

.. rst-class:: classref-method

|void| **set_abort_on_missing_resources**\ (\ abort\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ResourceLoader_method_set_abort_on_missing_resources>`

更改缺少子資源時的行為。預設行為是中止載入。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
