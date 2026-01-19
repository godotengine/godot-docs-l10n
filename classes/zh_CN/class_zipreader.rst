:github_url: hide

.. _class_ZIPReader:

ZIPReader
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

允许读取 ZIP 文件的内容。

.. rst-class:: classref-introduction-group

描述
----

该类实现了能够从 ZIP 压缩包中提取各个文件内容的读取器。另见 :ref:`ZIPPacker<class_ZIPPacker>`\ 。

::

    # 读取 ZIP 压缩包中的单个文件。
    func read_zip_file():
        var reader = ZIPReader.new()
        var err = reader.open("user://archive.zip")
        if err != OK:
            return PackedByteArray()
        var res = reader.read_file("hello.txt")
        reader.close()
        return res

    # 解压 ZIP 压缩包中的所有文件，保持目录结构。
    # 功能类似于大多数归档文件管理器中的“全部解压”功能。
    func extract_all_from_zip():
        var reader = ZIPReader.new()
        reader.open("res://archive.zip")

        # 解压文件的目标目录（解压前必须存在）。
        # 不是所有的 ZIP 压缩包都会把所有文件都放在根文件夹中，
        # 解压后 `root_dir` 中会创建若干文件/文件夹。
        var root_dir = DirAccess.open("user://")

        var files = reader.get_files()
        for file_path in files:
            # 如果当前条目是目录。
            if file_path.ends_with("/"):
                root_dir.make_dir_recursive(file_path)
                continue

            # 写入文件内容，需要时自动创建文件夹。
            # 不是所有 ZIP 压缩包都遵循特定的顺序，这一步的作用是
            # 防止文件条目出现在文件夹条目之前。
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

方法说明
--------

.. _class_ZIPReader_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPReader_method_close>`

关闭该实例底层所使用的资源。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_file_exists>`

如果加载的 zip 存档中存在对应的文件，则返回 ``true``\ 。

必须在 :ref:`open()<class_ZIPReader_method_open>` 之后调用。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_get_compression_level:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_compression_level**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_get_compression_level>`

返回加载到的 zip 归档中文件的压缩级别。如果文件不存在或发生其他错误，则返回 ``-1``\ 。必须在 :ref:`open()<class_ZIPReader_method_open>` 后调用。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_ZIPReader_method_get_files>`

返回加载的存档中所有文件的名称列表。

必须在 :ref:`open()<class_ZIPReader_method_open>` 之后调用。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ZIPReader_method_open>`

打开给定 ``path`` 的压缩文件，并读取其文件索引。

.. rst-class:: classref-item-separator

----

.. _class_ZIPReader_method_read_file:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **read_file**\ (\ path\: :ref:`String<class_String>`, case_sensitive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_ZIPReader_method_read_file>`

将加载的 zip 存档中文件的全部内容加载到内存中并返回它。

必须在 :ref:`open()<class_ZIPReader_method_open>` 之后调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
