:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerAPI:

MultiplayerAPI
==============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`, :ref:`SceneMultiplayer<class_SceneMultiplayer>`

高阶多人游戏 API 接口。

.. rst-class:: classref-introduction-group

描述
----

用于高级多人游戏 API 实现的基类。另见 :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ 。

默认情况下，\ :ref:`SceneTree<class_SceneTree>` 引用了这个类的一个实现，并使用它来提供跨整个场景的多人游戏功能（即 RPC）。

可以通过调用 :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>` 方法，覆盖特定树分支使用的 MultiplayerAPI 实例，从而有效地允许在同一场景中同时运行客户端和服务器。

也可以通过脚本或本地扩展来扩展或替换默认实现。有关扩展的详细信息，请参阅 :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`\ ；有关默认实现的详细信息，请参阅 :ref:`SceneMultiplayer<class_SceneMultiplayer>`\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>` | :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` |
   +-----------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

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

信号
----

.. _class_MultiplayerAPI_signal_connected_to_server:

.. rst-class:: classref-signal

**connected_to_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connected_to_server>`

当此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 成功连接到服务器时发出。仅在客户端上发出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_connection_failed:

.. rst-class:: classref-signal

**connection_failed**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connection_failed>`

当此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 无法与服务器建立连接时发出。仅在客户端上发出。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_connected>`

当此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 与新对等体连接时发出。ID 为新对等体的对等体 ID。当某个客户端连接到同一服务器时，其他客户端会收到通知。连接到服务器时，该客户端也会收到此信号，新对等体为服务器（ID 为 1）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_disconnected>`

当此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 与对等体断开连接时发出。当某个客户端从同一服务器断开连接时，其他客户端会收到通知。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_server_disconnected:

.. rst-class:: classref-signal

**server_disconnected**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_server_disconnected>`

当此 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 与服务器断开连接时发出。仅在客户端上发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_MultiplayerAPI_RPCMode:

.. rst-class:: classref-enumeration

enum **RPCMode**: :ref:`🔗<enum_MultiplayerAPI_RPCMode>`

.. _class_MultiplayerAPI_constant_RPC_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_DISABLED** = ``0``

在 :ref:`Node.rpc_config()<class_Node_method_rpc_config>` 中使用，可以为所有 RPC 调用禁用某个方法或属性，使其不可用。所有方法的默认值。

.. _class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_ANY_PEER** = ``1``

在 :ref:`Node.rpc_config()<class_Node_method_rpc_config>` 中使用，可以将某个方法设置为能够被任何对等体远程调用。类似于 ``@rpc("any_peer")`` 注解。接受来自所有远程对等体的调用，无论是否为节点的控制者。

.. _class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_AUTHORITY** = ``2``

在 :ref:`Node.rpc_config()<class_Node_method_rpc_config>` 中使用，可以将某个方法设置为仅能够被当前的多人控制者远程调用（默认为服务器）。类似于 ``@rpc("authority")`` 注解。见 :ref:`Node.set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MultiplayerAPI_property_multiplayer_peer:

.. rst-class:: classref-property

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **multiplayer_peer** :ref:`🔗<class_MultiplayerAPI_property_multiplayer_peer>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_peer**\ (\ value\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ )
- :ref:`MultiplayerPeer<class_MultiplayerPeer>` **get_multiplayer_peer**\ (\ )

处理 RPC 系统的对等体对象（设置后会启用网络）。根据对等体本身的不同，该 MultiplayerAPI 可能会成为网络服务器（使用 :ref:`is_server()<class_MultiplayerAPI_method_is_server>` 判断）并将根节点的网络模式设置为控制者，也可能会成为普通的客户端对等体。所有子节点默认会继承其网络模式。网络相关事件（连接、断开连接、新客户端）的处理是通过连接 MultiplayerAPI 的信号来完成的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MultiplayerAPI_method_create_default_interface:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **create_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_create_default_interface>`

返回默认 MultiplayerAPI 的新实例。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_default_interface:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_get_default_interface>`

返回默认的 MultiplayerAPI 实现类名称。\ :ref:`SceneMultiplayer<class_SceneMultiplayer>` 可用时通常为 ``"SceneMultiplayer"``\ 。见 :ref:`set_default_interface()<class_MultiplayerAPI_method_set_default_interface>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_peers**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_peers>`

返回这个 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 所有已连接对等体的对等体 ID。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_sender_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_remote_sender_id>`

返回当前正在执行的 RPC 的发送方对等 ID。

\ **注意：**\ 在 RPC 之外调用时，该方法返回 ``0``\ 。因此，当代码延迟执行时（例如使用 GDScript 的 ``await`` 关键字），原始对等 ID 可能会丢失。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_unique_id>`

返回这个 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 唯一对等体 ID。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_has_multiplayer_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_multiplayer_peer**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_has_multiplayer_peer>`

如果设置了 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_is_server>`

如果这个 MultiplayerAPI 的 :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 有效，且处于服务器模式（监听连接），则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_add>`

通知该 MultiplayerAPI，以添加用于给定 ``object`` 的新的 ``configuration``\ 。该方法在内部被 :ref:`SceneTree<class_SceneTree>` 使用，以配置该 MultiplayerAPI 的根路径（传入 ``null`` 并将一个有效的 :ref:`NodePath<class_NodePath>` 作为 ``configuration``\ ）。该方法可以进一步被 MultiplayerAPI 实现使用，以提供其他功能，有关如何使用它的详细信息，请参阅具体实现（例如 :ref:`SceneMultiplayer<class_SceneMultiplayer>`\ ）。

\ **注意：**\ 当通过 :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` 扩展或重写 MultiplayerAPI 行为时，该方法最相关。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_remove>`

通知该 MultiplayerAPI，以移除用于给定 ``object`` 的 ``configuration``\ 。该方法在内部被 :ref:`SceneTree<class_SceneTree>` 使用，以配置该 MultiplayerAPI 的根路径（传入 ``null`` 并将一个空的 :ref:`NodePath<class_NodePath>` 作为 ``configuration``\ ）。该方法可以进一步被 MultiplayerAPI 实现使用，以提供其他功能，有关如何使用它的详细信息，请参阅具体实现（例如 :ref:`SceneMultiplayer<class_SceneMultiplayer>`\ ）。

\ **注意：**\ 当通过 :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` 扩展或重写 MultiplayerAPI 行为时，该方法最相关。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_poll>`

用于轮询 MultiplayerAPI 的方法。将 :ref:`SceneTree.multiplayer_poll<class_SceneTree_property_multiplayer_poll>` 设置为 ``false`` 时才需要关心。默认情况下，\ :ref:`SceneTree<class_SceneTree>` 将为你轮询其 MultiplayerAPI。

\ **注意：**\ 该方法会导致 RPC 被调用，因此它们将在该函数的相同上下文中执行（例如 ``_process``\ 、\ ``physics``\ 、\ :ref:`Thread<class_Thread>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_MultiplayerAPI_method_rpc>`

向目标对等体 ``peer`` 发送 RPC。会使用提供的参数 ``arguments`` 在远程对象 ``object`` 上调用给定的方法 ``method``\ 。根据实现和 RPC 配置，RPC 可能也可以进行本地调用。见 :ref:`Node.rpc()<class_Node_method_rpc>` 和 :ref:`Node.rpc_config()<class_Node_method_rpc_config>`\ 。

\ **注意：**\ 请尽量使用 :ref:`Node.rpc()<class_Node_method_rpc>`\ 、\ :ref:`Node.rpc_id()<class_Node_method_rpc_id>` 或 ``my_method.rpc(peer, arg1, arg2, ...)``\ （适用于 GDScript），因为速度更快。这个方法主要用于 :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` 进行多人游戏能力的扩展和替换。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_set_default_interface:

.. rst-class:: classref-method

|void| **set_default_interface**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_set_default_interface>`

设置默认的 MultiplayerAPI 实现类。模块和扩展可以使用这个方法来配置引擎启动时 :ref:`SceneTree<class_SceneTree>` 将使用哪个实现。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
