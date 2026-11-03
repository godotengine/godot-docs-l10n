:github_url: hide

.. _class_ZIPPacker:

ZIPPacker
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

允許建立 ZIP 檔案。

.. rst-class:: classref-introduction-group

說明
----

該類實作了能夠在 ZIP 壓縮檔中儲存多個資料塊的寫入器。另見 :ref:`ZIPReader<class_ZIPReader>` 和 :ref:`PCKPacker<class_PCKPacker>`\ 。

::

    # 建立 ZIP 壓縮檔，根條目為單個檔案。
    func write_zip_file():
        var writer = ZIPPacker.new()
        var err = writer.open("user://archive.zip")
        if err != OK:
            return err
        writer.start_file("hello.txt")
        writer.write_file("Hello World".to_utf8_buffer())
        writer.close_file()

        writer.close()
        return OK

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`compression_level<class_ZIPPacker_property_compression_level>` | ``-1`` |
   +-----------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_directory<class_ZIPPacker_method_add_directory>`\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 493, modified_time\: :ref:`int<class_int>` = 0\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close<class_ZIPPacker_method_close>`\ (\ )                                                                                                                                                                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close_file<class_ZIPPacker_method_close_file>`\ (\ )                                                                                                                                                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`open<class_ZIPPacker_method_open>`\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ )                                                                                                        |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_file<class_ZIPPacker_method_start_file>`\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 420, modified_time\: :ref:`int<class_int>` = 0\ )       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`write_file<class_ZIPPacker_method_write_file>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                   |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ZIPPacker_ZipAppend:

.. rst-class:: classref-enumeration

enum **ZipAppend**: :ref:`🔗<enum_ZIPPacker_ZipAppend>`

.. _class_ZIPPacker_constant_APPEND_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATE** = ``0``

在給定的路徑新建 Zip 歸檔檔。

.. _class_ZIPPacker_constant_APPEND_CREATEAFTER:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATEAFTER** = ``1``

在位於給定路徑的已有檔的末尾追加新的 Zip 歸檔檔。

.. _class_ZIPPacker_constant_APPEND_ADDINZIP:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_ADDINZIP** = ``2``

在位於給定路徑的已有 Zip 歸檔檔中新增新檔。

.. rst-class:: classref-item-separator

----

.. _enum_ZIPPacker_CompressionLevel:

.. rst-class:: classref-enumeration

enum **CompressionLevel**: :ref:`🔗<enum_ZIPPacker_CompressionLevel>`

.. _class_ZIPPacker_constant_COMPRESSION_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_DEFAULT** = ``-1``

開啟檔案時使用預設 Deflate 壓縮層級（\ ``6``\ ）。在速度和檔案大小之間達到不錯的平衡。

.. _class_ZIPPacker_constant_COMPRESSION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_NONE** = ``0``

開啟檔案時不使用壓縮。也叫做“儲存”壓縮模式，是最快的在 ZIP 封存檔中打包檔案的方法。請考慮為已壓縮的檔案使用該模式（例如 JPEG、PNG、MP3、Ogg Vorbis 等型別的檔案）。

.. _class_ZIPPacker_constant_COMPRESSION_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_FAST** = ``1``

開啟檔案時使用最快 Deflate 壓縮層級（\ ``1``\ ）。壓縮速度較快，但得到的檔案比 :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>` 要大。解壓速度通常不受壓縮層級的影響。

.. _class_ZIPPacker_constant_COMPRESSION_BEST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_BEST** = ``9``

開啟檔案時使用最佳 Deflate 壓縮層級（\ ``9``\ ）。壓縮速度較慢，但得到的檔案比 :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>` 要小。解壓速度通常不受壓縮層級的影響。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ZIPPacker_property_compression_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compression_level** = ``-1`` :ref:`🔗<class_ZIPPacker_property_compression_level>`

.. rst-class:: classref-property-setget

- |void| **set_compression_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_compression_level**\ (\ )

呼叫 :ref:`start_file()<class_ZIPPacker_method_start_file>` 時使用的壓縮層級。請參考 :ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ZIPPacker_method_add_directory:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_directory**\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 493, modified_time\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_add_directory>`

將目錄新增到封存檔檔案中。如果 ``modified_time`` 被設定為 ``0``\ ，則使用目前系統時間。

\ **注意：** 呼叫 :ref:`start_file()<class_ZIPPacker_method_start_file>` 時會自動建立目錄，若要建立具有自訂權限和修改時間的目錄，請在新增檔案前呼叫此函式。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close>`

關閉該實例底層所使用的資源。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close_file>`

停止向歸檔中的檔進行寫入。

如果沒有打開檔，則會失敗。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_open>`

打開給定路徑處的 Zip 檔，使用指定的寫入模式進行寫入。

必須在其他呼叫前呼叫。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_start_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_file**\ (\ path\: :ref:`String<class_String>`, permissions\: |bitfield|\[:ref:`UnixPermissionFlags<enum_FileAccess_UnixPermissionFlags>`\] = 420, modified_time\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_start_file>`

開始向壓縮檔內的檔案寫入資料。同一時間只能寫入一個檔案。如果將 ``modified_time`` 設定為 ``0``\ ，則會使用目前的系統時間。

必須在呼叫 :ref:`open()<class_ZIPPacker_method_open>` 之後才能呼叫此方法。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_write_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_file**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ZIPPacker_method_write_file>`

將給定的 ``data`` 寫到檔案中。

需要在 :ref:`start_file()<class_ZIPPacker_method_start_file>` 之後呼叫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
