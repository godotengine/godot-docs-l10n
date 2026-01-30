:github_url: hide

.. _class_UPNP:

UPNP
====

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通用即插即用（UPnP）功能，用于网络设备的发现、查询及端口映射。

.. rst-class:: classref-introduction-group

描述
----

这个类可用于在本地网络中发现兼容的 :ref:`UPNPDevice<class_UPNPDevice>` 并在这些设备上执行命令，如管理端口映射（用于端口转发/NAT 穿透）和查询本地及远程网络 IP 地址。请注意，这个类的方法都是同步的，会阻塞调用线程。

要转发指定端口（此处为 ``7777``\ ，请注意 :ref:`discover()<class_UPNP_method_discover>` 和 :ref:`add_port_mapping()<class_UPNP_method_add_port_mapping>` 都可能返回错误，应进行检查）：

::

    var upnp = UPNP.new()
    upnp.discover()
    upnp.add_port_mapping(7777)

要关闭指定端口（例如结束使用后）：

::

    upnp.delete_port_mapping(port)

\ **注意：**\ UPnP 发现会阻塞当前线程。要在不阻塞主线程的前提下执行发现，请像这样使用 :ref:`Thread<class_Thread>`\ ：

::

    # UPnP 端口映射建立完成时发出（无论成败）。
    signal upnp_completed(error)

    # 请将其替换为你自己的服务器端口号，在 1024 和 65535 之间。
    const SERVER_PORT = 3928
    var thread = null

    func _upnp_setup(server_port):
        # UPNP 查询比较耗时。
        var upnp = UPNP.new()
        var err = upnp.discover()

        if err != OK:
            push_error(str(err))
            upnp_completed.emit(err)
            return

        if upnp.get_gateway() and upnp.get_gateway().is_valid_gateway():
            upnp.add_port_mapping(server_port, server_port, ProjectSettings.get_setting("application/config/name"), "UDP")
            upnp.add_port_mapping(server_port, server_port, ProjectSettings.get_setting("application/config/name"), "TCP")
            upnp_completed.emit(OK)

    func _ready():
        thread = Thread.new()
        thread.start(_upnp_setup.bind(SERVER_PORT))

    func _exit_tree():
        # 游戏退出但线程还在运行时，在此处等待线程完成。
        thread.wait_to_finish()

\ **术语：**\ UPnP 网络中，“网关”（gateway，或称“互联网网关设备”，internet gateway device，简称 IGD）指的是在局域网中让计算机能够访问互联网（“广域网”，wide area network，WAN）的网络设备。这些网关经常也叫做“路由器”。

\ **陷阱：**\ 

- 前文解释过，这些调用都是阻塞的，不应该在主线程上执行，一次就能阻塞上很多秒。用用线程吧！

- 网络是实打实的混乱。数据包可能会在传输过程中丢失或者被过滤掉，地址、空闲端口、端口映射有可能发生变化，设备可以随时离开或者加入网络。请考虑周全，老老实实地检查错误并进行处理，处理错误时请尽量友好：添加简洁的报错 UI、超时处理、重试机制。

- 端口映射是随时会变的（也可以被删除），网关的远程/外部 IP 也可能发生改变。你应该考虑定期重新查询外部 IP、尝试更新/刷新端口映射（例如每隔 5 分钟或者在发生网络错误时执行）。

- 并不是所有的设备都支持 UPnP，有些用户还会禁用 UPnP 支持。你需要处理这种情况（例如编写文档，要求用户手动进行端口映射，或者加入接力/镜像服务器、NAT 打洞、STUN/TURN 等 NAT 穿透的备用方案）。

- 请考虑映射冲突时该怎么办。可能在同一个网络上同时有多个用户想要来玩你的游戏，或者有其他应用程序用了一样的端口。请把端口号做成可配置的，最好能够自动选择（失败时重试其他端口）。

\ **拓展阅读：**\ 如果你想了解更多关于 UPnP（尤其是 Internet Gateway Device（IGD）和 Port Control Protocol（PCP）），可以首先查看\ `维基百科 <https://en.wikipedia.org/wiki/Universal_Plug_and_Play>`__\ ，技术规范可以在 `Open Connectivity 基金会 <https://openconnectivity.org/developer/specifications/upnp-resources/upnp/>`__\ 找到，Godot 的实现基于的是 `MiniUPnP 客户端 <https://github.com/miniupnp/miniupnp>`__\ 。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`discover_ipv6<class_UPNP_property_discover_ipv6>`                 | ``false`` |
   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`discover_local_port<class_UPNP_property_discover_local_port>`     | ``0``     |
   +-----------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`discover_multicast_if<class_UPNP_property_discover_multicast_if>` | ``""``    |
   +-----------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`add_device<class_UPNP_method_add_device>`\ (\ device\: :ref:`UPNPDevice<class_UPNPDevice>`\ )                                                                                                                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`add_port_mapping<class_UPNP_method_add_port_mapping>`\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear_devices<class_UPNP_method_clear_devices>`\ (\ )                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`delete_port_mapping<class_UPNP_method_delete_port_mapping>`\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const|                                                                                                                     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`discover<class_UPNP_method_discover>`\ (\ timeout\: :ref:`int<class_int>` = 2000, ttl\: :ref:`int<class_int>` = 2, device_filter\: :ref:`String<class_String>` = "InternetGatewayDevice"\ )                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`UPNPDevice<class_UPNPDevice>` | :ref:`get_device<class_UPNP_method_get_device>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_device_count<class_UPNP_method_get_device_count>`\ (\ ) |const|                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`UPNPDevice<class_UPNPDevice>` | :ref:`get_gateway<class_UPNP_method_get_gateway>`\ (\ ) |const|                                                                                                                                                                                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`query_external_address<class_UPNP_method_query_external_address>`\ (\ ) |const|                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`remove_device<class_UPNP_method_remove_device>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_device<class_UPNP_method_set_device>`\ (\ index\: :ref:`int<class_int>`, device\: :ref:`UPNPDevice<class_UPNPDevice>`\ )                                                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_UPNP_UPNPResult:

.. rst-class:: classref-enumeration

enum **UPNPResult**: :ref:`🔗<enum_UPNP_UPNPResult>`

.. _class_UPNP_constant_UPNP_RESULT_SUCCESS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SUCCESS** = ``0``

UPNP 命令或发现成功。

.. _class_UPNP_constant_UPNP_RESULT_NOT_AUTHORIZED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NOT_AUTHORIZED** = ``1``

未授权在 :ref:`UPNPDevice<class_UPNPDevice>` 上使用该命令。当用户在其路由器上禁用 UPNP 时，可能会被返回。

.. _class_UPNP_constant_UPNP_RESULT_PORT_MAPPING_NOT_FOUND:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_PORT_MAPPING_NOT_FOUND** = ``2``

在给定的 :ref:`UPNPDevice<class_UPNPDevice>` 上没有找到给定端口、协议组合的端口映射。

.. _class_UPNP_constant_UPNP_RESULT_INCONSISTENT_PARAMETERS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INCONSISTENT_PARAMETERS** = ``3``

参数不一致。

.. _class_UPNP_constant_UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY** = ``4``

数组中没有此条目。可能在 :ref:`UPNPDevice<class_UPNPDevice>` 上没有找到给定的端口、协议组合时返回。

.. _class_UPNP_constant_UPNP_RESULT_ACTION_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_ACTION_FAILED** = ``5``

操作失败。

.. _class_UPNP_constant_UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED** = ``6``

:ref:`UPNPDevice<class_UPNPDevice>` 不允许源 IP 地址的通配符值。

.. _class_UPNP_constant_UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED** = ``7``

:ref:`UPNPDevice<class_UPNPDevice>` 不允许外部端口的通配符值。

.. _class_UPNP_constant_UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED** = ``8``

:ref:`UPNPDevice<class_UPNPDevice>` 不允许内部端口的通配符值。

.. _class_UPNP_constant_UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD** = ``9``

远程主机值必须是通配符。

.. _class_UPNP_constant_UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD** = ``10``

外部端口值必须是通配符。

.. _class_UPNP_constant_UPNP_RESULT_NO_PORT_MAPS_AVAILABLE:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_PORT_MAPS_AVAILABLE** = ``11``

没有可用的端口映射。如果端口映射功能不可用，也可能被返回。

.. _class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM** = ``12``

与其他机制冲突。如果一个端口映射与现有的冲突，可能会被返回，而不是\ :ref:`UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING<class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING>`\ 。

.. _class_UPNP_constant_UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING** = ``13``

与现有的端口映射相冲突。

.. _class_UPNP_constant_UPNP_RESULT_SAME_PORT_VALUES_REQUIRED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SAME_PORT_VALUES_REQUIRED** = ``14``

外部和内部端口值必须相同。

.. _class_UPNP_constant_UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED** = ``15``

只支持永久租用。在添加端口映射时，不要使用 ``duration`` 参数。

.. _class_UPNP_constant_UPNP_RESULT_INVALID_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_GATEWAY** = ``16``

无效网关。

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PORT** = ``17``

无效端口。

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PROTOCOL:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PROTOCOL** = ``18``

无效协议。

.. _class_UPNP_constant_UPNP_RESULT_INVALID_DURATION:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_DURATION** = ``19``

无效持续时间。

.. _class_UPNP_constant_UPNP_RESULT_INVALID_ARGS:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_ARGS** = ``20``

无效参数。

.. _class_UPNP_constant_UPNP_RESULT_INVALID_RESPONSE:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_RESPONSE** = ``21``

无效响应。

.. _class_UPNP_constant_UPNP_RESULT_INVALID_PARAM:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_INVALID_PARAM** = ``22``

无效参数。

.. _class_UPNP_constant_UPNP_RESULT_HTTP_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_HTTP_ERROR** = ``23``

HTTP 错误。

.. _class_UPNP_constant_UPNP_RESULT_SOCKET_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_SOCKET_ERROR** = ``24``

套接字错误。

.. _class_UPNP_constant_UPNP_RESULT_MEM_ALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_MEM_ALLOC_ERROR** = ``25``

分配内存时出错。

.. _class_UPNP_constant_UPNP_RESULT_NO_GATEWAY:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_GATEWAY** = ``26``

没有可用的网关。你可能需要先调用 :ref:`discover()<class_UPNP_method_discover>` ，否则发现没有检测到任何有效的 IGD（InternetGatewayDevices）。

.. _class_UPNP_constant_UPNP_RESULT_NO_DEVICES:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_NO_DEVICES** = ``27``

没有可用的设备。你可能需要先调用 :ref:`discover()<class_UPNP_method_discover>`\ ，或者发现没有检测到任何有效的 :ref:`UPNPDevice<class_UPNPDevice>`\ 。

.. _class_UPNP_constant_UPNP_RESULT_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`UPNPResult<enum_UPNP_UPNPResult>` **UPNP_RESULT_UNKNOWN_ERROR** = ``28``

未知错误。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_UPNP_property_discover_ipv6:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **discover_ipv6** = ``false`` :ref:`🔗<class_UPNP_property_discover_ipv6>`

.. rst-class:: classref-property-setget

- |void| **set_discover_ipv6**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_discover_ipv6**\ (\ )

如果为 ``true``\ ，则 IPv6 用于 :ref:`UPNPDevice<class_UPNPDevice>` 发现。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_property_discover_local_port:

.. rst-class:: classref-property

:ref:`int<class_int>` **discover_local_port** = ``0`` :ref:`🔗<class_UPNP_property_discover_local_port>`

.. rst-class:: classref-property-setget

- |void| **set_discover_local_port**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_discover_local_port**\ (\ )

如果为 ``0``\ ，系统会自动选择用于发现的本地端口。如果为 ``1``\ ，将从源端口 1900 进行发现（与目的端口相同）。否则，将使用该值作为端口。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_property_discover_multicast_if:

.. rst-class:: classref-property

:ref:`String<class_String>` **discover_multicast_if** = ``""`` :ref:`🔗<class_UPNP_property_discover_multicast_if>`

.. rst-class:: classref-property-setget

- |void| **set_discover_multicast_if**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_discover_multicast_if**\ (\ )

用于发现的多播接口。如果为空，则使用默认的多播接口。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_UPNP_method_add_device:

.. rst-class:: classref-method

|void| **add_device**\ (\ device\: :ref:`UPNPDevice<class_UPNPDevice>`\ ) :ref:`🔗<class_UPNP_method_add_device>`

将给定的 :ref:`UPNPDevice<class_UPNPDevice>` 添加到已发现设备的列表中。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNP_method_add_port_mapping>`

添加映射，针对给定的协议 ``proto``\ （\ ``"TCP"`` 或 ``"UDP"``\ ，默认为 UDP），将默认网关（见 :ref:`get_gateway()<class_UPNP_method_get_gateway>`\ ）上的外部端口 ``port``\ （在 1 到 65535 之间，不过推荐使用 1024 以上的端口）映射到本机上的内部端口 ``port_internal``\ 。如果该网关上已经存在给定的端口与协议的组合，这个方法会尝试进行覆盖。如果不希望如此，你可以使用 :ref:`get_gateway()<class_UPNP_method_get_gateway>` 手动获取网关，获取到后调用其 :ref:`add_port_mapping()<class_UPNP_method_add_port_mapping>` 方法。请注意，使用 UPnP 转发公认端口（1024 以下）在有些设备上可能会失败。

如果端口的映射已存在，有些网关设备可能会对其进行更新，有些则会因为冲突而拒绝这个命令，尤其当现有端口映射不是由 UPnP 创建的，或者指向的是别的网络地址（或设备）的时候。

如果 ``port_internal`` 为 ``0``\ （默认），表示内外部端口相同（使用 ``port`` 的值）。

描述（\ ``desc``\ ）会显示在一些路由器的管理界面上，可以用来识别添加映射的程序。

映射的租赁时长 ``duration`` 可以通过指定秒数来限定。默认的 ``0`` 表示没有时长，即永久租赁，有些设备只支持这种永久租赁。请注意，无论是否永久都只是一种请求，网关仍然可以随时移除映射（通常发生在重启网关后外部 IP 地址发生变化时，也有些型号会在映射不再活动，即若干分钟无流量时移除）。如果非 ``0``\ （永久），技术规格所允许的范围是 ``120``\ （2 分钟）到 ``86400`` 秒（24 小时）。

可能的返回值见 :ref:`UPNPResult<enum_UPNP_UPNPResult>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_clear_devices:

.. rst-class:: classref-method

|void| **clear_devices**\ (\ ) :ref:`🔗<class_UPNP_method_clear_devices>`

清除已发现设备的列表。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNP_method_delete_port_mapping>`

如果默认网关上存在对给定端口和协议组合的端口映射，则将其删除（见 :ref:`get_gateway()<class_UPNP_method_get_gateway>`\ ）。\ ``port`` 必须是 1 和 65535 之间的有效端口，\ ``proto`` 可以是 ``"TCP"`` 或 ``"UDP"``\ 。拒绝的原因可能是映射指向其他地址、端口为公认端口（1024 以下）、映射不是由 UPnP 添加的。可能的返回值见 :ref:`UPNPResult<enum_UPNP_UPNPResult>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_discover:

.. rst-class:: classref-method

:ref:`int<class_int>` **discover**\ (\ timeout\: :ref:`int<class_int>` = 2000, ttl\: :ref:`int<class_int>` = 2, device_filter\: :ref:`String<class_String>` = "InternetGatewayDevice"\ ) :ref:`🔗<class_UPNP_method_discover>`

发现本地的 :ref:`UPNPDevice<class_UPNPDevice>`\ 。清除先前发现的设备的列表。

默认情况下会过滤 IGD（InternetGatewayDevice）类型的设备，因为这些设备管理端口转发。\ ``timeout`` 是等待响应的时间，单位为毫秒。\ ``ttl`` 是生存时间；请在你知道自己在做什么的时候才碰这个参数。

可能的返回值见 :ref:`UPNPResult<enum_UPNP_UPNPResult>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_device:

.. rst-class:: classref-method

:ref:`UPNPDevice<class_UPNPDevice>` **get_device**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_UPNP_method_get_device>`

返回给定 ``index`` 处的 :ref:`UPNPDevice<class_UPNPDevice>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_device_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_device_count**\ (\ ) |const| :ref:`🔗<class_UPNP_method_get_device_count>`

返回已发现的 :ref:`UPNPDevice<class_UPNPDevice>` 的数量。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_get_gateway:

.. rst-class:: classref-method

:ref:`UPNPDevice<class_UPNPDevice>` **get_gateway**\ (\ ) |const| :ref:`🔗<class_UPNP_method_get_gateway>`

返回默认网关。这是第一个发现的\ :ref:`UPNPDevice<class_UPNPDevice>`\ ，也是一个有效的IGD（InternetGatewayDevice）。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNP_method_query_external_address>`

返回默认网关的外部 :ref:`IP<class_IP>` 地址字符串（见 :ref:`get_gateway()<class_UPNP_method_get_gateway>`\ ）。错误时返回空字符串。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_remove_device:

.. rst-class:: classref-method

|void| **remove_device**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_UPNP_method_remove_device>`

将 ``index`` 处的设备从已发现的设备列表中移除。

.. rst-class:: classref-item-separator

----

.. _class_UPNP_method_set_device:

.. rst-class:: classref-method

|void| **set_device**\ (\ index\: :ref:`int<class_int>`, device\: :ref:`UPNPDevice<class_UPNPDevice>`\ ) :ref:`🔗<class_UPNP_method_set_device>`

将 ``index`` 处的设备从已发现的设备列表中设置为 ``device``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
