:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader:

OpenXRSpatialCapabilityConfigurationBaseHeader
==============================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`OpenXRSpatialCapabilityConfigurationAnchor<class_OpenXRSpatialCapabilityConfigurationAnchor>`, :ref:`OpenXRSpatialCapabilityConfigurationAprilTag<class_OpenXRSpatialCapabilityConfigurationAprilTag>`, :ref:`OpenXRSpatialCapabilityConfigurationAruco<class_OpenXRSpatialCapabilityConfigurationAruco>`, :ref:`OpenXRSpatialCapabilityConfigurationMicroQrCode<class_OpenXRSpatialCapabilityConfigurationMicroQrCode>`, :ref:`OpenXRSpatialCapabilityConfigurationPlaneTracking<class_OpenXRSpatialCapabilityConfigurationPlaneTracking>`, :ref:`OpenXRSpatialCapabilityConfigurationQrCode<class_OpenXRSpatialCapabilityConfigurationQrCode>`

用于 OpenXR 空间能力配置标头的包装器基类。

.. rst-class:: classref-introduction-group

描述
----

OpenXR 空间功能配置标头的包装器基类。对于 OpenXR 空间实体系统中可用的每种功能配置结构，都需要实现该基类。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`_get_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>`\ (\ ) |virtual|                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_has_valid_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration>`\ (\ ) |virtual| |const| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_valid_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration>`\ (\ ) |const|                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_configuration**\ (\ ) |virtual| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>`

返回一个指向包含空间能力配置数据的结构的指针（编码为 ``int64_t`` 类型）。只要该对象仍然存在，该结构所占用的内存就应该保持可访问状态。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_configuration**\ (\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration>`

如果该对象包含有效的配置，并且可以通过调用 :ref:`_get_configuration()<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>` 方法检索该配置，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_valid_configuration**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration>`

如果该对象包含可用于调用 :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` 的有效配置，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
