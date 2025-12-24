:github_url: hide

.. _class_EditorFileSystemDirectory:

EditorFileSystemDirectory
=========================

**繼承：** :ref:`Object<class_Object>`

資源檔系統的目錄。

.. rst-class:: classref-introduction-group

說明
----

目錄概念的一個更概括的、低級的概念。

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

方法說明
--------

.. _class_EditorFileSystemDirectory_method_find_dir_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_dir_index**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_find_dir_index>`

返回名為 ``name`` 的目錄索引，如果未找到返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_find_file_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_file_index**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_find_file_index>`

返回名為 ``name`` 的檔索引，如果未找到返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file>`

返回索引 ``idx`` 處的檔案名。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_file_count**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_count>`

返回目錄裡檔的數量。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_import_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_file_import_is_valid**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_import_is_valid>`

如果索引 ``idx`` 處的檔正確匯入，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_path**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_path>`

返回索引 ``idx`` 處的檔所在路徑。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_script_class_extends:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_script_class_extends**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_script_class_extends>`

返回在索引 ``idx`` 的檔中定義的腳本類的基底類別。如果該檔未使用 ``class_name`` 語法定義腳本類，則返回空字串。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_script_class_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_script_class_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_script_class_name>`

返回索引 ``idx`` 處檔中定義的腳本類的名稱。如果檔沒有使用 ``class_name`` 語法定義腳本類，這將返回一個空字串。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_file_type**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_type>`

返回在索引 ``idx`` 處檔案的資源型別。返回的是類似 ``"Resource"`` 和 ``"GDScript"`` 的字串，\ *而不是*\ 類似 ``".gd"`` 的檔案副檔名。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_name**\ (\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_name>`

返回這個目錄的名字。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_parent:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_parent**\ (\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_parent>`

返回這個目錄的上層目錄，如果在 ``res://`` 或 ``user://`` 調用這個方法，將會返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_path**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_path>`

返回這個目錄的路徑。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_subdir:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_subdir**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_subdir>`

返回在索引 ``idx`` 處的子目錄。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_subdir_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subdir_count**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_subdir_count>`

返回這個目錄的子目錄的數量。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
