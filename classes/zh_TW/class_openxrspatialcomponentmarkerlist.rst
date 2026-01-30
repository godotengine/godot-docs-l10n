:github_url: hide

.. _class_OpenXRSpatialComponentMarkerList:

OpenXRSpatialComponentMarkerList
================================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries marker result data.

.. rst-class:: classref-introduction-group

說明
----

Object for storing the queries marker result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                       | :ref:`get_marker_data<class_OpenXRSpatialComponentMarkerList_method_get_marker_data>`\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`get_marker_id<class_OpenXRSpatialComponentMarkerList_method_get_marker_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` | :ref:`get_marker_type<class_OpenXRSpatialComponentMarkerList_method_get_marker_type>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OpenXRSpatialComponentMarkerList_MarkerType:

.. rst-class:: classref-enumeration

enum **MarkerType**: :ref:`🔗<enum_OpenXRSpatialComponentMarkerList_MarkerType>`

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_UNKNOWN** = ``0``

Unknown or unset marker type.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_QRCODE:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_QRCODE** = ``1``

Marker based on a QR code.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_MICRO_QRCODE:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_MICRO_QRCODE** = ``2``

Marker based on a micro QR code.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_ARUCO:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_ARUCO** = ``3``

Marker based on an Aruco code.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_APRIL_TAG:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_APRIL_TAG** = ``4``

Marker based on an April Tag.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_MAX** = ``5``

Maximum value for this enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_marker_data**\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_data>`

Returns either a :ref:`String<class_String>` or a :ref:`PackedByteArray<class_PackedByteArray>` buffer with data for the marker at this ``index``. Only applicable for QR code markers.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_marker_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_id>`

Returns the marker ID for the marker at this ``index``. Only applicable for Aruco or April Tag markers.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_type:

.. rst-class:: classref-method

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **get_marker_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_type>`

Returns the marker type for the marker at this ``index``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
