:github_url: hide

.. _class_XRServer:

XRServer
========

**继承：** :ref:`Object<class_Object>`

用于 AR 和 VR 功能的服务器。

.. rst-class:: classref-introduction-group

描述
----

AR/VR 服务器是我们“高级虚拟现实”解决方案的核心，负责执行所有处理。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`XR 文档索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`camera_locked_to_origin<class_XRServer_property_camera_locked_to_origin>` | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>` | :ref:`primary_interface<class_XRServer_property_primary_interface>`             |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`world_origin<class_XRServer_property_world_origin>`                       | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`world_scale<class_XRServer_property_world_scale>`                         | ``1.0``                                             |
   +---------------------------------------+---------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_interface<class_XRServer_method_add_interface>`\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ )                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_tracker<class_XRServer_method_add_tracker>`\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ )                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`center_on_hmd<class_XRServer_method_center_on_hmd>`\ (\ rotation_mode\: :ref:`RotationMode<enum_XRServer_RotationMode>`, keep_height\: :ref:`bool<class_bool>`\ ) |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_reference_frame<class_XRServer_method_clear_reference_frame>`\ (\ )                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>`                            | :ref:`find_interface<class_XRServer_method_find_interface>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                           |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_hmd_transform<class_XRServer_method_get_hmd_transform>`\ (\ )                                                                                                 |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>`                            | :ref:`get_interface<class_XRServer_method_get_interface>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_interface_count<class_XRServer_method_get_interface_count>`\ (\ ) |const|                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_interfaces<class_XRServer_method_get_interfaces>`\ (\ ) |const|                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                            | :ref:`get_reference_frame<class_XRServer_method_get_reference_frame>`\ (\ ) |const|                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRTracker<class_XRTracker>`                                | :ref:`get_tracker<class_XRServer_method_get_tracker>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                 |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_trackers<class_XRServer_method_get_trackers>`\ (\ tracker_types\: :ref:`int<class_int>`\ )                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_interface<class_XRServer_method_remove_interface>`\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ )                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_tracker<class_XRServer_method_remove_tracker>`\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ )                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_XRServer_signal_interface_added:

.. rst-class:: classref-signal

**interface_added**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_signal_interface_added>`

添加新接口时触发。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_interface_removed:

.. rst-class:: classref-signal

**interface_removed**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_signal_interface_removed>`

当接口被移除时触发。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_reference_frame_changed:

.. rst-class:: classref-signal

**reference_frame_changed**\ (\ ) :ref:`🔗<class_XRServer_signal_reference_frame_changed>`

当参考帧变换更改时发出。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_added:

.. rst-class:: classref-signal

**tracker_added**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_added>`

当一个新的追踪器被添加时发出。如果你不使用一个固定数量的控制器，或者如果你将 :ref:`XRAnchor3D<class_XRAnchor3D>` 用于一个 AR 解决方案，请务必对此信号做出反应，以添加与该新追踪器相适的 :ref:`XRController3D<class_XRController3D>` 或 :ref:`XRAnchor3D<class_XRAnchor3D>` 节点 。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_removed:

.. rst-class:: classref-signal

**tracker_removed**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_removed>`

当一个追踪器被移除时发出。如此，你应该移除任何 :ref:`XRController3D<class_XRController3D>` 或 :ref:`XRAnchor3D<class_XRAnchor3D>` 点。这不是强制性的，这些节点只是变得不活动，并且当一个新的追踪器可用时，将再次激活（即打开一个新的控制器，来代替前一个控制器）。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_updated:

.. rst-class:: classref-signal

**tracker_updated**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_updated>`

当现有追踪器被更新时发出。如果用户切换控制器，则可能会发生这种情况。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_XRServer_TrackerType:

.. rst-class:: classref-enumeration

enum **TrackerType**: :ref:`🔗<enum_XRServer_TrackerType>`

.. _class_XRServer_constant_TRACKER_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_HEAD** = ``1``

追踪器追踪玩家头部的位置。这通常是玩家眼睛之间的中心位置。请注意，对于手持式 AR 设备，这可能是该设备的当前位置。

.. _class_XRServer_constant_TRACKER_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_CONTROLLER** = ``2``

追踪器追踪控制器的位置。

.. _class_XRServer_constant_TRACKER_BASESTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_BASESTATION** = ``4``

追踪器追踪基站的位置。

.. _class_XRServer_constant_TRACKER_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANCHOR** = ``8``

追踪器追踪 AR 锚的位置和大小。

.. _class_XRServer_constant_TRACKER_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_HAND** = ``16``

追踪器追踪手部的位置和关节。

.. _class_XRServer_constant_TRACKER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_BODY** = ``32``

追踪器追踪身体的位置和关节。

.. _class_XRServer_constant_TRACKER_FACE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_FACE** = ``64``

追踪器追踪面部的表情。

.. _class_XRServer_constant_TRACKER_ANY_KNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANY_KNOWN** = ``127``

内部用于过滤任何已知类型的跟踪器。

.. _class_XRServer_constant_TRACKER_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_UNKNOWN** = ``128``

如果我们尚未设置跟踪器类型，则在内部使用。

.. _class_XRServer_constant_TRACKER_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANY** = ``255``

在内部用于选择所有跟踪器。

.. rst-class:: classref-item-separator

----

.. _enum_XRServer_RotationMode:

.. rst-class:: classref-enumeration

enum **RotationMode**: :ref:`🔗<enum_XRServer_RotationMode>`

.. _class_XRServer_constant_RESET_FULL_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **RESET_FULL_ROTATION** = ``0``

完全重置 HMD 的方向。无论用户在现实世界中看向哪个方向。将在虚拟世界中锁定视角。

.. _class_XRServer_constant_RESET_BUT_KEEP_TILT:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **RESET_BUT_KEEP_TILT** = ``1``

重置方向，但保持设备的倾斜度。因此，如果我们正在往下看，会继续往下看，但航向会被重置。

.. _class_XRServer_constant_DONT_RESET_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **DONT_RESET_ROTATION** = ``2``

不重置 HMD 的方向，只让玩家的位置居中。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_XRServer_property_camera_locked_to_origin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **camera_locked_to_origin** = ``false`` :ref:`🔗<class_XRServer_property_camera_locked_to_origin>`

.. rst-class:: classref-property-setget

- |void| **set_camera_locked_to_origin**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_camera_locked_to_origin**\ (\ )

如果设为 ``true``\ ，则渲染场景时会当作相机锁定在了 :ref:`XROrigin3D<class_XROrigin3D>`\ 。

\ **注意：**\ 这并不能为用户提供非常舒适的体验。该设置存在的目的是为了进行基准测试或自动化测试，即希望通过代码控制渲染的内容。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_primary_interface:

.. rst-class:: classref-property

:ref:`XRInterface<class_XRInterface>` **primary_interface** :ref:`🔗<class_XRServer_property_primary_interface>`

.. rst-class:: classref-property-setget

- |void| **set_primary_interface**\ (\ value\: :ref:`XRInterface<class_XRInterface>`\ )
- :ref:`XRInterface<class_XRInterface>` **get_primary_interface**\ (\ )

当前绑定到 **XRServer** 的主 :ref:`XRInterface<class_XRInterface>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_world_origin:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **world_origin** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_XRServer_property_world_origin>`

.. rst-class:: classref-property-setget

- |void| **set_world_origin**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_world_origin**\ (\ )

我们的跟踪空间在虚拟世界中的原点。渲染器会用到这个信息，根据新的跟踪数据来正确放置相机。

\ **注意：**\ 这个属性由当前的 :ref:`XROrigin3D<class_XROrigin3D>` 节点管理。暴露的目的是方便在 GDExtension 使用。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XRServer_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

游戏世界相对于现实世界的缩放。默认情况下，大多数 AR/VR 平台假定 1 个游戏世界单位等于现实世界的 1 米。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_XRServer_method_add_interface:

.. rst-class:: classref-method

|void| **add_interface**\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ ) :ref:`🔗<class_XRServer_method_add_interface>`

注册一个 :ref:`XRInterface<class_XRInterface>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_add_tracker:

.. rst-class:: classref-method

|void| **add_tracker**\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ ) :ref:`🔗<class_XRServer_method_add_tracker>`

注册一个跟踪物理对象的新 :ref:`XRTracker<class_XRTracker>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_center_on_hmd:

.. rst-class:: classref-method

|void| **center_on_hmd**\ (\ rotation_mode\: :ref:`RotationMode<enum_XRServer_RotationMode>`, keep_height\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_XRServer_method_center_on_hmd>`

正确地理解这个函数非常重要。AR 和 VR 平台处理定位的方式略有不同。

对于不提供空间跟踪的平台，我们的原点 ``(0, 0, 0)`` 是 HMD 的位置，但你几乎无法控制玩家在现实世界中面对的方向。

对于提供空间跟踪的平台，我们的原点在很大程度上取决于系统。对于 OpenVR，原点通常是地面上跟踪空间的中心。对于其他平台，它通常是跟踪相机的位置。

此方法允许你将跟踪器置于 HMD 的位置。它将获取 HMD 的当前位置并使用它来调整你的所有跟踪数据；从本质上讲，将现实世界重新调整到玩家在游戏世界中的当前位置。

为了使这种方法产生可用的结果，跟踪信息必须可用。这通常在开始游戏后需要几帧。

你应该在几秒钟后调用此方法。例如，当用户请求重新调整显示时，按住控制器上的指定按钮一小段时间，或者当实现传送机制时。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_clear_reference_frame:

.. rst-class:: classref-method

|void| **clear_reference_frame**\ (\ ) :ref:`🔗<class_XRServer_method_clear_reference_frame>`

清除之前调用 :ref:`center_on_hmd()<class_XRServer_method_center_on_hmd>` 设置的参考帧。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_find_interface:

.. rst-class:: classref-method

:ref:`XRInterface<class_XRInterface>` **find_interface**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XRServer_method_find_interface>`

通过名称 ``name`` 查找接口。例如，如果你的项目使用 AR/VR 平台的功能，你可以通过名称找到该平台的接口并初始化。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_hmd_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_hmd_transform**\ (\ ) :ref:`🔗<class_XRServer_method_get_hmd_transform>`

返回主接口的变换。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interface:

.. rst-class:: classref-method

:ref:`XRInterface<class_XRInterface>` **get_interface**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XRServer_method_get_interface>`

返回在接口列表中给定 ``idx`` 索引处注册的接口。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interface_count**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_interface_count>`

返回当前在 AR/VR 服务器上注册的接口数量。如果你的项目支持多个AR/VR平台，你可以查看可用的接口，并向用户展示一个选择，或者简单地尝试初始化每个接口，并使用第一个返回 ``true`` 的接口。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_interfaces**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_interfaces>`

返回可用接口的列表，每个接口的 ID 和名称。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_reference_frame:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_frame**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_reference_frame>`

返回引用帧的变换。主要在内部使用，并公开以用于 GDExtension 构建接口。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_tracker:

.. rst-class:: classref-method

:ref:`XRTracker<class_XRTracker>` **get_tracker**\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRServer_method_get_tracker>`

返回具有给定 ``tracker_name`` 的位置追踪器。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_trackers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_trackers**\ (\ tracker_types\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_method_get_trackers>`

返回 ``tracker_types`` 的追踪器字典。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_remove_interface:

.. rst-class:: classref-method

|void| **remove_interface**\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ ) :ref:`🔗<class_XRServer_method_remove_interface>`

移除该 ``interface``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_remove_tracker:

.. rst-class:: classref-method

|void| **remove_tracker**\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ ) :ref:`🔗<class_XRServer_method_remove_tracker>`

移除该 ``tracker``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
