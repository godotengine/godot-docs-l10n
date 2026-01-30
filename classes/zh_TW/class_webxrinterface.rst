:github_url: hide

.. _class_WebXRInterface:

WebXRInterface
==============

**繼承：** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 WebXR 的 AR/VR 介面。

.. rst-class:: classref-introduction-group

說明
----

WebXR is an open standard that allows creating VR and AR applications that run in the web browser.

As such, this interface is only available when running in Web exports.

WebXR supports a wide range of devices, from the very capable (like Valve Index, HTC Vive, Oculus Rift and Quest) down to the much less capable (like Google Cardboard, Oculus Go, GearVR, or plain smartphones).

Since WebXR is based on JavaScript, it makes extensive use of callbacks, which means that **WebXRInterface** is forced to use signals, where other XR interfaces would instead use functions that return a result immediately. This makes **WebXRInterface** quite a bit more complicated to initialize than other XR interfaces.

Here's the minimum code required to start an immersive VR session:

::

    extends Node3D

    var webxr_interface
    var vr_supported = false

    func _ready():
        # We assume this node has a button as a child.
        # This button is for the user to consent to entering immersive VR mode.
        $Button.pressed.connect(self._on_button_pressed)

        webxr_interface = XRServer.find_interface("WebXR")
        if webxr_interface:
            # WebXR uses a lot of asynchronous callbacks, so we connect to various
            # signals in order to receive them.
            webxr_interface.session_supported.connect(self._webxr_session_supported)
            webxr_interface.session_started.connect(self._webxr_session_started)
            webxr_interface.session_ended.connect(self._webxr_session_ended)
            webxr_interface.session_failed.connect(self._webxr_session_failed)

            # This returns immediately - our _webxr_session_supported() method
            # (which we connected to the "session_supported" signal above) will
            # be called sometime later to let us know if it's supported or not.
            webxr_interface.is_session_supported("immersive-vr")

    func _webxr_session_supported(session_mode, supported):
        if session_mode == 'immersive-vr':
            vr_supported = supported

    func _on_button_pressed():
        if not vr_supported:
            OS.alert("Your browser doesn't support VR")
            return

        # We want an immersive VR session, as opposed to AR ('immersive-ar') or a
        # simple 3DoF viewer ('viewer').
        webxr_interface.session_mode = 'immersive-vr'
        # 'bounded-floor' is room scale, 'local-floor' is a standing or sitting
        # experience (it puts you 1.6m above the ground if you have 3DoF headset),
        # whereas as 'local' puts you down at the XROrigin.
        # This list means it'll first try to request 'bounded-floor', then
        # fallback on 'local-floor' and ultimately 'local', if nothing else is
        # supported.
        webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
        # In order to use 'local-floor' or 'bounded-floor' we must also
        # mark the features as required or optional. By including 'hand-tracking'
        # as an optional feature, it will be enabled if supported.
        webxr_interface.required_features = 'local-floor'
        webxr_interface.optional_features = 'bounded-floor, hand-tracking'

        # This will return false if we're unable to even request the session,
        # however, it can still fail asynchronously later in the process, so we
        # only know if it's really succeeded or failed when our
        # _webxr_session_started() or _webxr_session_failed() methods are called.
        if not webxr_interface.initialize():
            OS.alert("Failed to initialize")
            return

    func _webxr_session_started():
        $Button.visible = false
        # This tells Godot to start rendering to the headset.
        get_viewport().use_xr = true
        # This will be the reference space type you ultimately got, out of the
        # types that you requested above. This is useful if you want the game to
        # work a little differently in 'bounded-floor' versus 'local-floor'.
        print("Reference space type: ", webxr_interface.reference_space_type)
        # This will be the list of features that were successfully enabled
        # (except on browsers that don't support this property).
        print("Enabled features: ", webxr_interface.enabled_features)

    func _webxr_session_ended():
        $Button.visible = true
        # If the user exits immersive mode, then we tell Godot to render to the web
        # page again.
        get_viewport().use_xr = false

    func _webxr_session_failed(message):
        OS.alert("Failed to initialize: " + message)

There are a couple ways to handle "controller" input:

- Using :ref:`XRController3D<class_XRController3D>` nodes and their :ref:`XRController3D.button_pressed<class_XRController3D_signal_button_pressed>` and :ref:`XRController3D.button_released<class_XRController3D_signal_button_released>` signals. This is how controllers are typically handled in XR apps in Godot, however, this will only work with advanced VR controllers like the Oculus Touch or Index controllers, for example.

- Using the :ref:`select<class_WebXRInterface_signal_select>`, :ref:`squeeze<class_WebXRInterface_signal_squeeze>` and related signals. This method will work for both advanced VR controllers, and non-traditional input sources like a tap on the screen, a spoken voice command or a button press on the device itself.

You can use both methods to allow your game or app to support a wider or narrower set of devices and input methods, or to allow more advanced interactions with more advanced devices.

.. rst-class:: classref-introduction-group

教學
----

- `如何使用 Godot 4 製作 WebXR 的 VR 遊戲 <https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

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

訊號
----

.. _class_WebXRInterface_signal_display_refresh_rate_changed:

.. rst-class:: classref-signal

**display_refresh_rate_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_display_refresh_rate_changed>`

顯示器的更新率發生改變後觸發。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_reference_space_reset:

.. rst-class:: classref-signal

**reference_space_reset**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_reference_space_reset>`

發射以表明參考空間已被重設或重新配置。

何時（或是否）發射取決於使用者的流覽器或裝置，但可能包括使用者改變了他們的遊戲空間的大小（可以通過 :ref:`XRInterface.get_play_area()<class_XRInterface_method_get_play_area>` 存取），或按下/按住一個按鈕來重新定位他們的位置。

有關詳細資訊，請參閱 `WebXR 的 XRReferenceSpace 重設事件 <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace/reset_event>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_select:

.. rst-class:: classref-signal

**select**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_select>`

某個輸入源完成其“主要動作”後發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 獲取關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectend:

.. rst-class:: classref-signal

**selectend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectend>`

某個輸入源完成其“主要動作”時發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 獲取關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectstart:

.. rst-class:: classref-signal

**selectstart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectstart>`

某個輸入源開始其“主要動作”時發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 獲取關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_ended:

.. rst-class:: classref-signal

**session_ended**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_ended>`

使用者結束 WebXR 會話時發出（可以使用流覽器或裝置的 UI 結束會話）。

此時，你應該執行 ``get_viewport().use_xr = false``\ ，讓 Godot 繼續算繪至螢幕。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_failed:

.. rst-class:: classref-signal

**session_failed**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_failed>`

由 :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 在該會話啟動失敗時發出。

\ ``message`` 可能會包含 WebXR 的錯誤資訊，如果沒有可用資訊則為空字串。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_started:

.. rst-class:: classref-signal

**session_started**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_started>`

由 :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 在該會話啟動成功時發出。

此時，可以安全地執行 ``get_viewport().use_xr = true``\ ，讓 Godot 開始算繪至 XR 裝置。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_supported:

.. rst-class:: classref-signal

**session_supported**\ (\ session_mode\: :ref:`String<class_String>`, supported\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_supported>`

由 :ref:`is_session_supported()<class_WebXRInterface_method_is_session_supported>` 觸發，表示是否支援指定的 ``session_mode``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeeze:

.. rst-class:: classref-signal

**squeeze**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeeze>`

某個輸入源完成其“主要緊握動作”後發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 獲取關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezeend:

.. rst-class:: classref-signal

**squeezeend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezeend>`

某個輸入源完成其“主要緊握動作”時發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 獲取關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezestart:

.. rst-class:: classref-signal

**squeezestart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezestart>`

某個輸入源開始其“主要緊握動作”時發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 獲取關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_visibility_state_changed:

.. rst-class:: classref-signal

**visibility_state_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_visibility_state_changed>`

當 :ref:`visibility_state<class_WebXRInterface_property_visibility_state>` 已更改時觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_WebXRInterface_TargetRayMode:

.. rst-class:: classref-enumeration

enum **TargetRayMode**: :ref:`🔗<enum_WebXRInterface_TargetRayMode>`

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_UNKNOWN** = ``0``

We don't know the target ray mode.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_GAZE:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_GAZE** = ``1``

目標射線從觀察者的眼睛出發，指向所觀察的方向。

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_TRACKED_POINTER:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_TRACKED_POINTER** = ``2``

目標射線由手持指示器發射，很可能是 VR 觸摸控制器。

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_SCREEN** = ``3``

目標射線由觸控式螢幕、滑鼠等觸覺輸入裝置發射。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_WebXRInterface_property_enabled_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **enabled_features** :ref:`🔗<class_WebXRInterface_property_enabled_features>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_enabled_features**\ (\ )

A comma-separated list of features that were successfully enabled by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

This may include features requested by setting :ref:`required_features<class_WebXRInterface_property_required_features>` and :ref:`optional_features<class_WebXRInterface_property_optional_features>`, and will only be available after :ref:`session_started<class_WebXRInterface_signal_session_started>` has been emitted.

\ **Note:** This may not be support by all web browsers, in which case it will be an empty string.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_optional_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **optional_features** :ref:`🔗<class_WebXRInterface_property_optional_features>`

.. rst-class:: classref-property-setget

- |void| **set_optional_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_optional_features**\ (\ )

A comma-seperated list of optional features used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

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

參考空間型別（來自 :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>` 屬性中設定的請求型別列表），在設定 WebXR 會話時最終由 :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 使用。

可能的值來自 `WebXR 的 XRReferenceSpaceType <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__\ 。 如果想要使用特定的參考空間型別，則它必須列在 :ref:`required_features<class_WebXRInterface_property_required_features>` 或 :ref:`optional_features<class_WebXRInterface_property_optional_features>` 中。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_requested_reference_space_types:

.. rst-class:: classref-property

:ref:`String<class_String>` **requested_reference_space_types** :ref:`🔗<class_WebXRInterface_property_requested_reference_space_types>`

.. rst-class:: classref-property-setget

- |void| **set_requested_reference_space_types**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_requested_reference_space_types**\ (\ )

A comma-seperated list of reference space types used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

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

A comma-seperated list of required features used by :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` when setting up the WebXR session.

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

建立 WebXR 會話時，\ :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 使用的會話模式。

這對已經初始化的介面沒有任何影響。

可能的值來自 `WebXR 的 XRSessionMode <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__\ ，包括：\ ``"immersive-vr"`` 、\ ``"immersive-ar"`` 和 ``"inline"``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_visibility_state:

.. rst-class:: classref-property

:ref:`String<class_String>` **visibility_state** :ref:`🔗<class_WebXRInterface_property_visibility_state>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_visibility_state**\ (\ )

指示使用者是否可以看到 WebXR 會話的圖像。

可能的值來自 `WebXR 的 XRVisibilityState <https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState>`__\ ，包括 ``"hidden"``\ 、\ ``"visible"`` 和 ``"visible-blurred"``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_WebXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_available_display_refresh_rates>`

返回目前 HMD 所支援的顯示更新率。網頁流覽器支援該功能，並且該介面已初始化時才會返回。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_display_refresh_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_display_refresh_rate**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_display_refresh_rate>`

返回目前 HMD 的顯示更新率。不是所有 HMD 和流覽器都支援。使用 :ref:`set_display_refresh_rate()<class_WebXRInterface_method_set_display_refresh_rate>` 前可能不會彙報精確值。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_target_ray_mode:

.. rst-class:: classref-method

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **get_input_source_target_ray_mode**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_target_ray_mode>`

返回給定的 ``input_source_id`` 的目標射線模式。

可用於幫助解析來自該輸入源的輸入。詳見 `XRInputSource.targetRayMode <https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource/targetRayMode>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_tracker:

.. rst-class:: classref-method

:ref:`XRControllerTracker<class_XRControllerTracker>` **get_input_source_tracker**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_tracker>`

Gets an :ref:`XRControllerTracker<class_XRControllerTracker>` for the given ``input_source_id``.

In the context of WebXR, an input source can be an advanced VR controller like the Oculus Touch or Index controllers, or even a tap on the screen, a spoken voice command or a button press on the device itself. When a non-traditional input source is used, interpret the position and orientation of the :ref:`XRPositionalTracker<class_XRPositionalTracker>` as a ray pointing at the object the user wishes to interact with.

Use this method to get information about the input source that triggered one of these signals:

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

如果存在具有給定 ``input_source_id`` 的活動輸入源，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_session_supported:

.. rst-class:: classref-method

|void| **is_session_supported**\ (\ session_mode\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_method_is_session_supported>`

檢查給定的 ``session_mode`` 是否被使用者的流覽器支援。

可能的值來自 `WebXR 的 XRSessionMode <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__\ ，包括：\ ``"immersive-vr"``\ 、\ ``"immersive-ar"`` 和 ``"inline"``\ 。

此方法不返回任何東西，而是將結果發送給 :ref:`session_supported<class_WebXRInterface_signal_session_supported>` 訊號。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_set_display_refresh_rate:

.. rst-class:: classref-method

|void| **set_display_refresh_rate**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_WebXRInterface_method_set_display_refresh_rate>`

為目前的 HMD 設定螢幕更新率。不是所有 HMD 和流覽器都支援。不會立即生效，發出 :ref:`display_refresh_rate_changed<class_WebXRInterface_signal_display_refresh_rate_changed>` 訊號後才會生效。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
