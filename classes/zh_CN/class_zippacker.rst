:github_url: hide

.. _class_ZIPPacker:

ZIPPacker
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

允许创建 ZIP 文件。

.. rst-class:: classref-introduction-group

描述
----

该类实现了能够在 ZIP 压缩包中存储多个数据块的写入器。另见 :ref:`ZIPReader<class_ZIPReader>` 和 :ref:`PCKPacker<class_PCKPacker>`\ 。

::

    # 创建 ZIP 压缩包，根条目为单个文件。
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

属性
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

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close<class_ZIPPacker_method_close>`\ (\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close_file<class_ZIPPacker_method_close_file>`\ (\ )                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`open<class_ZIPPacker_method_open>`\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_file<class_ZIPPacker_method_start_file>`\ (\ path\: :ref:`String<class_String>`\ )                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`write_file<class_ZIPPacker_method_write_file>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_ZIPPacker_ZipAppend:

.. rst-class:: classref-enumeration

enum **ZipAppend**: :ref:`🔗<enum_ZIPPacker_ZipAppend>`

.. _class_ZIPPacker_constant_APPEND_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATE** = ``0``

在给定的路径新建 Zip 归档文件。

.. _class_ZIPPacker_constant_APPEND_CREATEAFTER:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATEAFTER** = ``1``

在位于给定路径的已有文件的末尾追加新的 Zip 归档文件。

.. _class_ZIPPacker_constant_APPEND_ADDINZIP:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_ADDINZIP** = ``2``

在位于给定路径的已有 Zip 归档文件中添加新文件。

.. rst-class:: classref-item-separator

----

.. _enum_ZIPPacker_CompressionLevel:

.. rst-class:: classref-enumeration

enum **CompressionLevel**: :ref:`🔗<enum_ZIPPacker_CompressionLevel>`

.. _class_ZIPPacker_constant_COMPRESSION_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_DEFAULT** = ``-1``

开启文件时使用默认 Deflate 压缩级别（\ ``6``\ ）。在速度和文件大小之间达到不错的平衡。

.. _class_ZIPPacker_constant_COMPRESSION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_NONE** = ``0``

开启文件时不使用压缩。也叫做“存储”压缩模式，是最快的在 ZIP 归档中打包文件的方法。请考虑为已压缩的文件使用该模式（例如 JPEG、PNG、MP3、Ogg Vorbis 等类型的文件）。

.. _class_ZIPPacker_constant_COMPRESSION_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_FAST** = ``1``

开启文件时使用最快 Deflate 压缩级别（\ ``1``\ ）。压缩速度较快，但得到的文件比 :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>` 要大。解压速度通常不受压缩级别的影响。

.. _class_ZIPPacker_constant_COMPRESSION_BEST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_BEST** = ``9``

开启文件时使用最佳 Deflate 压缩级别（\ ``9``\ ）。压缩速度较慢，但得到的文件比 :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>` 要小。解压速度通常不受压缩级别的影响。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ZIPPacker_property_compression_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compression_level** = ``-1`` :ref:`🔗<class_ZIPPacker_property_compression_level>`

.. rst-class:: classref-property-setget

- |void| **set_compression_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_compression_level**\ (\ )

调用 :ref:`start_file()<class_ZIPPacker_method_start_file>` 时使用的压缩级别。请参考 :ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ZIPPacker_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close>`

关闭该实例底层所使用的资源。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close_file>`

停止向归档中的文件进行写入。

如果没有打开文件，则会失败。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_open>`

打开给定路径处的 Zip 文件，使用指定的写入模式进行写入。

必须在其他调用前调用。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_start_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ZIPPacker_method_start_file>`

开始向存档中的一个文件写入。同一时间只能写一个文件。

必须在\ :ref:`open()<class_ZIPPacker_method_open>`\ 之后调用。

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_write_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_file**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ZIPPacker_method_write_file>`

将给定的 ``data`` 写到文件中。

需要在 :ref:`start_file()<class_ZIPPacker_method_start_file>` 之后调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
