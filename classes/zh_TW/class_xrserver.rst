:github_url: hide

.. _class_XRServer:

XRServer
========

**繼承：** :ref:`Object<class_Object>`

用於 AR 和 VR 功能的服務。

.. rst-class:: classref-introduction-group

說明
----

AR/VR 伺服器是我們“進階虛擬實境”解決方案的核心，負責執行所有處理。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`XR 文件索引 <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

屬性
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

   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_interface<class_XRServer_method_add_interface>`\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ )                                                                                                                           |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_tracker<class_XRServer_method_add_tracker>`\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ )                                                                                                                                     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`center_on_hmd<class_XRServer_method_center_on_hmd>`\ (\ rotation_mode\: :ref:`RotationMode<enum_XRServer_RotationMode>`, keep_height\: :ref:`bool<class_bool>`\ )                                                                      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear_reference_frame<class_XRServer_method_clear_reference_frame>`\ (\ )                                                                                                                                                              |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>`                              | :ref:`find_interface<class_XRServer_method_find_interface>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] | :ref:`get_camera_offsets<class_XRServer_method_get_camera_offsets>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ )                                                                                                                |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Projection<class_Projection>`\]   | :ref:`get_camera_projections<class_XRServer_method_get_camera_projections>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                              | :ref:`get_hmd_transform<class_XRServer_method_get_hmd_transform>`\ (\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRInterface<class_XRInterface>`                              | :ref:`get_interface<class_XRServer_method_get_interface>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`get_interface_count<class_XRServer_method_get_interface_count>`\ (\ ) |const|                                                                                                                                                          |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]   | :ref:`get_interfaces<class_XRServer_method_get_interfaces>`\ (\ ) |const|                                                                                                                                                                    |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                              | :ref:`get_reference_frame<class_XRServer_method_get_reference_frame>`\ (\ ) |const|                                                                                                                                                          |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRTracker<class_XRTracker>`                                  | :ref:`get_tracker<class_XRServer_method_get_tracker>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                | :ref:`get_trackers<class_XRServer_method_get_trackers>`\ (\ tracker_types\: :ref:`int<class_int>`\ )                                                                                                                                         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`remove_interface<class_XRServer_method_remove_interface>`\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ )                                                                                                                     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`remove_tracker<class_XRServer_method_remove_tracker>`\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ )                                                                                                                               |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_XRServer_signal_interface_added:

.. rst-class:: classref-signal

**interface_added**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_signal_interface_added>`

新增新介面時觸發。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_interface_removed:

.. rst-class:: classref-signal

**interface_removed**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_signal_interface_removed>`

當介面被移除時觸發。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_reference_frame_changed:

.. rst-class:: classref-signal

**reference_frame_changed**\ (\ ) :ref:`🔗<class_XRServer_signal_reference_frame_changed>`

當參考影格變換更改時發出。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_added:

.. rst-class:: classref-signal

**tracker_added**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_added>`

當一個新的追蹤器被新增時發出。如果你不使用一個固定數量的控制器，或者如果你將 :ref:`XRAnchor3D<class_XRAnchor3D>` 用於一個 AR 解決方案，請務必對此訊號做出反應，以新增與該新追蹤器相適的 :ref:`XRController3D<class_XRController3D>` 或 :ref:`XRAnchor3D<class_XRAnchor3D>` 節點 。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_removed:

.. rst-class:: classref-signal

**tracker_removed**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_removed>`

當一個追蹤器被移除時發出。如此，你應該移除任何 :ref:`XRController3D<class_XRController3D>` 或 :ref:`XRAnchor3D<class_XRAnchor3D>` 點。這不是強制性的，這些節點只是變得不活動，並且當一個新的追蹤器可用時，將再次啟動（即打開一個新的控制器，來代替前一個控制器）。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_tracker_updated:

.. rst-class:: classref-signal

**tracker_updated**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, type\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_signal_tracker_updated>`

當現有追蹤器被更新時發出。如果使用者切換控制器，則可能會發生這種情況。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_signal_world_origin_changed:

.. rst-class:: classref-signal

**world_origin_changed**\ (\ ) :ref:`🔗<class_XRServer_signal_world_origin_changed>`

當世界原點變換發生改變時觸發。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_XRServer_TrackerType:

.. rst-class:: classref-enumeration

enum **TrackerType**: :ref:`🔗<enum_XRServer_TrackerType>`

.. _class_XRServer_constant_TRACKER_CAMERA:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_CAMERA** = ``1``

The tracker tracks the position of an XR camera (HMD, external camera, phone camera for phone based AR).

.. _class_XRServer_constant_TRACKER_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_CONTROLLER** = ``2``

追蹤器追蹤控制器的位置。

.. _class_XRServer_constant_TRACKER_BASESTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_BASESTATION** = ``4``

追蹤器追蹤基站的位置。

.. _class_XRServer_constant_TRACKER_ANCHOR:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANCHOR** = ``8``

追蹤器追蹤 AR 錨的位置和大小。

.. _class_XRServer_constant_TRACKER_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_HAND** = ``16``

追蹤器追蹤手部的位置和關節。

.. _class_XRServer_constant_TRACKER_BODY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_BODY** = ``32``

追蹤器追蹤身體的位置和關節。

.. _class_XRServer_constant_TRACKER_FACE:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_FACE** = ``64``

追蹤器追蹤面部的表情。

.. _class_XRServer_constant_TRACKER_ANY_KNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANY_KNOWN** = ``127``

內部用於篩選任何已知型別的追蹤器。

.. _class_XRServer_constant_TRACKER_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_UNKNOWN** = ``128``

如果我們尚未設定追蹤器型別，則在內部使用。

.. _class_XRServer_constant_TRACKER_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_ANY** = ``255``

在內部用於選擇所有追蹤器。

.. _class_XRServer_constant_TRACKER_HEAD:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerType<enum_XRServer_TrackerType>` **TRACKER_HEAD** = ``1``

**已棄用：** Use TRACKER_CAMERA

追蹤器追蹤玩家頭部的位置。這通常是玩家眼睛之間的中心位置。請注意，對於手持式 AR 裝置，這可能是該裝置的目前位置。

.. rst-class:: classref-item-separator

----

.. _enum_XRServer_RotationMode:

.. rst-class:: classref-enumeration

enum **RotationMode**: :ref:`🔗<enum_XRServer_RotationMode>`

.. _class_XRServer_constant_RESET_FULL_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **RESET_FULL_ROTATION** = ``0``

完全重設 HMD 的方向。無論使用者在現實世界中看向哪個方向。將在虛擬世界中鎖定視角。

.. _class_XRServer_constant_RESET_BUT_KEEP_TILT:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **RESET_BUT_KEEP_TILT** = ``1``

重設方向，但保持裝置的傾斜度。因此，如果我們正在往下看，會繼續往下看，但航向會被重設。

.. _class_XRServer_constant_DONT_RESET_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_XRServer_RotationMode>` **DONT_RESET_ROTATION** = ``2``

不重設 HMD 的方向，只讓玩家的位置居中。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRServer_property_camera_locked_to_origin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **camera_locked_to_origin** = ``false`` :ref:`🔗<class_XRServer_property_camera_locked_to_origin>`

.. rst-class:: classref-property-setget

- |void| **set_camera_locked_to_origin**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_camera_locked_to_origin**\ (\ )

如果設為 ``true``\ ，則渲染場景時會當作相機鎖定在了 :ref:`XROrigin3D<class_XROrigin3D>`\ 。

\ **注意：**\ 這並不能為使用者提供非常舒適的體驗。該設定存在的目的是為了進行基準測試或自動化測試，即希望通過程式碼控制渲染的內容。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_primary_interface:

.. rst-class:: classref-property

:ref:`XRInterface<class_XRInterface>` **primary_interface** :ref:`🔗<class_XRServer_property_primary_interface>`

.. rst-class:: classref-property-setget

- |void| **set_primary_interface**\ (\ value\: :ref:`XRInterface<class_XRInterface>`\ )
- :ref:`XRInterface<class_XRInterface>` **get_primary_interface**\ (\ )

目前綁定到 **XRServer** 的主 :ref:`XRInterface<class_XRInterface>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_world_origin:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **world_origin** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_XRServer_property_world_origin>`

.. rst-class:: classref-property-setget

- |void| **set_world_origin**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_world_origin**\ (\ )

我們的追蹤空間在虛擬世界中的原點。渲染器會用到這個資訊，根據新的追蹤資料來正確放置相機。

\ **注意：**\ 這個屬性由目前的 :ref:`XROrigin3D<class_XROrigin3D>` 節點管理。暴露的目的是方便在 GDExtension 使用。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_property_world_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **world_scale** = ``1.0`` :ref:`🔗<class_XRServer_property_world_scale>`

.. rst-class:: classref-property-setget

- |void| **set_world_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_world_scale**\ (\ )

遊戲世界相對於現實世界的縮放。預設情況下，大多數 AR/VR 平台假定 1 個遊戲世界單位等於現實世界的 1 米。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRServer_method_add_interface:

.. rst-class:: classref-method

|void| **add_interface**\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ ) :ref:`🔗<class_XRServer_method_add_interface>`

註冊一個 :ref:`XRInterface<class_XRInterface>` 物件。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_add_tracker:

.. rst-class:: classref-method

|void| **add_tracker**\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ ) :ref:`🔗<class_XRServer_method_add_tracker>`

注冊一個追蹤物理物件的新 :ref:`XRTracker<class_XRTracker>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_center_on_hmd:

.. rst-class:: classref-method

|void| **center_on_hmd**\ (\ rotation_mode\: :ref:`RotationMode<enum_XRServer_RotationMode>`, keep_height\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_XRServer_method_center_on_hmd>`

正確地理解這個函式非常重要。AR 和 VR 平台處理定位的方式略有不同。

對於不提供空間追蹤的平台，我們的原點 ``(0, 0, 0)`` 是 HMD 的位置，但你幾乎無法控制玩家在現實世界中面對的方向。

對於提供空間追蹤的平台，我們的原點在很大程度上取決於系統。對於 OpenVR，原點通常是地面上追蹤空間的中心。對於其他平台，它通常是追蹤相機的位置。

此方法允許你將追蹤器置於 HMD 的位置。它將取得 HMD 的目前位置並使用它來調整你的所有追蹤資料；從本質上講，將現實世界重新調整到玩家在遊戲世界中的目前位置。

為了使這種方法產生可用的結果，追蹤資訊必須可用。這通常在開始遊戲後需要幾影格。

你應該在幾秒鐘後呼叫此方法。例如，當使用者請求重新調整顯示時，按住控制器上的指定按鈕一小段時間，或者當實作傳送機制時。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_clear_reference_frame:

.. rst-class:: classref-method

|void| **clear_reference_frame**\ (\ ) :ref:`🔗<class_XRServer_method_clear_reference_frame>`

清除之前呼叫 :ref:`center_on_hmd()<class_XRServer_method_center_on_hmd>` 設定的參考影格。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_find_interface:

.. rst-class:: classref-method

:ref:`XRInterface<class_XRInterface>` **find_interface**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XRServer_method_find_interface>`

通過名稱 ``name`` 搜尋介面。例如，如果你的專案使用 AR/VR 平臺的功能，你可以通過名稱找到該平臺的介面並初始化。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_camera_offsets:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] **get_camera_offsets**\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRServer_method_get_camera_offsets>`

Gets an array of offset transforms for each view for tracker ``tracker_name``. ``tracker_name`` must refer to an :ref:`XRPositionalTracker<class_XRPositionalTracker>` used as a camera.

Will check our primary interface first, then check each active interface. Returns empty if no interfaces manage this tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_camera_projections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Projection<class_Projection>`\] **get_camera_projections**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRServer_method_get_camera_projections>`

Gets an array of projection matrices for each view for tracker ``tracker_name``. ``tracker_name`` must refer to an :ref:`XRPositionalTracker<class_XRPositionalTracker>` used as a camera.

Will check our primary interface first, then check each active interface. Returns empty if no interfaces manage this tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_hmd_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_hmd_transform**\ (\ ) :ref:`🔗<class_XRServer_method_get_hmd_transform>`

返回主介面的變換。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interface:

.. rst-class:: classref-method

:ref:`XRInterface<class_XRInterface>` **get_interface**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XRServer_method_get_interface>`

返回在介面列表中給定 ``idx`` 索引處註冊的介面。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_interface_count**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_interface_count>`

返回目前在AR/VR服務上註冊的介面數量。如果你的專案支援多個AR/VR平臺，你可以查看可用的介面，並向使用者展示一個選擇，或者簡單地嘗試初始化每個介面，並使用第一個返回 ``true``\ 的介面。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_interfaces**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_interfaces>`

返回可用介面的列表，每個介面的ID和名稱。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_reference_frame:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_reference_frame**\ (\ ) |const| :ref:`🔗<class_XRServer_method_get_reference_frame>`

返回引用影格的變換。主要在內部使用，並公開以用於 GDExtension 建構介面。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_tracker:

.. rst-class:: classref-method

:ref:`XRTracker<class_XRTracker>` **get_tracker**\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRServer_method_get_tracker>`

返回具有給定 ``tracker_name`` 的位置追蹤器。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_get_trackers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_trackers**\ (\ tracker_types\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRServer_method_get_trackers>`

返回 ``tracker_types`` 的追蹤器字典。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_remove_interface:

.. rst-class:: classref-method

|void| **remove_interface**\ (\ interface\: :ref:`XRInterface<class_XRInterface>`\ ) :ref:`🔗<class_XRServer_method_remove_interface>`

移除該 ``interface``\ 。

.. rst-class:: classref-item-separator

----

.. _class_XRServer_method_remove_tracker:

.. rst-class:: classref-method

|void| **remove_tracker**\ (\ tracker\: :ref:`XRTracker<class_XRTracker>`\ ) :ref:`🔗<class_XRServer_method_remove_tracker>`

移除該 ``tracker``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
