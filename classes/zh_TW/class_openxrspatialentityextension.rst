:github_url: hide

.. _class_OpenXRSpatialEntityExtension:

OpenXRSpatialEntityExtension
============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

用於處理空間實體的 OpenXR 擴充。

.. rst-class:: classref-introduction-group

說明
----

OpenXR 擴充，用於處理空間實體，啟用後允許查詢這些空間實體。該擴充還將自動管理靜態實體的 :ref:`XRTracker<class_XRTracker>` 物件。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`add_spatial_entity<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`, entity\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                      |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`create_spatial_context<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`\ (\ capability_configurations\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable(), failed_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`discover_spatial_entities<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                     |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`discover_spatial_entities_with_component_data<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities_with_component_data>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`find_spatial_entity<class_OpenXRSpatialEntityExtension_method_find_spatial_entity>`\ (\ entity_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_context<class_OpenXRSpatialEntityExtension_method_free_spatial_context>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_entity<class_OpenXRSpatialEntityExtension_method_free_spatial_entity>`\ (\ entity\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`free_spatial_snapshot<class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_float_buffer<class_OpenXRSpatialEntityExtension_method_get_float_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_context_handle<class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`get_spatial_context_ready<class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready>`\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                   |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_spatial_entity_context<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context>`\ (\ entity\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_entity_id<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id>`\ (\ entity\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`get_spatial_snapshot_context<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                            |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_spatial_snapshot_handle<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`get_string<class_OpenXRSpatialEntityExtension_method_get_string>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`get_uint8_buffer<class_OpenXRSpatialEntityExtension_method_get_uint8_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_uint16_buffer<class_OpenXRSpatialEntityExtension_method_get_uint16_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                               |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_uint32_buffer<class_OpenXRSpatialEntityExtension_method_get_uint32_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                               |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_vector2_buffer<class_OpenXRSpatialEntityExtension_method_get_vector2_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vector3_buffer<class_OpenXRSpatialEntityExtension_method_get_vector3_buffer>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`make_spatial_entity<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`query_snapshot<class_OpenXRSpatialEntityExtension_method_query_snapshot>`\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                                                                                                        |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`supports_capability<class_OpenXRSpatialEntityExtension_method_supports_capability>`\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`\ )                                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`supports_component_type<class_OpenXRSpatialEntityExtension_method_supports_component_type>`\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`, component_type\: :ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>`\ )                                                                                                                                                                                                  |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`update_spatial_entities<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`\ (\ spatial_context\: :ref:`RID<class_RID>`, entities\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                                                                        |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_OpenXRSpatialEntityExtension_signal_spatial_discovery_recommended:

.. rst-class:: classref-signal

**spatial_discovery_recommended**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_signal_spatial_discovery_recommended>`

當 OpenXR 建議執行發現查詢時發出該訊號，因為該空間情境管理的實體（可能）已發生更改。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_OpenXRSpatialEntityExtension_Capability:

.. rst-class:: classref-enumeration

enum **Capability**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_Capability>`

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_PLANE_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_PLANE_TRACKING** = ``1000741000``

平面追蹤功能。

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_QR_CODE** = ``1000743000``

基於二維碼的標記追蹤功能。

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_MICRO_QR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_MICRO_QR_CODE** = ``1000743001``

基於微型二維碼的標記追蹤功能。

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_ARUCO_MARKER:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_ARUCO_MARKER** = ``1000743002``

ArUco marker based marker tracking capability.

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_MARKER_TRACKING_APRIL_TAG:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_MARKER_TRACKING_APRIL_TAG** = ``1000743003``

基於 April 標籤的標記追蹤功能。

.. _class_OpenXRSpatialEntityExtension_constant_CAPABILITY_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>` **CAPABILITY_ANCHOR** = ``1000762000``

錨點功能。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRSpatialEntityExtension_ComponentType:

.. rst-class:: classref-enumeration

enum **ComponentType**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_ComponentType>`

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_BOUNDED_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_BOUNDED_2D** = ``1``

為空間實體提供 2D 邊界的元件。相應的清單結構為 ``XrSpatialComponentBounded2DListEXT``\ ；相應的資料結構為 ``XrSpatialBounded2DDataEXT``\ 。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_BOUNDED_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_BOUNDED_3D** = ``2``

為空間實體提供 3D 邊界的元件。相應的清單結構為 ``XrSpatialComponentBounded3DListEXT``\ ；相應的資料結構為 ``XrBoxf``\ 。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PARENT** = ``3``

為空間實體提供父級 XrSpatialEntityIdEXT 的元件。相應的清單結構為 ``XrSpatialComponentParentListEXT``\ ；相應的資料結構為 ``XrSpatialEntityIdEXT``\ 。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MESH_3D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MESH_3D** = ``4``

為空間實體提供 3D 網格的元件。相應的清單結構為 ``XrSpatialComponentMesh3DListEXT``\ ；相應的資料結構為 ``XrSpatialMeshDataEXT``\ 。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PLANE_ALIGNMENT:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PLANE_ALIGNMENT** = ``1000741000``

為空間實體提供平面對齊列舉的元件。相應的清單結構為 ``XrSpatialComponentPlaneAlignmentListEXT``\ ；相應的資料結構為 ``XrSpatialPlaneAlignmentEXT``\ （由 ``XR_EXT_spatial_plane_tracking`` 擴充新增）。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MESH_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MESH_2D** = ``1000741001``

為空間實體提供 2D 網格的元件。相應的清單結構為 ``XrSpatialComponentMesh2DListEXT``\ ；相應的資料結構為 ``XrSpatialMeshDataEXT``\ （由 ``XR_EXT_spatial_plane_tracking`` 擴充新增）。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_POLYGON_2D:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_POLYGON_2D** = ``1000741002``

為空間實體提供 2D 邊界多邊形的元件。相應的清單結構為 ``XrSpatialComponentPolygon2DListEXT``\ ；相應的資料結構為 ``XrSpatialPolygon2DDataEXT``\ （由 ``XR_EXT_spatial_plane_tracking`` 擴充新增）。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PLANE_SEMANTIC_LABEL:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PLANE_SEMANTIC_LABEL** = ``1000741003``

為螢幕提供語義標籤的元件。相應的清單結構為 ``XrSpatialComponentPlaneSemanticLabelListEXT``\ ；相應的資料結構為 ``XrSpatialPlaneSemanticLabelEXT``\ （由 ``XR_EXT_spatial_plane_tracking`` 擴充新增）。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_MARKER:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_MARKER** = ``1000743000``

描述標記型別、ID 和位置的元件。相應的清單結構為 ``XrSpatialComponentMarkerListEXT``\ ；相應的資料結構為 ``XrSpatialMarkerDataEXT``\ （由 ``XR_EXT_spatial_marker_tracking`` 擴充新增）。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_ANCHOR** = ``1000762000``

用於提供錨點位置的元件。相應的清單結構為 ``XrSpatialComponentAnchorListEXT``\ ；相應的資料結構為 ``XrPosef``\ （由 ``XR_EXT_spatial_anchor`` 擴充新增）。

.. _class_OpenXRSpatialEntityExtension_constant_COMPONENT_TYPE_PERSISTENCE:

.. rst-class:: classref-enumeration-constant

:ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>` **COMPONENT_TYPE_PERSISTENCE** = ``1000763000``

該元件用於為空間實體提供持久化的 UUID（通用唯一識別碼）。其對應的清單結構是 ``XrSpatialComponentPersistenceListEXT``\ ，對應的資料結構是 ``XrSpatialPersistenceDataEXT``\ （由 ``XR_EXT_spatial_persistence`` 擴充新增）。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRSpatialEntityExtension_TrackingState:

.. rst-class:: classref-enumeration

enum **TrackingState**: :ref:`🔗<enum_OpenXRSpatialEntityExtension_TrackingState>`

.. _class_OpenXRSpatialEntityExtension_constant_TRACKING_UNSUPPORTED_CAPABILITY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **TRACKING_UNSUPPORTED_CAPABILITY** = ``-3``

A capability supplied when creating the spatial context for tracking is unsupported.

.. _class_OpenXRSpatialEntityExtension_constant_TRACKING_NO_PERMISSION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **TRACKING_NO_PERMISSION** = ``-2``

A permission required by the tracking logic is missing.

.. _class_OpenXRSpatialEntityExtension_constant_TRACKING_SETUP_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **TRACKING_SETUP_FAILED** = ``-1``

Setup of the tracking logic failed, consult the logs for more details.

.. _class_OpenXRSpatialEntityExtension_constant_TRACKING_NOT_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **TRACKING_NOT_ACTIVE** = ``0``

Tracking is currently not active.

.. _class_OpenXRSpatialEntityExtension_constant_TRACKING_SETTING_UP:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **TRACKING_SETTING_UP** = ``1``

Tracking is being set up.

.. _class_OpenXRSpatialEntityExtension_constant_TRACKING_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingState<enum_OpenXRSpatialEntityExtension_TrackingState>` **TRACKING_ENABLED** = ``2``

Tracking is enabled and running.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRSpatialEntityExtension_method_add_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **add_spatial_entity**\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`, entity\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>`

注冊一個直接在 OpenXR 執行時上建立的實體。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_create_spatial_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_spatial_context**\ (\ capability_configurations\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable(), failed_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`

Creates a new spatial context that handles entities for the provided capability configurations. ``capability_configurations`` is an array of :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` with the needed capability configuration data.

\ ``next`` is an optional parameter that can contain additional information for creating our spatial context.

\ **Note:** This is an asynchronous method and returns an :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` object with which to track the status, discarding this object will not cancel the creation process.

On success ``user_callback`` will be called if specified. The result data for this function is the :ref:`RID<class_RID>` for our spatial context - the argument will be the OpenXR result code (as an integer).

On failure ``failed_callback`` will be called if specified. The OpenXR result code will be supplied as an integer - the arguments will be the OpenXR result code (as an integer) and a boolean indicating whether requesting the result failed, or the execution failed.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_discover_spatial_entities:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **discover_spatial_entities**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`

啟動一個新的發現查詢，這將收集由 ``spatial_context`` 追蹤的所有物件，這些物件至少具有 ``component_types`` 中指定的一種元件型別。

\ ``next`` 是一個可選參數，可以包含用於執行發現查詢的附加資訊。

\ **注意：**\ 這是一個非同步方法，它回傳一個 :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` 物件，用於追蹤狀態；丟棄該物件不會取消發現過程。如果指定了 ``user_callback``\ ，則成功時會呼叫該回呼函式。該函式的結果資料是快照的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_discover_spatial_entities_with_component_data:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **discover_spatial_entities_with_component_data**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities_with_component_data>`

當呼叫方僅擁有一個 :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` :ref:`Array<class_Array>` 且需要發現空間實體時，使用的便捷方法。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_find_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **find_spatial_entity**\ (\ entity_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_find_spatial_entity>`

回傳指定空間實體 ID 對應的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_context:

.. rst-class:: classref-method

|void| **free_spatial_context**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_context>`

釋放之前呼叫 :ref:`create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` 建立的空間情境。如果空間情境建立過程仍在進行中，則會取消該非同步處理程序。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_entity:

.. rst-class:: classref-method

|void| **free_spatial_entity**\ (\ entity\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_entity>`

釋放之前呼叫 :ref:`add_spatial_entity()<class_OpenXRSpatialEntityExtension_method_add_spatial_entity>` 或 :ref:`make_spatial_entity()<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>` 建立的實體。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot:

.. rst-class:: classref-method

|void| **free_spatial_snapshot**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_free_spatial_snapshot>`

釋放之前呼叫 :ref:`discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` 建立的空間快照。如果空間快照建立仍在進行中，則會取消該非同步處理程序。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_float_buffer:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_float_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_float_buffer>`

回傳一個包含浮點數的緩衝區，該緩衝區是從拍攝快照時取得的緩衝區中提取的。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_context_handle**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_context_handle>`

回傳該快照的 OpenXR 空間情境控制代碼。

\ **注意：**\ 該方法旨在供實作空間實體功能處理程序的 GDExtensions 使用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_spatial_context_ready**\ (\ spatial_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_context_ready>`

如果空間情境已完成建立並準備使用，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_entity_context**\ (\ entity\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_context>`

回傳該實體的空間情境。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_entity_id**\ (\ entity\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_entity_id>`

回傳與該實體關聯的內部 ``XrSpatialEntityIdEXT``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_spatial_snapshot_context**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_context>`

回傳與該空間快照相關的空間情境。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spatial_snapshot_handle**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_spatial_snapshot_handle>`

回傳該快照的 OpenXR 空間快照控制代碼。

\ **注意：**\ 該方法旨在供實作空間實體功能處理程序的 GDExtension 擴充使用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_string>`

回傳從拍攝快照時取得的緩衝區中提取的字串。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint8_buffer:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_uint8_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint8_buffer>`

從拍攝快照時取得的緩衝區中回傳一個包含 8 位元整數的緩衝區。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint16_buffer:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_uint16_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint16_buffer>`

從拍攝快照時取得的緩衝區中回傳一個包含 16 位元整數的緩衝區。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_uint32_buffer:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_uint32_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_uint32_buffer>`

從拍攝快照時取得的緩衝區中回傳一個包含 32 位元整數的緩衝區。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_vector2_buffer:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vector2_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_vector2_buffer>`

從拍攝快照時取得的緩衝區中回傳一個包含提取的 :ref:`Vector2<class_Vector2>` 條目的緩衝區。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_get_vector3_buffer:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vector3_buffer**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, buffer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialEntityExtension_method_get_vector3_buffer>`

從拍攝快照時取得的緩衝區中回傳一個包含提取的 :ref:`Vector3<class_Vector3>` 條目的緩衝區。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_make_spatial_entity:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_spatial_entity**\ (\ spatial_context\: :ref:`RID<class_RID>`, entity_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_make_spatial_entity>`

為該 ``entity_id`` 建立一個新的實體。\ ``spatial_context`` 應與發現該實體的情境相匹配。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_query_snapshot:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **query_snapshot**\ (\ spatial_snapshot\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_query_snapshot>`

查詢快照資料。該函式將尋找快照中包含 ``component_data`` 中所有指定元件的所有實體。然後，\ ``component_data`` 中包含的物件將填充查詢到的資料。\ ``component_data`` 必須始終以 :ref:`OpenXRSpatialQueryResultData<class_OpenXRSpatialQueryResultData>` 物件作為第一個條目。

\ ``next`` 是一個可選參數，可包含設定查詢條件時傳遞的附加資訊。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_supports_capability:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_capability**\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_supports_capability>`

如果所使用的硬體支援該空間實體 ``capability``\ ，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_supports_component_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_component_type**\ (\ capability\: :ref:`Capability<enum_OpenXRSpatialEntityExtension_Capability>`, component_type\: :ref:`ComponentType<enum_OpenXRSpatialEntityExtension_ComponentType>`\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_supports_component_type>`

如果該 ``capability`` 支援 ``component_type``\ ，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialEntityExtension_method_update_spatial_entities:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **update_spatial_entities**\ (\ spatial_context\: :ref:`RID<class_RID>`, entities\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\], component_types\: :ref:`PackedInt64Array<class_PackedInt64Array>`, next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`

對有限數量的實體執行快照操作。這不是非同步方法，會立即回傳快照結果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
