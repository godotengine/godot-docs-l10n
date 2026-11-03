:github_url: hide

.. _class_PCKPacker:

PCKPacker
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

建立可以載入到正在運作的專案中的包。

.. rst-class:: classref-introduction-group

說明
----

**PCKPacker** 可以建立打包檔案，專案執行時可以使用 :ref:`ProjectSettings.load_resource_pack()<class_ProjectSettings_method_load_resource_pack>` 來載入打包檔案。


.. tabs::

 .. code-tab:: gdscript

    var packer = PCKPacker.new()
    packer.pck_start("test.pck")
    packer.add_file("res://text.txt", "text.txt")
    packer.flush()

 .. code-tab:: csharp

    var packer = new PckPacker();
    packer.PckStart("test.pck");
    packer.AddFile("res://text.txt", "text.txt");
    packer.Flush();



上面的例子中，\ **PCKPacker** 建立了打包檔案 ``test.pck``\ ，但後將名為 ``text.txt`` 的檔案新增到了包的根目錄。

\ **注意：**\ PCK 是 Godot 自有的打包檔案格式。要建立任何程式都能夠讀取的 ZIP 壓縮檔，請改用 :ref:`ZIPPacker<class_ZIPPacker>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file<class_PCKPacker_method_add_file>`\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ )                                                                                                               |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file_from_buffer<class_PCKPacker_method_add_file_from_buffer>`\ (\ target_path\: :ref:`String<class_String>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`, encrypt\: :ref:`bool<class_bool>` = false\ )                                                                            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file_removal<class_PCKPacker_method_add_file_removal>`\ (\ target_path\: :ref:`String<class_String>`\ )                                                                                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`flush<class_PCKPacker_method_flush>`\ (\ verbose\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pck_start<class_PCKPacker_method_pck_start>`\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PCKPacker_method_add_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file**\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_add_file>`

將 ``source_path`` 檔案新增到目前 PCK 包的內部路徑 ``target_path`` 處。\ ``target_path`` 不必寫 ``res://`` 前綴，內部會將其去除。檔案內容會立即寫入到 PCK 中。

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_add_file_from_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file_from_buffer**\ (\ target_path\: :ref:`String<class_String>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`, encrypt\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_add_file_from_buffer>`

將 ``data``\ （資料）新增到目前 PCK 包中，其在包內的路徑為 ``target_path``\ 。\ ``target_path`` 的 ``res://`` 前綴是可選的，會在內部被自動去除。檔案內容會被立即寫入 PCK 包中。

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_add_file_removal:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file_removal**\ (\ target_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PCKPacker_method_add_file_removal>`

注冊移除 PCK 內部路徑 ``target_path`` 處的檔案。主要用於補丁。如果位於該路徑的檔案已從之前的 PCK 載入，則會被移除。\ ``target_path`` 不必寫 ``res://`` 前綴，內部會將其去除。

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_flush:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **flush**\ (\ verbose\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_flush>`

寫入檔案目錄並關閉 PCK。如果 ``verbose`` 為 ``true``\ ，則會將檔案清單輸出在控制台，方便除錯。

\ **注意：**\ **PCKPacker** 被釋放時會自動刷新，釋放發生在離開作用域或被賦值為 ``null`` 時。在 C# 中，使用完後必須棄置該參照，可以使用 ``using`` 語句或直接呼叫 ``Dispose`` 方法。

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_pck_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pck_start**\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_pck_start>`

在檔案路徑 ``pck_path`` 處新建 PCK 檔案。不會自動新增 ``.pck`` 檔案副檔名，因此 ``pck_path`` 中應包含該副檔名（即使副檔名不是必需的）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
