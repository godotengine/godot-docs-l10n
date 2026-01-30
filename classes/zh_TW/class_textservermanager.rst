:github_url: hide

.. _class_TextServerManager:

TextServerManager
=================

**繼承：** :ref:`Object<class_Object>`

用於管理 :ref:`TextServer<class_TextServer>` 實作的單例。

.. rst-class:: classref-introduction-group

說明
----

**TextServerManager** 是載入、列舉和切換 :ref:`TextServer<class_TextServer>` 的 API 後端。

\ **注意：**\ 文字伺服器可以在運作時切換，但會導致所有字形和文字緩衝區失效。請確保在切換之前解除安裝所有控制項、字形和主題。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_interface<class_TextServerManager_method_add_interface>`\ (\ interface\: :ref:`TextServer<class_TextServer>`\ )             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`find_interface<class_TextServerManager_method_find_interface>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`get_interface<class_TextServerManager_method_get_interface>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_interface_count<class_TextServerManager_method_get_interface_count>`\ (\ ) |const|                                          |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_interfaces<class_TextServerManager_method_get_interfaces>`\ (\ ) |const|                                                    |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextServer<class_TextServer>`                              | :ref:`get_primary_interface<class_TextServerManager_method_get_primary_interface>`\ (\ ) |const|                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_interface<class_TextServerManager_method_remove_interface>`\ (\ interface\: :ref:`TextServer<class_TextServer>`\ )       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_primary_interface<class_TextServerManager_method_set_primary_interface>`\ (\ index\: :ref:`TextServer<class_TextServer>`\ ) |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_TextServerManager_signal_interface_added:

.. rst-class:: classref-signal

**interface_added**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TextServerManager_signal_interface_added>`

新增新介面時觸發。

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_signal_interface_removed:

.. rst-class:: classref-signal

**interface_removed**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_TextServerManager_signal_interface_removed>`

當介面被移除時觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TextServerManager_method_add_interface:

.. rst-class:: classref-method

|void| **add_interface**\ (\ interface\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_add_interface>`

註冊 :ref:`TextServer<class_TextServer>` 介面。

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_find_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **find_interface**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TextServerManager_method_find_interface>`

根據名稱 ``name`` 搜尋介面。

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **get_interface**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interface>`

返回在給定索引處註冊的介面。

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interface_count**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interface_count>`

返回目前註冊的介面數。

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_interfaces**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_interfaces>`

返回可用介面的列表，包含每個介面的索引號和名稱。

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_get_primary_interface:

.. rst-class:: classref-method

:ref:`TextServer<class_TextServer>` **get_primary_interface**\ (\ ) |const| :ref:`🔗<class_TextServerManager_method_get_primary_interface>`

返回目前使用的主 :ref:`TextServer<class_TextServer>` 介面。

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_remove_interface:

.. rst-class:: classref-method

|void| **remove_interface**\ (\ interface\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_remove_interface>`

移除介面。在移除介面之前，應釋放所有字形和塑形文字的快取。

.. rst-class:: classref-item-separator

----

.. _class_TextServerManager_method_set_primary_interface:

.. rst-class:: classref-method

|void| **set_primary_interface**\ (\ index\: :ref:`TextServer<class_TextServer>`\ ) :ref:`🔗<class_TextServerManager_method_set_primary_interface>`

設定主 :ref:`TextServer<class_TextServer>` 介面。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
