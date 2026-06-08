:github_url: hide

.. meta::
	:keywords: directory, path, folder

.. _class_DirAccess:

DirAccess
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供管理目录及其内容的方法。

.. rst-class:: classref-introduction-group

描述
----

这个类可用于管理目录及其内容，不限于项目文件夹。

\ **DirAccess** 无法直接实例化，需要通过静态方法创建，方法接受待打开的路径。

大多数方法都有对应的静态版本，无需创建 **DirAccess** 即可使用。静态方法仅支持绝对路径（包含 ``res://`` 和 ``user://``\ ）。

::

    # 标准
    var dir = DirAccess.open("user://levels")
    dir.make_dir("world1")
    # 静态
    DirAccess.make_dir_absolute("user://levels/world1")

\ **注意：**\ 导出后，访问项目目录（"res://"）可能导致意外行为，因为此时部分文件已被转换为引擎所使用的格式，对应的原始文件可能不存在于 PCK 包中。因此，在导出后的项目中访问资源建议使用 :ref:`ResourceLoader<class_ResourceLoader>`\ ，不要使用 :ref:`FileAccess<class_FileAccess>`\ 。

以下是遍历目录中文件的示例：


.. tabs::

 .. code-tab:: gdscript

    func dir_contents(path):
        var dir = DirAccess.open(path)
        if dir:
            dir.list_dir_begin()
            var file_name = dir.get_next()
            while file_name != "":
                if dir.current_is_dir():
                    print("发现目录：" + file_name)
                else:
                    print("发现文件" + file_name)
                file_name = dir.get_next()
        else:
            print("尝试访问路径时出错。")

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
                    GD.Print($"发现目录：{fileName}");
                }
                else
                {
                    GD.Print($"发现文件：{fileName}");
                }
                fileName = dir.GetNext();
            }
        }
        else
        {
            GD.Print("尝试访问路径时出错。");
        }
    }



请牢记，导出后文件名可能发生变化和重映射。如果想要看到和编辑器中一致的实际资源文件列表，请改用 :ref:`ResourceLoader.list_directory()<class_ResourceLoader_method_list_directory>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`文件系统 <../tutorials/scripting/filesystem>`

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_DirAccess_property_include_hidden:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_hidden** :ref:`🔗<class_DirAccess_property_include_hidden>`

.. rst-class:: classref-property-setget

- |void| **set_include_hidden**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_hidden**\ (\ )

如果为 ``true``\ ，则在导航目录时包含隐藏文件。

影响 :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>`\ 、\ :ref:`get_directories()<class_DirAccess_method_get_directories>`\ 、\ :ref:`get_files()<class_DirAccess_method_get_files>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_property_include_navigational:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_navigational** :ref:`🔗<class_DirAccess_property_include_navigational>`

.. rst-class:: classref-property-setget

- |void| **set_include_navigational**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_navigational**\ (\ )

如果为 ``true``\ ，则在导航目录时包含 ``.`` 和 ``..``\ 。

影响 :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` 和 :ref:`get_directories()<class_DirAccess_method_get_directories>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_DirAccess_method_change_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_dir**\ (\ to_dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_change_dir>`

将当前打开的目录改为作为参数传递的目录。该参数可以是相对于当前目录的（例如 ``newdir`` 或 ``../newdir``\ ），也可以是绝对路径（例如 ``/tmp/newdir`` 或 ``res://somedir/newdir``\ ）。

返回 :ref:`Error<enum_@GlobalScope_Error>` 错误码常量之一（成功时为 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

\ **注意：**\ 新目录必须在相同范围内，例如当在 ``res://`` 中打开目录时，无法将其更改为 ``user://`` 目录。如果需要在另一个访问范围中打开目录，请使用 :ref:`open()<class_DirAccess_method_open>` 创建一个新实例。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_DirAccess_method_copy>`

将 ``from`` 文件复制到 ``to`` 目标位置。两个参数都应该是文件的路径，可以是相对路径，也可以是绝对路径。如果目标文件存在并且没有访问保护，则它将被覆盖。

如果 ``chmod_flags`` 不同于 ``-1``\ ，且如果在当前操作系统上可用，目标路径的 Unix 权限将设置为提供的值。

返回 :ref:`Error<enum_@GlobalScope_Error>` 错误码常量之一（成功时为 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| :ref:`🔗<class_DirAccess_method_copy_absolute>`

静态版本的 :ref:`copy()<class_DirAccess_method_copy>`\ 。仅支持绝对路径。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_link:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_link**\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_create_link>`

创建文件或文件夹的符号链接。

\ **注意：**\ 在 Window 上，使用提升权限运行程序或启用“开发者模式”时该方法才能正常工作。

\ **注意：**\ 该方法仅在 macOS、Linux 和 Windows 上实现。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_temp:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **create_temp**\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_DirAccess_method_create_temp>`

创建一个临时目录。返回的 **DirAccess** 被释放时会释放该目录。

如果 ``prefix`` 非空，则会用作目录名的前缀，使用 ``-`` 分隔。

如果 ``keep`` 为 ``true``\ ，则返回的 **DirAccess** 被释放时不会释放该目录。

如果打开目录失败，则返回 ``null``\ 。你可以使用 :ref:`get_open_error()<class_DirAccess_method_get_open_error>` 来查看发生的错误。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_current_is_dir:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **current_is_dir**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_current_is_dir>`

返回上一次 :ref:`get_next()<class_DirAccess_method_get_next>` 调用处理的当前项目是否为目录（\ ``.`` 和 ``.`` 属于目录）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_dir_exists>`

返回目标目录是否存在。参数可以相对于当前目录，也可以是绝对路径。

\ **注意：**\ 使用 ``res://`` 目录下的路径时，在编辑器中返回的 :ref:`bool<class_bool>` 与导出后的返回值可能不同。导出时会将部分文件转换为引擎特有的格式，可能导致目录结构的改变。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_dir_exists_absolute>`

:ref:`dir_exists()<class_DirAccess_method_dir_exists>` 的静态版本。仅支持绝对路径。

\ **注意：**\ 使用 ``res://`` 目录下的路径时，在编辑器中返回的 :ref:`bool<class_bool>` 与导出后的返回值可能不同。导出时会将部分文件转换为引擎特有的格式，可能导致目录结构的改变。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_file_exists>`

返回目标文件是否存在。参数可以相对于当前目录，也可以是绝对路径。

静态版本见 :ref:`FileAccess.file_exists()<class_FileAccess_method_file_exists>`\ 。

\ **注意：**\ 许多资源类型是导入的（例如纹理和声音文件），它们的源资产不会包含在导出的游戏中，因为只使用导入的版本。有关考虑资源重新映射的替代方法，请参阅 :ref:`ResourceLoader.exists()<class_ResourceLoader_method_exists>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_dir**\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_DirAccess_method_get_current_dir>`

返回当前打开目录的绝对路径（例如 ``res://文件夹`` 或 ``C:\tmp\文件夹``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_drive:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_drive**\ (\ ) :ref:`🔗<class_DirAccess_method_get_current_drive>`

返回当前打开目录的驱动器索引。要将返回的索引转换为驱动器名称，请参阅 :ref:`get_drive_name()<class_DirAccess_method_get_drive_name>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories**\ (\ ) :ref:`🔗<class_DirAccess_method_get_directories>`

返回该目录内容的文件名 :ref:`PackedStringArray<class_PackedStringArray>`\ ，不含文件。该数组按字母顺序排序。

受 :ref:`include_hidden<class_DirAccess_property_include_hidden>` 和 :ref:`include_navigational<class_DirAccess_property_include_navigational>` 的影响。

\ **注意：**\ 对于 ``res://`` 下的目录，在编辑器中所返回的目录和导出后所返回的目录可能不同，因为导出时可能将部分文件转换为引擎特有的格式。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_directories_at>`

返回 ``path`` 所指向目录内容的文件名 :ref:`PackedStringArray<class_PackedStringArray>`\ ，不含文件。该数组按字母顺序排序。

如果需要对包含内容做进一步控制，请使用 :ref:`get_directories()<class_DirAccess_method_get_directories>`\ 。

\ **注意：**\ 对于 ``res://`` 下的目录，在编辑器中所返回的目录和导出后所返回的目录可能不同，因为导出时可能将部分文件转换为引擎特有的格式。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_drive_count**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_count>`

在 Windows 上，返回挂载在当前文件系统上的驱动器（分区）数量。

在 macOS 和 Android 上，返回挂载卷的数量。

在 Linux 上，返回挂载卷与 GTK 3 书签的数量。

在其他平台上，该方法返回 0。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_label**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_label>`

在 Windows 系统上，返回作为参数传入的驱动器（分区）的标签。

在其他平台上，或者如果请求的驱动器不存在，则返回一个空字符串。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_name**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_name>`

在 Windows 上，返回作为参数传入的驱动器（分区）的名称（例如 ``C:``\ ）。

在 macOS 上，返回作为参数传入的已挂载卷的路径。

在 Linux 上，返回作为参数传入的已挂载卷或 GTK 3 书签的路径。

在 Android（API 30+）上，以参数形式返回已挂载卷的路径。

在其他平台上，或者如果请求的驱动器不存在，则返回一个空字符串。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_DirAccess_method_get_files>`

返回目录内容的文件名 :ref:`PackedStringArray<class_PackedStringArray>`\ ，不含目录。该数组按字母排序。

受 :ref:`include_hidden<class_DirAccess_property_include_hidden>` 的影响。

\ **注意：**\ 在导出后的项目中对 ``res://`` 使用时，只会返回确实在 PCK 的给定文件夹中存在的文件。在实践中，导入后的资源是存放在顶层的 ``.godot`` 文件夹中的，因此只会返回 ``*.gd`` 和 ``*.import`` 文件的路径（以及 ``project.godot`` 或者 ``project.binary`` 和项目图标等文件）。导出后的项目中，返回的列表也会因为 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 是否为 ``true`` 而变化。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_files_at>`

返回 ``path`` 所指向目录内容的文件名 :ref:`PackedStringArray<class_PackedStringArray>`\ ，不含目录。该数组按字母排序。

如果需要对包含内容做进一步控制，请使用 :ref:`get_files()<class_DirAccess_method_get_files>`\ 。

\ **注意：**\ 在导出后的项目中对 ``res://`` 使用时，只会返回确实在 PCK 的给定文件夹中存在的文件。在实践中，导入后的资源是存放在顶层的 ``.godot/`` 文件夹中的，因此只会返回 ``.gd`` 和 ``.import`` 文件的路径（以及 ``project.godot`` 或者 ``project.binary`` 和项目图标等文件）。导出后的项目中，返回的列表也会因为 :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` 而变化。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_filesystem_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filesystem_type**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_get_filesystem_type>`

返回当前目录所在磁盘的文件系统类型名称。返回的值是大写字符串，如 ``NTFS``\ 、\ ``FAT32``\ 、\ ``EXFAT``\ 、\ ``APFS``\ 、\ ``EXT4``\ 、\ ``BTRFS`` 等。

\ **注意：**\ 该方法在 macOS、Linux、Windows 以及 PCK 虚拟文件系统上实现。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_next:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_next**\ (\ ) :ref:`🔗<class_DirAccess_method_get_next>`

返回当前目录中的下一个元素（文件或目录）。

返回的是文件或目录的名称（不是完整路径）。完全处理完流之后，该方法会返回空 :ref:`String<class_String>` 并自动将流关闭（即此时不必再调用 :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_open_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_open_error**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_open_error>`

返回当前线程中最后一次 :ref:`open()<class_DirAccess_method_open>` 调用的结果。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_space_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_space_left**\ (\ ) :ref:`🔗<class_DirAccess_method_get_space_left>`

返回当前目录所在磁盘的可用空间，单位为字节。如果该平台查询可用空间的方法失败，则返回 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_bundle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bundle**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_bundle>`

如果该目录为 macOS 捆绑包，则返回 ``true``\ 。

\ **注意：**\ 该方法在 macOS 上实现。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_case_sensitive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_case_sensitive**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_case_sensitive>`

如果文件系统或目录使用区分大小写的文件名，则返回 ``true``\ 。

\ **注意：**\ 该方法在 macOS、Linux（仅对于 EXT4 和 F2FS 文件系统）和 Windows 上实现。在其他平台上，它始终返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_equivalent:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equivalent**\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_equivalent>`

如果路径 ``path_a`` 和路径 ``path_b`` 解析为同一个文件系统对象则返回 ``true``\ 。否则返回 ``false``\ ，即使这两个文件的内容完全相同（例如，两个相同的文件副本，但不是符号链接）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_link:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_is_link>`

如果文件或目录为符号链接、目录联接等重解析点，则返回 ``true``\ 。

\ **注意：**\ 该方法在 macOS、Linux 和 Windows 上实现。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **list_dir_begin**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_begin>`

初始化用于通过 :ref:`get_next()<class_DirAccess_method_get_next>` 函数列出所有文件和目录的流，如果需要还会关闭目前打开的流。处理完流之后，一般应使用 :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>` 关闭。

受 :ref:`include_hidden<class_DirAccess_property_include_hidden>` 和 :ref:`include_navigational<class_DirAccess_property_include_navigational>` 的影响。

\ **注意：**\ 该方法返回的文件和目录顺序是不确定的，不同操作系统也可能不同。如果你想要获取按字母排序的文件或文件夹列表，请使用 :ref:`get_files()<class_DirAccess_method_get_files>` 或 :ref:`get_directories()<class_DirAccess_method_get_directories>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_end:

.. rst-class:: classref-method

|void| **list_dir_end**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_end>`

关闭用 :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` 打开的当前流（并不关注是否已经用 :ref:`get_next()<class_DirAccess_method_get_next>` 完成处理）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir>`

创建目录。参数可以相对于当前目录，也可以是绝对路径。目标目录应该位于已经存在的目录中（递归创建完整的路径请参阅 :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`\ ）。

返回 :ref:`Error<enum_@GlobalScope_Error>` 错误码常量（成功时为 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_absolute>`

静态版本的 :ref:`make_dir()<class_DirAccess_method_make_dir>`\ 。仅支持绝对路径。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir_recursive>`

递归调用 :ref:`make_dir()<class_DirAccess_method_make_dir>` 方法，创建目标目录及其路径中所有必要的中间目录。参数可以相对于当前目录，也可以是绝对路径。

返回 :ref:`Error<enum_@GlobalScope_Error>` 错误码常量（成功时为 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_recursive_absolute>`

静态版本的 :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`\ 。仅支持绝对路径。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_open:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **open**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_open>`

新建 **DirAccess** 对象并打开文件系统中的某个现存目录。\ ``path`` 参数可以是在项目树中（\ ``res://folder``\ ）、用户目录中（\ ``user://folder``\ ），也可以是用户文件系统的绝对路径（例如 ``/tmp/folder`` 或 ``C:\tmp\folder``\ ）。

如果打开目录失败，则返回 ``null``\ 。你可以使用 :ref:`get_open_error()<class_DirAccess_method_get_open_error>` 来查看发生的错误。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_read_link:

.. rst-class:: classref-method

:ref:`String<class_String>` **read_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_read_link>`

返回符号链接的目标。

\ **注意：**\ 该方法在 macOS、Linux 和 Windows 上实现。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_remove>`

将目标文件或空目录永久删除。参数可以相对于当前目录，也可以是绝对路径。如果目标目录非空，则操作失败。

如果你不想永久删除该文件/目录，请改用 :ref:`OS.move_to_trash()<class_OS_method_move_to_trash>`\ 。

返回 :ref:`Error<enum_@GlobalScope_Error>` 错误码常量（成功时为 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_remove_absolute>`

静态版本的 :ref:`remove()<class_DirAccess_method_remove>`\ 。仅支持绝对路径。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_rename>`

将 ``from`` 文件或目录重命名为（移动至）\ ``to`` 目标。两个参数都应该是文件或目录的路径，可以是相对路径也可以是绝对路径。如果目标文件或目录已存在，并且没有写保护，则会被覆盖。

返回 :ref:`Error<enum_@GlobalScope_Error>` 错误码常量（成功时为 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_rename_absolute>`

静态版本的 :ref:`rename()<class_DirAccess_method_rename>`\ 。仅支持绝对路径。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
