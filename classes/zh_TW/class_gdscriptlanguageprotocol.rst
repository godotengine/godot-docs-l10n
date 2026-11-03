:github_url: hide

.. _class_GDScriptLanguageProtocol:

GDScriptLanguageProtocol
========================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`JSONRPC<class_JSONRPC>` **<** :ref:`Object<class_Object>`

GDScript 語言伺服器。

.. rst-class:: classref-introduction-group

說明
----

提供對語言伺服器中已實作的特定功能的存取。

\ **注意：** 此類並非可用於存取 LSP（語言伺服器協議）功能的語言伺服器用戶端。它僅提供對一組有限功能的存取，這些功能是使用與語言伺服器相同的技術基礎實作的。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GDScriptTextDocument<class_GDScriptTextDocument>` | :ref:`get_text_document<class_GDScriptLanguageProtocol_method_get_text_document>`\ (\ )                                                                                                                      |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GDScriptWorkspace<class_GDScriptWorkspace>`       | :ref:`get_workspace<class_GDScriptLanguageProtocol_method_get_workspace>`\ (\ )                                                                                                                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                           | :ref:`initialize<class_GDScriptLanguageProtocol_method_initialize>`\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                      |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`initialized<class_GDScriptLanguageProtocol_method_initialized>`\ (\ params\: :ref:`Variant<class_Variant>`\ )                                                                                          |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_initialized<class_GDScriptLanguageProtocol_method_is_initialized>`\ (\ ) |const|                                                                                                                    |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_smart_resolve_enabled<class_GDScriptLanguageProtocol_method_is_smart_resolve_enabled>`\ (\ ) |const|                                                                                                |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`notify_client<class_GDScriptLanguageProtocol_method_notify_client>`\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>` = null, client_id\: :ref:`int<class_int>` = -1\ ) |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                   | :ref:`on_client_connected<class_GDScriptLanguageProtocol_method_on_client_connected>`\ (\ )                                                                                                                  |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`on_client_disconnected<class_GDScriptLanguageProtocol_method_on_client_disconnected>`\ (\ client_id\: :ref:`int<class_int>`\ )                                                                         |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GDScriptLanguageProtocol_method_get_text_document:

.. rst-class:: classref-method

:ref:`GDScriptTextDocument<class_GDScriptTextDocument>` **get_text_document**\ (\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_get_text_document>`

**已棄用：** :ref:`GDScriptTextDocument<class_GDScriptTextDocument>` is deprecated.

回傳語言伺服器的 :ref:`GDScriptTextDocument<class_GDScriptTextDocument>` 實例。

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_get_workspace:

.. rst-class:: classref-method

:ref:`GDScriptWorkspace<class_GDScriptWorkspace>` **get_workspace**\ (\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_get_workspace>`

回傳語言伺服器的 :ref:`GDScriptWorkspace<class_GDScriptWorkspace>` 實例。

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_initialize:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **initialize**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_initialize>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_initialized:

.. rst-class:: classref-method

|void| **initialized**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_initialized>`

**已棄用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_is_initialized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_initialized**\ (\ ) |const| :ref:`🔗<class_GDScriptLanguageProtocol_method_is_initialized>`

如果語言伺服器已經被語言伺服器用戶端初始化，則回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_is_smart_resolve_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_smart_resolve_enabled**\ (\ ) |const| :ref:`🔗<class_GDScriptLanguageProtocol_method_is_smart_resolve_enabled>`

如果語言伺服器正在提供智能解析（smart resolve）功能，則回傳 ``true``\ ，否則回傳 ``false``\ 。該功能可以通過編輯器設定來進行設定。

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_notify_client:

.. rst-class:: classref-method

|void| **notify_client**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>` = null, client_id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_notify_client>`

**已棄用：** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_on_client_connected:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **on_client_connected**\ (\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_on_client_connected>`

**已棄用：** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_on_client_disconnected:

.. rst-class:: classref-method

|void| **on_client_disconnected**\ (\ client_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_on_client_disconnected>`

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
