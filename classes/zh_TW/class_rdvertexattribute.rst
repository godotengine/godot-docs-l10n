:github_url: hide

.. _class_RDVertexAttribute:

RDVertexAttribute
=================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

頂點屬性（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

這個物件由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`binding<class_RDVertexAttribute_property_binding>`     | ``4294967295`` |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`           | :ref:`format<class_RDVertexAttribute_property_format>`       | ``232``        |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` | :ref:`frequency<class_RDVertexAttribute_property_frequency>` | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`location<class_RDVertexAttribute_property_location>`   | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`offset<class_RDVertexAttribute_property_offset>`       | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                                        | :ref:`stride<class_RDVertexAttribute_property_stride>`       | ``0``          |
   +--------------------------------------------------------------+--------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDVertexAttribute_property_binding:

.. rst-class:: classref-property

:ref:`int<class_int>` **binding** = ``4294967295`` :ref:`🔗<class_RDVertexAttribute_property_binding>`

.. rst-class:: classref-property-setget

- |void| **set_binding**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_binding**\ (\ )

The index of the buffer in the vertex buffer array to bind this vertex attribute. When set to ``-1``, it defaults to the index of the attribute.

\ **Note:** You cannot mix binding explicitly assigned attributes with implicitly assigned ones (i.e. ``-1``). Either all attributes must have their binding set to ``-1``, or all must have explicit bindings.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``232`` :ref:`🔗<class_RDVertexAttribute_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

The way that this attribute's data is interpreted when sent to a shader.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_frequency:

.. rst-class:: classref-property

:ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` **frequency** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>`\ )
- :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` **get_frequency**\ (\ )

The rate at which this attribute is pulled from its vertex buffer.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_location:

.. rst-class:: classref-property

:ref:`int<class_int>` **location** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_location**\ (\ )

The location in the shader that this attribute is bound to.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **offset** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_offset**\ (\ )

The number of bytes between the start of the vertex buffer and the first instance of this attribute.

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **stride** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_stride>`

.. rst-class:: classref-property-setget

- |void| **set_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stride**\ (\ )

The number of bytes between the starts of consecutive instances of this attribute.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
