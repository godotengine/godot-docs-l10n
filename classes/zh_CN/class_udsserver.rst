:github_url: hide

.. _class_UDSServer:

UDSServer
=========

**继承：** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Unix 域套接字（UDS）服务器。

.. rst-class:: classref-introduction-group

描述
----

Unix 域套接字（UDS）服务器。监听套接字路径上的连接，并在收到传入连接时返回 :ref:`StreamPeerUDS<class_StreamPeerUDS>`\ 。Unix 域套接字使用文件系统命名空间在同一台机器上提供进程间通信。

\ **注意：**\ Unix 域套接字仅在类 Unix 系统（Linux、macOS 等）上可用，Windows 系统上不受支持。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_UDSServer_method_listen>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`StreamPeerUDS<class_StreamPeerUDS>` | :ref:`take_connection<class_UDSServer_method_take_connection>`\ (\ )                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_UDSServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_UDSServer_method_listen>`

监听 ``path`` 处的套接字。套接字文件将在指定路径创建。

\ **注意：**\ 指定路径下不能已存在套接字文件。调用该方法之前，可能需要删除任何已有的套接字文件。

.. rst-class:: classref-item-separator

----

.. _class_UDSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerUDS<class_StreamPeerUDS>` **take_connection**\ (\ ) :ref:`🔗<class_UDSServer_method_take_connection>`

如果连接可用，则返回带有该连接的 StreamPeerUDS。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
