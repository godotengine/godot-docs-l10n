:github_url: hide

.. _class_OpenXRExtensionWrapper:

OpenXRExtensionWrapper
======================

**继承：** :ref:`Object<class_Object>`

**派生：** :ref:`OpenXRExtensionWrapperExtension<class_OpenXRExtensionWrapperExtension>`, :ref:`OpenXRFutureExtension<class_OpenXRFutureExtension>`, :ref:`OpenXRRenderModelExtension<class_OpenXRRenderModelExtension>`

允许使用 GDExtension 实现 OpenXR 扩展。

.. rst-class:: classref-introduction-group

描述
----

:ref:`OpenXRExtensionWrapperExtension<class_OpenXRExtensionWrapperExtension>` 允许使用 GDExtension 实现 OpenXR 扩展。扩展应该使用 :ref:`register_extension_wrapper()<class_OpenXRExtensionWrapper_method_register_extension_wrapper>` 注册。

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
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_requested_extensions<class_OpenXRExtensionWrapper_private_method__get_requested_extensions>`\ (\ ) |virtual|                                                                                                                                                                 |
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
   | |void|                                                           | :ref:`_on_register_metadata<class_OpenXRExtensionWrapper_private_method__on_register_metadata>`\ (\ ) |virtual|                                                                                                                                                                         |
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
   | :ref:`int<class_int>`                                            | :ref:`_set_android_surface_swapchain_create_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_android_surface_swapchain_create_info_and_get_next_pointer>`\ (\ property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual|    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_frame_end_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_frame_end_info_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_frame_wait_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_frame_wait_info_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_hand_joint_locations_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_hand_joint_locations_and_get_next_pointer>`\ (\ hand_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual|                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_set_instance_create_info_and_get_next_pointer<class_OpenXRExtensionWrapper_private_method__set_instance_create_info_and_get_next_pointer>`\ (\ next_pointer\: ``void*``\ ) |virtual|                                                                                             |
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

方法说明
--------

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer>`

返回指向 ``XrCompositionLayerBaseHeader`` 结构的指针以提供给定的合成层。

仅当扩展先前使用 :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>` 注册自身时才会调用该函数。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer_count**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer_count>`

通过 :ref:`_get_composition_layer()<class_OpenXRExtensionWrapper_private_method__get_composition_layer>` 返回该扩展包装器提供的合成层数量。

仅当扩展先前使用 :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>` 注册自身时，才会调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer_order:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer_order**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer_order>`

返回一个整数，该整数将用于对通过 :ref:`_get_composition_layer()<class_OpenXRExtensionWrapper_private_method__get_composition_layer>` 提供的给定合成层进行排序。数字越小，层就越容易移到列表的最前面，数字越大，层就越容易移到列表的最后面。默认投影层的顺序为 ``0``\ ，因此该方法提供的层可能应该位于（但不完全位于）\ ``0`` 的上方或下方。

仅当扩展程序先前使用 :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>` 注册自身时，才会调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_requested_extensions:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_requested_extensions**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_requested_extensions>`

返回与该扩展相关的 OpenXR 扩展的 :ref:`Dictionary<class_Dictionary>`\ 。该 :ref:`Dictionary<class_Dictionary>` 应包含扩展名，映射到 ``bool *`` 转换为整数：

- 如果 ``bool *`` 是 ``nullptr``\ ，则该扩展是强制性的。

- 如果 ``bool *`` 指向布尔值，则在启用扩展的情况下，该布尔值将更新为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_suggested_tracker_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_suggested_tracker_names**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_suggested_tracker_names>`

返回扩展包装器中使用的位置跟踪器名称的 :ref:`PackedStringArray<class_PackedStringArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_viewport_composition_layer_extension_properties**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>`

获取表示属性的 :ref:`Dictionary<class_Dictionary>` 数组，就像 :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>` 一样，将被添加到 :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_property_defaults:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_viewport_composition_layer_extension_property_defaults**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_property_defaults>`

获取一个 :ref:`Dictionary<class_Dictionary>`\ ，其中包含 :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>` 返回的属性的默认值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_before_instance_created:

.. rst-class:: classref-method

|void| **_on_before_instance_created**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_before_instance_created>`

在创建 OpenXR 实例之前调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_event_polled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_on_event_polled**\ (\ event\: ``const void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_event_polled>`

当有 OpenXR 事件需要处理时调用。实现时，如果事件已被处理，则返回 ``true``\ ，否则返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_instance_created:

.. rst-class:: classref-method

|void| **_on_instance_created**\ (\ instance\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_instance_created>`

在创建 OpenXR 实例后立即调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_instance_destroyed:

.. rst-class:: classref-method

|void| **_on_instance_destroyed**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_instance_destroyed>`

在 OpenXR 实例被销毁之前调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_main_swapchains_created:

.. rst-class:: classref-method

|void| **_on_main_swapchains_created**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_main_swapchains_created>`

在主交换链（重新）创建后立即调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_post_draw_viewport:

.. rst-class:: classref-method

|void| **_on_post_draw_viewport**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_post_draw_viewport>`

给定视口渲染后立即调用。

\ **注意：**\ 此时绘制命令可能还在队列中，尚未执行。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_pre_draw_viewport:

.. rst-class:: classref-method

|void| **_on_pre_draw_viewport**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_pre_draw_viewport>`

给定视口渲染前立即调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_pre_render:

.. rst-class:: classref-method

|void| **_on_pre_render**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_pre_render>`

在 XR 视口开始其渲染步进之前调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_process:

.. rst-class:: classref-method

|void| **_on_process**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_process>`

作为 OpenXR 进程处理的一部分调用。这发生在主循环的一般和物理处理步进之前。在该步进中，控制器数据被查询并可供游戏逻辑使用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_register_metadata:

.. rst-class:: classref-method

|void| **_on_register_metadata**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_register_metadata>`

允许扩展注册额外的控制器元数据。即使 OpenXR API 未被构造，也会调用该函数，因为元数据需要可供编辑器使用。

扩展还应该提供元数据，无论主机系统是否支持它们。控制器数据用于为可以访问相关硬件的用户设置动作映射。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_session_created:

.. rst-class:: classref-method

|void| **_on_session_created**\ (\ session\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_session_created>`

在创建 OpenXR 会话后立即调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_session_destroyed:

.. rst-class:: classref-method

|void| **_on_session_destroyed**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_session_destroyed>`

在 OpenXR 会话被销毁之前调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_exiting:

.. rst-class:: classref-method

|void| **_on_state_exiting**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_exiting>`

当 OpenXR 会话状态被更改为退出时调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_focused:

.. rst-class:: classref-method

|void| **_on_state_focused**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_focused>`

当 OpenXR 会话状态被更改为聚焦时调用。该状态是游戏运行时的活动状态。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_idle:

.. rst-class:: classref-method

|void| **_on_state_idle**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_idle>`

当 OpenXR 会话状态被更改为空闲时调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_loss_pending:

.. rst-class:: classref-method

|void| **_on_state_loss_pending**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_loss_pending>`

当 OpenXR 会话状态被更改为丢失挂起时调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_ready:

.. rst-class:: classref-method

|void| **_on_state_ready**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_ready>`

当 OpenXR 会话状态被更改为就绪时调用。这意味着 OpenXR 已准备好建立会话。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_stopping:

.. rst-class:: classref-method

|void| **_on_state_stopping**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_stopping>`

当 OpenXR 会话状态被更改为停止时调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_synchronized:

.. rst-class:: classref-method

|void| **_on_state_synchronized**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_synchronized>`

当 OpenXR 会话状态被更改为同步时调用。当应用程序失去焦点时，OpenXR 也会返回到该状态。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_visible:

.. rst-class:: classref-method

|void| **_on_state_visible**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_visible>`

当 OpenXR 会话状态被更改为可见时调用。这意味着 OpenXR 现在已准备好接收帧。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_sync_actions:

.. rst-class:: classref-method

|void| **_on_sync_actions**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_sync_actions>`

当 OpenXR 执行完动作同步时调用。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_viewport_composition_layer_destroyed:

.. rst-class:: classref-method

|void| **_on_viewport_composition_layer_destroyed**\ (\ layer\: ``const void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_viewport_composition_layer_destroyed>`

当通过 :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` 创建的合成层被销毁时调用。

\ ``layer`` 是指向 ``XrCompositionLayerBaseHeader`` 结构的指针。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_android_surface_swapchain_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_android_surface_swapchain_create_info_and_get_next_pointer**\ (\ property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_android_surface_swapchain_create_info_and_get_next_pointer>`

向由 :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` 创建的合成层添加其他数据结构。

\ ``property_values`` 包含 :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>` 返回的属性值。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_frame_end_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_frame_end_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_frame_end_info_and_get_next_pointer>`

在 ``XrFrameEndInfo`` 中添加额外的数据结构。

仅当扩展先前使用 :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>` 注册自身时才会调用该函数。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_frame_wait_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_frame_wait_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_frame_wait_info_and_get_next_pointer>`

在 ``XrFrameWaitInfo`` 中添加额外的数据结构。

仅当扩展先前使用 :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>` 注册自身时才会调用该函数。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_hand_joint_locations_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_hand_joint_locations_and_get_next_pointer**\ (\ hand_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_hand_joint_locations_and_get_next_pointer>`

当每个手部跟踪器被创建时添加额外的数据结构。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_instance_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_instance_create_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_instance_create_info_and_get_next_pointer>`

创建 OpenXR 实例时添加额外的数据结构。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_projection_views_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_projection_views_and_get_next_pointer**\ (\ view_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_projection_views_and_get_next_pointer>`

为 ``view_index`` 视图的投影视图添加的额外数据结构。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_reference_space_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_reference_space_create_info_and_get_next_pointer**\ (\ reference_space_type\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_reference_space_create_info_and_get_next_pointer>`

在 ``XrReferenceSpaceCreateInfo`` 中添加额外的数据结构。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_session_create_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_session_create_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_session_create_and_get_next_pointer>`

创建 OpenXR 会话时添加额外的数据结构。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_swapchain_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_swapchain_create_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_swapchain_create_info_and_get_next_pointer>`

创建 OpenXR 交换链时添加额外的数据结构。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_system_properties_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_system_properties_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_system_properties_and_get_next_pointer>`

查询 OpenXR 系统能力时添加额外的数据结构。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_view_locate_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_view_locate_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_view_locate_info_and_get_next_pointer>`

为 ``XrViewLocateInfo`` 添加额外的数据结构。

仅当扩展先前使用 :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>` 注册自身时才会调用该函数。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_viewport_composition_layer_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_viewport_composition_layer_and_get_next_pointer**\ (\ layer\: ``const void*``, property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_viewport_composition_layer_and_get_next_pointer>`

向由 :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` 创建的合成层添加其他数据结构。

\ ``property_values`` 包含 :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>` 返回的属性值。

\ ``layer`` 是指向 ``XrCompositionLayerBaseHeader`` 结构的指针。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_method_get_openxr_api:

.. rst-class:: classref-method

:ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>` **get_openxr_api**\ (\ ) :ref:`🔗<class_OpenXRExtensionWrapper_method_get_openxr_api>`

返回创建的 :ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>`\ ，可用于访问 OpenXR API。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_method_register_extension_wrapper:

.. rst-class:: classref-method

|void| **register_extension_wrapper**\ (\ ) :ref:`🔗<class_OpenXRExtensionWrapper_method_register_extension_wrapper>`

注册扩展程序。这应该发生在核心模块初始化级别。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
