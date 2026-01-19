:github_url: hide

.. _class_RDVertexAttribute:

RDVertexAttribute
=================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

顶点属性（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

这个对象由 :ref:`RenderingDevice<class_RenderingDevice>` 使用。

.. rst-class:: classref-reftable-group

属性
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

属性说明
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

将属性数据发送至着色器时，对该数据的解释方式。

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_frequency:

.. rst-class:: classref-property

:ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` **frequency** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>`\ )
- :ref:`VertexFrequency<enum_RenderingDevice_VertexFrequency>` **get_frequency**\ (\ )

从顶点缓冲中拉取该属性的频率。

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_location:

.. rst-class:: classref-property

:ref:`int<class_int>` **location** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_location**\ (\ )

该属性在着色器中绑定的位置。

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **offset** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_offset**\ (\ )

顶点缓冲起点与该属性的第一个实例之间的字节数。

.. rst-class:: classref-item-separator

----

.. _class_RDVertexAttribute_property_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **stride** = ``0`` :ref:`🔗<class_RDVertexAttribute_property_stride>`

.. rst-class:: classref-property-setget

- |void| **set_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stride**\ (\ )

该属性相邻两个实例之间的字节数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
