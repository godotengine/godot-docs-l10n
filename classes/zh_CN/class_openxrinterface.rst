:github_url: hide

.. _class_OpenXRInterface:

OpenXRInterface
===============

**继承：** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

OpenXR 接口。

.. rst-class:: classref-introduction-group

描述
----

OpenXR 接口允许 Godot 与 OpenXR 运行时进行交互，并使创建 XR 体验和游戏成为可能。

由于 OpenXR 的需要，该接口的工作方式与其他基于插件的 XR 接口略有不同。它需要在 Godot 启动时被初始化。若需要启用 OpenXR，相关设置可以在游戏项目设置中的 XR 标题下找到。你确实需要标记一个视口以与 XR 一起使用，以便 Godot 知道应该将哪个渲染结果输出到头戴式设备。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`设置 XR <../tutorials/xr/setting_up_xr>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`display_refresh_rate<class_OpenXRInterface_property_display_refresh_rate>`                   | ``0.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`foveation_dynamic<class_OpenXRInterface_property_foveation_dynamic>`                         | ``false`` |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`foveation_level<class_OpenXRInterface_property_foveation_level>`                             | ``0``     |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`render_target_size_multiplier<class_OpenXRInterface_property_render_target_size_multiplier>` | ``1.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`vrs_min_radius<class_OpenXRInterface_property_vrs_min_radius>`                               | ``20.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`vrs_strength<class_OpenXRInterface_property_vrs_strength>`                                   | ``1.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`get_action_sets<class_OpenXRInterface_method_get_action_sets>`\ (\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`get_available_display_refresh_rates<class_OpenXRInterface_method_get_available_display_refresh_rates>`\ (\ ) |const|                                                                                                    |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_angular_velocity<class_OpenXRInterface_method_get_hand_joint_angular_velocity>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>`\] | :ref:`get_hand_joint_flags<class_OpenXRInterface_method_get_hand_joint_flags>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                       |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_linear_velocity<class_OpenXRInterface_method_get_hand_joint_linear_velocity>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|   |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_position<class_OpenXRInterface_method_get_hand_joint_position>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`get_hand_joint_radius<class_OpenXRInterface_method_get_hand_joint_radius>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                      | :ref:`get_hand_joint_rotation<class_OpenXRInterface_method_get_hand_joint_rotation>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>`         | :ref:`get_hand_tracking_source<class_OpenXRInterface_method_get_hand_tracking_source>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const|                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`             | :ref:`get_motion_range<class_OpenXRInterface_method_get_motion_range>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const|                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SessionState<enum_OpenXRInterface_SessionState>`                   | :ref:`get_session_state<class_OpenXRInterface_method_get_session_state>`\ (\ )                                                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_action_set_active<class_OpenXRInterface_method_is_action_set_active>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_eye_gaze_interaction_supported<class_OpenXRInterface_method_is_eye_gaze_interaction_supported>`\ (\ )                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_foveation_supported<class_OpenXRInterface_method_is_foveation_supported>`\ (\ ) |const|                                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_hand_interaction_supported<class_OpenXRInterface_method_is_hand_interaction_supported>`\ (\ ) |const|                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_hand_tracking_supported<class_OpenXRInterface_method_is_hand_tracking_supported>`\ (\ )                                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_action_set_active<class_OpenXRInterface_method_set_action_set_active>`\ (\ name\: :ref:`String<class_String>`, active\: :ref:`bool<class_bool>`\ )                                                                  |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_cpu_level<class_OpenXRInterface_method_set_cpu_level>`\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ )                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_gpu_level<class_OpenXRInterface_method_set_gpu_level>`\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ )                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_motion_range<class_OpenXRInterface_method_set_motion_range>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, motion_range\: :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`\ )                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_OpenXRInterface_signal_cpu_level_changed:

.. rst-class:: classref-signal

**cpu_level_changed**\ (\ sub_domain\: :ref:`int<class_int>`, from_level\: :ref:`int<class_int>`, to_level\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRInterface_signal_cpu_level_changed>`

告知设备 CPU 性能等级已在指定子域中发生改变。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_gpu_level_changed:

.. rst-class:: classref-signal

**gpu_level_changed**\ (\ sub_domain\: :ref:`int<class_int>`, from_level\: :ref:`int<class_int>`, to_level\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRInterface_signal_gpu_level_changed>`

告知设备 GPU 性能等级已在指定子域中发生改变。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_instance_exiting:

.. rst-class:: classref-signal

**instance_exiting**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_instance_exiting>`

通知我们的 OpenXR 实例正在退出。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_pose_recentered:

.. rst-class:: classref-signal

**pose_recentered**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_pose_recentered>`

通知用户队列玩家位置的重新居中。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_refresh_rate_changed:

.. rst-class:: classref-signal

**refresh_rate_changed**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_OpenXRInterface_signal_refresh_rate_changed>`

通知用户 HMD 刷新率发生了变化。

\ **注意：**\ 仅在 XR 运行时支持刷新率扩展时发出。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_begun:

.. rst-class:: classref-signal

**session_begun**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_begun>`

通知我们的 OpenXR 会话已经开始。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_focussed:

.. rst-class:: classref-signal

**session_focussed**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_focussed>`

通知我们的 OpenXR 会话现在获得了焦点，例如输出发送到了 HMD，我们正在获得 XR 输入。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_loss_pending:

.. rst-class:: classref-signal

**session_loss_pending**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_loss_pending>`

通知我们的 OpenXR 会话正处于丢失过程中。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_stopping:

.. rst-class:: classref-signal

**session_stopping**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_stopping>`

通知我们的 OpenXR 会话正在停止。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_synchronized:

.. rst-class:: classref-signal

**session_synchronized**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_synchronized>`

通知我们的 OpenXR 会话已经同步。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_visible:

.. rst-class:: classref-signal

**session_visible**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_visible>`

通知我们的 OpenXR 会话现在可见，例如输出发送到了 HMD，但是我们还收不到 XR 输入。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_OpenXRInterface_SessionState:

.. rst-class:: classref-enumeration

enum **SessionState**: :ref:`🔗<enum_OpenXRInterface_SessionState>`

.. _class_OpenXRInterface_constant_SESSION_STATE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_UNKNOWN** = ``0``

会话的状态未知，我们尚未设置 OpenXR。

.. _class_OpenXRInterface_constant_SESSION_STATE_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_IDLE** = ``1``

OpenXR 会话创建和销毁后的初始状态。

.. _class_OpenXRInterface_constant_SESSION_STATE_READY:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_READY** = ``2``

OpenXR 已准备好开始会话。进入该状态时会发出 :ref:`session_begun<class_OpenXRInterface_signal_session_begun>`\ 。

.. _class_OpenXRInterface_constant_SESSION_STATE_SYNCHRONIZED:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_SYNCHRONIZED** = ``3``

应用已将其帧循环与运行时同步，但尚未进行渲染。进入该状态时会发出 :ref:`session_synchronized<class_OpenXRInterface_signal_session_synchronized>`\ 。

.. _class_OpenXRInterface_constant_SESSION_STATE_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_VISIBLE** = ``4``

应用已将其帧循环与运行时同步，且正在向用户渲染输出，但未收到用户输入。进入该状态时会发出 :ref:`session_visible<class_OpenXRInterface_signal_session_visible>`\ 。

\ **注意：**\ 这是获取焦点状态前的那个状态，出现在用户打开系统菜单、切换到其他应用、摘下头戴设备等情况。

.. _class_OpenXRInterface_constant_SESSION_STATE_FOCUSED:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_FOCUSED** = ``5``

应用已将其帧循环与运行时同步，且正在向用户渲染输出并接收用户输入。进入该状态时会发出 :ref:`session_focussed<class_OpenXRInterface_signal_session_focussed>`\ 。

\ **注意：**\ 这是用户能够与游戏完整交互时 OpenXR 所处的状态。

.. _class_OpenXRInterface_constant_SESSION_STATE_STOPPING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_STOPPING** = ``6``

会话已停止。进入该状态时会发出 :ref:`session_stopping<class_OpenXRInterface_signal_session_stopping>`\ 。

.. _class_OpenXRInterface_constant_SESSION_STATE_LOSS_PENDING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_LOSS_PENDING** = ``7``

会话即将丢失。进入该状态时会发出 :ref:`session_loss_pending<class_OpenXRInterface_signal_session_loss_pending>`\ 。

.. _class_OpenXRInterface_constant_SESSION_STATE_EXITING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_EXITING** = ``8``

OpenXR 实例即将销毁，目前尚存在。进入该状态时会发出 :ref:`instance_exiting<class_OpenXRInterface_signal_instance_exiting>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_Hand:

.. rst-class:: classref-enumeration

enum **Hand**: :ref:`🔗<enum_OpenXRInterface_Hand>`

.. _class_OpenXRInterface_constant_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_LEFT** = ``0``

左手。

.. _class_OpenXRInterface_constant_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_RIGHT** = ``1``

右手。

.. _class_OpenXRInterface_constant_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_MAX** = ``2``

手部枚举的最大值。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandMotionRange:

.. rst-class:: classref-enumeration

enum **HandMotionRange**: :ref:`🔗<enum_OpenXRInterface_HandMotionRange>`

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_UNOBSTRUCTED** = ``0``

全手范围，如果用户握紧双手，我们会握紧拳头。

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER** = ``1``

符合控制器，如果用户合上手，则跟踪的数据符合控制器的形状。

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_MAX** = ``2``

运动范围枚举的最大值。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandTrackedSource:

.. rst-class:: classref-enumeration

enum **HandTrackedSource**: :ref:`🔗<enum_OpenXRInterface_HandTrackedSource>`

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_UNKNOWN** = ``0``

手部跟踪数据的来源未知（该扩展可能不受支持）。

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_UNOBSTRUCTED** = ``1``

手部跟踪的来源是畅通的，这意味着使用了准确的手部跟踪方法，例如光学手部跟踪、数据手套等。

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_CONTROLLER** = ``2``

手部跟踪的来源是控制器，骨骼位置是根据控制器输入推断的。

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_MAX** = ``3``

代表 :ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandJoints:

.. rst-class:: classref-enumeration

enum **HandJoints**: :ref:`🔗<enum_OpenXRInterface_HandJoints>`

.. _class_OpenXRInterface_constant_HAND_JOINT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_PALM** = ``0``

掌关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_WRIST** = ``1``

腕关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_METACARPAL** = ``2``

掌骨拇指关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_PROXIMAL** = ``3``

拇指近端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_DISTAL** = ``4``

拇指远端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_TIP** = ``5``

拇指尖端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_METACARPAL** = ``6``

食指掌骨关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_PROXIMAL** = ``7``

食指指骨近端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_INTERMEDIATE** = ``8``

食指指骨中间关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_DISTAL** = ``9``

食指指骨远端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_TIP** = ``10``

食指指尖关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_METACARPAL** = ``11``

中指掌骨关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_PROXIMAL** = ``12``

中指指骨近端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_INTERMEDIATE** = ``13``

中指指骨中间关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_DISTAL** = ``14``

中指指骨远端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_TIP** = ``15``

中指指尖关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_METACARPAL** = ``16``

无名指掌骨关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_PROXIMAL** = ``17``

无名指指骨近端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_INTERMEDIATE** = ``18``

无名指指骨中间关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_DISTAL** = ``19``

无名指指骨远端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_TIP** = ``20``

无名指指尖关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_METACARPAL** = ``21``

小指掌骨关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_PROXIMAL** = ``22``

小指指骨近端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_INTERMEDIATE** = ``23``

小指指骨中间关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_DISTAL** = ``24``

小指指骨远端关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_TIP** = ``25``

小指指尖关节。

.. _class_OpenXRInterface_constant_HAND_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MAX** = ``26``

代表 :ref:`HandJoints<enum_OpenXRInterface_HandJoints>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsLevel:

.. rst-class:: classref-enumeration

enum **PerfSettingsLevel**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsLevel>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_POWER_SAVINGS:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_POWER_SAVINGS** = ``0``

应用程序进入了非 XR 段落（锁定头部或静态屏幕），在此期间节能优先。

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_SUSTAINED_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_SUSTAINED_LOW** = ``1``

应用程序进入了稳定且低复杂度的段落，在此期间降低能耗比偶尔推迟渲染帧更重要。

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_SUSTAINED_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_SUSTAINED_HIGH** = ``2``

应用程序进入了动态且高复杂度的段落，在此期间 XR 运行时会努力在热量可持续范围内实现一致的 XR 合成和帧渲染。

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_BOOST:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_BOOST** = ``3``

应用程序进入了极高复杂度的段落，在此期间 XR 运行时允许越过热量可持续范围。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsSubDomain:

.. rst-class:: classref-enumeration

enum **PerfSettingsSubDomain**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsSubDomain>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_COMPOSITING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_COMPOSITING** = ``0``

运行时的合成性能达到了新的等级。

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_RENDERING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_RENDERING** = ``1``

应用程序的渲染性能达到了新的等级。

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_THERMAL:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_THERMAL** = ``2``

设备的温度达到了新的等级。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsNotificationLevel:

.. rst-class:: classref-enumeration

enum **PerfSettingsNotificationLevel**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsNotificationLevel>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_NORMAL** = ``0``

子域已达到除了当前采取的措施外不再需要进一步行动的水平。

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_WARNING** = ``1``

子域已达到预警水平，应用程序应该开始采取主动的缓解措施。

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED** = ``2``

子域已达到危急水平，应用程序应该开始采取严厉的缓解措施。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandJointFlags:

.. rst-class:: classref-enumeration

flags **HandJointFlags**: :ref:`🔗<enum_OpenXRInterface_HandJointFlags>`

.. _class_OpenXRInterface_constant_HAND_JOINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_NONE** = ``0``

没有标志被设置。

.. _class_OpenXRInterface_constant_HAND_JOINT_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ORIENTATION_VALID** = ``1``

如果设置，则方向数据有效；否则，方向数据不可靠，且不应被使用。

.. _class_OpenXRInterface_constant_HAND_JOINT_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ORIENTATION_TRACKED** = ``2``

如果设置，则方向数据来自跟踪数据；否则，该方向数据包含预测数据。

.. _class_OpenXRInterface_constant_HAND_JOINT_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_POSITION_VALID** = ``4``

如果设置，则位置数据有效；否则，该位置数据不可靠，且不应被使用。

.. _class_OpenXRInterface_constant_HAND_JOINT_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_POSITION_TRACKED** = ``8``

如果设置，则位置数据来自跟踪数据；否则，该位置数据包含预测数据。

.. _class_OpenXRInterface_constant_HAND_JOINT_LINEAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_LINEAR_VELOCITY_VALID** = ``16``

如果设置，则线速度数据有效；否则，线速度数据不可靠，且不应被使用。

.. _class_OpenXRInterface_constant_HAND_JOINT_ANGULAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ANGULAR_VELOCITY_VALID** = ``32``

如果设置，则角速度数据是有效的；否则，角速度数据不可靠，且不应被使用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_OpenXRInterface_property_display_refresh_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_refresh_rate** = ``0.0`` :ref:`🔗<class_OpenXRInterface_property_display_refresh_rate>`

.. rst-class:: classref-property-setget

- |void| **set_display_refresh_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_refresh_rate**\ (\ )

当前 HMD 的显示刷新率。仅当 OpenXR 运行时支持该功能并且接口已被初始化后才会有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_dynamic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **foveation_dynamic** = ``false`` :ref:`🔗<class_OpenXRInterface_property_foveation_dynamic>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_dynamic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_foveation_dynamic**\ (\ )

启用动态注视点调整，必须先初始化接口才能访问该功能。如果启用，注视点将在低和 :ref:`foveation_level<class_OpenXRInterface_property_foveation_level>` 之间自动调整。

\ **注意：**\ 仅适用于兼容性渲染器。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **foveation_level** = ``0`` :ref:`🔗<class_OpenXRInterface_property_foveation_level>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_foveation_level**\ (\ )

将注视点级别设置为从 0（关闭）到 3（高），必须先初始化接口，然后才能访问该接口。

\ **注意：**\ 仅适用于兼容性渲染器。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_render_target_size_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **render_target_size_multiplier** = ``1.0`` :ref:`🔗<class_OpenXRInterface_property_render_target_size_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_render_target_size_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_render_target_size_multiplier**\ (\ )

当前 HMD 的渲染大小乘数。必须在接触初始化之前设置。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_OpenXRInterface_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

如果 VRS 用作屏幕大小的百分比，则焦点周围可保证完全质量的最小半径。

\ **注意：**\ 仅限 Mobile 和 Forward+ 渲染器。需要将 :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` 设置为 :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_OpenXRInterface_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

用于计算 VRS 密度图的强度。该值越大，VRS 越明显。这会以牺牲质量为代价来提高性能。

\ **注意：**\ 仅限 Mobile 和 Forward+ 渲染器。需要将 :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` 设置为 :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRInterface_method_get_action_sets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_action_sets**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_action_sets>`

返回向 Godot 注册的动作集的列表（在运行时从动作映射加载）。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_available_display_refresh_rates>`

返回当前 HMD 支持的显示刷新率。仅当 OpenXR 运行时支持该功能并且接口已被初始化后才会返回。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_angular_velocity**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_angular_velocity>`

**已弃用：** Use :ref:`XRHandTracker.get_hand_joint_angular_velocity()<class_XRHandTracker_method_get_hand_joint_angular_velocity>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

如果启用了手部跟踪，则返回 OpenXR 提供的手（\ ``hand``\ ）的关节（\ ``joint``\ ）的角速度。这是相对于 :ref:`XROrigin3D<class_XROrigin3D>` 而言的！

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>`\] **get_hand_joint_flags**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_flags>`

**已弃用：** Use :ref:`XRHandTracker.get_hand_joint_flags()<class_XRHandTracker_method_get_hand_joint_flags>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

如果启用了手动跟踪，则返回通知我们跟踪数据有效性的标志。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_linear_velocity**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_linear_velocity>`

**已弃用：** Use :ref:`XRHandTracker.get_hand_joint_linear_velocity()<class_XRHandTracker_method_get_hand_joint_linear_velocity>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

如果启用了手部跟踪，则返回 OpenXR 提供的手（\ ``hand``\ ）的关节（\ ``joint``\ ）的线速度。这是相对于没有应用世界尺度的 :ref:`XROrigin3D<class_XROrigin3D>` 而言的！

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_position**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_position>`

**已弃用：** Use :ref:`XRHandTracker.get_hand_joint_transform()<class_XRHandTracker_method_get_hand_joint_transform>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

如果启用了手部跟踪，则返回 OpenXR 提供的手（\ ``hand``\ ）的关节（\ ``joint``\ ）的位置。这是相对于没有应用世界尺度的 :ref:`XROrigin3D<class_XROrigin3D>` 而言的！

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hand_joint_radius**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_radius>`

**已弃用：** Use :ref:`XRHandTracker.get_hand_joint_radius()<class_XRHandTracker_method_get_hand_joint_radius>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

如果启用了手部跟踪，则返回 OpenXR 提供的手（\ ``hand``\ ）的关节（\ ``joint``\ ）的半径。这是没有应用世界尺度的情况！

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_hand_joint_rotation**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_rotation>`

**已弃用：** Use :ref:`XRHandTracker.get_hand_joint_transform()<class_XRHandTracker_method_get_hand_joint_transform>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

如果启用了手部跟踪，则返回 OpenXR 提供的手（\ ``hand``\ ）的关节（\ ``joint``\ ）的旋转。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_tracking_source:

.. rst-class:: classref-method

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **get_hand_tracking_source**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_tracking_source>`

**已弃用：** Use :ref:`XRHandTracker.hand_tracking_source<class_XRHandTracker_property_hand_tracking_source>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

如果启用了手部跟踪并且支持手部跟踪源，则获取 ``hand`` 的手部跟踪数据源。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_motion_range:

.. rst-class:: classref-method

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **get_motion_range**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_motion_range>`

如果启用了手部跟踪并且支持运动范围，则获取 ``hand`` 当前配置的运动范围。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_session_state:

.. rst-class:: classref-method

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **get_session_state**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_get_session_state>`

返回 OpenXR 会话的当前状态。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_action_set_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_set_active**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_action_set_active>`

如果给定的动作集处于活动状态，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_eye_gaze_interaction_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_eye_gaze_interaction_supported**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_is_eye_gaze_interaction_supported>`

返回眼睛注视交互扩展的功能。

\ **注意：**\ 这仅在 OpenXR 被初始化后返回一个有效值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_foveation_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_foveation_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_foveation_supported>`

如果支持 OpenXR 的注视点扩展，则返回 ``true``\ ，在返回有效值之前必须初始化该接口。

\ **注意：**\ 该功能仅在兼容性渲染器上可用，并且目前仅在某些独立头戴设备上可用。对于 Vulkan，在桌面上将 :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` 设置为 ``VRS_XR``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_hand_interaction_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hand_interaction_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_hand_interaction_supported>`

如果支持并启用了 OpenXR 的手部交互配置文件，则返回 ``true``\ 。

\ **注意：**\ 仅在初始化 OpenXR 后才返回有效值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_hand_tracking_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hand_tracking_supported**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_is_hand_tracking_supported>`

如果支持且已启用 OpenXR 的手部跟踪，则返回 ``true``\ 。

\ **注意：**\ 这仅在 OpenXR 已被初始化后返回一个有效值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_action_set_active:

.. rst-class:: classref-method

|void| **set_action_set_active**\ (\ name\: :ref:`String<class_String>`, active\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_action_set_active>`

将给定的动作集设置为活动或非活动。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_cpu_level:

.. rst-class:: classref-method

|void| **set_cpu_level**\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_cpu_level>`

设置 OpenXR 设备的 CPU 性能等级。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_gpu_level:

.. rst-class:: classref-method

|void| **set_gpu_level**\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_gpu_level>`

设置 OpenXR 设备的 GPU 性能等级。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_motion_range:

.. rst-class:: classref-method

|void| **set_motion_range**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, motion_range\: :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_motion_range>`

如果启用了手部跟踪并且支持运动范围，请将 ``hand`` 当前配置的运动范围设置为 ``motion_range``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
