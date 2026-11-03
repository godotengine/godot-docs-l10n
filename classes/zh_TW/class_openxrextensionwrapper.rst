:github_url: hide

.. _class_OpenXRExtensionWrapper:

OpenXRExtensionWrapper
======================

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`OpenXRAndroidThreadSettingsExtension<class_OpenXRAndroidThreadSettingsExtension>`, :ref:`OpenXRExtensionWrapperExtension<class_OpenXRExtensionWrapperExtension>`, :ref:`OpenXRFrameSynthesisExtension<class_OpenXRFrameSynthesisExtension>`, :ref:`OpenXRFutureExtension<class_OpenXRFutureExtension>`, :ref:`OpenXRRenderModelExtension<class_OpenXRRenderModelExtension>`, :ref:`OpenXRSpatialAnchorCapability<class_OpenXRSpatialAnchorCapability>`, :ref:`OpenXRSpatialEntityExtension<class_OpenXRSpatialEntityExtension>`, :ref:`OpenXRSpatialMarkerTrackingCapability<class_OpenXRSpatialMarkerTrackingCapability>`, :ref:`OpenXRSpatialPlaneTrackingCapability<class_OpenXRSpatialPlaneTrackingCapability>`

允許使用 GDExtension 實作 OpenXR 擴充。

.. rst-class:: classref-introduction-group

說明
----

**OpenXRExtensionWrapper** 允許使用 GDExtension 實作 OpenXR 擴充。擴充必須使用 :ref:`register_extension_wrapper()<class_OpenXRExtensionWrapper_method_register_extension_wrapper>` 方法進行注冊。

當 :ref:`OpenXRInterface<class_OpenXRInterface>` 被初始化為主介面，並且任何 :ref:`Viewport<class_Viewport>` 的 :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` 被設定為 ``true`` 時，OpenXR 將參與 Godot 的渲染過程。如果 :ref:`ProjectSettings.rendering/driver/threads/thread_model<class_ProjectSettings_property_rendering/driver/threads/thread_model>` 被設定為“Separate”，Godot 的渲染器將在其自己的執行緒上執行，因此所有 **OpenXRExtensionWrapper** 都必須特別注意，以防止崩潰或意外行為。一些虛方法將在渲染執行緒上呼叫，它們存取的任何資料都不應在主執行緒上直接寫入。這是為了防止兩個潛在問題：

1. 旨在用於下一影格的更改，卻在目前影格生效。使用“Separate”執行緒模型時，主執行緒會立即開始處理下一影格，而渲染執行緒可能仍在渲染目前影格。如果主執行緒直接更改渲染執行緒使用的任何內容，則更改可能會比預期提前一影格生效。

2. 從不同的執行緒同時讀取和寫入相同的資料會導致渲染執行緒使用處於無效狀態的資料。

在大多數情況下，解決方案是使用 :ref:`RenderingServer.call_on_render_thread()<class_RenderingServer_method_call_on_render_thread>` 來調度 :ref:`Callable<class_Callable>` 函式，以便寫入渲染執行緒上使用的任何資料。使用“Separate”執行緒模型時，這些 :ref:`Callable<class_Callable>` 函式將在渲染器完成目前影格渲染後、開始渲染下一影格之前執行。不使用該模式時，它們會立即執行，因此建議始終在這些情況下使用 :ref:`RenderingServer.call_on_render_thread()<class_RenderingServer_method_call_on_render_thread>`\ ，這樣無論使用哪種執行緒模型，你的程式碼都能正常工作。

任何在渲染執行緒上執行的虛方法都將在下面注明。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_composition_layer<class_OpenXRExtensionWrapper_private_method__get_composition_layer>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                                        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_composition_layer_count<class_OpenXRExtensionWrapper_private_method__get_composition_layer_count>`\ (\ ) |virtual|                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_composition_layer_order<class_OpenXRExtensionWrapper_private_method__get_composition_layer_order>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                            |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_requested_extensions<class_OpenXRExtensionWrapper_private_method__get_requested_extensions>`\ (\ xr_version\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_suggested_tracker_names<class_OpenXRExtensionWrapper_private_method__get_suggested_tracker_names>`\ (\ ) |virtual|                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_viewport_composition_layer_extension_properties<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>`\ (\ ) |virtual|                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_viewport_composition_layer_extension_property_defaults<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_property_defaults>`\ (\ ) |virtual|                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_before_instance_created<class_OpenXRExtensionWrapper_private_method__on_before_instance_created>`\ (\ ) |virtual|                                                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_on_event_polled<class_OpenXRExtensionWrapper_private_method__on_event_polled>`\ (\ event\: ``const void*``\ ) |virtual|                                                                                                                                                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_instance_created<class_OpenXRExtensionWrapper_private_method__on_instance_created>`\ (\ instance\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_instance_destroyed<class_OpenXRExtensionWrapper_private_method__on_instance_destroyed>`\ (\ ) |virtual|                                                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_main_swapchains_created<class_OpenXRExtensionWrapper_private_method__on_main_swapchains_created>`\ (\ ) |virtual|                                                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_post_draw_viewport<class_OpenXRExtensionWrapper_private_method__on_post_draw_viewport>`\ (\ viewport\: :ref:`RID<class_RID>`\ ) |virtual|                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_pre_draw_viewport<class_OpenXRExtensionWrapper_private_method__on_pre_draw_viewport>`\ (\ viewport\: :ref:`RID<class_RID>`\ ) |virtual|                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_pre_render<class_OpenXRExtensionWrapper_private_method__on_pre_render>`\ (\ ) |virtual|                                                                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_process<class_OpenXRExtensionWrapper_private_method__on_process>`\ (\ ) |virtual|                                                                                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_register_metadata<class_OpenXRExtensionWrapper_private_method__on_register_metadata>`\ (\ interaction_profile_metadata\: :ref:`OpenXRInteractionProfileMetadata<class_OpenXRInteractionProfileMetadata>`\ ) |virtual|                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_session_created<class_OpenXRExtensionWrapper_private_method__on_session_created>`\ (\ session\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                                            |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_session_destroyed<class_OpenXRExtensionWrapper_private_method__on_session_destroyed>`\ (\ ) |virtual|                                                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_state_exiting<class_OpenXRExtensionWrapper_private_method__on_state_exiting>`\ (\ ) |virtual|                                                                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_state_focused<class_OpenXRExtensionWrapper_private_method__on_state_focused>`\ (\ ) |virtual|                                                                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_state_idle<class_OpenXRExtensionWrapper_private_method__on_state_idle>`\ (\ ) |virtual|                                                                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_state_loss_pending<class_OpenXRExtensionWrapper_private_method__on_state_loss_pending>`\ (\ ) |virtual|                                                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_state_ready<class_OpenXRExtensionWrapper_private_method__on_state_ready>`\ (\ ) |virtual|                                                                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_state_stopping<class_OpenXRExtensionWrapper_private_method__on_state_stopping>`\ (\ ) |virtual|                                                                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_state_synchronized<class_OpenXRExtensionWrapper_private_method__on_state_synchronized>`\ (\ ) |virtual|                                                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_state_visible<class_OpenXRExtensionWrapper_private_method__on_state_visible>`\ (\ ) |virtual|                                                                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_sync_actions<class_OpenXRExtensionWrapper_private_method__on_sync_actions>`\ (\ ) |virtual|                                                                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_on_viewport_composition_layer_destroyed<class_OpenXRExtensionWrapper_private_method__on_viewport_composition_layer_destroyed>`\ (\ layer\: ``const void*``\ ) |virtual|                                                                                                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_prepare_view_configuration<class_OpenXRExtensionWrapper_private_method__prepare_view_configuration>`\ (\ view_count\: :ref:`int<class_int>`\ ) |virtual|                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_print_view_configuration_info<class_OpenXRExtensionWrapper_private_method__print_view_configuration_info>`\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_android_surface_swapchain_create_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_android_surface_swapchain_create_info_and_get_next_pointer>`\ (\ property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual|    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_frame_end_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_frame_end_info_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_frame_wait_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_frame_wait_info_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_hand_joint_locations_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_hand_joint_locations_and_get_next_pointer>`\ (\ hand_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual|                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_instance_create_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_instance_create_info_and_get_next_pointer>`\ (\ xr_version\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual|                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_projection_layer_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_projection_layer_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_projection_views_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_projection_views_and_get_next_pointer>`\ (\ view_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual|                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_reference_space_create_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_reference_space_create_info_and_get_next_pointer>`\ (\ reference_space_type\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual|                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_session_create_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_session_create_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_swapchain_create_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_swapchain_create_info_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_system_properties_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_system_properties_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_view_configuration_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_view_configuration_and_get_next_pointer>`\ (\ view\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual|                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_view_locate_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_view_locate_info_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_viewport_composition_layer_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_viewport_composition_layer_and_get_next_pointer>`\ (\ layer\: ``const void*``, property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>`              | :ref:`get_openxr_api<class_OpenXRExtensionWrapper_method_get_openxr_api>`\ (\ )                                                                                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`register_extension_wrapper<class_OpenXRExtensionWrapper_method_register_extension_wrapper>`\ (\ )                                                                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer>`

回傳指向 ``XrCompositionLayerBaseHeader`` 結構的指針以提供給定的合成層。

僅當擴充先前使用 :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>` 注冊自身後才會呼叫該函式。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。此外，它回傳的資料將在呼叫該方法後不久使用，因此它需要保持有效，直到下次 :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` 執行為止。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer_count**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer_count>`

通過 :ref:`_get_composition_layer()<class_OpenXRExtensionWrapper_private_method__get_composition_layer>` 回傳該擴充包裝器提供的合成層數量。

僅當擴充先前使用 :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>` 注冊自身時，才會呼叫該方法。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。此外，它回傳的資料將在呼叫該方法後不久使用，因此它需要保持有效，直到下次 :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` 執行為止。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer_order:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer_order**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer_order>`

回傳一個整數，該整數將用於對通過 :ref:`_get_composition_layer()<class_OpenXRExtensionWrapper_private_method__get_composition_layer>` 提供的給定合成層進行排序。數字越小，層就越容易移到清單的最前面，數字越大，層就越容易移到清單的最後面。預設投影層的順序為 ``0``\ ，因此該方法提供的層可能應該位於（但不完全位於）\ ``0`` 的上方或下方。

僅當擴充程式先前使用 :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>` 注冊自身時，才會呼叫該方法。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。此外，它回傳的資料將在呼叫該方法後不久使用，因此它需要保持有效，直到下次 :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` 執行為止。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_requested_extensions:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_requested_extensions**\ (\ xr_version\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_requested_extensions>`

回傳與該擴充相關的 OpenXR 擴充的 :ref:`Dictionary<class_Dictionary>`\ 。\ ``xr_version`` 指定我們正在實例化的 OpenXR 版本。如果編輯器請求該清單以標記支援的功能，則該值將為零。\ :ref:`Dictionary<class_Dictionary>` 應包含擴充的名稱，並將其映射到一個強制轉換為整數的 ``bool *`` 型別指針：

- 如果 ``bool *`` 是 ``nullptr``\ ，則該擴充是強制性的。

- 如果 ``bool *`` 指向布林值，則在啟用擴充的情況下，該布林值將更新為 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_suggested_tracker_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_suggested_tracker_names**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_suggested_tracker_names>`

回傳擴充包裝器中使用的位置追蹤器名稱的 :ref:`PackedStringArray<class_PackedStringArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_viewport_composition_layer_extension_properties**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>`

取得表示屬性的 :ref:`Dictionary<class_Dictionary>` 陣列，就像 :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>` 一樣，將被新增到 :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` 節點。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_property_defaults:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_viewport_composition_layer_extension_property_defaults**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_property_defaults>`

取得一個 :ref:`Dictionary<class_Dictionary>`\ ，其中包含 :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>` 回傳的屬性的預設值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_before_instance_created:

.. rst-class:: classref-method

|void| **_on_before_instance_created**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_before_instance_created>`

在 OpenXR 實例建立之前呼叫。

\ **注意：**\ 該虛方法將在主執行緒上呼叫，但它會在 OpenXR 參與渲染\ *之前*\ 呼叫，因此可以安全地寫入渲染執行緒將使用的資料。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_event_polled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_on_event_polled**\ (\ event\: ``const void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_event_polled>`

當有 OpenXR 事件需要處理時呼叫。實作時，如果事件已被處理，則回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_instance_created:

.. rst-class:: classref-method

|void| **_on_instance_created**\ (\ instance\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_instance_created>`

在 OpenXR 實例建立後立即呼叫。

\ **注意：**\ 該虛方法將在主執行緒上呼叫，但會在 OpenXR 參與渲染\ *之前*\ 呼叫，因此可以安全地寫入渲染執行緒將使用的資料。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_instance_destroyed:

.. rst-class:: classref-method

|void| **_on_instance_destroyed**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_instance_destroyed>`

在 OpenXR 實例銷毀之前呼叫。

\ **注意：**\ 該虛方法將在主執行緒上呼叫，但會在 OpenXR 完成渲染\ *之後*\ 呼叫，因此可以安全地寫入渲染執行緒使用的資料。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_main_swapchains_created:

.. rst-class:: classref-method

|void| **_on_main_swapchains_created**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_main_swapchains_created>`

在主交換鏈（重新）建立後立即呼叫。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_post_draw_viewport:

.. rst-class:: classref-method

|void| **_on_post_draw_viewport**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_post_draw_viewport>`

在給定視埠渲染完成後立即呼叫。

\ **注意：**\ 此時繪製命令可能只是在佇列中，尚未執行。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_pre_draw_viewport:

.. rst-class:: classref-method

|void| **_on_pre_draw_viewport**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_pre_draw_viewport>`

在給定視埠渲染之前呼叫。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_pre_render:

.. rst-class:: classref-method

|void| **_on_pre_render**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_pre_render>`

在 XR 視埠開始其渲染步驟之前呼叫。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_process:

.. rst-class:: classref-method

|void| **_on_process**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_process>`

作為OpenXR 程序處理的一部分呼叫。這發生在主循環的一般和物理處理步驟之前。在此步驟中，控制器資料被查詢並可供遊戲邏輯使用。 “，“，““，“錯誤的”，””，”，””

modules/openxr/doc_classes/OpenXRExtensionWrapperExtension.xml"

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_register_metadata:

.. rst-class:: classref-method

|void| **_on_register_metadata**\ (\ interaction_profile_metadata\: :ref:`OpenXRInteractionProfileMetadata<class_OpenXRInteractionProfileMetadata>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_register_metadata>`

允許擴充功能註冊額外的控制器元資料。即使未建置 OpenXR API，也會呼叫此函式，因為元資料需要可供編輯器使用。

擴充還應該提供元資料，無論主機系統是否支援它們。控制器資料用於為有權存取相關硬體的使用者設定操作圖。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_session_created:

.. rst-class:: classref-method

|void| **_on_session_created**\ (\ session\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_session_created>`

在 OpenXR 會話建立後立即呼叫。

\ **注意：**\ 該虛方法將在主執行緒上呼叫，但會在 OpenXR 參與渲染\ *之前*\ 呼叫，因此可以安全地寫入渲染執行緒將使用的資料。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_session_destroyed:

.. rst-class:: classref-method

|void| **_on_session_destroyed**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_session_destroyed>`

在 OpenXR 會話銷毀之前呼叫。

\ **注意：**\ 該虛方法將在主執行緒上呼叫，但會在 OpenXR 完成渲染相關操作\ *之後*\ 呼叫，因此可以安全地寫入渲染執行緒使用的資料。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_exiting:

.. rst-class:: classref-method

|void| **_on_state_exiting**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_exiting>`

當 OpenXR 會話狀態變更為退出時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_focused:

.. rst-class:: classref-method

|void| **_on_state_focused**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_focused>`

當 OpenXR 會話狀態變更為聚焦時呼叫。此狀態是遊戲運作時的活動狀態。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_idle:

.. rst-class:: classref-method

|void| **_on_state_idle**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_idle>`

當 OpenXR 會話狀態變更為空閒時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_loss_pending:

.. rst-class:: classref-method

|void| **_on_state_loss_pending**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_loss_pending>`

當 OpenXR 會話狀態變更為遺失掛起時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_ready:

.. rst-class:: classref-method

|void| **_on_state_ready**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_ready>`

當 OpenXR 會話狀態變更為就緒時呼叫。這表示 OpenXR 已準備好設定會話。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_stopping:

.. rst-class:: classref-method

|void| **_on_state_stopping**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_stopping>`

通知我們的 OpenXR 會話正在停止。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_synchronized:

.. rst-class:: classref-method

|void| **_on_state_synchronized**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_synchronized>`

當OpenXR 會話狀態變更為同步時呼叫。當應用程式失去焦點時，OpenXR 也會回到此狀態。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_visible:

.. rst-class:: classref-method

|void| **_on_state_visible**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_visible>`

當OpenXR 會話狀態變更為可見時呼叫。這表示 OpenXR 現在已準備好接收訊框。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_sync_actions:

.. rst-class:: classref-method

|void| **_on_sync_actions**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_sync_actions>`

當 OpenXR 執行完動作同步時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_viewport_composition_layer_destroyed:

.. rst-class:: classref-method

|void| **_on_viewport_composition_layer_destroyed**\ (\ layer\: ``const void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_viewport_composition_layer_destroyed>`

當通過 :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` 建立的合成層被銷毀時呼叫。

\ ``layer`` 是指向 ``XrCompositionLayerBaseHeader`` 結構的指針。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__prepare_view_configuration:

.. rst-class:: classref-method

|void| **_prepare_view_configuration**\ (\ view_count\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__prepare_view_configuration>`

在 :ref:`_set_view_configuration_and_get_next_pointer()<class_OpenXRExtensionWrapper_private_method__set_view_configuration_and_get_next_pointer>` 之前呼叫，以允許擴充為給定數量的檢視保留資料。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__print_view_configuration_info:

.. rst-class:: classref-method

|void| **_print_view_configuration_info**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__print_view_configuration_info>`

如果適用，呼叫以用於允許擴充輸出有關其檢視設定的更多資訊。僅當詳細輸出啟用時才會呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_android_surface_swapchain_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_android_surface_swapchain_create_info_and_get_next_pointer**\ (\ property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_android_surface_swapchain_create_info_and_get_next_pointer>`

向由 :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` 建立的 Android 表面交換鏈新增額外的資料結構。

\ ``property_values`` 包含 :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>` 回傳的屬性值。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_frame_end_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_frame_end_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_frame_end_info_and_get_next_pointer>`

向 ``XrFrameEndInfo`` 新增額外的資料結構。

僅當擴充之前已通過 :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>` 注冊自身後才會呼叫。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。此外，它回傳的資料將在呼叫該方法後不久使用，因此該資料必須保持有效，直到下次 :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` 執行。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_frame_wait_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_frame_wait_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_frame_wait_info_and_get_next_pointer>`

向 ``XrFrameWaitInfo`` 新增額外的資料結構。

僅當擴充之前已通過 :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>` 方法注冊自身後才會呼叫。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_hand_joint_locations_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_hand_joint_locations_and_get_next_pointer**\ (\ hand_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_hand_joint_locations_and_get_next_pointer>`

當每個手部追蹤器被建立時新增額外的資料結構。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_instance_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_instance_create_info_and_get_next_pointer**\ (\ xr_version\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_instance_create_info_and_get_next_pointer>`

在 OpenXR 實例被建立時新增額外的資料結構。\ ``xr_version`` 指定我們要實例化的 OpenXR 版本。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_projection_layer_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_projection_layer_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_projection_layer_and_get_next_pointer>`

向 ``XrCompositionLayerProjection`` 新增額外的資料結構。

僅當該擴充此前已通過 :ref:`OpenXRAPIExtension.register_projection_layer_extension()<class_OpenXRAPIExtension_method_register_projection_layer_extension>` 完成注冊時，才會呼叫此方法。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_projection_views_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_projection_views_and_get_next_pointer**\ (\ view_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_projection_views_and_get_next_pointer>`

向給定 ``view_index`` 的投影檢視新增額外資料結構。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。此外，該方法回傳的資料將在呼叫該方法後不久使用，因此它需要保持有效，直到下次 :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` 執行。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_reference_space_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_reference_space_create_info_and_get_next_pointer**\ (\ reference_space_type\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_reference_space_create_info_and_get_next_pointer>`

向 ``XrReferenceSpaceCreateInfo`` 新增額外的資料結構。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_session_create_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_session_create_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_session_create_and_get_next_pointer>`

在 OpenXR 會話建立時新增額外的資料結構。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_swapchain_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_swapchain_create_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_swapchain_create_info_and_get_next_pointer>`

在 OpenXR 交換鏈建立時新增額外的資料結構。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_system_properties_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_system_properties_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_system_properties_and_get_next_pointer>`

在查詢 OpenXR 系統功能時新增額外的資料結構。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_view_configuration_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_view_configuration_and_get_next_pointer**\ (\ view\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_view_configuration_and_get_next_pointer>`

在查詢 OpenXR 檢視設定時新增額外的資料結構。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_view_locate_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_view_locate_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_view_locate_info_and_get_next_pointer>`

為 ``XrViewLocateInfo`` 新增額外的資料結構。

僅當擴充先前使用 :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>` 注冊自身時才會呼叫該函式。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。此外，該方法回傳的資料將在呼叫該方法後不久使用，因此它需要保持有效，直到下次 :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` 執行。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_viewport_composition_layer_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_viewport_composition_layer_and_get_next_pointer**\ (\ layer\: ``const void*``, property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_viewport_composition_layer_and_get_next_pointer>`

向由 :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` 建立的合成層新增其他資料結構。

\ ``property_values`` 包含 :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>` 回傳的屬性值。

\ ``layer`` 是指向 ``XrCompositionLayerBaseHeader`` 結構的指針。

\ **注意：**\ 該虛方法將在渲染執行緒上呼叫。此外，該方法回傳的資料將在呼叫該方法後不久使用，因此它需要保持有效，直到下次 :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` 執行。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_method_get_openxr_api:

.. rst-class:: classref-method

:ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>` **get_openxr_api**\ (\ ) :ref:`🔗<class_OpenXRExtensionWrapper_method_get_openxr_api>`

傳回所建立的 :ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>`\ ，可用來存取 OpenXR API。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_method_register_extension_wrapper:

.. rst-class:: classref-method

|void| **register_extension_wrapper**\ (\ ) :ref:`🔗<class_OpenXRExtensionWrapper_method_register_extension_wrapper>`

注冊擴充。這應該發生在核心模組初始化階段。

\ **注意：**\ OpenXR 初始化後不能再呼叫該函式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
