:github_url: hide

.. _class_OpenXRSpatialPlaneTrackingCapability:

OpenXRSpatialPlaneTrackingCapability
====================================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Implementation for handling spatial entity plane tracking logic.

.. rst-class:: classref-introduction-group

說明
----

This class handles the OpenXR plane tracking spatial entity extension.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_supported<class_OpenXRSpatialPlaneTrackingCapability_method_is_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`start_entity_discovery<class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRSpatialPlaneTrackingCapability_method_is_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_is_supported>`

Returns ``true`` if plane tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialPlaneTrackingCapability_method_start_entity_discovery>`

Calls :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the plane entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to discover for this plane capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, when non-null, is called with two parameters usually twice. The first parameter is the :ref:`RID<class_RID>` of the discovery snapshot and the second parameter is a boolean where ``false`` indicates the discovery snapshot is about to be processed, and ``true`` indicates the discovery snapshot has been processed and ``component_data`` has valid data. The second call is skipped if an error was encountered.

The returned :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` is identical to the return from :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
