:github_url: hide

.. meta::
	:keywords: dns

.. _class_IP:

IP
==

**继承：** :ref:`Object<class_Object>`

网际协议（IP）支持函数，如 DNS 解析。

.. rst-class:: classref-introduction-group

描述
----

IP 包含网际协议（IP）的支持函数。TCP/IP 的支持在其他类中（请参阅 :ref:`StreamPeerTCP<class_StreamPeerTCP>` 和 :ref:`TCPServer<class_TCPServer>`\ ）。IP 提供 DNS 主机名解析支持，包括阻塞式和线程式。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_cache<class_IP_method_clear_cache>`\ (\ hostname\: :ref:`String<class_String>` = ""\ )                                                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`erase_resolve_item<class_IP_method_erase_resolve_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_local_addresses<class_IP_method_get_local_addresses>`\ (\ ) |const|                                                                                      |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_local_interfaces<class_IP_method_get_local_interfaces>`\ (\ ) |const|                                                                                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_resolve_item_address<class_IP_method_get_resolve_item_address>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                        | :ref:`get_resolve_item_addresses<class_IP_method_get_resolve_item_addresses>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                            |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ResolverStatus<enum_IP_ResolverStatus>`                    | :ref:`get_resolve_item_status<class_IP_method_get_resolve_item_status>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                  |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`resolve_hostname<class_IP_method_resolve_hostname>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ )                       |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`resolve_hostname_addresses<class_IP_method_resolve_hostname_addresses>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ )   |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`resolve_hostname_queue_item<class_IP_method_resolve_hostname_queue_item>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_IP_ResolverStatus:

.. rst-class:: classref-enumeration

enum **ResolverStatus**: :ref:`🔗<enum_IP_ResolverStatus>`

.. _class_IP_constant_RESOLVER_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_NONE** = ``0``

DNS 主机名解析器状态：无状态。

.. _class_IP_constant_RESOLVER_STATUS_WAITING:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_WAITING** = ``1``

DNS 主机名解析器状态：正在等待。

.. _class_IP_constant_RESOLVER_STATUS_DONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_DONE** = ``2``

DNS 主机名解析器状态：完成。

.. _class_IP_constant_RESOLVER_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_ERROR** = ``3``

DNS 主机名解析器状态：错误。

.. rst-class:: classref-item-separator

----

.. _enum_IP_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_IP_Type>`

.. _class_IP_constant_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_NONE** = ``0``

地址类型：无。

.. _class_IP_constant_TYPE_IPV4:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_IPV4** = ``1``

地址类型：网际协议版本 4（IPv4）。

.. _class_IP_constant_TYPE_IPV6:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_IPV6** = ``2``

地址类型：网际协议版本 6（IPv6）。

.. _class_IP_constant_TYPE_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_ANY** = ``3``

地址类型：任意。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_IP_constant_RESOLVER_MAX_QUERIES:

.. rst-class:: classref-constant

**RESOLVER_MAX_QUERIES** = ``256`` :ref:`🔗<class_IP_constant_RESOLVER_MAX_QUERIES>`

允许的最大并发 DNS 解析器查询数量，如果超过，则返回 :ref:`RESOLVER_INVALID_ID<class_IP_constant_RESOLVER_INVALID_ID>`\ 。

.. _class_IP_constant_RESOLVER_INVALID_ID:

.. rst-class:: classref-constant

**RESOLVER_INVALID_ID** = ``-1`` :ref:`🔗<class_IP_constant_RESOLVER_INVALID_ID>`

无效的 ID 常量。在超过 :ref:`RESOLVER_MAX_QUERIES<class_IP_constant_RESOLVER_MAX_QUERIES>` 时返回。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_IP_method_clear_cache:

.. rst-class:: classref-method

|void| **clear_cache**\ (\ hostname\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_IP_method_clear_cache>`

移除所有 ``hostname`` 主机名的缓存引用。如果没有给出 ``hostname``\ ，所有缓存的 IP 地址将被删除。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_erase_resolve_item:

.. rst-class:: classref-method

|void| **erase_resolve_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_IP_method_erase_resolve_item>`

从队列中删除一个给定的项目 ``id``\ 。这应该被用来在队列完成后释放队列，以便进行更多的查询。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_local_addresses:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_local_addresses**\ (\ ) |const| :ref:`🔗<class_IP_method_get_local_addresses>`

以数组形式返回所有用户的当前 IPv4 和 IPv6 地址。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_local_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_local_interfaces**\ (\ ) |const| :ref:`🔗<class_IP_method_get_local_interfaces>`

以数组形式返回所有网络适配器。

每个适配器都是一个以下形式的字典：

::

    {
        "index":"1", # 接口索引。
        "name":"eth0", # 接口名称。
        "friendly":"Ethernet One", # 友好的名字（可能是空的）。
        "address":["192.168.1.101"], # 与此接口相关的 IP 地址数组。
    }

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_resolve_item_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_address>`

给定队列 ``id``\ ，返回排队主机名的 IP 地址。出现错误或解析尚未发生时返回一个空字符串（见 :ref:`get_resolve_item_status()<class_IP_method_get_resolve_item_status>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_addresses:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_resolve_item_addresses**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_addresses>`

如果发生错误或尚未发生解析，则返回已解析的地址或空数组（请参阅 :ref:`get_resolve_item_status()<class_IP_method_get_resolve_item_status>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_status:

.. rst-class:: classref-method

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **get_resolve_item_status**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_status>`

给定队列 ``id``\ ，以 :ref:`ResolverStatus<enum_IP_ResolverStatus>` 常量的形式返回排队主机名的状态。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname:

.. rst-class:: classref-method

:ref:`String<class_String>` **resolve_hostname**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname>`

在解析时返回一个给定的主机名的 IPv4 或 IPv6 地址（阻塞类型方法）。返回的地址类型取决于作为 ``ip_type`` 的 :ref:`Type<enum_IP_Type>` 常量。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname_addresses:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **resolve_hostname_addresses**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname_addresses>`

以阻塞方式解析给定的主机名。地址作为 IPv4 或 IPv6 的 :ref:`Array<class_Array>` 数组返回，具体取决于 ``ip_type``\ 。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname_queue_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **resolve_hostname_queue_item**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname_queue_item>`

创建一个队列项目，根据 :ref:`Type<enum_IP_Type>` 常量 ``ip_type``\ ，将主机名解析为 IPv4 或 IPv6 地址。如果成功，则返回队列 ID，否则返回 :ref:`RESOLVER_INVALID_ID<class_IP_constant_RESOLVER_INVALID_ID>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
