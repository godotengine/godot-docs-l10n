:github_url: hide

.. _class_ShaderIncludeDB:

ShaderIncludeDB
===============

**繼承：** :ref:`Object<class_Object>`

內建著色器頭檔案的內部資料庫。

.. rst-class:: classref-introduction-group

說明
----

該物件包含 Godot 內部著色器中的著色器片段。需要存取內部 Uniform 緩衝區和/或內部函式時，例如在組合合成器效果或計算著色器時，可以使用這些片段。僅載入目前渲染裝置的片段。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_built_in_include_file<class_ShaderIncludeDB_method_get_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_built_in_include_file<class_ShaderIncludeDB_method_has_built_in_include_file>`\ (\ filename\: :ref:`String<class_String>`\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`list_built_in_include_files<class_ShaderIncludeDB_method_list_built_in_include_files>`\ (\ ) |static|                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ShaderIncludeDB_method_get_built_in_include_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_get_built_in_include_file>`

回傳內建著色器片段的程式碼。在著色器程式碼中也可以通過 ``#include "檔名"`` 存取。

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_has_built_in_include_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_built_in_include_file**\ (\ filename\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_has_built_in_include_file>`

如果存在該名稱對應的頭檔案，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ShaderIncludeDB_method_list_built_in_include_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_built_in_include_files**\ (\ ) |static| :ref:`🔗<class_ShaderIncludeDB_method_list_built_in_include_files>`

回傳目前已注冊的內建頭檔案清單。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
