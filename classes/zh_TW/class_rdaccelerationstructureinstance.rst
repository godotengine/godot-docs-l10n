:github_url: hide

.. _class_RDAccelerationStructureInstance:

RDAccelerationStructureInstance
===============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

加速結構實例（由 :ref:`RenderingDevice<class_RenderingDevice>` 使用）。

.. rst-class:: classref-introduction-group

說明
----

**RDAccelerationStructureInstance** 描述了在 :ref:`RenderingDevice.tlas_build()<class_RenderingDevice_method_tlas_build>` 方法中使用的底層加速結構（Bottom-Level Acceleration Structure，簡稱 BLAS）的一個實例。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`RID<class_RID>`                                                                                                  | :ref:`blas<class_RDAccelerationStructureInstance_property_blas>`                   | ``RID()``                                           |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] | :ref:`flags<class_RDAccelerationStructureInstance_property_flags>`                 | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`hit_sbt_range<class_RDAccelerationStructureInstance_property_hit_sbt_range>` | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`id<class_RDAccelerationStructureInstance_property_id>`                       | ``0``                                               |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                                                                                                  | :ref:`mask<class_RDAccelerationStructureInstance_property_mask>`                   | ``255``                                             |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                                                                  | :ref:`transform<class_RDAccelerationStructureInstance_property_transform>`         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RDAccelerationStructureInstance_property_blas:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **blas** = ``RID()`` :ref:`🔗<class_RDAccelerationStructureInstance_property_blas>`

.. rst-class:: classref-property-setget

- |void| **set_blas**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_blas**\ (\ )

該實例所參照的底層加速結構（BLAS）。如果為 ``null``\ ，則該實例被視為一個佔位符，但在 GLSL 中仍然會參與計算 ``gl_InstanceIndex``\ 。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] **flags** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\]\ )
- |bitfield|\[:ref:`AccelerationStructureInstanceFlagBits<enum_RenderingDevice_AccelerationStructureInstanceFlagBits>`\] **get_flags**\ (\ )

實例的標誌位。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_hit_sbt_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **hit_sbt_range** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_hit_sbt_range>`

.. rst-class:: classref-property-setget

- |void| **set_hit_sbt_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hit_sbt_range**\ (\ )

用於該實例的命中著色器綁定表範圍，該範圍使用 :ref:`RenderingDevice.hit_sbt_range_alloc()<class_RenderingDevice_method_hit_sbt_range_alloc>` 方法進行分配。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **id** = ``0`` :ref:`🔗<class_RDAccelerationStructureInstance_property_id>`

.. rst-class:: classref-property-setget

- |void| **set_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_id**\ (\ )

自訂實例 ID，可在 GLSL 中通過 ``gl_InstanceCustomIndexEXT`` 進行存取。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **mask** = ``255`` :ref:`🔗<class_RDAccelerationStructureInstance_property_mask>`

.. rst-class:: classref-property-setget

- |void| **set_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mask**\ (\ )

用於控制哪些光線可以與此實例相交的可見性遮罩。

.. rst-class:: classref-item-separator

----

.. _class_RDAccelerationStructureInstance_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_RDAccelerationStructureInstance_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

套用至該實例所參照的 BLAS 的變換。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
