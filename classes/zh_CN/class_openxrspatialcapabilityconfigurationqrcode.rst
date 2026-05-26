:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationQrCode:

OpenXRSpatialCapabilityConfigurationQrCode
==========================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

微型二维码标记的配置标头。

.. rst-class:: classref-introduction-group

描述
----

用于微型二维码标记的配置标头。将它传递给 :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` 即可创建一个能够检测微型二维码标记的空间上下文。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationQrCode_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialCapabilityConfigurationQrCode_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationQrCode_method_get_enabled_components>`

返回该配置启用的组件。

\ **注意：**\ 仅在该配置用于创建空间上下文后有效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
