:github_url: hide

.. _class_OpenXRSpatialEntityTracker:

OpenXRSpatialEntityTracker
==========================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, :ref:`OpenXRMarkerTracker<class_OpenXRMarkerTracker>`, :ref:`OpenXRPlaneTracker<class_OpenXRPlaneTracker>`

OpenXR 空間實體擴充管理的位置追蹤器的基底類別。

.. rst-class:: classref-introduction-group

說明
----

這些追蹤器由 OpenXR 的空間實體擴充建立和管理，用於存取與 OpenXR 空間實體相關的特定資料。它們的型別始終為 ``TRACKER_ANCHOR``\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                           | :ref:`entity<class_OpenXRSpatialEntityTracker_property_entity>`                                 | ``RID()``                                                         |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` | :ref:`spatial_tracking_state<class_OpenXRSpatialEntityTracker_property_spatial_tracking_state>` | ``2``                                                             |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                                   | type                                                                                            | ``8`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_next<class_OpenXRSpatialEntityTracker_method_add_next>`\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ )       |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` | :ref:`get_next<class_OpenXRSpatialEntityTracker_method_get_next>`\ (\ ) |const|                                                             |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                 | :ref:`get_spatial_context<class_OpenXRSpatialEntityTracker_method_get_spatial_context>`\ (\ ) |const|                                       |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_next<class_OpenXRSpatialEntityTracker_method_remove_next>`\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_spatial_context<class_OpenXRSpatialEntityTracker_method_set_spatial_context>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ )      |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_OpenXRSpatialEntityTracker_signal_next_changed:

.. rst-class:: classref-signal

**next_changed**\ (\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_signal_next_changed>`

當“下一個”鏈結串列發生改變時發出訊號，無論是由 :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` 還是 :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>` 引起的。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_signal_spatial_tracking_state_changed:

.. rst-class:: classref-signal

**spatial_tracking_state_changed**\ (\ spatial_tracking_state\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_signal_spatial_tracking_state_changed>`

.. container:: contribute

	There is currently no description for this signal. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OpenXRSpatialEntityTracker_EntityTrackingState:

.. rst-class:: classref-enumeration

enum **EntityTrackingState**: :ref:`🔗<enum_OpenXRSpatialEntityTracker_EntityTrackingState>`

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_STOPPED:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_STOPPED** = ``1``

該錨點已停止追蹤。

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_PAUSED** = ``2``

追蹤目前已暫停。

.. _class_OpenXRSpatialEntityTracker_constant_ENTITY_TRACKING_STATE_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **ENTITY_TRACKING_STATE_TRACKING** = ``3``

該錨點目前正在被追蹤。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_OpenXRSpatialEntityTracker_property_entity:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **entity** = ``RID()`` :ref:`🔗<class_OpenXRSpatialEntityTracker_property_entity>`

.. rst-class:: classref-property-setget

- |void| **set_entity**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_entity**\ (\ )

與該追蹤器關聯的空間實體。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_property_spatial_tracking_state:

.. rst-class:: classref-property

:ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **spatial_tracking_state** = ``2`` :ref:`🔗<class_OpenXRSpatialEntityTracker_property_spatial_tracking_state>`

.. rst-class:: classref-property-setget

- |void| **set_spatial_tracking_state**\ (\ value\: :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>`\ )
- :ref:`EntityTrackingState<enum_OpenXRSpatialEntityTracker_EntityTrackingState>` **get_spatial_tracking_state**\ (\ )

該追蹤器的空間追蹤狀態。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRSpatialEntityTracker_method_add_next:

.. rst-class:: classref-method

|void| **add_next**\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_add_next>`

向“下一個”鏈結串列中新增一個新的 :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ 。

在再次呼叫 :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` 或通過 :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>` 移除之前，\ :ref:`get_next()<class_OpenXRSpatialEntityTracker_method_get_next>` 將回傳此 ``next`` 物件。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_get_next:

.. rst-class:: classref-method

:ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **get_next**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityTracker_method_get_next>`

取得“下一個”鏈結串列中的首個 :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` 物件。

另見 :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` 和 :ref:`remove_next()<class_OpenXRSpatialEntityTracker_method_remove_next>` 方法。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_get_spatial_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_context**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityTracker_method_get_spatial_context>`

取得用於建立此 **OpenXRSpatialEntityTracker** 的空間情境（spatial context）。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_remove_next:

.. rst-class:: classref-method

|void| **remove_next**\ (\ next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_remove_next>`

從 next 鏈（next-chain）中移除一個之前通過 :ref:`add_next()<class_OpenXRSpatialEntityTracker_method_add_next>` 方法新增的 ``next`` 物件。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityTracker_method_set_spatial_context:

.. rst-class:: classref-method

|void| **set_spatial_context**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityTracker_method_set_spatial_context>`

設定用於建立此追蹤器的空間情境（spatial context）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
