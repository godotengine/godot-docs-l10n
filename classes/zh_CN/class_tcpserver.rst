:github_url: hide

.. _class_TCPServer:

TCPServer
=========

**继承：** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

TCP 服务器。

.. rst-class:: classref-introduction-group

描述
----

A TCP server. Listens to connections on a port and returns a :ref:`StreamPeerTCP<class_StreamPeerTCP>` when it gets an incoming connection.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using remote deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_local_port<class_TCPServer_method_get_local_port>`\ (\ ) |const|                                                         |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_TCPServer_method_listen>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerTCP<class_StreamPeerTCP>` | :ref:`take_connection<class_TCPServer_method_take_connection>`\ (\ )                                                               |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TCPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_TCPServer_method_get_local_port>`

返回该服务器正在监听的本地端口。

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_TCPServer_method_listen>`

在 ``port`` 上监听与 ``bind_address`` 绑定的地址。

如果 ``bind_address`` 被设置为 ``"*"``\ （默认），该服务器将监听所有可用地址（包括 IPv4 和 IPv6）。

如果 ``bind_address`` 被设置为 ``"0.0.0.0"``\ （用于 IPv4）或 ``"::"``\ （用于 IPv6），该服务器将监听所有符合该 IP 类型的可用地址。

如果 ``bind_address`` 被设置为任何有效的地址（如 ``"192.168.1.101"``\ 、\ ``"::1"`` 等），该服务器将只在具有该地址的接口上监听（如果不存在具有该地址的接口则失败）。

.. rst-class:: classref-item-separator

----

.. _class_TCPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerTCP<class_StreamPeerTCP>` **take_connection**\ (\ ) :ref:`🔗<class_TCPServer_method_take_connection>`

如果连接可用，则返回带有该连接的 StreamPeerTCP。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
