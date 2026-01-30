:github_url: hide

.. _class_Camera3D:

Camera3D
========

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`XRCamera3D<class_XRCamera3D>`

相机节点，会从某个角度进行显示。

.. rst-class:: classref-introduction-group

描述
----

**Camera3D** 是一个特殊节点，用于显示从其当前位置可见的内容。相机在最近的 :ref:`Viewport<class_Viewport>` 节点中注册自己（当树上行）。每个视口中只能有一个激活的相机。如果在树上没有可用的视口，相机将在全局视口中注册。换句话说，相机只是用来为 :ref:`Viewport<class_Viewport>` 提供 3D 显示能力的，如果没有，则在该 :ref:`Viewport<class_Viewport>`\ （或更高层视口）中注册的场景无法显示。

.. rst-class:: classref-introduction-group

教程
----

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_Camera3D_ProjectionType:

.. rst-class:: classref-enumeration

enum **ProjectionType**: :ref:`🔗<enum_Camera3D_ProjectionType>`

.. _class_Camera3D_constant_PROJECTION_PERSPECTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_PERSPECTIVE** = ``0``

透视投影。物体距离相机屏幕越远显示就越小。

.. _class_Camera3D_constant_PROJECTION_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_ORTHOGONAL** = ``1``

正交投影，又称正交投影。物体无论距离多远，在屏幕上都保持相同的大小。

.. _class_Camera3D_constant_PROJECTION_FRUSTUM:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_FRUSTUM** = ``2``

视锥投影。通过该模式可以调整 :ref:`frustum_offset<class_Camera3D_property_frustum_offset>` 来创建“倾斜的视锥”效果。

.. rst-class:: classref-item-separator

----

.. _enum_Camera3D_KeepAspect:

.. rst-class:: classref-enumeration

enum **KeepAspect**: :ref:`🔗<enum_Camera3D_KeepAspect>`

.. _class_Camera3D_constant_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **KEEP_WIDTH** = ``0``

保留水平长宽比，也称为 Vert- 缩放。这通常是在纵向模式下运行的项目的最佳选择，因为较高的纵横比将从更宽的垂直视场中受益。

.. _class_Camera3D_constant_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **KEEP_HEIGHT** = ``1``

保留垂直长宽比，也称为 Hor+ 缩放。这通常是在横向模式下运行的项目的最佳选择，因为较宽的纵横比会自动从较宽的水平视场中受益。

.. rst-class:: classref-item-separator

----

.. _enum_Camera3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_Camera3D_DopplerTracking>`

.. _class_Camera3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

禁用\ `多普勒效应 <https://en.wikipedia.org/wiki/Doppler_effect>`__\ 模拟（默认）。

.. _class_Camera3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

通过跟踪在 ``_process`` 中改变的物体位置来模拟\ `多普勒效应 <https://zh.wikipedia.org/wiki/%E5%A4%9A%E6%99%AE%E5%8B%92%E6%95%88%E5%BA%94>`__\ 。与这些物体相比，该相机的相对速度的变化会影响音频的感知方式（改变音频的 :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`\ ）。

.. _class_Camera3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

通过跟踪在 ``_process`` 中改变的物体位置来模拟\ `多普勒效应 <https://zh.wikipedia.org/wiki/%E5%A4%9A%E6%99%AE%E5%8B%92%E6%95%88%E5%BA%94>`__\ 。与这些物体相比，该相机的相对速度的变化会影响音频的感知方式（改变音频的 :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Camera3D_property_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **attributes** :ref:`🔗<class_Camera3D_property_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_attributes**\ (\ )

该相机所使用的 :ref:`CameraAttributes<class_CameraAttributes>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_Camera3D_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

该相机所使用的 :ref:`Compositor<class_Compositor>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Camera3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

剔除掩码，描述该相机渲染了哪些 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`\ 。默认情况下，20 个用户可见层全都被渲染。

\ **注意：**\ 由于 :ref:`cull_mask<class_Camera3D_property_cull_mask>` 允许总共存储 32 个层，因此另外 12 个层仅供引擎内部使用，不会在编辑器中公开。使用脚本设置 :ref:`cull_mask<class_Camera3D_property_cull_mask>` 允许你切换那些保留层，这对编辑器插件很有用。

要使用脚本更轻松地调整 :ref:`cull_mask<class_Camera3D_property_cull_mask>`\ ，请使用 :ref:`get_cull_mask_value()<class_Camera3D_method_get_cull_mask_value>` 和 :ref:`set_cull_mask_value()<class_Camera3D_method_set_cull_mask_value>`\ 。

\ **注意：**\ :ref:`VoxelGI<class_VoxelGI>`\ 、SDFGI 和 :ref:`LightmapGI<class_LightmapGI>` 将始终考虑所有层以确定对全局光照有贡献的内容。如果这是一个问题，请将网格的 :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` 设置为 :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`\ ，并将灯光的 :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` 设置为 :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>`\ ，以将它们从全局光照中排除。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_Camera3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

如果为 ``true``\ ，则祖级 :ref:`Viewport<class_Viewport>` 正在使用这个相机。

如果场景中有多个相机，总会有一个被设为当前相机。例如，假设场景中存在两个 **Camera3D** 节点并且只有一个为当前相机，那么如果把某一个相机的 :ref:`current<class_Camera3D_property_current>` 设为 ``false`` 就会导致另一个相机被设为当前相机。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_Camera3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

如果不是 :ref:`DOPPLER_TRACKING_DISABLED<class_Camera3D_constant_DOPPLER_TRACKING_DISABLED>`\ ，此相机将为在 ``_process`` 中变化的对象模拟\ `多普勒效应 <https://zh.wikipedia.org/wiki/%E5%A4%9A%E6%99%AE%E5%8B%92%E6%95%88%E5%BA%94>`__\ 。

\ **注意：**\ 仅当 :ref:`AudioStreamPlayer3D.doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` 未设置为 :ref:`AudioStreamPlayer3D.DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>` 时，才会在 :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` 上听到多普勒效果。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_Camera3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

此相机要使用的 :ref:`Environment<class_Environment>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **far** = ``4000.0`` :ref:`🔗<class_Camera3D_property_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

该相机相对于其局部 Z 轴到远剔除边界的距离。较高的值允许相机看得更远，而减少 :ref:`far<class_Camera3D_property_far>` 如果会导致对象被部分或完全剔除，则可以提高性能。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_fov:

.. rst-class:: classref-property

:ref:`float<class_float>` **fov** = ``75.0`` :ref:`🔗<class_Camera3D_property_fov>`

.. rst-class:: classref-property-setget

- |void| **set_fov**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fov**\ (\ )

相机的视野角度（单位为度）。仅适用于透视模式。由于 :ref:`keep_aspect<class_Camera3D_property_keep_aspect>` 锁定一个轴，因此 :ref:`fov<class_Camera3D_property_fov>` 设置另一个轴的视角。

作为参考，默认的垂直视野值（\ ``70.0``\ ）相当于以下水平 FOV：

- 在 4:3 视口中约 91.31 度

- 在 16:10 视口中约 101.67 度

- 在 16:9 视口中约 107.51 度

- 在 21:9 视口中约 121.63 度

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_frustum_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **frustum_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Camera3D_property_frustum_offset>`

.. rst-class:: classref-property-setget

- |void| **set_frustum_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_frustum_offset**\ (\ )

相机的视锥偏移。可以更改默认值，以创建如 `Y-shearing <https://zdoom.org/wiki/Y-shearing>`__ 一样的“倾斜的视锥”效果。

\ **注意：**\ 仅在 :ref:`projection<class_Camera3D_property_projection>` 为 :ref:`PROJECTION_FRUSTUM<class_Camera3D_constant_PROJECTION_FRUSTUM>` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_Camera3D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

相机视口的水平（X）偏移量。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_keep_aspect:

.. rst-class:: classref-property

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **keep_aspect** = ``1`` :ref:`🔗<class_Camera3D_property_keep_aspect>`

.. rst-class:: classref-property-setget

- |void| **set_keep_aspect_mode**\ (\ value\: :ref:`KeepAspect<enum_Camera3D_KeepAspect>`\ )
- :ref:`KeepAspect<enum_Camera3D_KeepAspect>` **get_keep_aspect_mode**\ (\ )

在 :ref:`fov<class_Camera3D_property_fov>`/:ref:`size<class_Camera3D_property_size>` 调整时要锁定的轴。可以是 :ref:`KEEP_WIDTH<class_Camera3D_constant_KEEP_WIDTH>` 或 :ref:`KEEP_HEIGHT<class_Camera3D_constant_KEEP_HEIGHT>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **near** = ``0.05`` :ref:`🔗<class_Camera3D_property_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

该相机相对于其局部 Z 轴到近剔除边界的距离。较低的值允许相机看到更靠近其原点的对象，但代价是\ *整个*\ 范围内的精度较低。低于默认值的值会导致 Z 冲突增加。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_projection:

.. rst-class:: classref-property

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **projection** = ``0`` :ref:`🔗<class_Camera3D_property_projection>`

.. rst-class:: classref-property-setget

- |void| **set_projection**\ (\ value\: :ref:`ProjectionType<enum_Camera3D_ProjectionType>`\ )
- :ref:`ProjectionType<enum_Camera3D_ProjectionType>` **get_projection**\ (\ )

相机的投影模式。在 :ref:`PROJECTION_PERSPECTIVE<class_Camera3D_constant_PROJECTION_PERSPECTIVE>` 模式下，物体与相机局部空间的Z距离会影响其感知的大小。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_Camera3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

该相机的大小，单位为米，描述的是完整的宽度或者高度，取决于 :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`\ 。仅适用于正交和视锥模式。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_Camera3D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

相机视口的垂直（Y）偏移量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Camera3D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ enable_next\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Camera3D_method_clear_current>`

如果这是当前相机，则将其从当前相机中移除。如果 ``enable_next`` 为 ``true``\ ，则请求使下一个相机（如果有）成为当前相机。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_camera_projection**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_projection>`

返回该相机用于渲染至关联视口的投影矩阵。相机必须是场景树的一部分才能正常工作。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_rid**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_rid>`

从 :ref:`RenderingServer<class_RenderingServer>` 返回该相机的 RID。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_camera_transform**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_transform>`

返回该相机的变换，该变换会加上垂直（\ :ref:`v_offset<class_Camera3D_property_v_offset>`\ ）和水平（\ :ref:`h_offset<class_Camera3D_property_h_offset>`\ ）偏移；以及 :ref:`XRCamera3D<class_XRCamera3D>` 等子类相机对相机位置和方向所做的任何其他调整。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_cull_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_cull_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Camera3D_method_get_cull_mask_value>`

返回是否启用了 :ref:`cull_mask<class_Camera3D_property_cull_mask>` 的指定层，该层由一个介于 1 和 20 之间的给定 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_frustum:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **get_frustum**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_frustum>`

以世界空间单位将相机的视锥平面作为 :ref:`Plane<class_Plane>` 数组按以下顺序返回：near、far、left、top、right、bottom。不要与 :ref:`frustum_offset<class_Camera3D_property_frustum_offset>` 混淆。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_pyramid_shape_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_pyramid_shape_rid**\ (\ ) :ref:`🔗<class_Camera3D_method_get_pyramid_shape_rid>`

返回包含该相机视锥的锥体形状的 RID，忽略相机的近处平面。锥体的尖端代表该相机的位置。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_is_position_behind:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_behind**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_is_position_behind>`

如果给定位置在相机后面（链接图的蓝色部分），则返回 ``true``\ 。\ `查看此图 <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/camera3d_position_frustum.png>`__\ 以了解位置查询方法的概述。

\ **注意：**\ 返回 ``false`` 的位置可能仍然在相机的视野之外。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_is_position_in_frustum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_in_frustum**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_is_position_in_frustum>`

如果给定位置在相机的视锥内（位于链接图中的绿色部分），则返回 ``true``\ 。\ `查看此图 <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/camera3d_position_frustum.png>`__\ 以了解位置查询方法的概述。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_Camera3D_method_make_current>`

使此相机成为 :ref:`Viewport<class_Viewport>` 的当前相机（见类的说明）。如果相机节点在场景树之外，一旦添加，它将尝试成为当前相机。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_local_ray_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_local_ray_normal**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_local_ray_normal>`

返回从屏幕点位置沿相机方向的法向量。正交相机会被归一化。透视相机考虑到透视、屏幕宽度/高度等因素。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_position**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`, z_depth\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_position>`

返回世界空间中的 3D 点，该点映射到平面上 :ref:`Viewport<class_Viewport>` 矩形中的给定 2D 坐标，该平面是距相机到场景的给定 ``z_depth`` 距离。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_ray_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_ray_normal**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_ray_normal>`

返回世界空间中的法线向量，即通过逆相机投影将点投影到 :ref:`Viewport<class_Viewport>` 矩形上的结果。这对于以（原点，法线）的形式投射光线，以进行对象相交或拾取很有用。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_ray_origin:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_ray_origin**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_ray_origin>`

返回世界空间中的 3D 位置，即通过逆相机投影将点投影到 :ref:`Viewport<class_Viewport>` 矩形上的结果。这对于以（原点，法线）的形式投射光线，以进行对象相交或拾取很有用。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_cull_mask_value:

.. rst-class:: classref-method

|void| **set_cull_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Camera3D_method_set_cull_mask_value>`

基于 ``value``\ ，启用或禁用 :ref:`cull_mask<class_Camera3D_property_cull_mask>` 中的指定层，该层由一个介于 1 和 20 之间的给定 ``layer_number`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_frustum:

.. rst-class:: classref-method

|void| **set_frustum**\ (\ size\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_frustum>`

通过指定的以世界空间单位为单位的 ``size``\ 、\ ``offset``\ 、以及 ``z_near`` 和 ``z_far`` 裁剪平面，将相机投影设置为视锥模式（见 :ref:`PROJECTION_FRUSTUM<class_Camera3D_constant_PROJECTION_FRUSTUM>`\ ）。另见 :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_orthogonal:

.. rst-class:: classref-method

|void| **set_orthogonal**\ (\ size\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_orthogonal>`

通过指定的以世界空间单位为单位的 ``size``\ 、以及 ``z_near`` 和 ``z_far`` 裁剪平面，将相机投影设置为正交模式（参见 :ref:`PROJECTION_ORTHOGONAL<class_Camera3D_constant_PROJECTION_ORTHOGONAL>`\ ）。

作为提示，看起来像 2D 的 3D 游戏经常使用这种投影，其中 ``size`` 以像素为单位指定。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_perspective:

.. rst-class:: classref-method

|void| **set_perspective**\ (\ fov\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_perspective>`

通过指定的以度为单位的 ``fov``\ （视野）角度，以及以世界空间单位为单位的 ``z_near`` 和 ``z_far`` 裁剪平面，将相机投影设置为透视模式（参见 :ref:`PROJECTION_PERSPECTIVE<class_Camera3D_constant_PROJECTION_PERSPECTIVE>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_unproject_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **unproject_position**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_unproject_position>`

返回映射到世界空间中给定 3D 点的 :ref:`Viewport<class_Viewport>` 矩形中的 2D 坐标。

\ **注意：**\ 当使用它在 3D 视口上定位 GUI 元素时，如果 3D 点在相机后面，请使用 :ref:`is_position_behind()<class_Camera3D_method_is_position_behind>` 来防止它们出现：

::

    # 该代码块是从 Node3D 继承的脚本的一部分。
    # `control` 是对从 Control 继承的节点的引用。
    control.visible = not get_viewport().get_camera_3d().is_position_behind(global_transform.origin)
    control.position = get_viewport().get_camera_3d().unproject_position(global_transform.origin)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
