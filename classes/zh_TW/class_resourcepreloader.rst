:github_url: hide

.. _class_ResourcePreloader:

ResourcePreloader
=================

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於預載入場景子資源的節點。

.. rst-class:: classref-introduction-group

說明
----

這個節點可以預載入場景中的子資源，這樣場景載入完成時，所有的資源就都處於就緒可用狀態，可以從預載入器獲取。選中該節點後，可以使用 ResourcePreloader 分頁來新增資源。

GDScript 提供了簡化的 :ref:`@GDScript.preload()<class_@GDScript_method_preload>` 內建方法，可以在大多數場景使用，\ **ResourcePreloader** 則可用於更高階的場合。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource<class_ResourcePreloader_method_add_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ )          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                   | :ref:`get_resource<class_ResourcePreloader_method_get_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_resource_list<class_ResourcePreloader_method_get_resource_list>`\ (\ ) |const|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_resource<class_ResourcePreloader_method_has_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource<class_ResourcePreloader_method_remove_resource>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`rename_resource<class_ResourcePreloader_method_rename_resource>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ResourcePreloader_method_add_resource:

.. rst-class:: classref-method

|void| **add_resource**\ (\ name\: :ref:`StringName<class_StringName>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourcePreloader_method_add_resource>`

將資源以給定的名稱 ``name`` 新增至預載入器。如果已存在名為 ``name`` 的資源，則新資源會被重命名為 "``name`` N"，這裡的 N 是從 2 開始遞增的數字。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource>`

返回與 ``name`` 關聯的資源。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_get_resource_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_resource_list**\ (\ ) |const| :ref:`🔗<class_ResourcePreloader_method_get_resource_list>`

返回預載入器內的資源列表。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_has_resource:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ResourcePreloader_method_has_resource>`

如果預載入器包含一個與 ``name`` 關聯的資源，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_remove_resource:

.. rst-class:: classref-method

|void| **remove_resource**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_remove_resource>`

從預載入器中刪除與 ``name`` 關聯的資源。

.. rst-class:: classref-item-separator

----

.. _class_ResourcePreloader_method_rename_resource:

.. rst-class:: classref-method

|void| **rename_resource**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ResourcePreloader_method_rename_resource>`

將預載入器中的資源從 ``name`` 重命名為 ``newname``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
