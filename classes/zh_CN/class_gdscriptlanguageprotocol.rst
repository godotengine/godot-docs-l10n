:github_url: hide

.. _class_GDScriptLanguageProtocol:

GDScriptLanguageProtocol
========================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`JSONRPC<class_JSONRPC>` **<** :ref:`Object<class_Object>`

GDScript language server.

.. rst-class:: classref-introduction-group

描述
----

Provides access to certain features that are implemented in the language server.

\ **Note:** This class is not a language server client that can be used to access LSP functionality. It only provides access to a limited set of features that is implemented using the same technical foundation as the language server.

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

方法说明
--------

.. _class_GDScriptLanguageProtocol_method_get_text_document:

.. rst-class:: classref-method

:ref:`GDScriptTextDocument<class_GDScriptTextDocument>` **get_text_document**\ (\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_get_text_document>`

**已弃用：** :ref:`GDScriptTextDocument<class_GDScriptTextDocument>` is deprecated.

Returns the language server's :ref:`GDScriptTextDocument<class_GDScriptTextDocument>` instance.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_get_workspace:

.. rst-class:: classref-method

:ref:`GDScriptWorkspace<class_GDScriptWorkspace>` **get_workspace**\ (\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_get_workspace>`

Returns the language server's :ref:`GDScriptWorkspace<class_GDScriptWorkspace>` instance.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_initialize:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **initialize**\ (\ params\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_initialize>`

**已弃用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_initialized:

.. rst-class:: classref-method

|void| **initialized**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_initialized>`

**已弃用：** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_is_initialized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_initialized**\ (\ ) |const| :ref:`🔗<class_GDScriptLanguageProtocol_method_is_initialized>`

Returns ``true`` if the language server was initialized by a language server client, ``false`` otherwise.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_is_smart_resolve_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_smart_resolve_enabled**\ (\ ) |const| :ref:`🔗<class_GDScriptLanguageProtocol_method_is_smart_resolve_enabled>`

Returns ``true`` if the language server is providing the smart resolve feature, ``false`` otherwise. The feature can be configured through the editor settings.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_notify_client:

.. rst-class:: classref-method

|void| **notify_client**\ (\ method\: :ref:`String<class_String>`, params\: :ref:`Variant<class_Variant>` = null, client_id\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_notify_client>`

**已弃用：** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_on_client_connected:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **on_client_connected**\ (\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_on_client_connected>`

**已弃用：** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_on_client_disconnected:

.. rst-class:: classref-method

|void| **on_client_disconnected**\ (\ client_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_on_client_disconnected>`

**已弃用：** Might result in unwanted side effects for connected clients.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
