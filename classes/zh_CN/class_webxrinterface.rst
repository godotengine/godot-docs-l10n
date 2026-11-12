:github_url: hide

.. _class_WebXRInterface:

WebXRInterface
==============

**继承：** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 WebXR 的 AR/VR 接口。

.. rst-class:: classref-introduction-group

描述
----

WebXR 是一种开放标准，允许创建在网络浏览器中运行的 VR 和 AR 应用程序。

因此，此接口仅在 Web 导出中运行时可用。

WebXR 支持范围广泛的设备，从功能强大的设备（如 Valve Index、HTC Vive、Oculus Rift 和 Quest）到功能低得多的设备（如 Google Cardboard、Oculus Go、GearVR 或普通智能手机）。

由于 WebXR 基于 JavaScript，它大量使用回调，这意味着 **WebXRInterface** 被迫使用信号，而其他 XR 接口将改为使用立即返回结果的函数。这使得 **WebXRInterface** 的初始化比其他 XR 接口要复杂得多。

以下是启动沉浸式 VR 会话所需的最少代码：

::

    extends Node3D

    var webxr_interface
    var vr_supported = false

    func _ready():
        # 我们假设这个节点有一个按钮作为子节点。
        # 该按钮供用户同意进入沉浸式 VR 模式。
        $Button.pressed.connect(self._on_button_pressed)

        webxr_interface = XRServer.find_interface("WebXR")
        if webxr_interface:
            # WebXR 使用了很多异步回调，所以我们连接各种
            # 信号，以便接收它们。
            webxr_interface.session_supported.connect(self._webxr_session_supported)
            webxr_interface.session_started.connect(self._webxr_session_started)
            webxr_interface.session_ended.connect(self._webxr_session_ended)
            webxr_interface.session_failed.connect(self._webxr_session_failed)

            # 这会立即返回——我们的 _webxr_session_supported() 方法
            # （我们连接到上面的“session_supported”信号）将
            # 在稍后的某个时间被调用，让我们知道它是否受支持。
            webxr_interface.is_session_supported("immersive-vr")

    func _webxr_session_supported(session_mode, supported):
        if session_mode == 'immersive-vr':
            vr_supported = supported

    func _on_button_pressed():
        if not vr_supported:
            OS.alert("Your browser doesn't support VR")
            return

        # 我们想要一个沉浸式 VR 会话，而不是 AR（'immersive-ar'）或
        # 简单的 3DoF 查看器（'viewer'）。
        webxr_interface.session_mode = 'immersive-vr'
        # 'bounded-floor' 是房间比例，'local-floor' 是站立或坐着
        # 的体验（如果你有 3DoF 头戴设备，它会让你离地 1.6m），
        # 而“local”会让你在 XROrigin 下。
        # 这个列表意味着它会首先尝试请求“bounded-floor”，然后
        # 回退到“local-floor”，最后是“local”，如果没有别的
        # 支持的话。
        webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
        # 为了使用“local-floor”或“bounded-floor”，我们还必须
        # 将功能标记为必需或可选。通过将“手动跟踪”作为可选功能，
        # 如果支持，它将被启用。
        webxr_interface.required_features = 'local-floor'
        webxr_interface.optional_features = 'bounded-floor, hand-tracking'

        # 如果我们甚至无法请求会话，这将返回 false，
        # 但是，它仍然可以在稍后的过程中异步失败，
        # 因此我们只有在调用 _webxr_session_started() 或
        # _webxr_session_failed() 方法时才知道它是真的成功还是失败。
        if not webxr_interface.initialize():
            OS.alert("Failed to initialize")
            return

    func _webxr_session_started():
        $Button.visible = false
        # 这告诉 Godot 开始渲染到头戴设备。
        get_viewport().use_xr = true
        # 这将是你最终获得的参考空间类型，与你在上面请求的类型不同。
        # 如果你希望游戏在 “bounded-floor” 和 “local-floor”
        # 中的运行方式有所不同，这将很有用。
        print("Reference space type: ", webxr_interface.reference_space_type)
        # 这将是成功启用的功能列表
        #（不支持该属性的浏览器除外）。
        print("Enabled features: ", webxr_interface.enabled_features)

    func _webxr_session_ended():
        $Button.visible = true
        # 如果用户退出沉浸式模式，那么我们会告诉 Godot
        # 再次渲染到网页。
        get_viewport().use_xr = false

    func _webxr_session_failed(message):
        OS.alert("Failed to initialize: " + message)

有几种方法可以处理“控制器”输入：

- 使用 :ref:`XRController3D<class_XRController3D>` 节点及其 :ref:`XRController3D.button_pressed<class_XRController3D_signal_button_pressed>` 和 :ref:`XRController3D.button_released<class_XRController3D_signal_button_released>` 信号。这是 Godot 中 XR 应用程序通常处理控制器的方式，但是，这仅适用于高级 VR 控制器，例如 Oculus Touch 或 Index 控制器。

- 使用 :ref:`select<class_WebXRInterface_signal_select>`\ 、\ :ref:`squeeze<class_WebXRInterface_signal_squeeze>` 和其他相关信号。这种方法适用于高级 VR 控制器和非传统输入源，例如屏幕上的轻敲、语音命令或设备本身的按钮按下。

你可以使用这两种方法来让你的游戏或应用程序支持更多或更窄的设备和输入法集，或者允许与更高级的设备进行更高级的交互。

.. rst-class:: classref-introduction-group

教程
----

- `如何使用 Godot 4 制作 WebXR 的 VR 游戏 <https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`disable_webxr_layers<class_WebXRInterface_property_disable_webxr_layers>`                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`enabled_features<class_WebXRInterface_property_enabled_features>`                               |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`optional_features<class_WebXRInterface_property_optional_features>`                             |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>`                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>` |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`required_features<class_WebXRInterface_property_required_features>`                             |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`session_mode<class_WebXRInterface_property_session_mode>`                                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`visibility_state<class_WebXRInterface_property_visibility_state>`                               |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                               | :ref:`get_available_display_refresh_rates<class_WebXRInterface_method_get_available_display_refresh_rates>`\ (\ ) |const|                                    |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_display_refresh_rate<class_WebXRInterface_method_get_display_refresh_rate>`\ (\ ) |const|                                                          |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` | :ref:`get_input_source_target_ray_mode<class_WebXRInterface_method_get_input_source_target_ray_mode>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRControllerTracker<class_XRControllerTracker>`   | :ref:`get_input_source_tracker<class_WebXRInterface_method_get_input_source_tracker>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const|                 |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_input_source_active<class_WebXRInterface_method_is_input_source_active>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const|                     |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`is_session_supported<class_WebXRInterface_method_is_session_supported>`\ (\ session_mode\: :ref:`String<class_String>`\ )                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`set_display_refresh_rate<class_WebXRInterface_method_set_display_refresh_rate>`\ (\ refresh_rate\: :ref:`float<class_float>`\ )                        |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_WebXRInterface_signal_display_refresh_rate_changed:

.. rst-class:: classref-signal

**display_refresh_rate_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_display_refresh_rate_changed>`

显示器的刷新率发生改变后触发。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_reference_space_reset:

.. rst-class:: classref-signal

**reference_space_reset**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_reference_space_reset>`

发射以表明参考空间已被重置或重新配置。

何时（或是否）发射取决于用户的浏览器或设备，但可能包括用户改变了他们的游戏空间的大小（可以通过 :ref:`XRInterface.get_play_area()<class_XRInterface_method_get_play_area>` 访问），或按下/按住一个按钮来重新定位他们的位置。

有关详细信息，请参阅 `WebXR 的 XRReferenceSpace 重置事件 <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace/reset_event>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_select:

.. rst-class:: classref-signal

**select**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_select>`

某个输入源完成其“主要动作”后发出。

请使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 获取关于该输入源的更多信息。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectend:

.. rst-class:: classref-signal

**selectend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectend>`

某个输入源完成其“主要动作”时发出。

请使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 获取关于该输入源的更多信息。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectstart:

.. rst-class:: classref-signal

**selectstart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectstart>`

某个输入源开始其“主要动作”时发出。

请使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 获取关于该输入源的更多信息。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_ended:

.. rst-class:: classref-signal

**session_ended**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_ended>`

用户结束 WebXR 会话时发出（可以使用浏览器或设备的 UI 结束会话）。

此时，你应该执行 ``get_viewport().use_xr = false``\ ，让 Godot 继续渲染至屏幕。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_failed:

.. rst-class:: classref-signal

**session_failed**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_failed>`

由 :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 在该会话启动失败时发出。

\ ``message`` 可能会包含 WebXR 的错误信息，如果没有可用信息则为空字符串。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_started:

.. rst-class:: classref-signal

**session_started**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_started>`

由 :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 在该会话启动成功时发出。

此时，可以安全地执行 ``get_viewport().use_xr = true``\ ，让 Godot 开始渲染至 XR 设备。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_supported:

.. rst-class:: classref-signal

**session_supported**\ (\ session_mode\: :ref:`String<class_String>`, supported\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_supported>`

由 :ref:`is_session_supported()<class_WebXRInterface_method_is_session_supported>` 触发，表示是否支持指定的 ``session_mode``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeeze:

.. rst-class:: classref-signal

**squeeze**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeeze>`

某个输入源完成其“主要紧握动作”后发出。

请使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 获取关于该输入源的更多信息。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezeend:

.. rst-class:: classref-signal

**squeezeend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezeend>`

某个输入源完成其“主要紧握动作”时发出。

请使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 获取关于该输入源的更多信息。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezestart:

.. rst-class:: classref-signal

**squeezestart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezestart>`

某个输入源开始其“主要紧握动作”时发出。

请使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 获取关于该输入源的更多信息。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_visibility_state_changed:

.. rst-class:: classref-signal

**visibility_state_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_visibility_state_changed>`

当 :ref:`visibility_state<class_WebXRInterface_property_visibility_state>` 已更改时触发。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_WebXRInterface_TargetRayMode:

.. rst-class:: classref-enumeration

enum **TargetRayMode**: :ref:`🔗<enum_WebXRInterface_TargetRayMode>`

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_UNKNOWN** = ``0``

不知道目标射线模式。

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_GAZE:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_GAZE** = ``1``

目标射线从观察者的眼睛出发，指向所观察的方向。

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_TRACKED_POINTER:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_TRACKED_POINTER** = ``2``

目标射线由手持指示器发射，很可能是 VR 触摸控制器。

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_SCREEN** = ``3``

目标射线由触摸屏、鼠标等触觉输入设备发射。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_WebXRInterface_property_disable_webxr_layers:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_webxr_layers** :ref:`🔗<class_WebXRInterface_property_disable_webxr_layers>`

.. rst-class:: classref-property-setget

- |void| **set_disable_webxr_layers**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_disable_webxr_layers**\ (\ )

If ``true``, the WebXR Layers API won't be used even when the browser supports it.

Godot falls back to this mode automatically when the browser doesn't support WebXR Layers and the polyfill isn't in use.

This doesn't have any effect on the interface when already initialized.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_enabled_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **enabled_features** :ref:`🔗<class_WebXRInterface_property_enabled_features>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_enabled_features**\ (\ )

A comma-separated list of features that were successfully enabled by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

This may include features requested by setting :ref:`required_features<class_WebXRInterface_property_required_features>` and :ref:`optional_features<class_WebXRInterface_property_optional_features>`, and will only be available after :ref:`session_started<class_WebXRInterface_signal_session_started>` has been emitted.

\ **Note:** This may not be supported by all web browsers, in which case it will be an empty string.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_optional_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **optional_features** :ref:`🔗<class_WebXRInterface_property_optional_features>`

.. rst-class:: classref-property-setget

- |void| **set_optional_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_optional_features**\ (\ )

A comma-separated list of optional features used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

If a user's browser or device doesn't support one of the given features, initialization will continue, but you won't be able to use the requested feature.

This doesn't have any effect on the interface when already initialized.

See the MDN documentation on `WebXR's session features <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__ for a list of possible values.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_reference_space_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **reference_space_type** :ref:`🔗<class_WebXRInterface_property_reference_space_type>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_reference_space_type**\ (\ )

参考空间类型（来自 :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>` 属性中设置的请求类型列表），在设置 WebXR 会话时最终由 :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 使用。

可能的值来自 `WebXR 的 XRReferenceSpaceType <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__\ 。 如果想要使用特定的参考空间类型，则它必须列在 :ref:`required_features<class_WebXRInterface_property_required_features>` 或 :ref:`optional_features<class_WebXRInterface_property_optional_features>` 中。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_requested_reference_space_types:

.. rst-class:: classref-property

:ref:`String<class_String>` **requested_reference_space_types** :ref:`🔗<class_WebXRInterface_property_requested_reference_space_types>`

.. rst-class:: classref-property-setget

- |void| **set_requested_reference_space_types**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_requested_reference_space_types**\ (\ )

A comma-separated list of reference space types used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

The reference space types are requested in order, and the first one supported by the user's device or browser will be used. The :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>` property contains the reference space type that was ultimately selected.

This doesn't have any effect on the interface when already initialized.

Possible values come from `WebXR's XRReferenceSpaceType <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. If you want to use a particular reference space type, it must be listed in either :ref:`required_features<class_WebXRInterface_property_required_features>` or :ref:`optional_features<class_WebXRInterface_property_optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_required_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **required_features** :ref:`🔗<class_WebXRInterface_property_required_features>`

.. rst-class:: classref-property-setget

- |void| **set_required_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_required_features**\ (\ )

A comma-separated list of required features used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

If a user's browser or device doesn't support one of the given features, initialization will fail and :ref:`session_failed<class_WebXRInterface_signal_session_failed>` will be emitted.

This doesn't have any effect on the interface when already initialized.

See the MDN documentation on `WebXR's session features <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__ for a list of possible values.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_session_mode:

.. rst-class:: classref-property

:ref:`String<class_String>` **session_mode** :ref:`🔗<class_WebXRInterface_property_session_mode>`

.. rst-class:: classref-property-setget

- |void| **set_session_mode**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_session_mode**\ (\ )

建立 WebXR 会话时，\ :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 使用的会话模式。

这对已经初始化的接口没有任何影响。

可能的值来自 `WebXR 的 XRSessionMode <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__\ ，包括：\ ``"immersive-vr"`` 、\ ``"immersive-ar"`` 和 ``"inline"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_visibility_state:

.. rst-class:: classref-property

:ref:`String<class_String>` **visibility_state** :ref:`🔗<class_WebXRInterface_property_visibility_state>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_visibility_state**\ (\ )

指示用户是否可以看到 WebXR 会话的图像。

可能的值来自 `WebXR 的 XRVisibilityState <https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState>`__\ ，包括 ``"hidden"``\ 、\ ``"visible"`` 和 ``"visible-blurred"``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_WebXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_available_display_refresh_rates>`

返回当前 HMD 所支持的显示刷新率。网页浏览器支持该功能，并且该接口已初始化时才会返回。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_display_refresh_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_display_refresh_rate**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_display_refresh_rate>`

返回当前 HMD 的显示刷新率。不是所有 HMD 和浏览器都支持。使用 :ref:`set_display_refresh_rate()<class_WebXRInterface_method_set_display_refresh_rate>` 前可能不会汇报精确值。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_target_ray_mode:

.. rst-class:: classref-method

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **get_input_source_target_ray_mode**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_target_ray_mode>`

返回给定的 ``input_source_id`` 的目标射线模式。

可用于帮助解析来自该输入源的输入。详见 `XRInputSource.targetRayMode <https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource/targetRayMode>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_tracker:

.. rst-class:: classref-method

:ref:`XRControllerTracker<class_XRControllerTracker>` **get_input_source_tracker**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_tracker>`

获取给定 ``input_source_id`` 的 :ref:`XRControllerTracker<class_XRControllerTracker>`\ 。

在 WebXR 上下文中，输入源可以是类似 Oculus Touch 和 Index 控制器的高级 VR 控制器，甚至也可以是屏幕上的点击、语音命令或按下设备本身的按钮。当使用非传统输入源时，会将 :ref:`XRPositionalTracker<class_XRPositionalTracker>` 的位置和方向解释为指向用户希望与之交互的对象的射线。

可以使用此方法获取有关触发以下信号之一的输入源的信息：

- :ref:`selectstart<class_WebXRInterface_signal_selectstart>`\ 

- :ref:`select<class_WebXRInterface_signal_select>`\ 

- :ref:`selectend<class_WebXRInterface_signal_selectend>`\ 

- :ref:`squeezestart<class_WebXRInterface_signal_squeezestart>`\ 

- :ref:`squeeze<class_WebXRInterface_signal_squeeze>`\ 

- :ref:`squeezestart<class_WebXRInterface_signal_squeezestart>`

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_input_source_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_source_active**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_is_input_source_active>`

如果存在具有给定 ``input_source_id`` 的活动输入源，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_session_supported:

.. rst-class:: classref-method

|void| **is_session_supported**\ (\ session_mode\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_method_is_session_supported>`

检查给定的 ``session_mode`` 是否被用户的浏览器支持。

可能的值来自 `WebXR 的 XRSessionMode <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__\ ，包括：\ ``"immersive-vr"``\ 、\ ``"immersive-ar"`` 和 ``"inline"``\ 。

此方法不返回任何东西，而是将结果发送给 :ref:`session_supported<class_WebXRInterface_signal_session_supported>` 信号。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_set_display_refresh_rate:

.. rst-class:: classref-method

|void| **set_display_refresh_rate**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_WebXRInterface_method_set_display_refresh_rate>`

为当前的 HMD 设置屏幕刷新率。不是所有 HMD 和浏览器都支持。不会立即生效，发出 :ref:`display_refresh_rate_changed<class_WebXRInterface_signal_display_refresh_rate_changed>` 信号后才会生效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
