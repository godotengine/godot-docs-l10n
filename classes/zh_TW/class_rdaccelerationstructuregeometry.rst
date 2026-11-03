:github_url: hide

.. _class_RDAccelerationStructureGeometry:

RDAccelerationStructureGeometry
===============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

加速結構幾何體（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

**RDAccelerationStructureGeometry** 描述了一組三角形，這些三角形在 :ref:`RenderingDevice.blas_create()<class_RenderingDevice_method_blas_create>` 方法中被用作光線追蹤幾何體。

該幾何體始終以三角形清單（triangle list）的形式存在，無論是索引還是非索引形式。不支援三角形帶（Triangle strips）。

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_RDAccelerationStructureGeometry_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`AccelerationStructureGeometryFlagBits<enum_RenderingDevice_AccelerationStructureGeometryFlagBits>`\] **flags** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`AccelerationStructureGeometryFlagBits<enum_RenderingDevice_AccelerationStructureGeometryFlagBits>`\]\ )
- |bitfield|\[:ref:`AccelerationStructureGeometryFlagBits<enum_RenderingDevice_AccelerationStructureGeometryFlagBits>`\] **get_flags**\ (\ )

幾何體的標誌位。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_buffer:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **index_buffer** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_index_buffer**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_index_buffer**\ (\ )

包含頂點索引的緩衝區。如果為 ``null``\ ，則三角形為非索引形式。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **index_count** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_count>`

.. rst-class:: classref-property-setget

- |void| **set_index_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index_count**\ (\ )

該幾何體在 :ref:`index_buffer<class_RDAccelerationStructureGeometry_property_index_buffer>` 中使用的索引數量。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_index_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **index_offset** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_index_offset>`

.. rst-class:: classref-property-setget

- |void| **set_index_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index_offset**\ (\ )

:ref:`index_buffer<class_RDAccelerationStructureGeometry_property_index_buffer>`\ （索引緩衝區）中第一個索引的位元組偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_buffer:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **vertex_buffer** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_buffer**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_vertex_buffer**\ (\ )

包含頂點的緩衝區。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_count** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_count>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_count**\ (\ )

該幾何體在 :ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>` 中使用的頂點數量。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **vertex_format** = ``232`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_format>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_vertex_format**\ (\ )

:ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>`\ （頂點緩衝區）中頂點的格式。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_offset** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_offset>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_offset**\ (\ )

:ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>`\ （頂點緩衝區）中第一個頂點的位元組偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureGeometry_property_vertex_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **vertex_stride** = ``0`` :ref:`🔗<class_RDAccelerationStructureGeometry_property_vertex_stride>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vertex_stride**\ (\ )

:ref:`vertex_buffer<class_RDAccelerationStructureGeometry_property_vertex_buffer>` 中每個頂點之間的位元組數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
