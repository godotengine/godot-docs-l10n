:github_url: hide

.. _class_RDAccelerationStructureGeometry:

RDAccelerationStructureGeometry
===============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Acceleration structure geometry (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

描述
----

**RDAccelerationStructureGeometry** describes a set of triangles used as raytracing geometry in the :ref:`RenderingDevice.blas_create()<class_RenderingDevice_method_blas_create>` method.

The geometry is always in triangle list form, either indexed or non-indexed. Triangle strips are not supported.

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

Flags for the geometry.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_buffer:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **index_buffer** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_index_buffer**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_index_buffer**\ (\ )

Buffer containing vertex indices. If ``null``, triangles are non-indexed.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **index_count** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_count>`

.. rst-class:: classref-property-setget

- |void| **set_index_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index_count**\ (\ )

Number of indices used by this geometry in :ref:`index_buffer<class_RDAccelerationStructureGeometry_property_index_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **index_offset** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_offset>`

.. rst-class:: classref-property-setget

- |void| **set_index_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index_offset**\ (\ )

Byte offset of the first index in :ref:`index_buffer<class_RDAccelerationStructureGeometry_property_index_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_buffer:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **vertex_buffer** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_buffer**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_vertex_buffer**\ (\ )

Buffer containing vertices.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_count** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_count>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_count**\ (\ )

Number of vertices used by this geometry in :ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **vertex_format** = ``232`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_format>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_vertex_format**\ (\ )

Format of the vertices in :ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_offset** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_offset>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_offset**\ (\ )

Byte offset of the first vertex in :ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>`.

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_stride** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_stride>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_stride**\ (\ )

Number of bytes between each vertex in :ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
