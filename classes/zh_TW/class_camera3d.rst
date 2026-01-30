:github_url: hide

.. _class_Camera3D:

Camera3D
========

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`XRCamera3D<class_XRCamera3D>`

相機節點，會從某個角度進行顯示。

.. rst-class:: classref-introduction-group

說明
----

**Camera3D** 是一個特殊節點，用於顯示從其目前位置可見的內容。相機在最近的 :ref:`Viewport<class_Viewport>` 節點中註冊自己（當樹上行）。每個視口中只能有一個啟動的相機。如果在樹上沒有可用的視口，相機將在全域視口中註冊。換句話說，相機只是用來為 :ref:`Viewport<class_Viewport>` 提供 3D 顯示能力的，如果沒有，則在該 :ref:`Viewport<class_Viewport>`\ （或更高層視口）中註冊的場景無法顯示。

.. rst-class:: classref-introduction-group

教學
----

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`       | :ref:`attributes<class_Camera3D_property_attributes>`             |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Compositor<class_Compositor>`                   | :ref:`compositor<class_Camera3D_property_compositor>`             |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                 | :ref:`cull_mask<class_Camera3D_property_cull_mask>`               | ``1048575``       |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                               | :ref:`current<class_Camera3D_property_current>`                   | ``false``         |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` | :ref:`doppler_tracking<class_Camera3D_property_doppler_tracking>` | ``0``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Environment<class_Environment>`                 | :ref:`environment<class_Camera3D_property_environment>`           |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`far<class_Camera3D_property_far>`                           | ``4000.0``        |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`fov<class_Camera3D_property_fov>`                           | ``75.0``          |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                         | :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`     | ``Vector2(0, 0)`` |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`h_offset<class_Camera3D_property_h_offset>`                 | ``0.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`KeepAspect<enum_Camera3D_KeepAspect>`           | :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`           | ``1``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`near<class_Camera3D_property_near>`                         | ``0.05``          |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`ProjectionType<enum_Camera3D_ProjectionType>`   | :ref:`projection<class_Camera3D_property_projection>`             | ``0``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`size<class_Camera3D_property_size>`                         | ``1.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`v_offset<class_Camera3D_property_v_offset>`                 | ``0.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`clear_current<class_Camera3D_method_clear_current>`\ (\ enable_next\: :ref:`bool<class_bool>` = true\ )                                                                                                |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`                    | :ref:`get_camera_projection<class_Camera3D_method_get_camera_projection>`\ (\ ) |const|                                                                                                                      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                  | :ref:`get_camera_rid<class_Camera3D_method_get_camera_rid>`\ (\ ) |const|                                                                                                                                    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                  | :ref:`get_camera_transform<class_Camera3D_method_get_camera_transform>`\ (\ ) |const|                                                                                                                        |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`get_cull_mask_value<class_Camera3D_method_get_cull_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`get_frustum<class_Camera3D_method_get_frustum>`\ (\ ) |const|                                                                                                                                          |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                  | :ref:`get_pyramid_shape_rid<class_Camera3D_method_get_pyramid_shape_rid>`\ (\ )                                                                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_position_behind<class_Camera3D_method_is_position_behind>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                               |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_position_in_frustum<class_Camera3D_method_is_position_in_frustum>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                       |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`make_current<class_Camera3D_method_make_current>`\ (\ )                                                                                                                                                |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_local_ray_normal<class_Camera3D_method_project_local_ray_normal>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_position<class_Camera3D_method_project_position>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`, z_depth\: :ref:`float<class_float>`\ ) |const|                                             |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_ray_normal<class_Camera3D_method_project_ray_normal>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_ray_origin<class_Camera3D_method_project_ray_origin>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_cull_mask_value<class_Camera3D_method_set_cull_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                           |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_frustum<class_Camera3D_method_set_frustum>`\ (\ size\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_orthogonal<class_Camera3D_method_set_orthogonal>`\ (\ size\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ )                                   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_perspective<class_Camera3D_method_set_perspective>`\ (\ fov\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ )                                  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`unproject_position<class_Camera3D_method_unproject_position>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                               |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Camera3D_ProjectionType:

.. rst-class:: classref-enumeration

enum **ProjectionType**: :ref:`🔗<enum_Camera3D_ProjectionType>`

.. _class_Camera3D_constant_PROJECTION_PERSPECTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_PERSPECTIVE** = ``0``

透視投影。物體距離相機螢幕越遠顯示就越小。

.. _class_Camera3D_constant_PROJECTION_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_ORTHOGONAL** = ``1``

正交投影，又稱正交投影。物體無論距離多遠，在螢幕上都保持相同的大小。

.. _class_Camera3D_constant_PROJECTION_FRUSTUM:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_FRUSTUM** = ``2``

視錐投影。通過該模式可以調整 :ref:`frustum_offset<class_Camera3D_property_frustum_offset>` 來建立“傾斜的視錐”效果。

.. rst-class:: classref-item-separator

----

.. _enum_Camera3D_KeepAspect:

.. rst-class:: classref-enumeration

enum **KeepAspect**: :ref:`🔗<enum_Camera3D_KeepAspect>`

.. _class_Camera3D_constant_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **KEEP_WIDTH** = ``0``

保留水平長寬比，也稱為 Vert- 縮放。這通常是在縱向模式下運作的專案的最佳選擇，因為較高的縱橫比將從更寬的垂直視場中受益。

.. _class_Camera3D_constant_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **KEEP_HEIGHT** = ``1``

保留垂直長寬比，也稱為 Hor+ 縮放。這通常是在橫向模式下運作的專案的最佳選擇，因為較寬的縱橫比會自動從較寬的水平視場中受益。

.. rst-class:: classref-item-separator

----

.. _enum_Camera3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_Camera3D_DopplerTracking>`

.. _class_Camera3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

禁用\ `多普勒效應 <https://en.wikipedia.org/wiki/Doppler_effect>`__\ 模擬（預設）。

.. _class_Camera3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

通過追蹤在 ``_process`` 中改變的物體位置來類比\ `多普勒效應 <https://zh.wikipedia.org/wiki/%E5%A4%9A%E6%99%AE%E5%8B%92%E6%95%88%E5%BA%94>`__\ 。與這些物體相比，該相機的相對速度的變化會影響音訊的感知方式（改變音訊的 :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`\ ）。

.. _class_Camera3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

通過追蹤在 ``_process`` 中改變的物體位置來類比\ `多普勒效應 <https://zh.wikipedia.org/wiki/%E5%A4%9A%E6%99%AE%E5%8B%92%E6%95%88%E5%BA%94>`__\ 。與這些物體相比，該相機的相對速度的變化會影響音訊的感知方式（改變音訊的 :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Camera3D_property_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **attributes** :ref:`🔗<class_Camera3D_property_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_attributes**\ (\ )

該相機所使用的 :ref:`CameraAttributes<class_CameraAttributes>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_Camera3D_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

The :ref:`Compositor<class_Compositor>` to use for this camera.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Camera3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

剔除遮罩，描述該相機算繪了哪些 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ 。預設情況下，20 個使用者可見層全都被算繪。

\ **注意：**\ 由於 :ref:`cull_mask<class_Camera3D_property_cull_mask>` 允許總共儲存 32 個層，因此另外 12 個層僅供引擎內部使用，不會在編輯器中公開。使用腳本設定 :ref:`cull_mask<class_Camera3D_property_cull_mask>` 允許你切換那些保留層，這對編輯器外掛程式很有用。

要使用腳本更輕鬆地調整 :ref:`cull_mask<class_Camera3D_property_cull_mask>`\ ，請使用 :ref:`get_cull_mask_value()<class_Camera3D_method_get_cull_mask_value>` 和 :ref:`set_cull_mask_value()<class_Camera3D_method_set_cull_mask_value>`\ 。

\ **注意：**\ :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI 和 :ref:`LightmapGI<class_LightmapGI>` 將始終考慮所有層以確定對全域光照有貢獻的內容。如果這是一個問題，請將網格的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 設定為 :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`\ ，並將燈光的 :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` 設定為 :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>`\ ，以將它們從全域光照中排除。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_Camera3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

如果為 ``true``\ ，則祖級 :ref:`Viewport<class_Viewport>` 正在使用這個相機。

如果場景中有多個相機，總會有一個被設為目前相機。例如，假設場景中存在兩個 **Camera3D** 節點並且只有一個為目前相機，那麼如果把某一個相機的 :ref:`current<class_Camera3D_property_current>` 設為 ``false`` 就會導致另一個相機被設為目前相機。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_Camera3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

If not :ref:`DOPPLER_TRACKING_DISABLED<class_Camera3D_constant_DOPPLER_TRACKING_DISABLED>`, this camera will simulate the `Doppler effect <https://en.wikipedia.org/wiki/Doppler_effect>`__ for objects changed in particular ``_process`` methods.

\ **Note:** The Doppler effect will only be heard on :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`\ s if :ref:`AudioStreamPlayer3D.doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` is not set to :ref:`AudioStreamPlayer3D.DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_Camera3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

此相機要使用的 :ref:`Environment<class_Environment>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **far** = ``4000.0`` :ref:`🔗<class_Camera3D_property_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

該相機相對於其局部 Z 軸到遠剔除邊界的距離。較高的值允許相機看得更遠，而減少 :ref:`far<class_Camera3D_property_far>` 如果會導致物件被部分或完全剔除，則可以提高性能。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_fov:

.. rst-class:: classref-property

:ref:`float<class_float>` **fov** = ``75.0`` :ref:`🔗<class_Camera3D_property_fov>`

.. rst-class:: classref-property-setget

- |void| **set_fov**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fov**\ (\ )

The camera's field of view angle (in degrees). Only applicable in perspective mode. Since :ref:`keep_aspect<class_Camera3D_property_keep_aspect>` locks one axis, :ref:`fov<class_Camera3D_property_fov>` sets the other axis' field of view angle.

For reference, the default vertical field of view value (``75.0``) is equivalent to a horizontal FOV of:

- ~91.31 degrees in a 4:3 viewport

- ~101.67 degrees in a 16:10 viewport

- ~107.51 degrees in a 16:9 viewport

- ~121.63 degrees in a 21:9 viewport

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_frustum_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **frustum_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Camera3D_property_frustum_offset>`

.. rst-class:: classref-property-setget

- |void| **set_frustum_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_frustum_offset**\ (\ )

相機的視錐偏移。可以更改預設值，以建立如 `Y-shearing <https://zdoom.org/wiki/Y-shearing>`__ 一樣的“傾斜的視錐”效果。

\ **注意：**\ 僅在 :ref:`projection<class_Camera3D_property_projection>` 為 :ref:`PROJECTION_FRUSTUM<class_Camera3D_constant_PROJECTION_FRUSTUM>` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_Camera3D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

相機視口的水平（X）偏移量。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_keep_aspect:

.. rst-class:: classref-property

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **keep_aspect** = ``1`` :ref:`🔗<class_Camera3D_property_keep_aspect>`

.. rst-class:: classref-property-setget

- |void| **set_keep_aspect_mode**\ (\ value\: :ref:`KeepAspect<enum_Camera3D_KeepAspect>`\ )
- :ref:`KeepAspect<enum_Camera3D_KeepAspect>` **get_keep_aspect_mode**\ (\ )

在 :ref:`fov<class_Camera3D_property_fov>`/:ref:`size<class_Camera3D_property_size>` 調整時要鎖定的軸。可以是 :ref:`KEEP_WIDTH<class_Camera3D_constant_KEEP_WIDTH>` 或 :ref:`KEEP_HEIGHT<class_Camera3D_constant_KEEP_HEIGHT>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **near** = ``0.05`` :ref:`🔗<class_Camera3D_property_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

該相機相對於其局部 Z 軸到近剔除邊界的距離。較低的值允許相機看到更靠近其原點的物件，但代價是\ *整個*\ 範圍內的精度較低。低於預設值的值會導致 Z 衝突增加。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_projection:

.. rst-class:: classref-property

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **projection** = ``0`` :ref:`🔗<class_Camera3D_property_projection>`

.. rst-class:: classref-property-setget

- |void| **set_projection**\ (\ value\: :ref:`ProjectionType<enum_Camera3D_ProjectionType>`\ )
- :ref:`ProjectionType<enum_Camera3D_ProjectionType>` **get_projection**\ (\ )

相機的投影模式。在 :ref:`PROJECTION_PERSPECTIVE<class_Camera3D_constant_PROJECTION_PERSPECTIVE>` 模式下，物體與相機局部空間的Z距離會影響其感知的大小。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_Camera3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

該相機的大小，單位為米，描述的是完整的寬度或者高度，取決於 :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`\ 。僅適用於正交和視錐模式。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_Camera3D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

相機視口的垂直（Y）偏移量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Camera3D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ enable_next\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Camera3D_method_clear_current>`

如果這是目前相機，則將其從目前相機中移除。如果 ``enable_next`` 為 ``true``\ ，則請求使下一個相機（如果有）成為目前相機。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_camera_projection**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_projection>`

返回該相機用於算繪至關聯視口的投影矩陣。相機必須是場景樹的一部分才能正常工作。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_rid**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_rid>`

從 :ref:`RenderingServer<class_RenderingServer>` 返回該相機的 RID。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_camera_transform**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_transform>`

返回該相機的變換，該變換會加上垂直（\ :ref:`v_offset<class_Camera3D_property_v_offset>`\ ）和水平（\ :ref:`h_offset<class_Camera3D_property_h_offset>`\ ）偏移；以及 :ref:`XRCamera3D<class_XRCamera3D>` 等子類別相機對相機位置和方向所做的任何其他調整。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_cull_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_cull_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Camera3D_method_get_cull_mask_value>`

返回是否啟用了 :ref:`cull_mask<class_Camera3D_property_cull_mask>` 的指定層，該層由一個介於 1 和 20 之間的給定 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_frustum:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **get_frustum**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_frustum>`

以世界空間單位將相機的視錐平面作為 :ref:`Plane<class_Plane>` 陣列按以下順序返回：near、far、left、top、right、bottom。不要與 :ref:`frustum_offset<class_Camera3D_property_frustum_offset>` 混淆。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_pyramid_shape_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_pyramid_shape_rid**\ (\ ) :ref:`🔗<class_Camera3D_method_get_pyramid_shape_rid>`

返回包含該相機視錐的錐體形狀的 RID，忽略相機的近處平面。錐體的尖端代表該相機的位置。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_is_position_behind:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_behind**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_is_position_behind>`

如果給定位置在相機後面（連結圖的藍色部分），則返回 ``true``\ 。\ `查看此圖 <https://raw.githubusercontent.com/godotengine/godot-docs/4.1/img/camera3d_position_frustum.png>`__\ 以瞭解位置查詢方法的概述。

\ **注意：**\ 返回 ``false`` 的位置可能仍然在相機的視野之外。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_is_position_in_frustum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_in_frustum**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_is_position_in_frustum>`

如果給定位置在相機的視錐內（位於連結圖中的綠色部分），則返回 ``true``\ 。\ `查看此圖 <https://raw.githubusercontent.com/godotengine/godot-docs/4.1/img/camera3d_position_frustum.png>`__\ 以瞭解位置查詢方法的概述。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_Camera3D_method_make_current>`

使此相機成為 :ref:`Viewport<class_Viewport>` 的目前相機（見類的說明）。如果相機節點在場景樹之外，一旦新增，它將嘗試成為目前相機。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_local_ray_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_local_ray_normal**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_local_ray_normal>`

返回從螢幕點位置沿相機方向的法向量。正交相機會被正規化。透視相機考慮到透視、螢幕寬度/高度等因素。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_position**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`, z_depth\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_position>`

返回世界空間中的 3D 點，該點對應到平面上 :ref:`Viewport<class_Viewport>` 矩形中的給定 2D 座標，該平面是距相機到場景的給定 ``z_depth`` 距離。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_ray_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_ray_normal**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_ray_normal>`

返回世界空間中的法線向量，即通過逆相機投影將點投影到 :ref:`Viewport<class_Viewport>` 矩形上的結果。這對於以（原點，法線）的形式投射光線，以進行物件相交或拾取很有用。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_ray_origin:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_ray_origin**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_ray_origin>`

返回世界空間中的 3D 位置，即通過逆相機投影將點投影到 :ref:`Viewport<class_Viewport>` 矩形上的結果。這對於以（原點，法線）的形式投射光線，以進行物件相交或拾取很有用。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_cull_mask_value:

.. rst-class:: classref-method

|void| **set_cull_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Camera3D_method_set_cull_mask_value>`

基於 ``value``\ ，啟用或禁用 :ref:`cull_mask<class_Camera3D_property_cull_mask>` 中的指定層，該層由一個介於 1 和 20 之間的給定 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_frustum:

.. rst-class:: classref-method

|void| **set_frustum**\ (\ size\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_frustum>`

通過指定的以世界空間單位為單位的 ``size``\ 、\ ``offset``\ 、以及 ``z_near`` 和 ``z_far`` 裁剪平面，將相機投影設定為視錐模式（見 :ref:`PROJECTION_FRUSTUM<class_Camera3D_constant_PROJECTION_FRUSTUM>`\ ）。另見 :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_orthogonal:

.. rst-class:: classref-method

|void| **set_orthogonal**\ (\ size\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_orthogonal>`

Sets the camera projection to orthogonal mode (see :ref:`PROJECTION_ORTHOGONAL<class_Camera3D_constant_PROJECTION_ORTHOGONAL>`), by specifying a ``size``, and the ``z_near`` and ``z_far`` clip planes in world space units.

As a hint, 3D games that look 2D often use this projection, with ``size`` specified in pixels.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_perspective:

.. rst-class:: classref-method

|void| **set_perspective**\ (\ fov\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_perspective>`

通過指定的以度為單位的 ``fov``\ （視野）角度，以及以世界空間單位為單位的 ``z_near`` 和 ``z_far`` 裁剪平面，將相機投影設定為透視模式（參見 :ref:`PROJECTION_PERSPECTIVE<class_Camera3D_constant_PROJECTION_PERSPECTIVE>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_unproject_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **unproject_position**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_unproject_position>`

返回對應到世界空間中給定 3D 點的 :ref:`Viewport<class_Viewport>` 矩形中的 2D 座標。

\ **注意：**\ 當使用它在 3D 視口上定位 GUI 元素時，如果 3D 點在相機後面，請使用 :ref:`is_position_behind()<class_Camera3D_method_is_position_behind>` 來防止它們出現：

::

    # 該程式碼塊是從 Node3D 繼承的腳本的一部分。
    # `control` 是對從 Control 繼承的節點的引用。
    control.visible = not get_viewport().get_camera_3d().is_position_behind(global_transform.origin)
    control.position = get_viewport().get_camera_3d().unproject_position(global_transform.origin)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
