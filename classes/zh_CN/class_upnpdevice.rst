:github_url: hide

.. _class_UPNPDevice:

UPNPDevice
==========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

通用即插即用（UPnP）设备。

.. rst-class:: classref-introduction-group

描述
----

通用即插即用（UPnP）设备。UPnP 发现及工具函数见 :ref:`UPNP<class_UPNP>`\ 。提供对 UPNP 控制命令的低层访问。允许管理端口映射（端口转发）和查询设备的网络信息（如本地和外部 IP 地址和状态）。请注意，这个类的方法是同步的，会阻塞调用线程。

.. rst-class:: classref-reftable-group

属性
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

枚举
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

HTTP 错误。

.. _class_UPNPDevice_constant_IGD_STATUS_HTTP_EMPTY:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_HTTP_EMPTY** = ``2``

空的 HTTP 响应。

.. _class_UPNPDevice_constant_IGD_STATUS_NO_URLS:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_URLS** = ``3``

**已弃用：** This value is no longer used.

返回的响应不包含任何 URL。

.. _class_UPNPDevice_constant_IGD_STATUS_NO_IGD:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_NO_IGD** = ``4``

不是有效的 IGD。

.. _class_UPNPDevice_constant_IGD_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_DISCONNECTED** = ``5``

已断开连接。

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_DEVICE:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_DEVICE** = ``6``

未知设备。

.. _class_UPNPDevice_constant_IGD_STATUS_INVALID_CONTROL:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_INVALID_CONTROL** = ``7``

无效控制。

.. _class_UPNPDevice_constant_IGD_STATUS_MALLOC_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_MALLOC_ERROR** = ``8``

**已弃用：** This value is no longer used.

内存分配错误。

.. _class_UPNPDevice_constant_IGD_STATUS_UNKNOWN_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **IGD_STATUS_UNKNOWN_ERROR** = ``9``

未知错误。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_UPNPDevice_property_description_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **description_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_description_url>`

.. rst-class:: classref-property-setget

- |void| **set_description_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_description_url**\ (\ )

设备描述的 URL。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_control_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_control_url** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_control_url>`

.. rst-class:: classref-property-setget

- |void| **set_igd_control_url**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_control_url**\ (\ )

IDG 控件 URL。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_our_addr:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_our_addr** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_our_addr>`

.. rst-class:: classref-property-setget

- |void| **set_igd_our_addr**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_our_addr**\ (\ )

将其连接到该 **UPNPDevice** 的网络中的本地机器的地址。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **igd_service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_igd_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_igd_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_igd_service_type**\ (\ )

IGD 服务类型。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_igd_status:

.. rst-class:: classref-property

:ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **igd_status** = ``9`` :ref:`🔗<class_UPNPDevice_property_igd_status>`

.. rst-class:: classref-property-setget

- |void| **set_igd_status**\ (\ value\: :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>`\ )
- :ref:`IGDStatus<enum_UPNPDevice_IGDStatus>` **get_igd_status**\ (\ )

IGD 状态。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_property_service_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **service_type** = ``""`` :ref:`🔗<class_UPNPDevice_property_service_type>`

.. rst-class:: classref-property-setget

- |void| **set_service_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_service_type**\ (\ )

服务类型。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_UPNPDevice_method_add_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_port_mapping**\ (\ port\: :ref:`int<class_int>`, port_internal\: :ref:`int<class_int>` = 0, desc\: :ref:`String<class_String>` = "", proto\: :ref:`String<class_String>` = "UDP", duration\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_UPNPDevice_method_add_port_mapping>`

添加一个端口映射，将这个 **UPNPDevice** 上给定的外部端口转发到本地机器上，以给定的协议。见 :ref:`UPNP.add_port_mapping()<class_UPNP_method_add_port_mapping>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_delete_port_mapping:

.. rst-class:: classref-method

:ref:`int<class_int>` **delete_port_mapping**\ (\ port\: :ref:`int<class_int>`, proto\: :ref:`String<class_String>` = "UDP"\ ) |const| :ref:`🔗<class_UPNPDevice_method_delete_port_mapping>`

删除该设备上由给定的端口和协议组合确定的端口映射。见 :ref:`UPNP.delete_port_mapping()<class_UPNP_method_delete_port_mapping>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_is_valid_gateway:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_gateway**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_is_valid_gateway>`

如果这是一个有效的 IGD（InternetGatewayDevice），可能支持端口转发，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_UPNPDevice_method_query_external_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **query_external_address**\ (\ ) |const| :ref:`🔗<class_UPNPDevice_method_query_external_address>`

返回这个 **UPNPDevice** 的外部 IP 地址或空字符串。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
