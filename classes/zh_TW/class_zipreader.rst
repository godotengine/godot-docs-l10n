:github_url: hide

.. _class_ZIPReader:

ZIPReader
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

允許讀取 ZIP 檔案的內容。

.. rst-class:: classref-introduction-group

說明
----

該類實作了能夠從 ZIP 壓縮檔中提取各個檔案內容的讀取器。另見 :ref:`ZIPPacker<class_ZIPPacker>`\ 。

::

    # 讀取 ZIP 壓縮檔中的單個檔案。
    func read_zip_file():
        var reader = ZIPReader.new()
        var err = reader.open("user://archive.zip")
        if err != OK:
            return PackedByteArray()
        var res = reader.read_file("hello.txt")
        reader.close()
        return res

    # 解壓 ZIP 壓縮檔中的所有檔案，保持目錄結構。
    # 功能類似於大多數封存檔檔案管理器中的“全部解壓”功能。
    func extract_all_from_zip():
        var reader = ZIPReader.new()
        reader.open("res://archive.zip")

        # 解壓檔案的目標目錄（解壓前必須存在）。
        # 不是所有的 ZIP 壓縮檔都會把所有檔案都放在根資料夾中，
        # 解壓後 `root_dir` 中會建立若干檔案/資料夾。
        var root_dir = DirAccess.open("user://")

        var files = reader.get_files()
        for file_path in files:
            # 如果目前條目是目錄。
            if file_path.ends_with("/"):
                root_dir.make_dir_recursive(file_path)
                continue

            # 寫入檔案內容，需要時自動建立資料夾。
            # 不是所有 ZIP 壓縮檔都遵循特定的順序，這一步的作用是
            # 防止檔案條目出現在資料夾條目之前。
            root_dir.make_dir_recursive(root_dir.get_current_dir().path_join(file_path).get_base_dir())
            var file = FileAccess.open(root_dir.get_current_dir().path_join(file_path), FileAccess.WRITE)
            var buffer = reader.read_file(file_path)
            file.store_buffer(buffer)

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`close<class_ZIPReader_method_close>`\ (\ )                                                                                                                      |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_exists<class_ZIPReader_method_file_exists>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ )                     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_compression_level<class_ZIPReader_method_get_compression_level>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files<class_ZIPReader_method_get_files>`\ (\ )                                                                                                              |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`open<class_ZIPReader_method_open>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`read_file<class_ZIPReader_method_read_file>`\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ )                         |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ZIPReader_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPReader_method_close>`

關閉該實例底層所使用的資源。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_file_exists>`

如果載入的 zip 存檔中存在對應的檔，則返回 ``true``\ 。

必須在 :ref:`open()<class_ZIPReader_method_open>` 之後呼叫。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_get_compression_level:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_compression_level**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_get_compression_level>`

回傳載入到的 zip 封存檔中檔案的壓縮層級。如果檔案不存在或發生其他錯誤，則回傳 ``-1``\ 。必須在 :ref:`open()<class_ZIPReader_method_open>` 後呼叫。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_ZIPReader_method_get_files>`

返回載入的存檔中所有檔的名稱列表。

必須在 :ref:`open()<class_ZIPReader_method_open>` 之後呼叫。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ZIPReader_method_open>`

打開給定 ``path`` 的壓縮檔，並讀取其檔索引。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_read_file:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_file**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_read_file>`

將載入的 zip 存檔中檔的全部內容載入到記憶體中並返回它。

必須在 :ref:`open()<class_ZIPReader_method_open>` 之後呼叫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
