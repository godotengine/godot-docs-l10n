:github_url: hide

.. _class_PacketPeerDTLS:

PacketPeerDTLS
==============

**继承：** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

DTLS 数据包客户端。

.. rst-class:: classref-introduction-group

描述
----

这个类表示 DTLS 对等体连接。它可以用来连接到 DTLS 服务器，由 :ref:`DTLSServer.take_connection()<class_DTLSServer_method_take_connection>` 返回。

\ **注意：**\ 导出到 Android 时，在导出项目或使用一键部署前，请确保在 Android 导出预设中启用 ``INTERNET`` 权限。否则，任何类型的网络通信都将被 Android 阻止。

\ **警告：**\ 目前不支持 TLS 证书撤销和证书绑定。只要撤销的证书在其他方面有效，就会被接受。如果这是一个问题，可以使用有效期较短的自动管理证书。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`connect_to_peer<class_PacketPeerDTLS_method_connect_to_peer>`\ (\ packet_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`, hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`disconnect_from_peer<class_PacketPeerDTLS_method_disconnect_from_peer>`\ (\ )                                                                                                                                                     |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_PacketPeerDTLS_Status>` | :ref:`get_status<class_PacketPeerDTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                                 |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`poll<class_PacketPeerDTLS_method_poll>`\ (\ )                                                                                                                                                                                     |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_PacketPeerDTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_PacketPeerDTLS_Status>`

.. _class_PacketPeerDTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_DISCONNECTED** = ``0``

表示已断开连接的 **PacketPeerDTLS** 的状态。

.. _class_PacketPeerDTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_HANDSHAKING** = ``1``

表示当前正在与远程对等方进行握手的 **PacketPeerDTLS** 的状态。

.. _class_PacketPeerDTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_CONNECTED** = ``2``

表示连接到远程对等方的 **PacketPeerDTLS** 的状态。

.. _class_PacketPeerDTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_ERROR** = ``3``

表示处于一般错误状态的 **PacketPeerDTLS** 的状态。

.. _class_PacketPeerDTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

显示主机提供的 DTLS 证书域与请求验证的域不匹配的错误状态。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PacketPeerDTLS_method_connect_to_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_peer**\ (\ packet_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`, hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_PacketPeerDTLS_method_connect_to_peer>`

连接 ``packet_peer`` 并开始使用底层的 :ref:`PacketPeerUDP<class_PacketPeerUDP>` 进行 DTLS 握手，进行握手时 :ref:`PacketPeerUDP<class_PacketPeerUDP>` 必须已连接（见 :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`\ ）。你还可以指定验证 TLS 连接时使用的 ``client_options``\ 。见 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_disconnect_from_peer:

.. rst-class:: classref-method

|void| **disconnect_from_peer**\ (\ ) :ref:`🔗<class_PacketPeerDTLS_method_disconnect_from_peer>`

断开此对等体的连接，终止 DTLS 会话。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_PacketPeerDTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_PacketPeerDTLS_method_get_status>`

返回连接的状态。

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_PacketPeerDTLS_method_poll>`

轮询连接以检查传入的数据包。经常调用此选项以更新状态并保持连接正常工作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
