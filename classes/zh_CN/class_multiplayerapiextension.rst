:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerAPIExtension:

MultiplayerAPIExtension
=======================

**继承：** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于扩展 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 的基类。

.. rst-class:: classref-introduction-group

描述
----

该类可用于通过脚本或扩展来扩展或替换默认的 :ref:`MultiplayerAPI<class_MultiplayerAPI>` 实现。

下面的例子通过记录每一个正在进行的 RPC 和为复制而配置的每一个对象，扩展默认的实现（\ :ref:`SceneMultiplayer<class_SceneMultiplayer>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    extends MultiplayerAPIExtension
    class_name LogMultiplayer

    # 我们想扩展默认的 SceneMultiplayer。
    var base_multiplayer = SceneMultiplayer.new()

    func _init():
        # 仅传递基本信号（复制到 var 以避免循环引用）
        var cts = connected_to_server
        var cf = connection_failed
        var sd = server_disconnected
        var pc = peer_connected
        var pd = peer_disconnected
        base_multiplayer.connected_to_server.connect(func(): cts.emit())
        base_multiplayer.connection_failed.connect(func(): cf.emit())
        base_multiplayer.server_disconnected.connect(func(): sd.emit())
        base_multiplayer.peer_connected.connect(func(id): pc.emit(id))
        base_multiplayer.peer_disconnected.connect(func(id): pd.emit(id))

    func _poll():
        return base_multiplayer.poll()

    # 记录正在进行的 RPC 并将其转发到默认的多人游戏。
    func _rpc(peer: int, object: Object, method: StringName, args: Array) -> Error:
        print("获取用于 %d 的 RPC：%s::%s(%s)" % [peer, object, method, args])
        return base_multiplayer.rpc(peer, object, method, args)

    # 记录配置添加。例如，根路径（nullptr、NodePath），复制（Node、Spawner|Synchronizer），自定义。
    func _object_configuration_add(object, config: Variant) -> Error:
        if config is MultiplayerSynchronizer:
            print("添加用于 %s 的同步配置。同步器：%s" % [object, config])
        elif config is MultiplayerSpawner:
            print("将节点 %s 添加到出生列表。出生器：%s" % [object, config])
        return base_multiplayer.object_configuration_add(object, config)

    # 记录配置移除。例如，根路径（nullptr、NodePath），复制（Node、Spawner|Synchronizer），自定义。
    func _object_configuration_remove(object, config: Variant) -> Error:
        if config is MultiplayerSynchronizer:
            print("移除用于 %s 的同步配置。同步器：%s" % [object, config])
        elif config is MultiplayerSpawner:
            print("将节点 %s 从出生列表移除。出生器：%s" % [object, config])
        return base_multiplayer.object_configuration_remove(object, config)

    # 这些可以是可选的，但在我们的例子中，我们想要扩展 SceneMultiplayer，所以转发所有内容。
    func _set_multiplayer_peer(p_peer: MultiplayerPeer):
        base_multiplayer.multiplayer_peer = p_peer

    func _get_multiplayer_peer() -> MultiplayerPeer:
        return base_multiplayer.multiplayer_peer

    func _get_unique_id() -> int:
        return base_multiplayer.get_unique_id()

    func _get_remote_sender_id() -> int:
        return base_multiplayer.get_remote_sender_id()

    func _get_peer_ids() -> PackedInt32Array:
        return base_multiplayer.get_peers()



然后在你的主场景或在自动加载中调用 :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>`\ ，以开始使用你的自定义 :ref:`MultiplayerAPI<class_MultiplayerAPI>`\ ：


.. tabs::

 .. code-tab:: gdscript

    # autoload.gd
    func _enter_tree():
        # 将我们的自定义多人游戏设置为 SceneTree 中的主要的多人游戏。
        get_tree().set_multiplayer(LogMultiplayer.new())



原生扩展也可以在初始化期间，使用 :ref:`MultiplayerAPI.set_default_interface()<class_MultiplayerAPI_method_set_default_interface>` 方法将自己配置为默认实现。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>`   | :ref:`_get_multiplayer_peer<class_MultiplayerAPIExtension_private_method__get_multiplayer_peer>`\ (\ ) |virtual|                                                                                                                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_peer_ids<class_MultiplayerAPIExtension_private_method__get_peer_ids>`\ (\ ) |virtual| |const|                                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`_get_remote_sender_id<class_MultiplayerAPIExtension_private_method__get_remote_sender_id>`\ (\ ) |virtual| |const|                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`_get_unique_id<class_MultiplayerAPIExtension_private_method__get_unique_id>`\ (\ ) |virtual| |const|                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_object_configuration_add<class_MultiplayerAPIExtension_private_method__object_configuration_add>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual|                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_object_configuration_remove<class_MultiplayerAPIExtension_private_method__object_configuration_remove>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual|                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_poll<class_MultiplayerAPIExtension_private_method__poll>`\ (\ ) |virtual|                                                                                                                                                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_rpc<class_MultiplayerAPIExtension_private_method__rpc>`\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>`\ ) |virtual| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_set_multiplayer_peer<class_MultiplayerAPIExtension_private_method__set_multiplayer_peer>`\ (\ multiplayer_peer\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ ) |virtual|                                                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MultiplayerAPIExtension_private_method__get_multiplayer_peer:

.. rst-class:: classref-method

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **_get_multiplayer_peer**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_multiplayer_peer>`

在检索到 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 时调用。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_peer_ids:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_peer_ids**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_peer_ids>`

:ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>` 的回调。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_remote_sender_id**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_remote_sender_id>`

:ref:`MultiplayerAPI.get_remote_sender_id()<class_MultiplayerAPI_method_get_remote_sender_id>` 的回调。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_unique_id**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_unique_id>`

:ref:`MultiplayerAPI.get_unique_id()<class_MultiplayerAPI_method_get_unique_id>` 的回调。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__object_configuration_add>`

:ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>` 的回调。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__object_configuration_remove>`

:ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>` 的回调。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_poll**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__poll>`

:ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>` 的回调。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__rpc>`

:ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>` 的回调。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__set_multiplayer_peer:

.. rst-class:: classref-method

|void| **_set_multiplayer_peer**\ (\ multiplayer_peer\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__set_multiplayer_peer>`

在设置 :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` 时调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
