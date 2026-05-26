:github_url: hide

.. _class_StreamPeerTLS:

StreamPeerTLS
=============

**继承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

处理 TLS 连接的流对等端。

.. rst-class:: classref-introduction-group

描述
----

处理 TLS 连接的流对等端。此对象可用于连接到 TLS 服务器或接受单个 TLS 客户端连接。

\ **注意：**\ 当导出到 Android 时，确保在导出项目或使用一键部署之前，在 Android 导出预设中启用 ``INTERNET`` 权限。否则，任何形式的网络通信都会被 Android 阻止。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`TLS 证书 <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`accept_stream<class_StreamPeerTLS_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`connect_to_stream<class_StreamPeerTLS_method_connect_to_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`disconnect_from_stream<class_StreamPeerTLS_method_disconnect_from_stream>`\ (\ )                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerTLS_Status>` | :ref:`get_status<class_StreamPeerTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeer<class_StreamPeer>`      | :ref:`get_stream<class_StreamPeerTLS_method_get_stream>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`poll<class_StreamPeerTLS_method_poll>`\ (\ )                                                                                                                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_StreamPeerTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerTLS_Status>`

.. _class_StreamPeerTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_DISCONNECTED** = ``0``

状态，表示 **StreamPeerTLS** 已断开连接。

.. _class_StreamPeerTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_HANDSHAKING** = ``1``

状态，表示 **StreamPeerTLS** 处于握手阶段。

.. _class_StreamPeerTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_CONNECTED** = ``2``

状态，表示 **StreamPeerTLS** 已连接至主机。

.. _class_StreamPeerTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR** = ``3``

状态，表示 **StreamPeerTLS** 处于出错状态。

.. _class_StreamPeerTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

错误状态，表示主机的 TLS 证书域名与请求验证的域名不匹配。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_StreamPeerTLS_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_StreamPeerTLS_method_accept_stream>`

以服务器的身份接受对等端连接，使用给定的服务器选项 ``server_options``\ 。见 :ref:`TLSOptions.server()<class_TLSOptions_method_server>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_connect_to_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_StreamPeerTLS_method_connect_to_stream>`

使用底层 :ref:`StreamPeer<class_StreamPeer>` ``stream`` 连接到对等端，并对远程证书是否由给定的 ``common_name`` 签名进行验证。传入 ``client_options`` 可以自定义信任的证书颁发机构，也可以禁用通用名称验证。见 :ref:`TLSOptions.client()<class_TLSOptions_method_client>` 和 :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_disconnect_from_stream:

.. rst-class:: classref-method

|void| **disconnect_from_stream**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_disconnect_from_stream>`

与主机断开连接。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_status>`

返回连接的状态。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_stream:

.. rst-class:: classref-method

:ref:`StreamPeer<class_StreamPeer>` **get_stream**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_stream>`

返回底层 :ref:`StreamPeer<class_StreamPeer>` 连接，在 :ref:`accept_stream()<class_StreamPeerTLS_method_accept_stream>` 或 :ref:`connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>` 中使用。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_poll>`

轮询连接以检查传入的字节。在 :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` 之前调用它以使其正常工作。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
