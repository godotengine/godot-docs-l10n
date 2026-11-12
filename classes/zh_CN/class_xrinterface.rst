:github_url: hide

.. _class_XRInterface:

XRInterface
===========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`MobileVRInterface<class_MobileVRInterface>`, :ref:`OpenXRInterface<class_OpenXRInterface>`, :ref:`VisionOSXRInterface<class_VisionOSXRInterface>`, :ref:`WebXRInterface<class_WebXRInterface>`, :ref:`XRInterfaceExtension<class_XRInterfaceExtension>`

XR 接口实现的基类。

.. rst-class:: classref-introduction-group

描述
----

需要实现该类以使 Godot 可以使用 AR 或 VR 平台，并且这些应作为 C++ 模块或 GDExtension 模块实现。部分接口公开给 GDScript，因此可以检测、启用和配置 AR 或 VR 平台。

接口应该以这样一种方式编写，只要简单地启用它们就会提供一个工作设置。可以通过 :ref:`XRServer<class_XRServer>` 查询可用的接口。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`ar_is_anchor_detection_enabled<class_XRInterface_property_ar_is_anchor_detection_enabled>` | ``false`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` | :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>`                 | ``0``     |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`interface_is_primary<class_XRInterface_property_interface_is_primary>`                     | ``false`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`                 | :ref:`xr_play_area_mode<class_XRInterface_property_xr_play_area_mode>`                           | ``0``     |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`get_camera_feed_id<class_XRInterface_method_get_camera_feed_id>`\ (\ )                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] | :ref:`get_camera_offsets<class_XRInterface_method_get_camera_offsets>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Projection<class_Projection>`\]   | :ref:`get_camera_projections<class_XRInterface_method_get_camera_projections>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ )                                                                                                |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`get_capabilities<class_XRInterface_method_get_capabilities>`\ (\ ) |const|                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`get_name<class_XRInterface_method_get_name>`\ (\ ) |const|                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`                | :ref:`get_play_area<class_XRInterface_method_get_play_area>`\ (\ ) |const|                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`                                | :ref:`get_projection_for_view<class_XRInterface_method_get_projection_for_view>`\ (\ view\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ )                                                                                                                    |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                      | :ref:`get_render_target_size<class_XRInterface_method_get_render_target_size>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                          | :ref:`get_supported_environment_blend_modes<class_XRInterface_method_get_supported_environment_blend_modes>`\ (\ )                                                                                                                                                                                                                             |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                | :ref:`get_system_info<class_XRInterface_method_get_system_info>`\ (\ )                                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingStatus<enum_XRInterface_TrackingStatus>`             | :ref:`get_tracking_status<class_XRInterface_method_get_tracking_status>`\ (\ ) |const|                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                              | :ref:`get_transform_for_view<class_XRInterface_method_get_transform_for_view>`\ (\ view\: :ref:`int<class_int>`, cam_transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`get_view_count<class_XRInterface_method_get_view_count>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`initialize<class_XRInterface_method_initialize>`\ (\ )                                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_initialized<class_XRInterface_method_is_initialized>`\ (\ ) |const|                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_passthrough_enabled<class_XRInterface_method_is_passthrough_enabled>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_passthrough_supported<class_XRInterface_method_is_passthrough_supported>`\ (\ )                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`set_environment_blend_mode<class_XRInterface_method_set_environment_blend_mode>`\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ )                                                                                                                                                                        |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`set_play_area_mode<class_XRInterface_method_set_play_area_mode>`\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )                                                                                                                                                                                                        |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`start_passthrough<class_XRInterface_method_start_passthrough>`\ (\ )                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`stop_passthrough<class_XRInterface_method_stop_passthrough>`\ (\ )                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`supports_play_area_mode<class_XRInterface_method_supports_play_area_mode>`\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )                                                                                                                                                                                              |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`trigger_haptic_pulse<class_XRInterface_method_trigger_haptic_pulse>`\ (\ action_name\: :ref:`String<class_String>`, tracker_name\: :ref:`StringName<class_StringName>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`uninitialize<class_XRInterface_method_uninitialize>`\ (\ )                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_XRInterface_signal_play_area_changed:

.. rst-class:: classref-signal

**play_area_changed**\ (\ mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRInterface_signal_play_area_changed>`

当游玩区域改变时发出。这可能是玩家重置边界、进入新的游玩区域、更改游玩区域模式、重置其头戴式设备方向，或者世界比例改变的结果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_XRInterface_Capabilities:

.. rst-class:: classref-enumeration

enum **Capabilities**: :ref:`🔗<enum_XRInterface_Capabilities>`

.. _class_XRInterface_constant_XR_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_NONE** = ``0``

没有 XR 功能。

.. _class_XRInterface_constant_XR_MONO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_MONO** = ``1``

此接口可以与正常的渲染输出一起工作（非基于 HMD 的 AR）。

.. _class_XRInterface_constant_XR_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_STEREO** = ``2``

该接口支持立体渲染。

.. _class_XRInterface_constant_XR_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_QUAD** = ``4``

该接口支持四边形渲染（Godot 尚不支持）。

.. _class_XRInterface_constant_XR_VR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_VR** = ``8``

该接口支持 VR。

.. _class_XRInterface_constant_XR_AR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_AR** = ``16``

该接口支持 AR（视频背景和真实世界跟踪）。

.. _class_XRInterface_constant_XR_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_EXTERNAL** = ``32``

该接口输出至外部设备。如果使用的是主视口，则屏幕上的输出是未经修改的左眼或右眼缓冲区（如果视口大小未更改至与 :ref:`get_render_target_size()<class_XRInterface_method_get_render_target_size>` 相同的纵横比，则会进行拉伸）。使用单独的视口节点能够将主视口让出来做别的事情。

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_TrackingStatus:

.. rst-class:: classref-enumeration

enum **TrackingStatus**: :ref:`🔗<enum_XRInterface_TrackingStatus>`

.. _class_XRInterface_constant_XR_NORMAL_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NORMAL_TRACKING** = ``0``

追踪行为符合预期。

.. _class_XRInterface_constant_XR_EXCESSIVE_MOTION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_EXCESSIVE_MOTION** = ``1``

过度运动会阻碍追踪（玩家的移动速度大于追踪的速度）。

.. _class_XRInterface_constant_XR_INSUFFICIENT_FEATURES:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_INSUFFICIENT_FEATURES** = ``2``

跟踪受到功能不足的阻碍，太暗（对于基于相机的跟踪），玩家被阻碍等。

.. _class_XRInterface_constant_XR_UNKNOWN_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_UNKNOWN_TRACKING** = ``3``

我们不知道跟踪的状态，或者这个接口未提供反馈。

.. _class_XRInterface_constant_XR_NOT_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NOT_TRACKING** = ``4``

追踪功能失效（相机未插电或被遮挡、灯塔关闭，等等）。

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_PlayAreaMode:

.. rst-class:: classref-enumeration

enum **PlayAreaMode**: :ref:`🔗<enum_XRInterface_PlayAreaMode>`

.. _class_XRInterface_constant_XR_PLAY_AREA_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_UNKNOWN** = ``0``

游玩区域模式未设置或不可用。

.. _class_XRInterface_constant_XR_PLAY_AREA_3DOF:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_3DOF** = ``1``

游玩区域仅支持方向跟踪，不支持位置跟踪，区域以玩家为中心。

.. _class_XRInterface_constant_XR_PLAY_AREA_SITTING:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_SITTING** = ``2``

玩家处于坐姿，提供有限的位置跟踪，玩家周围有固定的防护。

.. _class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_ROOMSCALE** = ``3``

玩家可以自由移动，提供完整的位置跟踪。

.. _class_XRInterface_constant_XR_PLAY_AREA_STAGE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_STAGE** = ``4``

与 :ref:`XR_PLAY_AREA_ROOMSCALE<class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE>` 相同，但是原点固定在物理空间的中心。在这个模式下，可能会禁用通过 :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>` 进行的系统级别的中心重定位。

.. _class_XRInterface_constant_XR_PLAY_AREA_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_CUSTOM** = ``2147483647``

GDExtension 设置的自定义游玩区域。

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_EnvironmentBlendMode:

.. rst-class:: classref-enumeration

enum **EnvironmentBlendMode**: :ref:`🔗<enum_XRInterface_EnvironmentBlendMode>`

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_OPAQUE** = ``0``

不透明混合模式。通常用于 VR 设备。

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ADDITIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ADDITIVE** = ``1``

加法混合模式。通常用于带有穿透功能的 AR 或 VR 设备。

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ALPHA_BLEND** = ``2``

Alpha 混合模式。通常用于带有穿透功能的 AR 或 VR 设备。Alpha 通道控制穿透的可见程度。Alpha 为 0.0 表示穿透可见、该像素处于加法模式。Alpha 为 1.0 表示穿透不可见，该像素处于不透明模式。

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_VRSTextureFormat:

.. rst-class:: classref-enumeration

enum **VRSTextureFormat**: :ref:`🔗<enum_XRInterface_VRSTextureFormat>`

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_UNIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_UNIFIED** = ``0``

纹理格式与 :ref:`XRVRS.make_vrs_texture()<class_XRVRS_method_make_vrs_texture>` 返回的格式相同。

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE** = ``1``

纹理格式与 Vulkan ``VK_KHR_fragment_shading_rate`` 扩展所期望的格式相同。

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP** = ``2``

纹理格式与 Vulkan ``VK_EXT_fragment_density_map`` 扩展所期望的格式相同。

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_RASTERIZATION_RATE_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_RASTERIZATION_RATE_MAP** = ``3``

The texture contains a Metal ``rasterizationRateMap``, used for foveated rendering on Apple platforms. It's not a real texture, but instead an opaque wrapper for an ``MTLRasterizationRateMap`` object.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRInterface_property_ar_is_anchor_detection_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ar_is_anchor_detection_enabled** = ``false`` :ref:`🔗<class_XRInterface_property_ar_is_anchor_detection_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_detection_is_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_anchor_detection_is_enabled**\ (\ )

在 AR 接口上，如果启用锚点检测，则为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_environment_blend_mode:

.. rst-class:: classref-property

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **environment_blend_mode** = ``0`` :ref:`🔗<class_XRInterface_property_environment_blend_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ )
- :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **get_environment_blend_mode**\ (\ )

指定 XR 应如何融入环境。这是特定于某些 AR 和直通设备的，其中相机图像由 XR 合成器混合。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_interface_is_primary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interface_is_primary** = ``false`` :ref:`🔗<class_XRInterface_property_interface_is_primary>`

.. rst-class:: classref-property-setget

- |void| **set_primary**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_primary**\ (\ )

``true`` 如果这是个主接口。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_xr_play_area_mode:

.. rst-class:: classref-property

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **xr_play_area_mode** = ``0`` :ref:`🔗<class_XRInterface_property_xr_play_area_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )
- :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **get_play_area_mode**\ (\ )

该接口的游玩区域模式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XRInterface_method_get_camera_feed_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_camera_feed_id**\ (\ ) :ref:`🔗<class_XRInterface_method_get_camera_feed_id>`

如果该 AR 接口要求将相机画面作为背景显示，那么该方法就会返回该接口 :ref:`CameraServer<class_CameraServer>` 的画面 ID。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_camera_offsets:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] **get_camera_offsets**\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRInterface_method_get_camera_offsets>`

Gets an array of offset transforms for each view for tracker ``tracker_name``. ``tracker_name`` must refer to an :ref:`XRPositionalTracker<class_XRPositionalTracker>` used as a camera. Returns an empty array if this interface is not responsible for this tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_camera_projections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Projection<class_Projection>`\] **get_camera_projections**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_get_camera_projections>`

Gets an array of projection matrices for each view for tracker ``tracker_name``. ``tracker_name`` must refer to an :ref:`XRPositionalTracker<class_XRPositionalTracker>` used as a camera. Returns an empty array if this interface is not responsible for this tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_capabilities:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_capabilities**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_capabilities>`

返回 :ref:`Capabilities<enum_XRInterface_Capabilities>` 标签的组合，提供关于这个接口功能的信息。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_name>`

返回该接口的名称（\ ``"OpenXR"``\ 、\ ``"OpenVR"``\ 、\ ``"OpenHMD"``\ 、\ ``"ARKit"`` 等）。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_play_area:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_play_area**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_play_area>`

返回一个向量数组，表示映射到 :ref:`XROrigin3D<class_XROrigin3D>` 点周围的虚拟空间的物理游玩区域。这些点形成一个凸多边形，可被用于对游玩区域做出反应或可视化。如果该功能不受支持或信息尚不可用，则返回一个空数组。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_projection_for_view:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_projection_for_view**\ (\ view\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_get_projection_for_view>`

**已弃用：** Use get_camera_projections

返回视图/眼睛的投影矩阵。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_render_target_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_render_target_size**\ (\ ) :ref:`🔗<class_XRInterface_method_get_render_target_size>`

返回在VR平台应用镜头失真等内容之前渲染的中间结果的分辨率。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_supported_environment_blend_modes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_supported_environment_blend_modes**\ (\ ) :ref:`🔗<class_XRInterface_method_get_supported_environment_blend_modes>`

返回支持的环境混合模式数组，见 :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_system_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_system_info**\ (\ ) :ref:`🔗<class_XRInterface_method_get_system_info>`

返回包含额外系统信息的 :ref:`Dictionary<class_Dictionary>`\ 。接口应该返回 ``XRRuntimeName`` 和 ``XRRuntimeVersion``\ ，表示所使用的 XR 运行时信息。还可以额外提供关于特定接口的条目。

\ **注意：**\ 这个信息可能只在成功调用 :ref:`initialize()<class_XRInterface_method_initialize>` 后可用。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_tracking_status:

.. rst-class:: classref-method

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **get_tracking_status**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_tracking_status>`

如果支持，返回我们的跟踪状态。这将使你能够向用户反馈，是否存在位置跟踪的问题。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_transform_for_view:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_transform_for_view**\ (\ view\: :ref:`int<class_int>`, cam_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRInterface_method_get_transform_for_view>`

**已弃用：** Use get_camera_offsets

返回视图/眼睛的变换。

\ ``view`` 是视图/眼睛的索引。

\ ``cam_transform`` 是将设备坐标映射至场景坐标的变换，通常是当前 XROrigin3D 的 :ref:`Node3D.global_transform<class_Node3D_property_global_transform>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) :ref:`🔗<class_XRInterface_method_get_view_count>`

返回该设备渲染所需的视图数量。1 代表单目平面视图，2 代表双目立体视图。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **initialize**\ (\ ) :ref:`🔗<class_XRInterface_method_initialize>`

调用它来初始化这个接口。被初始化的第一个接口被识别为主接口，它将用于渲染输出。

初始化想要使用的接口后，需要启用视口的 AR/VR 模式，并且渲染应该开始。

\ **注意：**\ 对于任何使用 Godot 主输出的设备，例如移动 VR，必须在主视口上启用 XR 模式。

如果为处理自己输出的平台（例如 OpenVR）执行该操作，则 Godot 将只显示一只眼睛而不会在屏幕上失真。或者，可以将单独的视口节点添加到场景并在该视口上启用 AR/VR。它将被用于输出到 HMD，让你可以在主窗口中自由地做任何你喜欢的事情，例如使用单独的相机作为旁观者相机或渲染完全不同的东西。

虽然当前未使用，但可以激活其他接口。如果想跟踪来自其他平台的控制器，可能会希望这样做。但是，此时只有一个接口可以渲染到 HMD。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_initialized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_initialized**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_is_initialized>`

如果这个接口已初始化，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_enabled**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_enabled>`

**已弃用：** Check if :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` is :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

如果已启用穿透，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_supported**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_supported>`

**已弃用：** Check that :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>` is supported using :ref:`get_supported_environment_blend_modes()<class_XRInterface_method_get_supported_environment_blend_modes>`, instead.

如果该接口支持穿透，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_set_environment_blend_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ ) :ref:`🔗<class_XRInterface_method_set_environment_blend_mode>`

设置活动的环境混合模式。

\ ``mode`` 是从下一帧开始的环境混合模式。

\ **注意：**\ 并非所有运行时都支持全部的环境混合模式，因此在启动时检查这一点很重要。例如：

::

    func _ready():
        var xr_interface = XRServer.find_interface("OpenXR")
        if xr_interface and xr_interface.is_initialized():
            var vp = get_viewport()
            vp.use_xr = true
            var acceptable_modes = [XRInterface.XR_ENV_BLEND_MODE_OPAQUE, XRInterface.XR_ENV_BLEND_MODE_ADDITIVE]
            var modes = xr_interface.get_supported_environment_blend_modes()
            for mode in acceptable_modes:
                if mode in modes:
                    xr_interface.set_environment_blend_mode(mode)
                    break

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_set_play_area_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ ) :ref:`🔗<class_XRInterface_method_set_play_area_mode>`

设置活动的游玩区域模式，如果该模式不能与该接口一起使用，将返回 ``false``\ 。

\ **注意：**\ 在接口初始化后更改该设置可能会让玩家感到不舒服，因此建议使用 :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>` 在 HMD 上重新居中（如果切换到 :ref:`XR_PLAY_AREA_STAGE<class_XRInterface_constant_XR_PLAY_AREA_STAGE>`\ ）或在场景改变时进行切换。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_start_passthrough:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_start_passthrough>`

**已弃用：** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

启动穿透，如果无法启动则会返回 ``false``\ 。

\ **注意：**\ XR 所使用的视口必须有透明背景，否则穿透可能无法正确渲染。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_stop_passthrough:

.. rst-class:: classref-method

|void| **stop_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_stop_passthrough>`

**已弃用：** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_OPAQUE<class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE>`, instead.

停止穿透。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_supports_play_area_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ ) :ref:`🔗<class_XRInterface_method_supports_play_area_mode>`

请调用这个方法来查询此接口是否支持给定的游玩区域模式。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, tracker_name\: :ref:`StringName<class_StringName>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_trigger_haptic_pulse>`

在与该接口相关联的设备上触发一次触觉脉冲。

\ ``action_name`` 是该脉冲的动作名称。

\ ``tracker_name`` 是可选的，可用于将脉冲引导至特定设备，前提是该设备被绑定到该触觉。

\ ``frequency`` 是脉冲的频率，设置为 ``0.0`` 可让系统使用默认频率。

\ ``amplitude`` 是介于 ``0.0`` 和 ``1.0`` 之间的脉冲幅度。

\ ``duration_sec`` 是脉冲的持续时间（单位为秒）。

\ ``delay_sec`` 是发出脉冲之前的延迟（单位为秒）。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_uninitialize:

.. rst-class:: classref-method

|void| **uninitialize**\ (\ ) :ref:`🔗<class_XRInterface_method_uninitialize>`

关闭接口。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
