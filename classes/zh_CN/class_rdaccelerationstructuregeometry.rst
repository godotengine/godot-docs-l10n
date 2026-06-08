:github_url: hide

.. _class_RDAccelerationStructureGeometry:

RDAccelerationStructureGeometry
===============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

加速结构几何体（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

描述
----

**RDAccelerationStructureGeometry** 描述了一组三角形，这些三角形在 :ref:`RenderingDevice.blas_create()<class_RenderingDevice_method_blas_create>` 方法中被用作光线追踪几何体。

该几何体始终以三角形列表（triangle list）的形式存在，无论是索引还是非索引形式。不支持三角形带（Triangle strips）。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`AccelerationStructureGeometryFlagBits<enum_RenderingDevice_AccelerationStructureGeometryFlagBits>`\] | :ref:`flags<class_RDAccelerationStructureGeometry_property_flags>`                 | ``0``     |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`RID<class_RID>`                                                                                                  | :ref:`index_buffer<class_RDAccelerationStructureGeometry_property_index_buffer>`   | ``RID()`` |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`index_count<class_RDAccelerationStructureGeometry_property_index_count>`     | ``0``     |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`index_offset<class_RDAccelerationStructureGeometry_property_index_offset>`   | ``0``     |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`RID<class_RID>`                                                                                                  | :ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>` | ``RID()`` |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`vertex_count<class_RDAccelerationStructureGeometry_property_vertex_count>`   | ``0``     |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`                                                                     | :ref:`vertex_format<class_RDAccelerationStructureGeometry_property_vertex_format>` | ``232``   |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`vertex_offset<class_RDAccelerationStructureGeometry_property_vertex_offset>` | ``0``     |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`vertex_stride<class_RDAccelerationStructureGeometry_property_vertex_stride>` | ``0``     |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RDAccelerationStructureGeometry_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`AccelerationStructureGeometryFlagBits<enum_RenderingDevice_AccelerationStructureGeometryFlagBits>`\] **flags** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`AccelerationStructureGeometryFlagBits<enum_RenderingDevice_AccelerationStructureGeometryFlagBits>`\]\ )
- |bitfield|\[:ref:`AccelerationStructureGeometryFlagBits<enum_RenderingDevice_AccelerationStructureGeometryFlagBits>`\] **get_flags**\ (\ )

几何体的标志位。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_buffer:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **index_buffer** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_index_buffer**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_index_buffer**\ (\ )

包含顶点索引的缓冲区。如果为 ``null``\ ，则三角形为非索引形式。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **index_count** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_count>`

.. rst-class:: classref-property-setget

- |void| **set_index_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index_count**\ (\ )

该几何体在 :ref:`index_buffer<class_RDAccelerationStructureGeometry_property_index_buffer>` 中使用的索引数量。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **index_offset** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_offset>`

.. rst-class:: classref-property-setget

- |void| **set_index_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index_offset**\ (\ )

:ref:`index_buffer<class_RDAccelerationStructureGeometry_property_index_buffer>`\ （索引缓冲区）中第一个索引的字节偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_buffer:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **vertex_buffer** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_buffer**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_vertex_buffer**\ (\ )

包含顶点的缓冲区。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_count** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_count>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_count**\ (\ )

该几何体在 :ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>` 中使用的顶点数量。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **vertex_format** = ``232`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_format>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_vertex_format**\ (\ )

:ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>`\ （顶点缓冲区）中顶点的格式。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_offset** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_offset>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_offset**\ (\ )

:ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>`\ （顶点缓冲区）中第一个顶点的字节偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_stride** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_stride>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_stride**\ (\ )

:ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>` 中每个顶点之间的字节数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
