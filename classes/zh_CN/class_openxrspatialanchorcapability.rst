:github_url: hide

.. _class_OpenXRSpatialAnchorCapability:

OpenXRSpatialAnchorCapability
=============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

用于处理空间实体锚点逻辑的实现。

.. rst-class:: classref-introduction-group

描述
----

这是一个内部类，用于处理 OpenXR 锚点空间实体扩展。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`create_default_persistence_context<class_OpenXRSpatialAnchorCapability_method_create_default_persistence_context>`\ (\ user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>` | :ref:`create_new_anchor<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, spatial_context\: :ref:`RID<class_RID>` = RID(), next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                                                                                                                                                                                     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`create_persistence_context<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                                                                                                                                        |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`do_entity_update<class_OpenXRSpatialAnchorCapability_method_do_entity_update>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ )                                                                           |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`free_persistence_context<class_OpenXRSpatialAnchorCapability_method_free_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                                                                                                                                                                                   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_persistence_context_handle<class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_persistence_scope_supported<class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported>`\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`\ )                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_spatial_anchor_supported<class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_spatial_persistence_supported<class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`persist_anchor<class_OpenXRSpatialAnchorCapability_method_persist_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                                                                                                                         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_anchor<class_OpenXRSpatialAnchorCapability_method_remove_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`\ )                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`start_entity_discovery<class_OpenXRSpatialAnchorCapability_method_start_entity_discovery>`\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`unpersist_anchor<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                                                                                                                                     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_OpenXRSpatialAnchorCapability_PersistenceScope:

.. rst-class:: classref-enumeration

enum **PersistenceScope**: :ref:`🔗<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`

.. _class_OpenXRSpatialAnchorCapability_constant_PERSISTENCE_SCOPE_SYSTEM_MANAGED:

.. rst-class:: classref-enumeration-constant

:ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>` **PERSISTENCE_SCOPE_SYSTEM_MANAGED** = ``1``

为应用程序提供对由系统持久化和管理的空间实体的只读访问权限（即应用程序不能修改该范围）。应用程序可以使用该范围的持久化组件中的 UUID，以便在不同的地理空间上下文和设备重启后关联实体。

.. _class_OpenXRSpatialAnchorCapability_constant_PERSISTENCE_SCOPE_LOCAL_ANCHORS:

.. rst-class:: classref-enumeration-constant

:ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>` **PERSISTENCE_SCOPE_LOCAL_ANCHORS** = ``1000781000``

持久化操作和数据访问仅限于同一设备、同一用户和同一应用程序的空间锚点（使用 :ref:`persist_anchor()<class_OpenXRSpatialAnchorCapability_method_persist_anchor>` 和 :ref:`unpersist_anchor()<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>` 函数）

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRSpatialAnchorCapability_method_create_default_persistence_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_default_persistence_context**\ (\ user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_create_default_persistence_context>`

Calls :ref:`create_persistence_context()<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>` with a configuration that likely works with the XR runtime.

\ ``user_callback`` is called when the context is created.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_create_new_anchor:

.. rst-class:: classref-method

:ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>` **create_new_anchor**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, spatial_context\: :ref:`RID<class_RID>` = RID(), next\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>`

Creates a new anchor that will be tracked by the XR runtime. The ``transform`` should be a transform in the local space of your :ref:`XROrigin3D<class_XROrigin3D>` node. If ``spatial_context`` is not specified the default will be used, this requires :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection>` to be set. The returned tracker will track the location in case our reference space changes.

\ ``next`` must be a valid next object for the ``XrSpatialAnchorCreateInfoEXT`` chain.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_create_persistence_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_persistence_context**\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`

创建一个新的持久化上下文，用于存储持久化数据。

\ **注意：**\ 这是一个异步方法，它返回一个 :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` 对象，用于跟踪状态；丢弃该对象不会取消创建过程。如果指定了 ``user_callback``\ ，则创建成功后会调用该回调函数。该函数的返回值是持久化上下文的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_do_entity_update:

.. rst-class:: classref-method

|void| **do_entity_update**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_do_entity_update>`

Calls :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the anchor entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to update for this anchor capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.update_spatial_entities()<class_OpenXRSpatialEntityExtension_method_update_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_free_persistence_context:

.. rst-class:: classref-method

|void| **free_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_free_persistence_context>`

释放之前使用 :ref:`create_persistence_context()<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>` 创建的持久化上下文。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_persistence_context_handle**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle>`

返回该持久化上下文的内部句柄。

\ **注意：**\ 适用于 GDExtension 实现。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_persistence_scope_supported**\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported>`

如果空间锚点功能支持该持久性范围，则返回 ``true``\ 。

\ **注意：**\ 该方法仅在 OpenXR 实例创建后有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_spatial_anchor_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported>`

如果硬件支持空间锚点功能，则返回 ``true``\ 。该函数只有在 OpenXR 初始化后才会返回有效值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_spatial_persistence_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported>`

如果硬件支持持久空间锚点，则返回 ``true``\ 。仅在 OpenXR 初始化后才会返回有效值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_persist_anchor:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **persist_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_persist_anchor>`

将该锚点转换为持久锚点。这意味着其位置将存储在设备上，并在下次应用程序启动时恢复该锚点。如果未指定 ``persistence_context``\ ，则将使用默认值，但这需要设置 :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection>`\ 。

\ **注意：**\ 这是一个异步方法，它返回一个 :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` 对象，用于跟踪状态；丢弃该对象不会取消创建过程。如果指定了 ``user_callback``\ ，则在成功完成后将调用该回调函数。该函数的返回值是一个布尔值，成功完成后将被设置为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_remove_anchor:

.. rst-class:: classref-method

|void| **remove_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_remove_anchor>`

移除之前使用 :ref:`create_new_anchor()<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>` 方法创建的锚点。如果该锚点是持久化的，则必须先调用 :ref:`unpersist_anchor()<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>` 并等待其回调完成。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_start_entity_discovery:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **start_entity_discovery**\ (\ spatial_context\: :ref:`RID<class_RID>`, component_data\: :ref:`Array<class_Array>`\[:ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\], next_snapshot_create\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, next_snapshot_query\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` = null, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_start_entity_discovery>`

Calls :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>` and :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>` with the anchor entities associated with ``spatial_context``.

\ ``component_data`` are the :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>`\ s to discover for this anchor capability.

If ``next_snapshot_create`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

If ``next_snapshot_query`` is non-null, then pass this to the ``next`` parameter in :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

\ ``user_callback``, when non-null, is called with two parameters usually twice. The first parameter is the :ref:`RID<class_RID>` of the discovery snapshot and the second parameter is a boolean where ``false`` indicates the discovery snapshot is about to be processed, and ``true`` indicates the discovery snapshot has been processed and ``component_data`` has valid data. The second call is skipped if an error was encountered.

The returned :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` is identical to the return from :ref:`OpenXRSpatialEntityExtension.discover_spatial_entities()<class_OpenXRSpatialEntityExtension_method_discover_spatial_entities>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_unpersist_anchor:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **unpersist_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>`

移除该锚点的持久化数据。应用程序重启后，运行时将不会重新创建该锚点。如果未指定 ``persistence_context``\ ，则将使用默认值，但这需要启用 :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enabled<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enabled>`\ 。

\ **注意：**\ 这是一个异步方法，它返回一个 :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` 对象，用于跟踪状态；丢弃该对象不会取消创建过程。如果指定了 ``user_callback``\ ，则成功完成后会调用该回调函数。该函数的返回值为布尔值，成功完成后将被设置为 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
