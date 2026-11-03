:github_url: hide

.. _class_UPNPDevice:

UPNPDevice
==========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通用隨插即用（UPnP）裝置。

.. rst-class:: classref-introduction-group

說明
----

通用隨插即用（UPnP）裝置。UPnP 發現及工具函式見 :ref:`UPNP<class_UPNP>`\ 。提供對 UPNP 控制命令的低層存取。允許管理埠對應（埠轉發）和查詢裝置的網路資訊（如本地和外部 IP 位址和狀態）。請注意，這個類的方法是同步的，會阻塞呼叫執行緒。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`description_url<class_UPNPDevice_property_description_url>`   | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_control_url<class_UPNPDevice_property_igd_control_url>`   | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_our_addr<class_UPNPDevice_property_igd_our_addr>`         | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`igd_service_type<class_UPNPDevice_property_igd_service_type>` | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` | :ref:`igd_status<class_UPNPDevice_property_igd_status>`             | ``9``  |
   +---------------------------------------------+---------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                 | :ref:`service_type<class_UPNPDevice_property_service_type>`         | ``""`` |
   +---------------------------------------------+---------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`add_port_mapping<class_UPNPDevice_method_add_port_mapping>`\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`delete_port_mapping<class_UPNPDevice_method_delete_port_mapping>`\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const|                                                                                                                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_valid_gateway<class_UPNPDevice_method_is_valid_gateway>`\ (\ ) |const|                                                                                                                                                                                                      |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`query_external_address<class_UPNPDevice_method_query_external_address>`\ (\ ) |const|                                                                                                                                                                                          |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_UPNPDevice_IGDStatus:

.. rst-class:: classref-enumeration

enum **IGDStatus**: :ref:`🔗<enum_UPNPDevice_IGDStatus>`

.. _class_UPNPDevice_constant_IGD_STATUS_OK:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_OK** = ``0``

OK。

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_ERROR** = ``1``

HTTP 錯誤。

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_EMPTY:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_EMPTY** = ``2``

空的 HTTP 回應。

.. _class_UPNPDevice_constant_IGD_STATUS_NO_URLS:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_URLS** = ``3``

**已棄用：** This value is no longer used.

返回的回應不包含任何 URL。

.. _class_UPNPDevice_constant_IGD_STATUS_NO_IGD:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_IGD** = ``4``

不是有效的 IGD。

.. _class_UPNPDevice_constant_IGD_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_DISCONNECTED** = ``5``

已斷開連接。

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_DEVICE:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_DEVICE** = ``6``

未知裝置。

.. _class_UPNPDevice_constant_IGD_STATUS_INVALID_CONTROL:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_INVALID_CONTROL** = ``7``

無效控制。

.. _class_UPNPDevice_constant_IGD_STATUS_MALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_MALLOC_ERROR** = ``8``

**已棄用：** This value is no longer used.

記憶體分配錯誤。

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_ERROR** = ``9``

未知錯誤。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_UPNPDevice_property_description_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **description_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_description_url>`

.. rst-class:: classref-property-setget

- |void| **set_description_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_description_url**\ (\ )

裝置描述的 URL。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_control_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_control_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_control_url>`

.. rst-class:: classref-property-setget

- |void| **set_igd_control_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_control_url**\ (\ )

IDG 控制項 URL。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_our_addr:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_our_addr** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_our_addr>`

.. rst-class:: classref-property-setget

- |void| **set_igd_our_addr**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_our_addr**\ (\ )

將其連接到該 **UPNPDevice** 的網路中的本地機器的位址。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_igd_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_service_type**\ (\ )

IGD 服務型別。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_status:

.. rst-class:: classref-property

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **igd_status** = ``9`` :ref:`🔗<class_UPNPDevice_property_igd_status>`

.. rst-class:: classref-property-setget

- |void| **set_igd_status**\ (\ value\: :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>`\ )
- :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **get_igd_status**\ (\ )

IGD 狀態。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_service_type**\ (\ )

服務型別。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_UPNPDevice_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNPDevice_method_add_port_mapping>`

新增一個埠對應，將這個 **UPNPDevice** 上給定的外部埠轉發到本地機器上，以給定的協議。見 :ref:`UPNP.add_port_mapping()<class_UPNP_method_add_port_mapping>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNPDevice_method_delete_port_mapping>`

刪除該裝置上由給定的埠和協定組合確定的埠對應。見 :ref:`UPNP.delete_port_mapping()<class_UPNP_method_delete_port_mapping>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_is_valid_gateway:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_gateway**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_is_valid_gateway>`

如果這是一個有效的 IGD（InternetGatewayDevice），可能支援埠轉發，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_query_external_address>`

返回這個 **UPNPDevice** 的外部 IP 位址或空字串。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
