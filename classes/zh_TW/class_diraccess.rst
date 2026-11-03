:github_url: hide

.. meta::
	:keywords: directory, path, folder

.. _class_DirAccess:

DirAccess
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供管理目錄及其內容的方法。

.. rst-class:: classref-introduction-group

說明
----

這個類可用於管理目錄及其內容，不限於專案資料夾。

\ **DirAccess** 無法直接實例化，需要通過靜態方法建立，方法接受待打開的路徑。

大多數方法都有對應的靜態版本，無需建立 **DirAccess** 即可使用。靜態方法僅支援絕對路徑（包含 ``res://`` 和 ``user://``\ ）。

::

    # 標準
    var dir = DirAccess.open("user://levels")
    dir.make_dir("world1")
    # 靜態
    DirAccess.make_dir_absolute("user://levels/world1")

\ **注意：**\ 匯出後，存取專案目錄（"res://"）可能导致意外行为，因为此时部分文件已被转换为引擎所使用的格式，对应的原始文件可能不存在于 PCK 包中。因此，在匯出後的專案中存取資源建議使用 :ref:`ResourceLoader<class_ResourceLoader>`\ ，不要使用 :ref:`FileAccess<class_FileAccess>`\ 。

以下是遍歷目錄中檔案的範例：


.. tabs::

 .. code-tab:: gdscript

    func dir_contents(path):
        var dir = DirAccess.open(path)
        if dir:
            dir.list_dir_begin()
            var file_name = dir.get_next()
            while file_name != "":
                if dir.current_is_dir():
                    print("發現目錄：" + file_name)
                else:
                    print("發現檔案" + file_name)
                file_name = dir.get_next()
        else:
            print("嘗試存取路徑時出錯。")

 .. code-tab:: csharp

    public void DirContents(string path)
    {
        using var dir = DirAccess.Open(path);
        if (dir != null)
        {
            dir.ListDirBegin();
            string fileName = dir.GetNext();
            while (fileName != "")
            {
                if (dir.CurrentIsDir())
                {
                    GD.Print($"發現目錄：{fileName}");
                }
                else
                {
                    GD.Print($"發現檔案：{fileName}");
                }
                fileName = dir.GetNext();
            }
        }
        else
        {
            GD.Print("嘗試存取路徑時出錯。");
        }
    }



請牢記，匯出後檔名可能發生變化和重映射。如果想要看到和編輯器中一致的實際資源檔案清單，請改用 :ref:`ResourceLoader.list_directory()<class_ResourceLoader_method_list_directory>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`檔案系統 <../tutorials/scripting/filesystem>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_hidden<class_DirAccess_property_include_hidden>`             |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_navigational<class_DirAccess_property_include_navigational>` |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`change_dir<class_DirAccess_method_change_dir>`\ (\ to_dir\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy<class_DirAccess_method_copy>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ )                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy_absolute<class_DirAccess_method_copy_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`create_link<class_DirAccess_method_create_link>`\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ )                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`create_temp<class_DirAccess_method_create_temp>`\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static|                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`current_is_dir<class_DirAccess_method_current_is_dir>`\ (\ ) |const|                                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists<class_DirAccess_method_dir_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists_absolute<class_DirAccess_method_dir_exists_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_exists<class_DirAccess_method_file_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_current_dir<class_DirAccess_method_get_current_dir>`\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const|                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_current_drive<class_DirAccess_method_get_current_drive>`\ (\ )                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories<class_DirAccess_method_get_directories>`\ (\ )                                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories_at<class_DirAccess_method_get_directories_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_drive_count<class_DirAccess_method_get_drive_count>`\ (\ ) |static|                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_label<class_DirAccess_method_get_drive_label>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_name<class_DirAccess_method_get_drive_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files<class_DirAccess_method_get_files>`\ (\ )                                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files_at<class_DirAccess_method_get_files_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_filesystem_type<class_DirAccess_method_get_filesystem_type>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_next<class_DirAccess_method_get_next>`\ (\ )                                                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`get_open_error<class_DirAccess_method_get_open_error>`\ (\ ) |static|                                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_space_left<class_DirAccess_method_get_space_left>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_bundle<class_DirAccess_method_is_bundle>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_case_sensitive<class_DirAccess_method_is_case_sensitive>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_equivalent<class_DirAccess_method_is_equivalent>`\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const|                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_link<class_DirAccess_method_is_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`list_dir_begin<class_DirAccess_method_list_dir_begin>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`list_dir_end<class_DirAccess_method_list_dir_end>`\ (\ )                                                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir<class_DirAccess_method_make_dir>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_absolute<class_DirAccess_method_make_dir_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive<class_DirAccess_method_make_dir_recursive>`\ (\ path\: :ref:`String<class_String>`\ )                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive_absolute<class_DirAccess_method_make_dir_recursive_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`open<class_DirAccess_method_open>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`read_link<class_DirAccess_method_read_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove<class_DirAccess_method_remove>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove_absolute<class_DirAccess_method_remove_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename<class_DirAccess_method_rename>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ )                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename_absolute<class_DirAccess_method_rename_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static|                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_DirAccess_property_include_hidden:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_hidden** :ref:`🔗<class_DirAccess_property_include_hidden>`

.. rst-class:: classref-property-setget

- |void| **set_include_hidden**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_hidden**\ (\ )

如果為 ``true``\ ，則在導覽目錄時包含隱藏檔。

影響 :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>`\ 、\ :ref:`get_directories()<class_DirAccess_method_get_directories>`\ 、\ :ref:`get_files()<class_DirAccess_method_get_files>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_property_include_navigational:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_navigational** :ref:`🔗<class_DirAccess_property_include_navigational>`

.. rst-class:: classref-property-setget

- |void| **set_include_navigational**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_navigational**\ (\ )

如果為 ``true``\ ，則在導覽目錄時包含 ``.`` 和 ``..``\ 。

影響 :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` 和 :ref:`get_directories()<class_DirAccess_method_get_directories>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_DirAccess_method_change_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_dir**\ (\ to_dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_change_dir>`

將目前打開的目錄改為作為參數傳遞的目錄。該參數可以是相對於目前目錄的（例如 ``newdir`` 或 ``../newdir``\ ），也可以是絕對路徑（例如 ``/tmp/newdir`` 或 ``res://somedir/newdir``\ ）。

回傳 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數之一（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

\ **注意：**\ 新目錄必須在相同範圍內，例如當在 ``res://`` 中打開目錄時，無法將其更改為 ``user://`` 目錄。如果需要在另一個存取範圍中打開目錄，請使用 :ref:`open()<class_DirAccess_method_open>` 建立一個新實例。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_DirAccess_method_copy>`

將 ``from`` 檔複製到 ``to`` 目標位置。兩個參數都應該是檔的路徑，可以是相對路徑，也可以是絕對路徑。如果目的檔案存在並且沒有存取保護，則它將被覆蓋。

如果 ``chmod_flags`` 不同於 ``-1``\ ，且如果在目前作業系統上可用，目標路徑的 Unix 許可權將設定為提供的值。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數之一（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| :ref:`🔗<class_DirAccess_method_copy_absolute>`

靜態版本的 :ref:`copy()<class_DirAccess_method_copy>`\ 。僅支援絕對路徑。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_link:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_link**\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_create_link>`

建立檔案或資料夾的符號連結。

\ **注意：**\ 在 Window 上，使用提升權限執行程式或啟用“開發者模式”時該方法才能正常工作。

\ **注意：**\ 該方法僅在 macOS、Linux 和 Windows 上實作。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_temp:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **create_temp**\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_DirAccess_method_create_temp>`

建立一個暫時目錄。回傳的 **DirAccess** 被釋放時會釋放該目錄。

如果 ``prefix`` 非空，則會用作目錄名的前綴，使用 ``-`` 分隔。

如果 ``keep`` 為 ``true``\ ，則回傳的 **DirAccess** 被釋放時不會釋放該目錄。

如果打開目錄失敗，則回傳 ``null``\ 。你可以使用 :ref:`get_open_error()<class_DirAccess_method_get_open_error>` 來查看發生的錯誤。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_current_is_dir:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **current_is_dir**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_current_is_dir>`

返回上一次 :ref:`get_next()<class_DirAccess_method_get_next>` 呼叫處理的目前專案是否為目錄（\ ``.`` 和 ``.`` 屬於目錄）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_dir_exists>`

回傳目標目錄是否存在。參數可以相對於目前目錄，也可以是絕對路徑。

\ **注意：**\ 使用 ``res://`` 目錄下的路徑時，在編輯器中回傳的 :ref:`bool<class_bool>` 與匯出後的回傳值可能不同。匯出時會將部分檔案轉換為引擎特有的格式，可能導致目錄結構的改變。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_dir_exists_absolute>`

:ref:`dir_exists()<class_DirAccess_method_dir_exists>` 的靜態版本。僅支援絕對路徑。

\ **注意：**\ 使用 ``res://`` 目錄下的路徑時，在編輯器中回傳的 :ref:`bool<class_bool>` 與匯出後的回傳值可能不同。匯出時會將部分檔案轉換為引擎特有的格式，可能導致目錄結構的改變。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_file_exists>`

回傳目標檔案是否存在。參數可以相對於目前目錄，也可以是絕對路徑。

靜態版本見 :ref:`FileAccess.file_exists()<class_FileAccess_method_file_exists>`\ 。

\ **注意：**\ 許多資源型別是匯入的（例如紋理和聲音檔案），它們的源素材不會包含在匯出的遊戲中，因為只使用匯入的版本。有關考慮資源重新映射的替代方法，請參閱 :ref:`ResourceLoader.exists()<class_ResourceLoader_method_exists>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_dir**\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_DirAccess_method_get_current_dir>`

返回目前打開目錄的絕對路徑（例如 ``res://資料夾`` 或 ``C:\tmp\資料夾``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_drive:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_drive**\ (\ ) :ref:`🔗<class_DirAccess_method_get_current_drive>`

返回目前打開目錄的驅動器索引。要將返回的索引轉換為驅動器名稱，請參閱 :ref:`get_drive_name()<class_DirAccess_method_get_drive_name>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories**\ (\ ) :ref:`🔗<class_DirAccess_method_get_directories>`

回傳該目錄內容的檔名 :ref:`PackedStringArray<class_PackedStringArray>`\ ，不含檔案。該陣列按字母順序排序。

受 :ref:`include_hidden<class_DirAccess_property_include_hidden>` 和 :ref:`include_navigational<class_DirAccess_property_include_navigational>` 的影響。

\ **注意：**\ 對於 ``res://`` 下的目錄，在編輯器中所回傳的目錄和匯出後所回傳的目錄可能不同，因為匯出時可能將部分檔案轉換為引擎特有的格式。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_directories_at>`

回傳 ``path`` 所指向目錄內容的檔名 :ref:`PackedStringArray<class_PackedStringArray>`\ ，不含檔案。該陣列按字母順序排序。

如果需要對包含內容做進一步控制，請使用 :ref:`get_directories()<class_DirAccess_method_get_directories>`\ 。

\ **注意：**\ 對於 ``res://`` 下的目錄，在編輯器中所回傳的目錄和匯出後所回傳的目錄可能不同，因為匯出時可能將部分檔案轉換為引擎特有的格式。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_drive_count**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_count>`

在 Windows 上，回傳掛載在目前檔案系統上的磁碟（分割區）數量。

在 macOS 和 Android 上，回傳掛載卷的數量。

在 Linux 上，回傳掛載卷與 GTK 3 書籤的數量。

在其他平台上，該方法回傳 0。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_label**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_label>`

在 Windows 系統上，回傳作為參數傳入的磁碟（分割區）的標籤。

在其他平台上，或者如果請求的驅動器不存在，則回傳一個空字串。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_name**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_name>`

在 Windows 上，回傳作為參數傳入的磁碟（分割區）的名稱（例如 ``C:``\ ）。

在 macOS 上，回傳作為參數傳入的已掛載卷的路徑。

在 Linux 上，回傳作為參數傳入的已掛載卷或 GTK 3 書籤的路徑。

在 Android（API 30+）上，以參數形式回傳已掛載卷的路徑。

在其他平台上，或者如果請求的驅動器不存在，則回傳一個空字串。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_DirAccess_method_get_files>`

返回目錄內容的檔案名 :ref:`PackedStringArray<class_PackedStringArray>`\ ，不含目錄。該陣列按字母排序。

受 :ref:`include_hidden<class_DirAccess_property_include_hidden>` 的影響。

\ **注意：**\ 在匯出後的專案中對 ``res://`` 使用時，只會返回確實在 PCK 的給定資料夾中存在的檔案。在實踐中，匯入後的資源是存放在頂層的 ``.godot`` 資料夾中的，因此只會返回 ``*.gd`` 和 ``*.import`` 檔的路徑（以及 ``project.godot`` 或者 ``project.binary`` 和專案圖示等檔）。匯出後的專案中，返回的列表也會因為 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 是否為 ``true`` 而變化。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_files_at>`

回傳 ``path`` 所指向目錄內容的檔名 :ref:`PackedStringArray<class_PackedStringArray>`\ ，不含目錄。該陣列按字母排序。

如果需要對包含內容做進一步控制，請使用 :ref:`get_files()<class_DirAccess_method_get_files>`\ 。

\ **注意：**\ 在匯出後的專案中對 ``res://`` 使用時，只會回傳確實在 PCK 的給定資料夾中存在的檔案。在實踐中，匯入後的資源是存放在頂層的 ``.godot/`` 資料夾中的，因此只會回傳 ``.gd`` 和 ``.import`` 檔案的路徑（以及 ``project.godot`` 或者 ``project.binary`` 和專案圖示等檔案）。匯出後的專案中，回傳的清單也會因為 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 而變化。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_filesystem_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filesystem_type**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_get_filesystem_type>`

回傳目前目錄所在磁碟的檔案系統型別名稱。回傳的值是大寫字串，如 ``NTFS``\ 、\ ``FAT32``\ 、\ ``EXFAT``\ 、\ ``APFS``\ 、\ ``EXT4``\ 、\ ``BTRFS`` 等。

\ **注意：**\ 該方法在 macOS、Linux、Windows 以及 PCK 虛擬檔案系統上實作。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_next:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_next**\ (\ ) :ref:`🔗<class_DirAccess_method_get_next>`

返回目前的目錄中的下一個元素（檔或目錄）。

返回的是檔或目錄的名稱（不是完整路徑）。完全處理完流之後，該方法會返回空 :ref:`String<class_String>` 並自動將流關閉（即此時不必再呼叫 :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_open_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_open_error**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_open_error>`

返回目前執行緒中最後一次 :ref:`open()<class_DirAccess_method_open>` 呼叫的結果。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_space_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_space_left**\ (\ ) :ref:`🔗<class_DirAccess_method_get_space_left>`

返回目前的目錄所在磁片的可用空間，單位為位元組。如果該平臺查詢可用空間的方法失敗，則返回 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_bundle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bundle**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_bundle>`

如果該目錄為 macOS 捆綁包，則回傳 ``true``\ 。

\ **注意：**\ 該方法在 macOS 上實作。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_case_sensitive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_case_sensitive**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_case_sensitive>`

如果檔案系統或目錄使用區分大小寫的檔名，則回傳 ``true``\ 。

\ **注意：**\ 該方法在 macOS、Linux（僅對於 EXT4 和 F2FS 檔案系統）和 Windows 上實作。在其他平台上，它始終回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_equivalent:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equivalent**\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_equivalent>`

如果路徑 ``path_a`` 和路徑 ``path_b`` 解析為同一個檔案系統物件則回傳 ``true``\ 。否則回傳 ``false``\ ，即使這兩個檔案的內容完全相同（例如，兩個相同的檔案副本，但不是符號連結）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_link:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_is_link>`

如果檔案或目錄為符號連結、目錄聯接等重解析點，則回傳 ``true``\ 。

\ **注意：**\ 該方法在 macOS、Linux 和 Windows 上實作。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **list_dir_begin**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_begin>`

初始化流，用於使用 :ref:`get_next()<class_DirAccess_method_get_next>` 函式列出所有檔和目錄，如果需要還會關閉目前打開的流。處理完流之後，一般應使用 :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>` 關閉。

受 :ref:`include_hidden<class_DirAccess_property_include_hidden>` 和 :ref:`include_navigational<class_DirAccess_property_include_navigational>` 的影響。

\ **注意：**\ 該方法返回的檔和目錄順序是不確定的，不同作業系統也可能不同。如果你想要取得按字母排序的檔或資料夾列表，請使用 :ref:`get_files()<class_DirAccess_method_get_files>` 或 :ref:`get_directories()<class_DirAccess_method_get_directories>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_end:

.. rst-class:: classref-method

|void| **list_dir_end**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_end>`

關閉用 :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` 打開的目前流（並不關注是否已經用 :ref:`get_next()<class_DirAccess_method_get_next>` 完成處理）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir>`

建立目錄。參數可以相對於目前的目錄，也可以是絕對路徑。目標目錄應該位於已經存在的目錄中（遞迴建立完整的路徑請參閱 :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`\ ）。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_absolute>`

靜態版本的 :ref:`make_dir()<class_DirAccess_method_make_dir>`\ 。僅支援絕對路徑。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir_recursive>`

遞迴呼叫 :ref:`make_dir()<class_DirAccess_method_make_dir>` 方法，建立目標目錄及其路徑中所有必要的中間目錄。參數可以相對於目前的目錄，也可以是絕對路徑。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_recursive_absolute>`

靜態版本的 :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`\ 。僅支援絕對路徑。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_open:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **open**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_open>`

新建 **DirAccess** 物件並打開檔案系統中的某個現存目錄。\ ``path`` 參數可以是在專案樹中（\ ``res://folder``\ ）、使用者目錄中（\ ``user://folder``\ ），也可以是使用者檔案系統的絕對路徑（例如 ``/tmp/folder`` 或 ``C:\tmp\folder``\ ）。

如果打開目錄失敗，則返回 ``null``\ 。你可以使用 :ref:`get_open_error()<class_DirAccess_method_get_open_error>` 來查看發生的錯誤。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_read_link:

.. rst-class:: classref-method

:ref:`String<class_String>` **read_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_read_link>`

回傳符號連結的目標。

\ **注意：**\ 該方法在 macOS、Linux 和 Windows 上實作。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_remove>`

將目的檔案或空目錄永久刪除。參數可以相對於目前的目錄，也可以是絕對路徑。如果目標目錄非空，則操作失敗。

如果你不想永久刪除該檔/目錄，請改用 :ref:`OS.move_to_trash()<class_OS_method_move_to_trash>`\ 。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_remove_absolute>`

靜態版本的 :ref:`remove()<class_DirAccess_method_remove>`\ 。僅支援絕對路徑。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_rename>`

將 ``from`` 檔或目錄重新命名為（移動至）\ ``to`` 目標。兩個參數都應該是檔或目錄的路徑，可以是相對路徑也可以是絕對路徑。如果目的檔案或目錄已存在，並且沒有防寫，則會被覆蓋。

返回 :ref:`Error<enum_@GlobalScope_Error>` 錯誤碼常數（成功時為 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_rename_absolute>`

靜態版本的 :ref:`rename()<class_DirAccess_method_rename>`\ 。僅支援絕對路徑。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
