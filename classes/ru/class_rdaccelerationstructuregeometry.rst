:github_url: hide

.. _class_RDAccelerationStructureGeometry:

RDAccelerationStructureGeometry
===============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Acceleration structure geometry (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Описание
----------------

**RDAccelerationStructureGeometry** describes a set of triangles used as raytracing geometry in the :ref:`RenderingDevice.blas_create()<class_RenderingDevice_method_blas_create>` method.

The geometry is always in triangle list form, either indexed or non-indexed. Triangle strips are not supported.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
