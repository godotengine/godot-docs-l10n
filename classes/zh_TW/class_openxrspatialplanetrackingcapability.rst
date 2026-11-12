:github_url: hide

.. _class_OpenXRSpatialPlaneTrackingCapability:

OpenXRSpatialPlaneTrackingCapability
====================================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

用於處理空間實體平面追蹤邏輯的實作。

.. rst-class:: classref-introduction-group

說明
----

該類用於處理 OpenXR 平面追蹤空間實體擴充。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` | :ref:`get_built_in_tracking_state<class_OpenXRSpatialPlaneTrackingCapability_method_get_built_in_tracking_state>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_supported<class_OpenXRSpatialPlaneTrackingCapability_method_is_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`start_built_in_tracking<class_OpenXRSpatialPlaneTrackingCapability_method_start_built_in_tracking>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`                   | :ref:`start_entity_discovery<class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`stop_built_in_tracking<class_OpenXRSpatialPlaneTrackingCapability_method_stop_built_in_tracking>`\ (\ clear_trackers\: :ref:`bool<class_bool>` = true\ )                                                                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRSpatialPlaneTrackingCapability_method_get_built_in_tracking_state:

.. rst-class:: classref-method

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **get_built_in_tracking_state**\ (\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_get_built_in_tracking_state>`

Returns the state of the built-in tracking system.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_is_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_is_supported>`

如果目前裝置支援平面追蹤功能，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_start_built_in_tracking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start_built_in_tracking**\ (\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_start_built_in_tracking>`

Starts the built-in plane tracking logic. This will fail if built-in tracking is already enabled.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery>`

使用與 ``spatial_context`` 關聯的平面實體，呼叫 :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` 和 :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` 方法。

\ ``component_data`` 是針對此平面功能需要發現的 :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` 資料。

如果 ``next_snapshot_create`` 不為空，則將其作為 ``next`` 參數傳遞給 :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` 方法；

如果 ``next_snapshot_query`` 不為空，則將其作為 ``next`` 參數傳遞給 :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` 方法。

\ ``user_callback`` 在非空時，通常會被呼叫兩次，並傳入兩個參數。第一個參數是發現快照（discovery snapshot）的 :ref:`RID<class_RID>`\ ，第二個參數是一個布林值：\ ``false`` 表示發現快照即將被處理，\ ``true`` 表示發現快照已處理完畢且 ``component_data`` 包含有效資料。如果遇到錯誤，則會跳過第二次呼叫。

回傳的 :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` 與 :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` 的回傳值相同。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_stop_built_in_tracking:

.. rst-class:: classref-method

|void| **stop_built_in_tracking**\ (\ clear_trackers\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_stop_built_in_tracking>`

Stops the built-in plane tracking logic.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
