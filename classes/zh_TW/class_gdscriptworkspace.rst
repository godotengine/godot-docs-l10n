:github_url: hide

.. _class_GDScriptWorkspace:

GDScriptWorkspace
=================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Workspace related language server functionality.

.. rst-class:: classref-introduction-group

說明
----

Provides language server functionality related to the workspace.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_new_signal<class_GDScriptWorkspace_method_apply_new_signal>`\ (\ obj\: :ref:`Object<class_Object>`, function\: :ref:`String<class_String>`, args\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`didDeleteFiles<class_GDScriptWorkspace_method_didDeleteFiles>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`generate_script_api<class_GDScriptWorkspace_method_generate_script_api>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_file_path<class_GDScriptWorkspace_method_get_file_path>`\ (\ uri\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_file_uri<class_GDScriptWorkspace_method_get_file_uri>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse_local_script<class_GDScriptWorkspace_method_parse_local_script>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse_script<class_GDScriptWorkspace_method_parse_script>`\ (\ path\: :ref:`String<class_String>`, content\: :ref:`String<class_String>`\ )                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`publish_diagnostics<class_GDScriptWorkspace_method_publish_diagnostics>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GDScriptWorkspace_method_apply_new_signal:

.. rst-class:: classref-method

|void| **apply_new_signal**\ (\ obj\: :ref:`Object<class_Object>`, function\: :ref:`String<class_String>`, args\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_apply_new_signal>`

**已棄用：** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_didDeleteFiles:

.. rst-class:: classref-method

|void| **didDeleteFiles**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_didDeleteFiles>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_generate_script_api:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **generate_script_api**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_generate_script_api>`

Returns the interface of the script in a machine-readable format.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_get_file_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_path**\ (\ uri\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_get_file_path>`

Converts a URI to a file path.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_get_file_uri:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_uri**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_GDScriptWorkspace_method_get_file_uri>`

Converts a file path to a URI.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_parse_local_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse_local_script**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_parse_local_script>`

**已棄用：** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_parse_script:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse_script**\ (\ path\: :ref:`String<class_String>`, content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_parse_script>`

**已棄用：** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptWorkspace_method_publish_diagnostics:

.. rst-class:: classref-method

|void| **publish_diagnostics**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_GDScriptWorkspace_method_publish_diagnostics>`

**已棄用：** Might result in unwanted side effects for connected clients.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
