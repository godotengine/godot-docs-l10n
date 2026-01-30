:github_url: hide

.. _class_XRInterface:

XRInterface
===========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`MobileVRInterface<class_MobileVRInterface>`, :ref:`OpenXRInterface<class_OpenXRInterface>`, :ref:`WebXRInterface<class_WebXRInterface>`, :ref:`XRInterfaceExtension<class_XRInterfaceExtension>`

XR 介面實作的基底類別。

.. rst-class:: classref-introduction-group

說明
----

需要實作該類以使 Godot 可以使用 AR 或 VR 平臺，並且這些應作為 C++ 模組或 GDExtension 模組實作。部分介面公開給 GDScript，因此可以偵測、啟用和配置 AR 或 VR 平臺。

介面應該以這樣一種方式編寫，只要簡單地啟用它們就會提供一個工作設定。可以通過 :ref:`XRServer<class_XRServer>` 查詢可用的介面。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
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

   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_camera_feed_id<class_XRInterface_method_get_camera_feed_id>`\ (\ )                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_capabilities<class_XRInterface_method_get_capabilities>`\ (\ ) |const|                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                    | :ref:`get_name<class_XRInterface_method_get_name>`\ (\ ) |const|                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`get_play_area<class_XRInterface_method_get_play_area>`\ (\ ) |const|                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`                    | :ref:`get_projection_for_view<class_XRInterface_method_get_projection_for_view>`\ (\ view\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ )                                                                                                                    |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`get_render_target_size<class_XRInterface_method_get_render_target_size>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                              | :ref:`get_supported_environment_blend_modes<class_XRInterface_method_get_supported_environment_blend_modes>`\ (\ )                                                                                                                                                                                                                             |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                    | :ref:`get_system_info<class_XRInterface_method_get_system_info>`\ (\ )                                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` | :ref:`get_tracking_status<class_XRInterface_method_get_tracking_status>`\ (\ ) |const|                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                  | :ref:`get_transform_for_view<class_XRInterface_method_get_transform_for_view>`\ (\ view\: :ref:`int<class_int>`, cam_transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_view_count<class_XRInterface_method_get_view_count>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`initialize<class_XRInterface_method_initialize>`\ (\ )                                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_initialized<class_XRInterface_method_is_initialized>`\ (\ ) |const|                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_passthrough_enabled<class_XRInterface_method_is_passthrough_enabled>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_passthrough_supported<class_XRInterface_method_is_passthrough_supported>`\ (\ )                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`set_environment_blend_mode<class_XRInterface_method_set_environment_blend_mode>`\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ )                                                                                                                                                                        |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`set_play_area_mode<class_XRInterface_method_set_play_area_mode>`\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )                                                                                                                                                                                                        |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`start_passthrough<class_XRInterface_method_start_passthrough>`\ (\ )                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`stop_passthrough<class_XRInterface_method_stop_passthrough>`\ (\ )                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`supports_play_area_mode<class_XRInterface_method_supports_play_area_mode>`\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )                                                                                                                                                                                              |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`trigger_haptic_pulse<class_XRInterface_method_trigger_haptic_pulse>`\ (\ action_name\: :ref:`String<class_String>`, tracker_name\: :ref:`StringName<class_StringName>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`uninitialize<class_XRInterface_method_uninitialize>`\ (\ )                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_XRInterface_signal_play_area_changed:

.. rst-class:: classref-signal

**play_area_changed**\ (\ mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRInterface_signal_play_area_changed>`

當遊玩區域改變時發出。這可能是玩家重設邊界、進入新的遊玩區域、更改遊玩區域模式、重設其頭戴式裝置方向，或者世界比例改變的結果。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_XRInterface_Capabilities:

.. rst-class:: classref-enumeration

enum **Capabilities**: :ref:`🔗<enum_XRInterface_Capabilities>`

.. _class_XRInterface_constant_XR_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_NONE** = ``0``

沒有 XR 功能。

.. _class_XRInterface_constant_XR_MONO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_MONO** = ``1``

此介面可以與正常的算繪輸出一起工作（非基於 HMD 的 AR）。

.. _class_XRInterface_constant_XR_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_STEREO** = ``2``

該介面支援立體算繪。

.. _class_XRInterface_constant_XR_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_QUAD** = ``4``

該介面支援四邊形算繪（Godot 尚不支援）。

.. _class_XRInterface_constant_XR_VR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_VR** = ``8``

該介面支援 VR。

.. _class_XRInterface_constant_XR_AR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_AR** = ``16``

該介面支援 AR（影片背景和真實世界追蹤）。

.. _class_XRInterface_constant_XR_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_EXTERNAL** = ``32``

該介面輸出至外部裝置。如果使用的是主視口，則螢幕上的輸出是未經修改的左眼或右眼緩衝區（如果視口大小未更改至與 :ref:`get_render_target_size()<class_XRInterface_method_get_render_target_size>` 相同的縱橫比，則會進行拉伸）。使用單獨的視口節點能夠將主視口讓出來做別的事情。

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_TrackingStatus:

.. rst-class:: classref-enumeration

enum **TrackingStatus**: :ref:`🔗<enum_XRInterface_TrackingStatus>`

.. _class_XRInterface_constant_XR_NORMAL_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NORMAL_TRACKING** = ``0``

追蹤行為符合預期。

.. _class_XRInterface_constant_XR_EXCESSIVE_MOTION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_EXCESSIVE_MOTION** = ``1``

過度運動會阻礙追蹤（玩家的移動速度大於追蹤的速度）。

.. _class_XRInterface_constant_XR_INSUFFICIENT_FEATURES:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_INSUFFICIENT_FEATURES** = ``2``

追蹤受到功能不足的阻礙，太暗（對於基於相機的追蹤），玩家被阻礙等。

.. _class_XRInterface_constant_XR_UNKNOWN_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_UNKNOWN_TRACKING** = ``3``

我們不知道追蹤的狀態，或者這個介面未提供回饋。

.. _class_XRInterface_constant_XR_NOT_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NOT_TRACKING** = ``4``

追蹤功能失效（相機未插電或被遮擋、燈塔關閉，等等）。

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_PlayAreaMode:

.. rst-class:: classref-enumeration

enum **PlayAreaMode**: :ref:`🔗<enum_XRInterface_PlayAreaMode>`

.. _class_XRInterface_constant_XR_PLAY_AREA_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_UNKNOWN** = ``0``

遊玩區域模式未設定或不可用。

.. _class_XRInterface_constant_XR_PLAY_AREA_3DOF:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_3DOF** = ``1``

遊玩區域僅支援方向追蹤，不支援位置追蹤，區域以玩家為中心。

.. _class_XRInterface_constant_XR_PLAY_AREA_SITTING:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_SITTING** = ``2``

玩家處於坐姿，提供有限的位置追蹤，玩家周圍有固定的防護。

.. _class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_ROOMSCALE** = ``3``

玩家可以自由移動，提供完整的位置追蹤。

.. _class_XRInterface_constant_XR_PLAY_AREA_STAGE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_STAGE** = ``4``

Same as :ref:`XR_PLAY_AREA_ROOMSCALE<class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE>` but origin point is fixed to the center of the physical space. In this mode, system-level recentering may be disabled, requiring the use of :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>`.

.. _class_XRInterface_constant_XR_PLAY_AREA_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_CUSTOM** = ``2147483647``

Custom play area set by a GDExtension.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_EnvironmentBlendMode:

.. rst-class:: classref-enumeration

enum **EnvironmentBlendMode**: :ref:`🔗<enum_XRInterface_EnvironmentBlendMode>`

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_OPAQUE** = ``0``

不透明混合模式。通常用於 VR 裝置。

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ADDITIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ADDITIVE** = ``1``

加法混合模式。通常用於帶有穿透功能的 AR 或 VR 裝置。

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ALPHA_BLEND** = ``2``

Alpha 混合模式。通常用於帶有穿透功能的 AR 或 VR 裝置。Alpha 通道控制穿透的可見程度。Alpha 為 0.0 表示穿透可見、該圖元處於加法模式。Alpha 為 1.0 表示穿透不可見，該圖元處於不透明模式。

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_VRSTextureFormat:

.. rst-class:: classref-enumeration

enum **VRSTextureFormat**: :ref:`🔗<enum_XRInterface_VRSTextureFormat>`

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_UNIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_UNIFIED** = ``0``

The texture format is the same as returned by :ref:`XRVRS.make_vrs_texture()<class_XRVRS_method_make_vrs_texture>`.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE** = ``1``

The texture format is the same as expected by the Vulkan ``VK_KHR_fragment_shading_rate`` extension.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP** = ``2``

The texture format is the same as expected by the Vulkan ``VK_EXT_fragment_density_map`` extension.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRInterface_property_ar_is_anchor_detection_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ar_is_anchor_detection_enabled** = ``false`` :ref:`🔗<class_XRInterface_property_ar_is_anchor_detection_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_detection_is_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_anchor_detection_is_enabled**\ (\ )

在 AR 介面上，如果啟用錨點偵測，則為 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_environment_blend_mode:

.. rst-class:: classref-property

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **environment_blend_mode** = ``0`` :ref:`🔗<class_XRInterface_property_environment_blend_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ )
- :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **get_environment_blend_mode**\ (\ )

指定 XR 應如何融入環境。這特定於某些 AR 和直通裝置，其中相機影像由 XR 合成器混合。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_interface_is_primary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interface_is_primary** = ``false`` :ref:`🔗<class_XRInterface_property_interface_is_primary>`

.. rst-class:: classref-property-setget

- |void| **set_primary**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_primary**\ (\ )

``true`` 如果這是個主介面。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_xr_play_area_mode:

.. rst-class:: classref-property

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **xr_play_area_mode** = ``0`` :ref:`🔗<class_XRInterface_property_xr_play_area_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )
- :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **get_play_area_mode**\ (\ )

該介面的遊玩區域模式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRInterface_method_get_camera_feed_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_camera_feed_id**\ (\ ) :ref:`🔗<class_XRInterface_method_get_camera_feed_id>`

如果這是一個需要顯示相機畫面作為背景的 AR 介面，此方法返回該介面的 :ref:`CameraServer<class_CameraServer>` 中的畫面 ID。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_capabilities:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_capabilities**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_capabilities>`

返回 :ref:`Capabilities<enum_XRInterface_Capabilities>` 標籤的組合，提供關於這個介面功能的資訊。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_name>`

Returns the name of this interface (``"OpenXR"``, ``"OpenVR"``, ``"OpenHMD"``, ``"ARKit"``, etc.).

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_play_area:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_play_area**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_play_area>`

Returns an array of vectors that represent the physical play area mapped to the virtual space around the :ref:`XROrigin3D<class_XROrigin3D>` point. The points form a convex polygon that can be used to react to or visualize the play area. This returns an empty array if this feature is not supported or if the information is not yet available.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_projection_for_view:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_projection_for_view**\ (\ view\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_get_projection_for_view>`

返回視圖/眼睛的投影矩陣。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_render_target_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_render_target_size**\ (\ ) :ref:`🔗<class_XRInterface_method_get_render_target_size>`

返回在VR平臺套用鏡頭失真等內容之前算繪的中間結果的解析度。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_supported_environment_blend_modes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_supported_environment_blend_modes**\ (\ ) :ref:`🔗<class_XRInterface_method_get_supported_environment_blend_modes>`

返回支援的環境混合模式陣列，見 :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_system_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_system_info**\ (\ ) :ref:`🔗<class_XRInterface_method_get_system_info>`

返回包含額外系統資訊的 :ref:`Dictionary<class_Dictionary>`\ 。介面應該返回 ``XRRuntimeName`` 和 ``XRRuntimeVersion``\ ，表示所使用的 XR 運作時資訊。還可以額外提供關於特定介面的條目。

\ **注意：**\ 這個資訊可能只在成功呼叫 :ref:`initialize()<class_XRInterface_method_initialize>` 後可用。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_tracking_status:

.. rst-class:: classref-method

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **get_tracking_status**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_tracking_status>`

如果支援，返回我們的追蹤狀態。這將使你能夠向使用者回饋，是否存在位置追蹤的問題。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_transform_for_view:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_transform_for_view**\ (\ view\: :ref:`int<class_int>`, cam_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRInterface_method_get_transform_for_view>`

返回視圖/眼睛的變換。

\ ``view`` 是視圖/眼睛的索引。

\ ``cam_transform`` 是將裝置座標對應至場景座標的變換，通常是目前 XROrigin3D 的 :ref:`Node3D.global_transform<class_Node3D_property_global_transform>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) :ref:`🔗<class_XRInterface_method_get_view_count>`

返回該裝置算繪所需的視圖數量。1 代表單目平面視圖，2 代表雙目立體視圖。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **initialize**\ (\ ) :ref:`🔗<class_XRInterface_method_initialize>`

呼叫它來初始化這個介面。被初始化的第一個介面被識別為主介面，它將用於算繪輸出。

初始化想要使用的介面後，需要啟用視口的 AR/VR 模式，並且算繪應該開始。

\ **注意：**\ 對於任何使用 Godot 主輸出的裝置，例如移動 VR，必須在主視口上啟用 XR 模式。

如果為處理自己輸出的平臺（例如 OpenVR）執行該操作，則 Godot 將只顯示一隻眼睛而不會在螢幕上失真。或者，可以將單獨的視口節點新增到場景並在該視口上啟用 AR/VR。它將被用於輸出到 HMD，讓你可以在主視窗中自由地做任何你喜歡的事情，例如使用單獨的相機作為旁觀者相機或算繪完全不同的東西。

雖然目前未使用，但可以啟動其他介面。如果想追蹤來自其他平臺的控制器，可能會希望這樣做。但是，此時只有一個介面可以算繪到 HMD。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_initialized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_initialized**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_is_initialized>`

如果這個介面已初始化，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_enabled**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_enabled>`

**已棄用：** Check if :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` is :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

Returns ``true`` if passthrough is enabled.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_supported**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_supported>`

**已棄用：** Check that :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>` is supported using :ref:`get_supported_environment_blend_modes()<class_XRInterface_method_get_supported_environment_blend_modes>`, instead.

Returns ``true`` if this interface supports passthrough.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_set_environment_blend_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ ) :ref:`🔗<class_XRInterface_method_set_environment_blend_mode>`

Sets the active environment blend mode.

\ ``mode`` is the environment blend mode starting with the next frame.

\ **Note:** Not all runtimes support all environment blend modes, so it is important to check this at startup. For example:

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

Sets the active play area mode, will return ``false`` if the mode can't be used with this interface.

\ **Note:** Changing this after the interface has already been initialized can be jarring for the player, so it's recommended to recenter on the HMD with :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>` (if switching to :ref:`XR_PLAY_AREA_STAGE<class_XRInterface_constant_XR_PLAY_AREA_STAGE>`) or make the switch during a scene change.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_start_passthrough:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_start_passthrough>`

**已棄用：** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

啟動穿透，如果無法啟動則會返回 ``false``\ 。

\ **注意：**\ XR 所使用的視口必須有透明背景，否則穿透可能無法正確算繪。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_stop_passthrough:

.. rst-class:: classref-method

|void| **stop_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_stop_passthrough>`

**已棄用：** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_OPAQUE<class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE>`, instead.

停止穿透。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_supports_play_area_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ ) :ref:`🔗<class_XRInterface_method_supports_play_area_mode>`

請呼叫這個方法來查詢此介面是否支援給定的遊玩區域模式。

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, tracker_name\: :ref:`StringName<class_StringName>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_trigger_haptic_pulse>`

Triggers a haptic pulse on a device associated with this interface.

\ ``action_name`` is the name of the action for this pulse.

\ ``tracker_name`` is optional and can be used to direct the pulse to a specific device provided that device is bound to this haptic.

\ ``frequency`` is the frequency of the pulse, set to ``0.0`` to have the system use a default frequency.

\ ``amplitude`` is the amplitude of the pulse between ``0.0`` and ``1.0``.

\ ``duration_sec`` is the duration of the pulse in seconds.

\ ``delay_sec`` is a delay in seconds before the pulse is given.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_uninitialize:

.. rst-class:: classref-method

|void| **uninitialize**\ (\ ) :ref:`🔗<class_XRInterface_method_uninitialize>`

關閉介面。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
