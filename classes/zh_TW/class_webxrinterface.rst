:github_url: hide

.. _class_WebXRInterface:

WebXRInterface
==============

**繼承：** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 WebXR 的 AR/VR 介面。

.. rst-class:: classref-introduction-group

說明
----

WebXR 是一種開放標準，允許建立在網路瀏覽器中執行的 VR 和 AR 應用程式。

因此，此介面僅在 Web 匯出中執行時可用。

WebXR 支援範圍廣泛的裝置，從功能強大的裝置（如 Valve Index、HTC Vive、Oculus Rift 和 Quest）到功能低得多的裝置（如 Google Cardboard、Oculus Go、GearVR 或普通智能手機）。

由於 WebXR 基於 JavaScript，它大量使用回呼，這意味著 **WebXRInterface** 被迫使用訊號，而其他 XR 介面將改為使用立即回傳結果的函式。這使得 **WebXRInterface** 的初始化比其他 XR 介面要複雜得多。

以下是啟動沈浸式 VR 會話所需的最少程式碼：

::

    extends Node3D

    var webxr_interface
    var vr_supported = false

    func _ready():
        # 我們假設這個節點有一個按鈕作為子節點。
        # 該按鈕供使用者同意進入沈浸式 VR 模式。
        $Button.pressed.connect(self._on_button_pressed)

        webxr_interface = XRServer.find_interface("WebXR")
        if webxr_interface:
            # WebXR 使用了很多非同步回呼，所以我們連接各種
            # 訊號，以便接收它們。
            webxr_interface.session_supported.connect(self._webxr_session_supported)
            webxr_interface.session_started.connect(self._webxr_session_started)
            webxr_interface.session_ended.connect(self._webxr_session_ended)
            webxr_interface.session_failed.connect(self._webxr_session_failed)

            # 這會立即回傳——我們的 _webxr_session_supported() 方法
            # （我們連接到上面的“session_supported”訊號）將
            # 在稍後的某個時間被呼叫，讓我們知道它是否受支援。
            webxr_interface.is_session_supported("immersive-vr")

    func _webxr_session_supported(session_mode, supported):
        if session_mode == 'immersive-vr':
            vr_supported = supported

    func _on_button_pressed():
        if not vr_supported:
            OS.alert("Your browser doesn't support VR")
            return

        # 我們想要一個沈浸式 VR 會話，而不是 AR（'immersive-ar'）或
        # 簡單的 3DoF 查看器（'viewer'）。
        webxr_interface.session_mode = 'immersive-vr'
        # 'bounded-floor' 是房間比例，'local-floor' 是站立或坐著
        # 的體驗（如果你有 3DoF 頭戴裝置，它會讓你離地 1.6m），
        # 而“local”會讓你在 XROrigin 下。
        # 這個清單意味著它會首先嘗試請求“bounded-floor”，然後
        # 回退到“local-floor”，最後是“local”，如果沒有別的
        # 支援的話。
        webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
        # 為了使用“local-floor”或“bounded-floor”，我們還必須
        # 將功能標記為必需或可選。通過將“手動追蹤”作為可選功能，
        # 如果支援，它將被啟用。
        webxr_interface.required_features = 'local-floor'
        webxr_interface.optional_features = 'bounded-floor, hand-tracking'

        # 如果我們甚至無法請求會話，這將回傳 false，
        # 但是，它仍然可以在稍後的過程中非同步失敗，
        # 因此我們只有在呼叫 _webxr_session_started() 或
        # _webxr_session_failed() 方法時才知道它是真的成功還是失敗。
        if not webxr_interface.initialize():
            OS.alert("Failed to initialize")
            return

    func _webxr_session_started():
        $Button.visible = false
        # 這告訴 Godot 開始渲染到頭戴裝置。
        get_viewport().use_xr = true
        # 這將是你最終獲得的參考空間型別，與你在上面請求的型別不同。
        # 如果你希望遊戲在 “bounded-floor” 和 “local-floor”
        # 中的執行方式有所不同，這將很有用。
        print("Reference space type: ", webxr_interface.reference_space_type)
        # 這將是成功啟用的功能清單
        #（不支援該屬性的瀏覽器除外）。
        print("Enabled features: ", webxr_interface.enabled_features)

    func _webxr_session_ended():
        $Button.visible = true
        # 如果使用者退出沈浸式模式，那麼我們會告訴 Godot
        # 再次渲染到網頁。
        get_viewport().use_xr = false

    func _webxr_session_failed(message):
        OS.alert("Failed to initialize: " + message)

有幾種方法可以處理“控制器”輸入：

- 使用 :ref:`XRController3D<class_XRController3D>` 節點及其 :ref:`XRController3D.button_pressed<class_XRController3D_signal_button_pressed>` 和 :ref:`XRController3D.button_released<class_XRController3D_signal_button_released>` 訊號。這是 Godot 中 XR 應用程式通常處理控制器的方式，但是，這僅適用於進階 VR 控制器，例如 Oculus Touch 或 Index 控制器。

- 使用 :ref:`select<class_WebXRInterface_signal_select>`\ 、\ :ref:`squeeze<class_WebXRInterface_signal_squeeze>` 和其他相關訊號。這種方法適用於進階 VR 控制器和非傳統輸入源，例如螢幕上的輕敲、語音命令或裝置本身的按鈕按下。

你可以使用這兩種方法來讓你的遊戲或應用程式支援更多或更窄的裝置和輸入法集，或者允許與更進階的裝置進行更進階的互動。

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

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 取得關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectend:

.. rst-class:: classref-signal

**selectend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectend>`

某個輸入源完成其“主要動作”時發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 取得關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectstart:

.. rst-class:: classref-signal

**selectstart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectstart>`

某個輸入源開始其“主要動作”時發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 取得關於該輸入源的更多資訊。

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

此時，可以安全地執行 ``get_viewport().use_xr = true``\ ，讓 Godot 開始渲染至 XR 裝置。

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

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 取得關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezeend:

.. rst-class:: classref-signal

**squeezeend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezeend>`

某個輸入源完成其“主要緊握動作”時發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 取得關於該輸入源的更多資訊。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezestart:

.. rst-class:: classref-signal

**squeezestart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezestart>`

某個輸入源開始其“主要緊握動作”時發出。

請使用 :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` 和 :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>` 取得關於該輸入源的更多資訊。

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

不知道目標射線模式。

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

設定 WebXR 會話時通過 :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 成功啟用的功能的逗號分隔清單。

這可能包括通過設定 :ref:`required_features<class_WebXRInterface_property_required_features>` 和 :ref:`optional_features<class_WebXRInterface_property_optional_features>` 請求的功能，並且僅在發出 :ref:`session_started<class_WebXRInterface_signal_session_started>` 後可用。

\ **注意：**\ 並非所有 web 瀏覽器都支援該功能，在這種情況下，它將是一個空字串。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_optional_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **optional_features** :ref:`🔗<class_WebXRInterface_property_optional_features>`

.. rst-class:: classref-property-setget

- |void| **set_optional_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_optional_features**\ (\ )

:ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 在設定 WebXR 會話時使用的以逗號分隔的可選功能清單。

如果使用者的瀏覽器或裝置，不支援給定的任一功能，初始化將繼續，但將無法使用所請求的功能。

這對已經初始化的介面沒有任何影響。

可能的值見 MDN 文件中的 `WebXR 的會話功能 <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__\ 。

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

:ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 在設定 WebXR 會話時使用的以逗號分隔的參考空間型別清單。

按順序請求參考空間型別，將使用使用者裝置或瀏覽器支援的第一個。\ :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>` 屬性包含最終選擇的參考空間型別。

這對已經初始化的介面沒有任何影響。

可能的值來自 `WebXR 的 XRReferenceSpaceType <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__\ 。如果想要使用特定的參考空間型別，則它必須列在 :ref:`required_features<class_WebXRInterface_property_required_features>` 或 :ref:`optional_features<class_WebXRInterface_property_optional_features>` 中。

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_required_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **required_features** :ref:`🔗<class_WebXRInterface_property_required_features>`

.. rst-class:: classref-property-setget

- |void| **set_required_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_required_features**\ (\ )

:ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` 在設定 WebXR 會話時使用的以逗號分隔的所需功能清單。

如果使用者的瀏覽器或裝置不支援給定的任一功能，則初始化將失敗併發出 :ref:`session_failed<class_WebXRInterface_signal_session_failed>` 。

這對已經初始化的介面沒有任何影響。

可能的值見 MDN 文件中的 `WebXR 的會話功能 <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__\ 。

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

指示使用者是否可以看到 WebXR 會話的影像。

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

取得給定 ``input_source_id`` 的 :ref:`XRControllerTracker<class_XRControllerTracker>`\ 。

在 WebXR 情境中，輸入源可以是類似 Oculus Touch 和 Index 控制器的進階 VR 控制器，甚至也可以是螢幕上的點選、語音命令或按下裝置本身的按鈕。當使用非傳統輸入源時，會將 :ref:`XRPositionalTracker<class_XRPositionalTracker>` 的位置和方向解釋為指向使用者希望與之互動的物件的射線。

可以使用此方法取得有關觸發以下訊號之一的輸入源的資訊：

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
