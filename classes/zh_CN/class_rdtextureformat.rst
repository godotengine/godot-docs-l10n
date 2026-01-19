:github_url: hide

.. _class_RDTextureFormat:

RDTextureFormat
===============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

纹理格式（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`array_layers<class_RDTextureFormat_property_array_layers>`           | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`depth<class_RDTextureFormat_property_depth>`                         | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`                           | :ref:`format<class_RDTextureFormat_property_format>`                       | ``8``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`height<class_RDTextureFormat_property_height>`                       | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                      | :ref:`is_discardable<class_RDTextureFormat_property_is_discardable>`       | ``false`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                      | :ref:`is_resolve_buffer<class_RDTextureFormat_property_is_resolve_buffer>` | ``false`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`mipmaps<class_RDTextureFormat_property_mipmaps>`                     | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`                   | :ref:`samples<class_RDTextureFormat_property_samples>`                     | ``0``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`TextureType<enum_RenderingDevice_TextureType>`                         | :ref:`texture_type<class_RDTextureFormat_property_texture_type>`           | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] | :ref:`usage_bits<class_RDTextureFormat_property_usage_bits>`               | ``0``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`width<class_RDTextureFormat_property_width>`                         | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_shareable_format<class_RDTextureFormat_method_add_shareable_format>`\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )       |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_shareable_format<class_RDTextureFormat_method_remove_shareable_format>`\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDTextureFormat_property_array_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **array_layers** = ``1`` :ref:`🔗<class_RDTextureFormat_property_array_layers>`

.. rst-class:: classref-property-setget

- |void| **set_array_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_array_layers**\ (\ )

纹理的层数。仅适用于 2D 纹理数组。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth** = ``1`` :ref:`🔗<class_RDTextureFormat_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth**\ (\ )

纹理的深度（单位为像素）。2D 纹理始终为 ``1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``8`` :ref:`🔗<class_RDTextureFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

纹理的像素数据格式。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``1`` :ref:`🔗<class_RDTextureFormat_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

纹理的高度（单位为像素）。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_discardable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_discardable** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_discardable>`

.. rst-class:: classref-property-setget

- |void| **set_is_discardable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_discardable**\ (\ )

如果纹理可丢弃，则帧与帧之间不需要保留其内容。该标志仅在纹理作为绘制列表中的目标时相关。

\ :ref:`RenderingDevice<class_RenderingDevice>` 会使用该信息来判断纹理的内容是否可丢弃，进而消除不必要的内存写入、提升性能。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_resolve_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_resolve_buffer** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_resolve_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_is_resolve_buffer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_resolve_buffer**\ (\ )

该纹理将用作解析操作的目标。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_mipmaps:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps** = ``1`` :ref:`🔗<class_RDTextureFormat_property_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_mipmaps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mipmaps**\ (\ )

纹理中可用的 mipmap 数。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDTextureFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

对纹理进行采样时所使用的样本数。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_RenderingDevice_TextureType>` **texture_type** = ``1`` :ref:`🔗<class_RDTextureFormat_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_RenderingDevice_TextureType>`\ )
- :ref:`TextureType<enum_RenderingDevice_TextureType>` **get_texture_type**\ (\ )

纹理类型。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_usage_bits:

.. rst-class:: classref-property

|bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **usage_bits** = ``0`` :ref:`🔗<class_RDTextureFormat_property_usage_bits>`

.. rst-class:: classref-property-setget

- |void| **set_usage_bits**\ (\ value\: |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\]\ )
- |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **get_usage_bits**\ (\ )

纹理的用途位，决定使用该纹理时能做什么。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``1`` :ref:`🔗<class_RDTextureFormat_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

纹理的宽度（单位为像素）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RDTextureFormat_method_add_shareable_format:

.. rst-class:: classref-method

|void| **add_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_add_shareable_format>`

将 ``format`` 添加为相应 :ref:`RDTextureView<class_RDTextureView>` 的 :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` 属性的有效格式。如果将格式作为可共享格式添加，那么也必须添加主 :ref:`format<class_RDTextureFormat_property_format>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_method_remove_shareable_format:

.. rst-class:: classref-method

|void| **remove_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_remove_shareable_format>`

从相应 :ref:`RDTextureView<class_RDTextureView>` 的 :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` 属性可以设置的有效格式列表中移除 ``format``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
