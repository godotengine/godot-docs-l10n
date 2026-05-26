:github_url: hide

.. _class_OpenXRSpatialMarkerTrackingCapability:

OpenXRSpatialMarkerTrackingCapability
=====================================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

用于处理空间实体标记跟踪逻辑的实现。

.. rst-class:: classref-introduction-group

描述
----

该类用于处理 OpenXR 标记跟踪空间实体扩展。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`do_entity_update<class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_april_tag_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_aruco_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_micro_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`start_entity_discovery<class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update:

.. rst-class:: classref-method

|void| **do_entity_update**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_do_entity_update>`

Calls :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the marker entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to update for this marker capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_april_tag_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`

如果当前设备支持 April 标签标记跟踪，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_aruco_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`

如果当前设备支持 Aruco 标记跟踪，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_micro_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`

如果当前设备支持微型二维码标记跟踪，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`

如果当前设备支持二维码标记跟踪，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_start_entity_discovery>`

Calls :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the marker entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to discover for this marker capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, when non-null, is called with two parameters usually twice. The first parameter is the :ref:`RID<class_RID>` of the discovery snapshot and the second parameter is a boolean where ``false`` indicates the discovery snapshot is about to be processed, and ``true`` indicates the discovery snapshot has been processed and ``component_data`` has valid data. The second call is skipped if an error was encountered.

The returned :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` is identical to the return from :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
