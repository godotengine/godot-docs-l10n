:github_url: hide

.. _class_OpenXRSpatialComponentData:

OpenXRSpatialComponentData
==========================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`OpenXRSpatialComponentAnchorList<class_OpenXRSpatialComponentAnchorList>`, :ref:`OpenXRSpatialComponentBounded2DList<class_OpenXRSpatialComponentBounded2DList>`, :ref:`OpenXRSpatialComponentBounded3DList<class_OpenXRSpatialComponentBounded3DList>`, :ref:`OpenXRSpatialComponentMarkerList<class_OpenXRSpatialComponentMarkerList>`, :ref:`OpenXRSpatialComponentMesh2DList<class_OpenXRSpatialComponentMesh2DList>`, :ref:`OpenXRSpatialComponentMesh3DList<class_OpenXRSpatialComponentMesh3DList>`, :ref:`OpenXRSpatialComponentParentList<class_OpenXRSpatialComponentParentList>`, :ref:`OpenXRSpatialComponentPersistenceList<class_OpenXRSpatialComponentPersistenceList>`, :ref:`OpenXRSpatialComponentPlaneAlignmentList<class_OpenXRSpatialComponentPlaneAlignmentList>`, :ref:`OpenXRSpatialComponentPlaneSemanticLabelList<class_OpenXRSpatialComponentPlaneSemanticLabelList>`, :ref:`OpenXRSpatialComponentPolygon2DList<class_OpenXRSpatialComponentPolygon2DList>`, :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>`

Object for storing OpenXR spatial entity component data.

.. rst-class:: classref-introduction-group

說明
----

Object for storing OpenXR spatial entity component data.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_component_type<class_OpenXRSpatialComponentData_private_method__get_component_type>`\ (\ ) |virtual| |const|                       |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_structure_data<class_OpenXRSpatialComponentData_private_method__get_structure_data>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`_set_capacity<class_OpenXRSpatialComponentData_private_method__set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual|         |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_component_type<class_OpenXRSpatialComponentData_method_get_component_type>`\ (\ ) |const|                                           |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_capacity<class_OpenXRSpatialComponentData_method_set_capacity>`\ (\ capacity\: :ref:`int<class_int>`\ )                             |
   +-----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRSpatialComponentData_private_method__get_component_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_component_type**\ (\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_component_type>`

Return the component type for the component we store data for.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__get_structure_data:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_structure_data**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__get_structure_data>`

Return a pointer to the structure data that will be submitted along with the snapshot query. This pointer must remain valid as long as this object is instantiated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_private_method__set_capacity:

.. rst-class:: classref-method

|void| **_set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRSpatialComponentData_private_method__set_capacity>`

Sets the expected capacity as provided by the spatial entities query system. Buffers should be initialized with the correct storage.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_method_get_component_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_component_type**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentData_method_get_component_type>`

Gets this **OpenXRSpatialComponentData**'s ``XrSpatialComponentTypeEXT``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentData_method_set_capacity:

.. rst-class:: classref-method

|void| **set_capacity**\ (\ capacity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialComponentData_method_set_capacity>`

Sets the expected capacity as provided by the spatial entities query system. Buffers should be initialized with the correct storage.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
