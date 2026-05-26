:github_url: hide

.. _class_GDScriptLanguageProtocol:

GDScriptLanguageProtocol
========================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`JSONRPC<class_JSONRPC>` **<** :ref:`Object<class_Object>`

GDScript language server.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Provides access to certain features that are implemented in the language server.

\ **Note:** This class is not a language server client that can be used to access LSP functionality. It only provides access to a limited set of features that is implemented using the same technical foundation as the language server.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_GDScriptLanguageProtocol_method_get_text_document:

.. rst-class:: classref-method

:ref:`GDScriptTextDocument<class_GDScriptTextDocument>` **get_text_document**\ (\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_get_text_document>`

**Obsoleto:** :ref:`GDScriptTextDocument<class_GDScriptTextDocument>` is deprecated.

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

**Obsoleto:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_initialized:

.. rst-class:: classref-method

|void| **initialized**\ (\ params\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_initialized>`

**Obsoleto:** Accessing LSP endpoints directly might lead to unwanted side effects. Connect to the server via TCP, like a regular language server client.

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

**Obsoleto:** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_on_client_connected:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **on_client_connected**\ (\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_on_client_connected>`

**Obsoleto:** Might result in unwanted side effects for connected clients.

.. rst-class:: classref-item-separator

----

.. _class_GDScriptLanguageProtocol_method_on_client_disconnected:

.. rst-class:: classref-method

|void| **on_client_disconnected**\ (\ client_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GDScriptLanguageProtocol_method_on_client_disconnected>`

**Obsoleto:** Might result in unwanted side effects for connected clients.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
