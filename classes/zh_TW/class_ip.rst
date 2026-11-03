:github_url: hide

.. meta::
	:keywords: dns

.. _class_IP:

IP
==

**繼承：** :ref:`Object<class_Object>`

網際協定（IP）支援函式，如 DNS 解析。

.. rst-class:: classref-introduction-group

說明
----

IP 包含網際協定（IP）的支援函式。TCP/IP 的支援在其他類中（請參閱 :ref:`StreamPeerTCP<class_StreamPeerTCP>` 和 :ref:`TCPServer<class_TCPServer>`\ ）。IP 提供 DNS 主機名稱解析支援，包括阻塞式和執行緒式。

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

列舉
----

.. _enum_IP_ResolverStatus:

.. rst-class:: classref-enumeration

enum **ResolverStatus**: :ref:`🔗<enum_IP_ResolverStatus>`

.. _class_IP_constant_RESOLVER_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_NONE** = ``0``

DNS 主機名稱解析器狀態：無狀態。

.. _class_IP_constant_RESOLVER_STATUS_WAITING:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_WAITING** = ``1``

DNS 主機名稱解析器狀態：正在等待。

.. _class_IP_constant_RESOLVER_STATUS_DONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_DONE** = ``2``

DNS 主機名稱解析器狀態：完成。

.. _class_IP_constant_RESOLVER_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_ERROR** = ``3``

DNS 主機名稱解析器狀態：錯誤。

.. rst-class:: classref-item-separator

----

.. _enum_IP_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_IP_Type>`

.. _class_IP_constant_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_NONE** = ``0``

網址類別型：無。

.. _class_IP_constant_TYPE_IPV4:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_IPV4** = ``1``

網址類別型：網際協議版本 4（IPv4）。

.. _class_IP_constant_TYPE_IPV6:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_IPV6** = ``2``

網址類別型：網際協議版本 6（IPv6）。

.. _class_IP_constant_TYPE_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_ANY** = ``3``

網址類別型：任意。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_IP_constant_RESOLVER_MAX_QUERIES:

.. rst-class:: classref-constant

**RESOLVER_MAX_QUERIES** = ``256`` :ref:`🔗<class_IP_constant_RESOLVER_MAX_QUERIES>`

允許的最大併發 DNS 解析器查詢數量，如果超過，則返回 :ref:`RESOLVER_INVALID_ID<class_IP_constant_RESOLVER_INVALID_ID>`\ 。

.. _class_IP_constant_RESOLVER_INVALID_ID:

.. rst-class:: classref-constant

**RESOLVER_INVALID_ID** = ``-1`` :ref:`🔗<class_IP_constant_RESOLVER_INVALID_ID>`

無效的 ID 常數。在超過 :ref:`RESOLVER_MAX_QUERIES<class_IP_constant_RESOLVER_MAX_QUERIES>` 時返回。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_IP_method_clear_cache:

.. rst-class:: classref-method

|void| **clear_cache**\ (\ hostname\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_IP_method_clear_cache>`

移除所有 ``hostname`` 主機名稱的快取引用。如果沒有給出 ``hostname``\ ，所有快取的 IP 地址將被刪除。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_erase_resolve_item:

.. rst-class:: classref-method

|void| **erase_resolve_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_IP_method_erase_resolve_item>`

從佇列中刪除一個給定的專案 ``id``\ 。這應該被用來在佇列完成後釋放佇列，以便進行更多的查詢。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_local_addresses:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_local_addresses**\ (\ ) |const| :ref:`🔗<class_IP_method_get_local_addresses>`

以陣列形式返回所有使用者的目前 IPv4 和 IPv6 地址。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_local_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_local_interfaces**\ (\ ) |const| :ref:`🔗<class_IP_method_get_local_interfaces>`

以陣列形式返回所有網路介面卡。

每個適配器都是一個以下形式的字典：

::

    {
        "index":"1", # 介面索引。
        "name":"eth0", # 介面名稱。
        "friendly":"Ethernet One", # 友好的名字（可能是空的）。
        "address":["192.168.1.101"], # 與此介面相關的 IP 位址陣列。
    }

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_resolve_item_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_address>`

給定佇列 ``id``\ ，返回排隊主機名稱的 IP 位址。出現錯誤或解析尚未發生時返回一個空字串（見 :ref:`get_resolve_item_status()<class_IP_method_get_resolve_item_status>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_addresses:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_resolve_item_addresses**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_addresses>`

如果發生錯誤或尚未發生解析，則返回已解析的位址或空陣列（請參閱 :ref:`get_resolve_item_status()<class_IP_method_get_resolve_item_status>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_status:

.. rst-class:: classref-method

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **get_resolve_item_status**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_status>`

給定佇列 ``id``\ ，以 :ref:`ResolverStatus<enum_IP_ResolverStatus>` 常數的形式返回排隊主機名稱的狀態。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname:

.. rst-class:: classref-method

:ref:`String<class_String>` **resolve_hostname**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname>`

在解析時返回一個給定的主機名稱的 IPv4 或 IPv6 位址（阻塞型別方法）。返回的地址型別取決於作為 ``ip_type`` 的 :ref:`Type<enum_IP_Type>` 常數。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname_addresses:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **resolve_hostname_addresses**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname_addresses>`

以阻塞方式解析給定的主機名稱。位址作為 IPv4 或 IPv6 的 :ref:`Array<class_Array>` 陣列返回，具體取決於 ``ip_type``\ 。

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname_queue_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **resolve_hostname_queue_item**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname_queue_item>`

建立一個佇列專案，根據 :ref:`Type<enum_IP_Type>` 常數 ``ip_type``\ ，將主機名稱解析為 IPv4 或 IPv6 地址。如果成功，則返回佇列 ID，否則返回 :ref:`RESOLVER_INVALID_ID<class_IP_constant_RESOLVER_INVALID_ID>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
