:github_url: hide

.. _class_OpenXRSpatialComponentPlaneAlignmentList:

OpenXRSpatialComponentPlaneAlignmentList
========================================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於儲存查詢平面對齊結果資料的物件。

.. rst-class:: classref-introduction-group

說明
----

用於呼叫 :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` 時儲存查詢平面對齊結果資料的物件。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` | :ref:`get_plane_alignment<class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment:

.. rst-class:: classref-enumeration

enum **PlaneAlignment**: :ref:`🔗<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>`

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_HORIZONTAL_UPWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_HORIZONTAL_UPWARD** = ``0``

平面面朝上。

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_HORIZONTAL_DOWNWARD:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_HORIZONTAL_DOWNWARD** = ``1``

平面面朝下。

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_VERTICAL:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_VERTICAL** = ``2``

平面垂直對齊。

.. _class_OpenXRSpatialComponentPlaneAlignmentList_constant_PLANE_ALIGNMENT_ARBITRARY:

.. rst-class:: classref-enumeration-constant

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **PLANE_ALIGNMENT_ARBITRARY** = ``3``

平面具有任意方向。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment:

.. rst-class:: classref-method

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **get_plane_alignment**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPlaneAlignmentList_method_get_plane_alignment>`

回傳該 ``index`` 處父實體的平面對齊方式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
