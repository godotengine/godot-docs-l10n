:github_url: hide

.. _class_StreamPeerTCP:

StreamPeerTCP
=============

**继承：** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

处理 TCP 连接的流对等体。

.. rst-class:: classref-introduction-group

描述
----

处理 TCP 连接的流对等体。该对象可用于连接 TCP 服务器，也可以由 TCP 服务器返回。

\ **注意：**\ 导出到安卓时，在导出项目或使用一键部署之前，请务必在安卓导出预设中，开启 ``INTERNET`` 权限。否则，任何类型的网络通信都将被 Android 阻止。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`bind<class_StreamPeerTCP_method_bind>`\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ )                 |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`connect_to_host<class_StreamPeerTCP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`disconnect_from_host<class_StreamPeerTCP_method_disconnect_from_host>`\ (\ )                                                         |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_connected_host<class_StreamPeerTCP_method_get_connected_host>`\ (\ ) |const|                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_connected_port<class_StreamPeerTCP_method_get_connected_port>`\ (\ ) |const|                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_local_port<class_StreamPeerTCP_method_get_local_port>`\ (\ ) |const|                                                             |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerTCP_Status>` | :ref:`get_status<class_StreamPeerTCP_method_get_status>`\ (\ ) |const|                                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`poll<class_StreamPeerTCP_method_poll>`\ (\ )                                                                                         |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`set_no_delay<class_StreamPeerTCP_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                      |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_StreamPeerTCP_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerTCP_Status>`

.. _class_StreamPeerTCP_constant_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_NONE** = ``0``

**StreamPeerTCP**\ 的初始状态。这也是断开连接后的状态。

.. _class_StreamPeerTCP_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_CONNECTING** = ``1``

表示正在连接到主机的 **StreamPeerTCP** 的状态。

.. _class_StreamPeerTCP_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_CONNECTED** = ``2``

表示已经连接到主机的 **StreamPeerTCP** 的状态。

.. _class_StreamPeerTCP_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_ERROR** = ``3``

表示处于错误状态的 **StreamPeerTCP** 的状态。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_StreamPeerTCP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_StreamPeerTCP_method_bind>`

打开 TCP 套接字，并将其绑定到指定的本地地址。

通常不需要这个方法，只是用来强制让后续调用 :ref:`connect_to_host()<class_StreamPeerTCP_method_connect_to_host>` 时使用指定的主机 ``host`` 和端口 ``port`` 作为源地址。会在部分 NAT 打洞技术中用到，也可用于强制设置源网络接口。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerTCP_method_connect_to_host>`

连接到指定的 ``host:port`` 对。如果使用的是有效主机名，则会进行解析。成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_disconnect_from_host:

.. rst-class:: classref-method

|void| **disconnect_from_host**\ (\ ) :ref:`🔗<class_StreamPeerTCP_method_disconnect_from_host>`

与主机断开连接。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_host>`

返回该对等体的IP。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_port>`

返回该对等体的端口。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_local_port>`

返回该对等体绑定到的本地端口。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerTCP_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_status>`

返回连接的状态。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_StreamPeerTCP_method_poll>`

轮询套接字，更新其状态。见 :ref:`get_status()<class_StreamPeerTCP_method_get_status>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_StreamPeerTCP_method_set_no_delay>`

如果 ``enabled`` 为 ``true``\ ，数据包会立即发送。如果 ``enabled`` 为 ``false``\ （默认值），数据包传输将被延迟，并使用\ `纳格算法 <https://zh.wikipedia.org/wiki/%E7%B4%8D%E6%A0%BC%E7%AE%97%E6%B3%95>`__\ 合并。

\ **注意：**\ 对于发送大数据包或需要传输大量数据的应用程序，建议将本属性保持禁用，因为启用本属性会减少总体可用带宽。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
