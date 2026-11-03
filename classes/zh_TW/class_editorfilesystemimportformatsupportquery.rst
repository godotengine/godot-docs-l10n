:github_url: hide

.. _class_EditorFileSystemImportFormatSupportQuery:

EditorFileSystemImportFormatSupportQuery
========================================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於查詢和配置匯入格式支援。

.. rst-class:: classref-introduction-group

說明
----

該類用於查詢和配置某種匯入格式。它與素材格式匯入外掛程式配合使用。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_file_extensions<class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions>`\ (\ ) |virtual| |required| |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_is_active<class_EditorFileSystemImportFormatSupportQuery_private_method__is_active>`\ (\ ) |virtual| |required| |const|                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_query<class_EditorFileSystemImportFormatSupportQuery_private_method__query>`\ (\ ) |virtual| |required| |const|                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_file_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__get_file_extensions>`

返回支援的檔副檔名。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_active**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__is_active>`

返回此匯入器是否處於活動狀態。

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemImportFormatSupportQuery_private_method__query:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_query**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorFileSystemImportFormatSupportQuery_private_method__query>`

查詢支援。如果不能繼續匯入，則回傳 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
