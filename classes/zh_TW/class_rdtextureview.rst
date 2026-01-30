:github_url: hide

.. _class_RDTextureView:

RDTextureView
=============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

紋理視圖（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format_override<class_RDTextureView_property_format_override>` | ``232`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_a<class_RDTextureView_property_swizzle_a>`             | ``6``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_b<class_RDTextureView_property_swizzle_b>`             | ``5``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_g<class_RDTextureView_property_swizzle_g>`             | ``4``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_r<class_RDTextureView_property_swizzle_r>`             | ``3``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDTextureView_property_format_override:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format_override** = ``232`` :ref:`🔗<class_RDTextureView_property_format_override>`

.. rst-class:: classref-property-setget

- |void| **set_format_override**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format_override**\ (\ )

Optional override for the data format to return sampled values in. The corresponding :ref:`RDTextureFormat<class_RDTextureFormat>` must have had this added as a shareable format. The default value of :ref:`RenderingDevice.DATA_FORMAT_MAX<class_RenderingDevice_constant_DATA_FORMAT_MAX>` does not override the format.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_a:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_a** = ``6`` :ref:`🔗<class_RDTextureView_property_swizzle_a>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_a**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_a**\ (\ )

對 Alpha 通道進行取樣時取樣的通道。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_b:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_b** = ``5`` :ref:`🔗<class_RDTextureView_property_swizzle_b>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_b**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_b**\ (\ )

對藍色通道進行取樣時取樣的通道。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_g:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_g** = ``4`` :ref:`🔗<class_RDTextureView_property_swizzle_g>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_g**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_g**\ (\ )

對綠色通道進行取樣時取樣的通道。

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_r:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_r** = ``3`` :ref:`🔗<class_RDTextureView_property_swizzle_r>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_r**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_r**\ (\ )

對紅色通道進行取樣時取樣的通道。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
