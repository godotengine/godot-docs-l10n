:github_url: hide

.. _class_OpenXRExtensionWrapper:

OpenXRExtensionWrapper
======================

**Hereda:** :ref:`Object<class_Object>`

**Heredado por:** :ref:`OpenXRAndroidThreadSettingsExtension<class_OpenXRAndroidThreadSettingsExtension>`, :ref:`OpenXRExtensionWrapperExtension<class_OpenXRExtensionWrapperExtension>`, :ref:`OpenXRFrameSynthesisExtension<class_OpenXRFrameSynthesisExtension>`, :ref:`OpenXRFutureExtension<class_OpenXRFutureExtension>`, :ref:`OpenXRRenderModelExtension<class_OpenXRRenderModelExtension>`, :ref:`OpenXRSpatialAnchorCapability<class_OpenXRSpatialAnchorCapability>`, :ref:`OpenXRSpatialEntityExtension<class_OpenXRSpatialEntityExtension>`, :ref:`OpenXRSpatialMarkerTrackingCapability<class_OpenXRSpatialMarkerTrackingCapability>`, :ref:`OpenXRSpatialPlaneTrackingCapability<class_OpenXRSpatialPlaneTrackingCapability>`

Permite implementar extensiones de OpenXR con GDExtension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**OpenXRExtensionWrapper** allows implementing OpenXR extensions with GDExtension. The extension should be registered with :ref:`register_extension_wrapper()<class_OpenXRExtensionWrapper_method_register_extension_wrapper>`.

When :ref:`OpenXRInterface<class_OpenXRInterface>` is initialized as the primary interface and any :ref:`Viewport<class_Viewport>` has :ref:`Viewport.use_xr<class_Viewport_property_use_xr>` set to ``true``, OpenXR will become involved in Godot's rendering process. If :ref:`ProjectSettings.rendering/driver/threads/thread_model<class_ProjectSettings_property_rendering/driver/threads/thread_model>` is set to "Separate", Godot's renderer will run on its own thread, and special care must be taken in all **OpenXRExtensionWrapper**\ s in order to prevent crashes or unexpected behavior. Some virtual methods will be called on the render thread, and any data they access should not be directly written to on the main thread. This is to prevent two potential issues:

1. Changes intended for the next frame, taking effect on the current frame. When using the "Separate" thread model, the main thread will immediately start working on the next frame while the render thread may still be rendering the current frame. If the main thread changes anything used by the render thread directly, the change could end up being used one frame earlier than intended.

2. Reading and writing to the same data at the same time from different threads can lead to the render thread using data in an invalid state.

In most cases, the solution is to use :ref:`RenderingServer.call_on_render_thread()<class_RenderingServer_method_call_on_render_thread>` to schedule :ref:`Callable<class_Callable>`\ s to write to any data used on the render thread. When using the "Separate" thread model, these :ref:`Callable<class_Callable>`\ s will run after the renderer finishes the current frame and before it starts rendering the next frame. When not using this mode, they'll run immediately, so it's recommended to always use :ref:`RenderingServer.call_on_render_thread()<class_RenderingServer_method_call_on_render_thread>` in these cases, which will allow your code to do the right thing regardless of the thread model.

Any virtual methods that run on the render thread will be noted below.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer>`

Returns a pointer to an ``XrCompositionLayerBaseHeader`` struct to provide the given composition layer.

This will only be called if the extension previously registered itself with :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>`.

\ **Note:** This virtual method will be called on the render thread. Additionally, the data it returns will be used shortly after this method is called, so it needs to remain valid until the next time :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` runs.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer_count**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer_count>`

Returns the number of composition layers this extension wrapper provides via :ref:`_get_composition_layer()<class_OpenXRExtensionWrapper_private_method__get_composition_layer>`.

This will only be called if the extension previously registered itself with :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>`.

\ **Note:** This virtual method will be called on the render thread. Additionally, the data it returns will be used shortly after this method is called, so it needs to remain valid until the next time :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` runs.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_composition_layer_order:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_composition_layer_order**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_composition_layer_order>`

Returns an integer that will be used to sort the given composition layer provided via :ref:`_get_composition_layer()<class_OpenXRExtensionWrapper_private_method__get_composition_layer>`. Lower numbers will move the layer to the front of the list, and higher numbers to the end. The default projection layer has an order of ``0``, so layers provided by this method should probably be above or below (but not exactly) ``0``.

This will only be called if the extension previously registered itself with :ref:`OpenXRAPIExtension.register_composition_layer_provider()<class_OpenXRAPIExtension_method_register_composition_layer_provider>`.

\ **Note:** This virtual method will be called on the render thread. Additionally, the data it returns will be used shortly after this method is called, so it needs to remain valid until the next time :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` runs.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_requested_extensions:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_requested_extensions**\ (\ xr_version\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_requested_extensions>`

Returns a :ref:`Dictionary<class_Dictionary>` of OpenXR extensions related to this extension. ``xr_version`` specifies the OpenXR version we're instantiating. This will be zero if the editor requests this list to flag supported features. The :ref:`Dictionary<class_Dictionary>` should contain the name of the extension, mapped to a ``bool *`` cast to an integer:

- If the ``bool *`` is a ``nullptr`` this extension is mandatory.

- If the ``bool *`` points to a boolean, the boolean will be updated to ``true`` if the extension is enabled.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_suggested_tracker_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_suggested_tracker_names**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_suggested_tracker_names>`

Returns a :ref:`PackedStringArray<class_PackedStringArray>` of positional tracker names that are used within the extension wrapper.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_viewport_composition_layer_extension_properties**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>`

Gets an array of :ref:`Dictionary<class_Dictionary>`\ s that represent properties, just like :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`, that will be added to :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` nodes.

\ **Note:** This virtual method will be called on the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_property_defaults:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_viewport_composition_layer_extension_property_defaults**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_property_defaults>`

Obtiene un :ref:`Dictionary<class_Dictionary>` que contiene los valores por defecto para las propiedades devueltas por :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_before_instance_created:

.. rst-class:: classref-method

|void| **_on_before_instance_created**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_before_instance_created>`

Called before the OpenXR instance is created.

\ **Note:** This virtual method will be called on the main thread, however, it will be called *before* OpenXR becomes involved in rendering, so it is safe to write to data that will be used by the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_event_polled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_on_event_polled**\ (\ event\: ``const void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_event_polled>`

Llamado cuando hay un evento de OpenXR para procesar. Al implementar, devuelve ``true`` si el evento fue manejado, devuelve ``false`` de lo contrario.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_instance_created:

.. rst-class:: classref-method

|void| **_on_instance_created**\ (\ instance\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_instance_created>`

Called right after the OpenXR instance is created.

\ **Note:** This virtual method will be called on the main thread, however, it will be called *before* OpenXR becomes involved in rendering, so it is safe to write to data that will be used by the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_instance_destroyed:

.. rst-class:: classref-method

|void| **_on_instance_destroyed**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_instance_destroyed>`

Called right before the OpenXR instance is destroyed.

\ **Note:** This virtual method will be called on the main thread, however, it will be called *after* OpenXR is done being involved in rendering, so it is safe to write to data that was used by the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_main_swapchains_created:

.. rst-class:: classref-method

|void| **_on_main_swapchains_created**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_main_swapchains_created>`

Called right after the main swapchains are (re)created.

\ **Note:** This virtual method will be called on the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_post_draw_viewport:

.. rst-class:: classref-method

|void| **_on_post_draw_viewport**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_post_draw_viewport>`

Called right after the given viewport is rendered.

\ **Note:** The draw commands might only be queued at this point, not executed.

\ **Note:** This virtual method will be called on the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_pre_draw_viewport:

.. rst-class:: classref-method

|void| **_on_pre_draw_viewport**\ (\ viewport\: :ref:`RID<class_RID>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_pre_draw_viewport>`

Called right before the given viewport is rendered.

\ **Note:** This virtual method will be called on the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_pre_render:

.. rst-class:: classref-method

|void| **_on_pre_render**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_pre_render>`

Called right before the XR viewports begin their rendering step.

\ **Note:** This virtual method will be called on the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_process:

.. rst-class:: classref-method

|void| **_on_process**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_process>`

Llamado como parte del manejo del proceso de OpenXR. Esto ocurre justo antes de los pasos de procesamiento general y físico del bucle principal. Durante este paso, los datos del controlador se consultan y se ponen a disposición de la lógica del juego.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_register_metadata:

.. rst-class:: classref-method

|void| **_on_register_metadata**\ (\ interaction_profile_metadata\: :ref:`OpenXRInteractionProfileMetadata<class_OpenXRInteractionProfileMetadata>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_register_metadata>`

Permite a las extensiones registrar metadatos de controlador adicionales. Esta función se llama incluso cuando la API de OpenXR no está construida, ya que los metadatos deben estar disponibles para el editor.

Las extensiones también deben proporcionar metadatos independientemente de si son compatibles con el sistema host. Los datos del controlador se utilizan para configurar mapas de acciones para los usuarios que pueden tener acceso al hardware relevante.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_session_created:

.. rst-class:: classref-method

|void| **_on_session_created**\ (\ session\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_session_created>`

Called right after the OpenXR session is created.

\ **Note:** This virtual method will be called on the main thread, however, it will be called *before* OpenXR becomes involved in rendering, so it is safe to write to data that will be used by the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_session_destroyed:

.. rst-class:: classref-method

|void| **_on_session_destroyed**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_session_destroyed>`

Called right before the OpenXR session is destroyed.

\ **Note:** This virtual method will be called on the main thread, however, it will be called *after* OpenXR is done being involved in rendering, so it is safe to write to data that was used by the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_exiting:

.. rst-class:: classref-method

|void| **_on_state_exiting**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_exiting>`

Llamado cuando el estado de la sesión OpenXR cambia a saliendo (exiting).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_focused:

.. rst-class:: classref-method

|void| **_on_state_focused**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_focused>`

Llamado cuando el estado de la sesión OpenXR cambia a enfocado (focused). Este es el estado activo cuando se ejecuta el juego.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_idle:

.. rst-class:: classref-method

|void| **_on_state_idle**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_idle>`

Llamado cuando el estado de la sesión OpenXR cambia a inactivo (idle).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_loss_pending:

.. rst-class:: classref-method

|void| **_on_state_loss_pending**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_loss_pending>`

Llamado cuando el estado de la sesión OpenXR cambia a pérdida pendiente.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_ready:

.. rst-class:: classref-method

|void| **_on_state_ready**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_ready>`

Llamado cuando el estado de la sesión OpenXR cambia a listo (ready). Esto significa que OpenXR está listo para configurar la sesión.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_stopping:

.. rst-class:: classref-method

|void| **_on_state_stopping**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_stopping>`

Llamado cuando el estado de la sesión OpenXR cambia a deteniéndose (stopping).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_synchronized:

.. rst-class:: classref-method

|void| **_on_state_synchronized**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_synchronized>`

Llamado cuando el estado de la sesión OpenXR cambia a sincronizado (synchronized). OpenXR también vuelve a este estado cuando la aplicación pierde el foco.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_state_visible:

.. rst-class:: classref-method

|void| **_on_state_visible**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_state_visible>`

Llamado cuando el estado de la sesión OpenXR cambia a visible. Esto significa que OpenXR ahora está listo para recibir fotogramas.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_sync_actions:

.. rst-class:: classref-method

|void| **_on_sync_actions**\ (\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_sync_actions>`

Llamado cuando OpenXR ha realizado su sincronización de acciones.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__on_viewport_composition_layer_destroyed:

.. rst-class:: classref-method

|void| **_on_viewport_composition_layer_destroyed**\ (\ layer\: ``const void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__on_viewport_composition_layer_destroyed>`

Llamado cuando una capa de composición creada a través de :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` es destruida.

\ ``layer`` es un puntero a una estructura ``XrCompositionLayerBaseHeader``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__prepare_view_configuration:

.. rst-class:: classref-method

|void| **_prepare_view_configuration**\ (\ view_count\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__prepare_view_configuration>`

Called before :ref:`_set_view_configuration_and_get_next_pointer()<class_OpenXRExtensionWrapper_private_method__set_view_configuration_and_get_next_pointer>` to allow the extension to reserve data for the given number of views.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__print_view_configuration_info:

.. rst-class:: classref-method

|void| **_print_view_configuration_info**\ (\ view\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__print_view_configuration_info>`

Called to allow an extension to print additional information about its view configuration, if applicable. This will only be called if verbose output is enabled.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_android_surface_swapchain_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_android_surface_swapchain_create_info_and_get_next_pointer**\ (\ property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_android_surface_swapchain_create_info_and_get_next_pointer>`

Add additional data structures to Android surface swapchains created by :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>`.

\ ``property_values`` contains the values of the properties returned by :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>`.

\ **Note:** This virtual method will be called on the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_frame_end_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_frame_end_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_frame_end_info_and_get_next_pointer>`

Add additional data structures to ``XrFrameEndInfo``.

This will only be called if the extension previously registered itself with :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>`.

\ **Note:** This virtual method will be called on the render thread. Additionally, the data it returns will be used shortly after this method is called, so it needs to remain valid until the next time :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` runs.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_frame_wait_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_frame_wait_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_frame_wait_info_and_get_next_pointer>`

Add additional data structures to ``XrFrameWaitInfo``.

This will only be called if the extension previously registered itself with :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>`.

\ **Note:** This virtual method will be called on the render thread.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_hand_joint_locations_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_hand_joint_locations_and_get_next_pointer**\ (\ hand_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_hand_joint_locations_and_get_next_pointer>`

Add additional data structures when each hand tracker is created.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_instance_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_instance_create_info_and_get_next_pointer**\ (\ xr_version\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_instance_create_info_and_get_next_pointer>`

Add additional data structures when the OpenXR instance is created. ``xr_version`` specifies the OpenXR version we're instantiating.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_projection_layer_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_projection_layer_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_projection_layer_and_get_next_pointer>`

Adds additional data structures to ``XrCompositionLayerProjection``.

This will only be called if the extension previously registered itself with :ref:`OpenXRAPIExtension.register_projection_layer_extension()<class_OpenXRAPIExtension_method_register_projection_layer_extension>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_projection_views_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_projection_views_and_get_next_pointer**\ (\ view_index\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_projection_views_and_get_next_pointer>`

Add additional data structures to the projection view of the given ``view_index``.

\ **Note:** This virtual method will be called on the render thread. Additionally, the data it returns will be used shortly after this method is called, so it needs to remain valid until the next time :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` runs.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_reference_space_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_reference_space_create_info_and_get_next_pointer**\ (\ reference_space_type\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_reference_space_create_info_and_get_next_pointer>`

Add additional data structures to ``XrReferenceSpaceCreateInfo``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_session_create_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_session_create_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_session_create_and_get_next_pointer>`

Add additional data structures when the OpenXR session is created.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_swapchain_create_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_swapchain_create_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_swapchain_create_info_and_get_next_pointer>`

Add additional data structures when creating OpenXR swapchains.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_system_properties_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_system_properties_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_system_properties_and_get_next_pointer>`

Add additional data structures when querying OpenXR system abilities.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_view_configuration_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_view_configuration_and_get_next_pointer**\ (\ view\: :ref:`int<class_int>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_view_configuration_and_get_next_pointer>`

Add additional data structures when querying OpenXR view configuration.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_view_locate_info_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_view_locate_info_and_get_next_pointer**\ (\ next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_view_locate_info_and_get_next_pointer>`

Add additional data structures to ``XrViewLocateInfo``.

This will only be called if the extension previously registered itself with :ref:`OpenXRAPIExtension.register_frame_info_extension()<class_OpenXRAPIExtension_method_register_frame_info_extension>`.

\ **Note:** This virtual method will be called on the render thread. Additionally, the data it returns will be used shortly after this method is called, so it needs to remain valid until the next time :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` runs.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_private_method__set_viewport_composition_layer_and_get_next_pointer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_set_viewport_composition_layer_and_get_next_pointer**\ (\ layer\: ``const void*``, property_values\: :ref:`Dictionary<class_Dictionary>`, next_pointer\: ``void*``\ ) |virtual| :ref:`🔗<class_OpenXRExtensionWrapper_private_method__set_viewport_composition_layer_and_get_next_pointer>`

Add additional data structures to composition layers created by :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>`.

\ ``property_values`` contains the values of the properties returned by :ref:`_get_viewport_composition_layer_extension_properties()<class_OpenXRExtensionWrapper_private_method__get_viewport_composition_layer_extension_properties>`.

\ ``layer`` is a pointer to an ``XrCompositionLayerBaseHeader`` struct.

\ **Note:** This virtual method will be called on the render thread. Additionally, the data it returns will be used shortly after this method is called, so it needs to remain valid until the next time :ref:`_on_pre_render()<class_OpenXRExtensionWrapper_private_method__on_pre_render>` runs.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_method_get_openxr_api:

.. rst-class:: classref-method

:ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>` **get_openxr_api**\ (\ ) :ref:`🔗<class_OpenXRExtensionWrapper_method_get_openxr_api>`

Devuelve la :ref:`OpenXRAPIExtension<class_OpenXRAPIExtension>` creada, que se puede utilizar para acceder a la API de OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRExtensionWrapper_method_register_extension_wrapper:

.. rst-class:: classref-method

|void| **register_extension_wrapper**\ (\ ) :ref:`🔗<class_OpenXRExtensionWrapper_method_register_extension_wrapper>`

Registers the extension. This should happen at core module initialization level.

\ **Note:** This cannot be called once OpenXR has been initialized.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
