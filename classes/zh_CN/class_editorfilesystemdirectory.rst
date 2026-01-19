:github_url: hide

.. _class_EditorFileSystemDirectory:

EditorFileSystemDirectory
=========================

**继承：** :ref:`Object<class_Object>`

资源文件系统的目录。

.. rst-class:: classref-introduction-group

描述
----

目录概念的一个更概括的、低级的概念。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`find_dir_index<class_EditorFileSystemDirectory_method_find_dir_index>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`find_file_index<class_EditorFileSystemDirectory_method_find_file_index>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                      |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file<class_EditorFileSystemDirectory_method_get_file>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_file_count<class_EditorFileSystemDirectory_method_get_file_count>`\ (\ ) |const|                                                            |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_file_import_is_valid<class_EditorFileSystemDirectory_method_get_file_import_is_valid>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_path<class_EditorFileSystemDirectory_method_get_file_path>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_script_class_extends<class_EditorFileSystemDirectory_method_get_file_script_class_extends>`\ (\ idx\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_script_class_name<class_EditorFileSystemDirectory_method_get_file_script_class_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|       |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                               | :ref:`get_file_type<class_EditorFileSystemDirectory_method_get_file_type>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_name<class_EditorFileSystemDirectory_method_get_name>`\ (\ )                                                                                |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_parent<class_EditorFileSystemDirectory_method_get_parent>`\ (\ )                                                                            |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_path<class_EditorFileSystemDirectory_method_get_path>`\ (\ ) |const|                                                                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_subdir<class_EditorFileSystemDirectory_method_get_subdir>`\ (\ idx\: :ref:`int<class_int>`\ )                                               |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_subdir_count<class_EditorFileSystemDirectory_method_get_subdir_count>`\ (\ ) |const|                                                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorFileSystemDirectory_method_find_dir_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_dir_index**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_find_dir_index>`

返回名为 ``name`` 的目录索引，如果未找到返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_find_file_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_file_index**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_find_file_index>`

返回名为 ``name`` 的文件索引，如果未找到返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file>`

返回索引 ``idx`` 处的文件名。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_file_count**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_count>`

返回目录里文件的数量。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_import_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_file_import_is_valid**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_import_is_valid>`

如果索引 ``idx`` 处的文件正确导入，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_path**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_path>`

返回索引 ``idx`` 处的文件所在路径。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_script_class_extends:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_script_class_extends**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_script_class_extends>`

返回在索引 ``idx`` 的文件中定义的脚本类的基类。如果该文件未使用 ``class_name`` 语法定义脚本类，则返回空字符串。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_script_class_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_script_class_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_script_class_name>`

返回索引 ``idx`` 处文件中定义的脚本类的名称。如果文件没有使用 ``class_name`` 语法定义脚本类，这将返回一个空字符串。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_file_type**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_type>`

返回在索引 ``idx`` 处文件的资源类型。返回的是类似 ``"Resource"`` 和 ``"GDScript"`` 的字符串，\ *而不是*\ 类似 ``".gd"`` 的文件扩展名。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_name**\ (\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_name>`

返回这个目录的名字。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_parent:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_parent**\ (\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_parent>`

返回这个目录的上层目录，如果在 ``res://`` 或 ``user://`` 调用这个方法，将会返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_path**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_path>`

返回这个目录的路径。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_subdir:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_subdir**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_subdir>`

返回在索引 ``idx`` 处的子目录。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_subdir_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subdir_count**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_subdir_count>`

返回这个目录的子目录的数量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
