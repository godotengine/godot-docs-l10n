:github_url: hide

.. _class_OpenXRPlaneTracker:

OpenXRPlaneTracker
==================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於空間實體平面追蹤擴充的空間實體追蹤器。

.. rst-class:: classref-introduction-group

說明
----

用於 OpenXR 空間實體平面追蹤擴充的空間實體追蹤器。這些追蹤器可以識別現實空間中的實體，例如牆壁、地板、桌子等，並將它們的位置映射到虛擬空間中。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                                       | :ref:`bounds_size<class_OpenXRPlaneTracker_property_bounds_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------+-------------------+
   | :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` | :ref:`plane_alignment<class_OpenXRPlaneTracker_property_plane_alignment>` | ``0``             |
   +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                                         | :ref:`plane_label<class_OpenXRPlaneTracker_property_plane_label>`         | ``""``            |
   +-------------------------------------------------------------------------------------+---------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear_mesh_data<class_OpenXRPlaneTracker_method_clear_mesh_data>`\ (\ )                                                                                                                                                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`               | :ref:`get_mesh<class_OpenXRPlaneTracker_method_get_mesh>`\ (\ )                                                                                                                                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_mesh_offset<class_OpenXRPlaneTracker_method_get_mesh_offset>`\ (\ ) |const|                                                                                                                                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`         | :ref:`get_shape<class_OpenXRPlaneTracker_method_get_shape>`\ (\ thickness\: :ref:`float<class_float>` = 0.01\ )                                                                                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_mesh_data<class_OpenXRPlaneTracker_method_set_mesh_data>`\ (\ origin\: :ref:`Transform3D<class_Transform3D>`, vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>` = PackedInt32Array()\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_OpenXRPlaneTracker_signal_mesh_changed:

.. rst-class:: classref-signal

**mesh_changed**\ (\ ) :ref:`🔗<class_OpenXRPlaneTracker_signal_mesh_changed>`

當網格資料發生變化，網格實例和碰撞體需要更新時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRPlaneTracker_property_bounds_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **bounds_size** = ``Vector2(0, 0)`` :ref:`🔗<class_OpenXRPlaneTracker_property_bounds_size>`

.. rst-class:: classref-property-setget

- |void| **set_bounds_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_bounds_size**\ (\ )

平面的邊界大小。這是一個 2D 大小。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_property_plane_alignment:

.. rst-class:: classref-property

:ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **plane_alignment** = ``0`` :ref:`🔗<class_OpenXRPlaneTracker_property_plane_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_plane_alignment**\ (\ value\: :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>`\ )
- :ref:`PlaneAlignment<enum_OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment>` **get_plane_alignment**\ (\ )

該平面在空間中的主要對齊方式。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_property_plane_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **plane_label** = ``""`` :ref:`🔗<class_OpenXRPlaneTracker_property_plane_label>`

.. rst-class:: classref-property-setget

- |void| **set_plane_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_plane_label**\ (\ )

該平面的語義標籤。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRPlaneTracker_method_clear_mesh_data:

.. rst-class:: classref-method

|void| **clear_mesh_data**\ (\ ) :ref:`🔗<class_OpenXRPlaneTracker_method_clear_mesh_data>`

清除該追蹤器的網格資料。僅當需自行處理髮現邏輯時才應呼叫該函式。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_method_get_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_mesh**\ (\ ) :ref:`🔗<class_OpenXRPlaneTracker_method_get_mesh>`

取得根據網格資料或該平面的邊界大小建立的網格。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_method_get_mesh_offset:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_mesh_offset**\ (\ ) |const| :ref:`🔗<class_OpenXRPlaneTracker_method_get_mesh_offset>`

取得用於將網格和碰撞形狀從我們的姿勢偏移以正確顯示它們的變換。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_method_get_shape:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ thickness\: :ref:`float<class_float>` = 0.01\ ) :ref:`🔗<class_OpenXRPlaneTracker_method_get_shape>`

取得由網格資料或該平面的邊界大小建置的碰撞形狀。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRPlaneTracker_method_set_mesh_data:

.. rst-class:: classref-method

|void| **set_mesh_data**\ (\ origin\: :ref:`Transform3D<class_Transform3D>`, vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>` = PackedInt32Array()\ ) :ref:`🔗<class_OpenXRPlaneTracker_method_set_mesh_data>`

設定該平面的網格資料。僅當需自行處理髮現邏輯時才應呼叫該方法。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
