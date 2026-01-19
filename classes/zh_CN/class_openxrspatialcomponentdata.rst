:github_url: hide

.. _class_OpenXRSpatialComponentData:

OpenXRSpatialComponentData
==========================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`OpenXRSpatialComponentAnchorList<class_OpenXRSpatialComponentAnchorList>`, :ref:`OpenXRSpatialComponentBounded2DList<class_OpenXRSpatialComponentBounded2DList>`, :ref:`OpenXRSpatialComponentBounded3DList<class_OpenXRSpatialComponentBounded3DList>`, :ref:`OpenXRSpatialComponentMarkerList<class_OpenXRSpatialComponentMarkerList>`, :ref:`OpenXRSpatialComponentMesh2DList<class_OpenXRSpatialComponentMesh2DList>`, :ref:`OpenXRSpatialComponentMesh3DList<class_OpenXRSpatialComponentMesh3DList>`, :ref:`OpenXRSpatialComponentParentList<class_OpenXRSpatialComponentParentList>`, :ref:`OpenXRSpatialComponentPersistenceList<class_OpenXRSpatialComponentPersistenceList>`, :ref:`OpenXRSpatialComponentPlaneAlignmentList<class_OpenXRSpatialComponentPlaneAlignmentList>`, :ref:`OpenXRSpatialComponentPlaneSemanticLabelList<class_OpenXRSpatialComponentPlaneSemanticLabelList>`, :ref:`OpenXRSpatialComponentPolygon2DList<class_OpenXRSpatialComponentPolygon2DList>`, :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>`

Object for storing OpenXR spatial entity component data.

.. rst-class:: classref-introduction-group

描述
----

Object for storing OpenXR spatial entity component data.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_component_type<class_OpenXRSpatialComponentData_private_method__get_component_type>`\ (\ ) |virtual| |const|                               |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_structure_data<class_OpenXRSpatialComponentData_private_method__get_structure_data>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`_set_capacity<class_OpenXRSpatialComponentData_private_method__set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual|                 |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_capacity<class_OpenXRSpatialComponentData_method_set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ )                                     |
   +-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialComponentData_private_method__get_component_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_component_type**\ (\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_component_type>`

Return the component type for the component we store data for.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__get_structure_data:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_structure_data**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_structure_data>`

Return a pointer to the structure data that will be submitted along with the snapshot query. This pointer must remain valid as long as this object is instantiated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__set_capacity:

.. rst-class:: classref-method

|void| **_set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__set_capacity>`

Set the expected capacity as provided by the spatial entities query system. Buffers should be initialized with the correct storage.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_method_set_capacity:

.. rst-class:: classref-method

|void| **set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialComponentData_method_set_capacity>`

Set the expected capacity as provided by the spatial entities query system. Buffers should be initialized with the correct storage.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
