:github_url: hide

.. _class_RDTextureFormat:

RDTextureFormat
===============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

紋理格式（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_RDTextureFormat_property_array_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **array_layers** = ``1`` :ref:`🔗<class_RDTextureFormat_property_array_layers>`

.. rst-class:: classref-property-setget

- |void| **set_array_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_array_layers**\ (\ )

紋理的層數。僅適用於 2D 紋理陣列。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth** = ``1`` :ref:`🔗<class_RDTextureFormat_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth**\ (\ )

紋理的深度（單位為圖元）。2D 紋理始終為 ``1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``8`` :ref:`🔗<class_RDTextureFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

紋理的圖元資料格式。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``1`` :ref:`🔗<class_RDTextureFormat_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

紋理的高度（單位為圖元）。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_discardable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_discardable** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_discardable>`

.. rst-class:: classref-property-setget

- |void| **set_is_discardable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_discardable**\ (\ )

If a texture is discardable, its contents do not need to be preserved between frames. This flag is only relevant when the texture is used as target in a draw list.

This information is used by :ref:`RenderingDevice<class_RenderingDevice>` to figure out if a texture's contents can be discarded, eliminating unnecessary writes to memory and boosting performance.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_resolve_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_resolve_buffer** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_resolve_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_is_resolve_buffer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_resolve_buffer**\ (\ )

The texture will be used as the destination of a resolve operation.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_mipmaps:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps** = ``1`` :ref:`🔗<class_RDTextureFormat_property_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_mipmaps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mipmaps**\ (\ )

紋理中可用的 mipmap 數。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDTextureFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

對紋理進行取樣時所使用的樣本數。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_RenderingDevice_TextureType>` **texture_type** = ``1`` :ref:`🔗<class_RDTextureFormat_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_RenderingDevice_TextureType>`\ )
- :ref:`TextureType<enum_RenderingDevice_TextureType>` **get_texture_type**\ (\ )

紋理型別。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_usage_bits:

.. rst-class:: classref-property

|bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **usage_bits** = ``0`` :ref:`🔗<class_RDTextureFormat_property_usage_bits>`

.. rst-class:: classref-property-setget

- |void| **set_usage_bits**\ (\ value\: |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\]\ )
- |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **get_usage_bits**\ (\ )

紋理的用途位，決定使用該紋理時能做什麼。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``1`` :ref:`🔗<class_RDTextureFormat_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

紋理的寬度（單位為圖元）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RDTextureFormat_method_add_shareable_format:

.. rst-class:: classref-method

|void| **add_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_add_shareable_format>`

Adds ``format`` as a valid format for the corresponding :ref:`RDTextureView<class_RDTextureView>`'s :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` property. If any format is added as shareable, then the main :ref:`format<class_RDTextureFormat_property_format>` must also be added.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_method_remove_shareable_format:

.. rst-class:: classref-method

|void| **remove_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_remove_shareable_format>`

Removes ``format`` from the list of valid formats that the corresponding :ref:`RDTextureView<class_RDTextureView>`'s :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` property can be set to.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
