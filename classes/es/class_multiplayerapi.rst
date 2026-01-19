:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerAPI:

MultiplayerAPI
==============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`, :ref:`SceneMultiplayer<class_SceneMultiplayer>`

Interfaz de la API multijugador de alto nivel.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Base class for high-level multiplayer API implementations. See also :ref:`MultiplayerPeer<class_MultiplayerPeer>`.

By default, :ref:`SceneTree<class_SceneTree>` has a reference to an implementation of this class and uses it to provide multiplayer capabilities (i.e. RPCs) across the whole scene.

It is possible to override the MultiplayerAPI instance used by specific tree branches by calling the :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>` method, effectively allowing to run both client and server in the same scene.

It is also possible to extend or replace the default implementation via scripting or native extensions. See :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` for details about extensions, :ref:`SceneMultiplayer<class_SceneMultiplayer>` for the details about the default implementation.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>` | :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` |
   +-----------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerAPI<class_MultiplayerAPI>`     | :ref:`create_default_interface<class_MultiplayerAPI_method_create_default_interface>`\ (\ ) |static|                                                                                                            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`get_default_interface<class_MultiplayerAPI_method_get_default_interface>`\ (\ ) |static|                                                                                                                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_peers<class_MultiplayerAPI_method_get_peers>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_remote_sender_id<class_MultiplayerAPI_method_get_remote_sender_id>`\ (\ )                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_unique_id<class_MultiplayerAPI_method_get_unique_id>`\ (\ )                                                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has_multiplayer_peer<class_MultiplayerAPI_method_has_multiplayer_peer>`\ (\ )                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_server<class_MultiplayerAPI_method_is_server>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`object_configuration_add<class_MultiplayerAPI_method_object_configuration_add>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ )                                |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`object_configuration_remove<class_MultiplayerAPI_method_object_configuration_remove>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ )                          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`poll<class_MultiplayerAPI_method_poll>`\ (\ )                                                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`rpc<class_MultiplayerAPI_method_rpc>`\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_default_interface<class_MultiplayerAPI_method_set_default_interface>`\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static|                                                            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_MultiplayerAPI_signal_connected_to_server:

.. rst-class:: classref-signal

**connected_to_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connected_to_server>`

Emitida cuando :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` de esta MultiplayerAPI se conecta con éxito a un servidor. Solo se emite en los clientes.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_connection_failed:

.. rst-class:: classref-signal

**connection_failed**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connection_failed>`

Emitida cuando el :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` de esta MultiplayerAPI falla al establecer una conexión con un servidor. Solo se emite en los clientes.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_connected>`

Emitted when this MultiplayerAPI's :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` connects with a new peer. ID is the peer ID of the new peer. Clients get notified when other clients connect to the same server. Upon connecting to a server, a client also receives this signal for the server (with ID being 1).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_disconnected>`

Emitted when this MultiplayerAPI's :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` disconnects from a peer. Clients get notified when other clients disconnect from the same server.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_server_disconnected:

.. rst-class:: classref-signal

**server_disconnected**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_server_disconnected>`

Emitida cuando el :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` de esta MultiplayerAPI se desconecta del servidor. Solo se emite en los clientes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_MultiplayerAPI_RPCMode:

.. rst-class:: classref-enumeration

enum **RPCMode**: :ref:`🔗<enum_MultiplayerAPI_RPCMode>`

.. _class_MultiplayerAPI_constant_RPC_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_DISABLED** = ``0``

Se utiliza con :ref:`Node.rpc_config()<class_Node_method_rpc_config>` para deshabilitar un método o propiedad para todas las llamadas RPC, haciéndolo no disponible. Es el valor por defecto para todos los métodos.

.. _class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_ANY_PEER** = ``1``

Used with :ref:`Node.rpc_config()<class_Node_method_rpc_config>` to set a method to be callable remotely by any peer. Analogous to the ``@rpc("any_peer")`` annotation. Calls are accepted from all remote peers, no matter if they are node's authority or not.

.. _class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_AUTHORITY** = ``2``

Used with :ref:`Node.rpc_config()<class_Node_method_rpc_config>` to set a method to be callable remotely only by the current multiplayer authority (which is the server by default). Analogous to the ``@rpc("authority")`` annotation. See :ref:`Node.set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_MultiplayerAPI_property_multiplayer_peer:

.. rst-class:: classref-property

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **multiplayer_peer** :ref:`🔗<class_MultiplayerAPI_property_multiplayer_peer>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_peer**\ (\ value\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ )
- :ref:`MultiplayerPeer<class_MultiplayerPeer>` **get_multiplayer_peer**\ (\ )

The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the MultiplayerAPI will become a network server (check with :ref:`is_server()<class_MultiplayerAPI_method_is_server>`) and will set root node's network mode to authority, or it will become a regular client peer. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to MultiplayerAPI's signals.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_MultiplayerAPI_method_create_default_interface:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **create_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_create_default_interface>`

Devuelve una nueva instancia del MultiplayerAPI predeterminado.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_default_interface:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_get_default_interface>`

Devuelve el nombre de la clase de implementación predeterminada de MultiplayerAPI. Suele ser ``"SceneMultiplayer"`` cuando :ref:`SceneMultiplayer<class_SceneMultiplayer>` está disponible. Véase :ref:`set_default_interface()<class_MultiplayerAPI_method_set_default_interface>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_peers**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_peers>`

Devuelve los ID de todos los pares conectados del :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` de este MultiplayerAPI.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_sender_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_remote_sender_id>`

Devuelve el ID del par remitente del RPC que se está ejecutando.

\ **Nota:** Este método devuelve ``0`` cuando se llama fuera de un RPC. Como tal, el ID del par original puede perderse cuando la ejecución del código se retrasa (como con la palabra clave ``await`` de GDScript).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_unique_id>`

Devuelve el ID único del par del :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` de este MultiplayerAPI.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_has_multiplayer_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_multiplayer_peer**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_has_multiplayer_peer>`

Devuelve ``true`` si hay un :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` establecido.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_is_server>`

Devuelve ``true`` si el :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` de este MultiplayerAPI es válido y está en modo servidor (escuchando las conexiones).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_add>`

Notifica a la MultiplayerAPI de una nueva ``configuration`` para el ``object`` dado. Este método es usado internamente por :ref:`SceneTree<class_SceneTree>` para configurar la ruta raíz para esta MultiplayerAPI (pasando ``null`` y un :ref:`NodePath<class_NodePath>` válido como ``configuration``). Este método puede ser usado además por implementaciones de MultiplayerAPI para proveer funcionalidades adicionales, consulta la implementación específica (ej. :ref:`SceneMultiplayer<class_SceneMultiplayer>`) para detalles de cómo lo usan.

\ **Nota:** Este método es principalmente relevante cuando se extiende o se sobrescribe el comportamiento de la MultiplayerAPI mediante :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_remove>`

Notifica a la MultiplayerAPI que debe eliminar una ``configuration`` para el ``object`` dado. Este método es usado internamente por :ref:`SceneTree<class_SceneTree>` para configurar la ruta raíz para esta MultiplayerAPI (pasando ``null`` y un :ref:`NodePath<class_NodePath>` vacío como ``configuration``). Este método puede ser usado además por implementaciones de MultiplayerAPI para proveer funcionalidades adicionales, consulta la implementación específica (ej. :ref:`SceneMultiplayer<class_SceneMultiplayer>`) para detalles de cómo lo usan.

\ **Nota:** Este método es principalmente relevante cuando se extiende o se sobrescribe el comportamiento de la MultiplayerAPI mediante :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_poll>`

Método utilizado para sondear la MultiplayerAPI. Solo tienes que preocuparte por esto si estableces :ref:`SceneTree.multiplayer_poll<class_SceneTree_property_multiplayer_poll>` a ``false``. Por defecto, :ref:`SceneTree<class_SceneTree>` sondeará sus MultiplayerAPI(s) por ti.

\ **Nota:** Este método resulta en llamadas RPC, por lo que se ejecutarán en el mismo contexto de esta función (ej. ``_process``, ``physics``, :ref:`Thread<class_Thread>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_MultiplayerAPI_method_rpc>`

Sends an RPC to the target ``peer``. The given ``method`` will be called on the remote ``object`` with the provided ``arguments``. The RPC may also be called locally depending on the implementation and RPC configuration. See :ref:`Node.rpc()<class_Node_method_rpc>` and :ref:`Node.rpc_config()<class_Node_method_rpc_config>`.

\ **Note:** Prefer using :ref:`Node.rpc()<class_Node_method_rpc>`, :ref:`Node.rpc_id()<class_Node_method_rpc_id>`, or ``my_method.rpc(peer, arg1, arg2, ...)`` (in GDScript), since they are faster. This method is mostly useful in conjunction with :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` when extending or replacing the multiplayer capabilities.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_set_default_interface:

.. rst-class:: classref-method

|void| **set_default_interface**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_set_default_interface>`

Establece la clase de implementación de MultiplayerAPI por defecto. Este método puede ser usado por módulos y extensiones para configurar cuál implementación será usada por :ref:`SceneTree<class_SceneTree>` cuando el motor se inicie.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
