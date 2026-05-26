:github_url: hide

.. _class_EditorExportPlatformAndroid:

EditorExportPlatformAndroid
===========================

**Hereda:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Exporter for Android.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Exportar a Android <../tutorials/export/exporting_for_android>`

- :doc:`Compilaciones de Gradle para Android <../tutorials/export/android_gradle_build>`

- :doc:`Índice de documentación de plugins de Android <../tutorials/platform/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`architectures/arm64-v8a<class_EditorExportPlatformAndroid_property_architectures/arm64-v8a>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`architectures/armeabi-v7a<class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`architectures/x86<class_EditorExportPlatformAndroid_property_architectures/x86>`                                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`architectures/x86_64<class_EditorExportPlatformAndroid_property_architectures/x86_64>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`command_line/extra_args<class_EditorExportPlatformAndroid_property_command_line/extra_args>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`custom_template/debug<class_EditorExportPlatformAndroid_property_custom_template/debug>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`custom_template/release<class_EditorExportPlatformAndroid_property_custom_template/release>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`gesture/swipe_to_dismiss<class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss>`                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`gradle_build/android_source_template<class_EditorExportPlatformAndroid_property_gradle_build/android_source_template>`                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`gradle_build/compress_native_libraries<class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries>`                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`gradle_build/custom_theme_attributes<class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes>`                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`gradle_build/export_format<class_EditorExportPlatformAndroid_property_gradle_build/export_format>`                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`gradle_build/gradle_build_directory<class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory>`                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`gradle_build/min_sdk<class_EditorExportPlatformAndroid_property_gradle_build/min_sdk>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`gradle_build/target_sdk<class_EditorExportPlatformAndroid_property_gradle_build/target_sdk>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`graphics/opengl_debug<class_EditorExportPlatformAndroid_property_graphics/opengl_debug>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>`                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`keystore/debug_password<class_EditorExportPlatformAndroid_property_keystore/debug_password>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`keystore/debug_user<class_EditorExportPlatformAndroid_property_keystore/debug_user>`                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`keystore/release<class_EditorExportPlatformAndroid_property_keystore/release>`                                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`keystore/release_password<class_EditorExportPlatformAndroid_property_keystore/release_password>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`keystore/release_user<class_EditorExportPlatformAndroid_property_keystore/release_user>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`launcher_icons/adaptive_background_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`launcher_icons/adaptive_foreground_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432>`         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`launcher_icons/adaptive_monochrome_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432>`         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`launcher_icons/main_192x192<class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`package/app_category<class_EditorExportPlatformAndroid_property_package/app_category>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`package/exclude_from_recents<class_EditorExportPlatformAndroid_property_package/exclude_from_recents>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`package/name<class_EditorExportPlatformAndroid_property_package/name>`                                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`package/retain_data_on_uninstall<class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`package/show_as_launcher_app<class_EditorExportPlatformAndroid_property_package/show_as_launcher_app>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`package/show_in_android_tv<class_EditorExportPlatformAndroid_property_package/show_in_android_tv>`                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`package/show_in_app_library<class_EditorExportPlatformAndroid_property_package/show_in_app_library>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`package/signed<class_EditorExportPlatformAndroid_property_package/signed>`                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`package/unique_name<class_EditorExportPlatformAndroid_property_package/unique_name>`                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_checkin_properties<class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties>`                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_coarse_location<class_EditorExportPlatformAndroid_property_permissions/access_coarse_location>`                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_fine_location<class_EditorExportPlatformAndroid_property_permissions/access_fine_location>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_location_extra_commands<class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands>`         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_media_location<class_EditorExportPlatformAndroid_property_permissions/access_media_location>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_mock_location<class_EditorExportPlatformAndroid_property_permissions/access_mock_location>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_network_state<class_EditorExportPlatformAndroid_property_permissions/access_network_state>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_surface_flinger<class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger>`                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/access_wifi_state<class_EditorExportPlatformAndroid_property_permissions/access_wifi_state>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/account_manager<class_EditorExportPlatformAndroid_property_permissions/account_manager>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/add_voicemail<class_EditorExportPlatformAndroid_property_permissions/add_voicemail>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/authenticate_accounts<class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/battery_stats<class_EditorExportPlatformAndroid_property_permissions/battery_stats>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_accessibility_service<class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service>`                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_appwidget<class_EditorExportPlatformAndroid_property_permissions/bind_appwidget>`                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_device_admin<class_EditorExportPlatformAndroid_property_permissions/bind_device_admin>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_input_method<class_EditorExportPlatformAndroid_property_permissions/bind_input_method>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_nfc_service<class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_notification_listener_service<class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service>` |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_print_service<class_EditorExportPlatformAndroid_property_permissions/bind_print_service>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_remoteviews<class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_text_service<class_EditorExportPlatformAndroid_property_permissions/bind_text_service>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_vpn_service<class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bind_wallpaper<class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper>`                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bluetooth<class_EditorExportPlatformAndroid_property_permissions/bluetooth>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bluetooth_admin<class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/bluetooth_privileged<class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/brick<class_EditorExportPlatformAndroid_property_permissions/brick>`                                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/broadcast_package_removed<class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed>`                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/broadcast_sms<class_EditorExportPlatformAndroid_property_permissions/broadcast_sms>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/broadcast_sticky<class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/broadcast_wap_push<class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/call_phone<class_EditorExportPlatformAndroid_property_permissions/call_phone>`                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/call_privileged<class_EditorExportPlatformAndroid_property_permissions/call_privileged>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/camera<class_EditorExportPlatformAndroid_property_permissions/camera>`                                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/capture_audio_output<class_EditorExportPlatformAndroid_property_permissions/capture_audio_output>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/capture_secure_video_output<class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output>`               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/capture_video_output<class_EditorExportPlatformAndroid_property_permissions/capture_video_output>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/change_component_enabled_state<class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state>`         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/change_configuration<class_EditorExportPlatformAndroid_property_permissions/change_configuration>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/change_network_state<class_EditorExportPlatformAndroid_property_permissions/change_network_state>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/change_wifi_multicast_state<class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state>`               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/change_wifi_state<class_EditorExportPlatformAndroid_property_permissions/change_wifi_state>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/clear_app_cache<class_EditorExportPlatformAndroid_property_permissions/clear_app_cache>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/clear_app_user_data<class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data>`                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/control_location_updates<class_EditorExportPlatformAndroid_property_permissions/control_location_updates>`                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`permissions/custom_permissions<class_EditorExportPlatformAndroid_property_permissions/custom_permissions>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/delete_cache_files<class_EditorExportPlatformAndroid_property_permissions/delete_cache_files>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/delete_packages<class_EditorExportPlatformAndroid_property_permissions/delete_packages>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/device_power<class_EditorExportPlatformAndroid_property_permissions/device_power>`                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/diagnostic<class_EditorExportPlatformAndroid_property_permissions/diagnostic>`                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/disable_keyguard<class_EditorExportPlatformAndroid_property_permissions/disable_keyguard>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/dump<class_EditorExportPlatformAndroid_property_permissions/dump>`                                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/expand_status_bar<class_EditorExportPlatformAndroid_property_permissions/expand_status_bar>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/factory_test<class_EditorExportPlatformAndroid_property_permissions/factory_test>`                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/flashlight<class_EditorExportPlatformAndroid_property_permissions/flashlight>`                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/force_back<class_EditorExportPlatformAndroid_property_permissions/force_back>`                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/get_accounts<class_EditorExportPlatformAndroid_property_permissions/get_accounts>`                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/get_package_size<class_EditorExportPlatformAndroid_property_permissions/get_package_size>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/get_tasks<class_EditorExportPlatformAndroid_property_permissions/get_tasks>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/get_top_activity_info<class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/global_search<class_EditorExportPlatformAndroid_property_permissions/global_search>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/hardware_test<class_EditorExportPlatformAndroid_property_permissions/hardware_test>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/inject_events<class_EditorExportPlatformAndroid_property_permissions/inject_events>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/install_location_provider<class_EditorExportPlatformAndroid_property_permissions/install_location_provider>`                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/install_packages<class_EditorExportPlatformAndroid_property_permissions/install_packages>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/install_shortcut<class_EditorExportPlatformAndroid_property_permissions/install_shortcut>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/internal_system_window<class_EditorExportPlatformAndroid_property_permissions/internal_system_window>`                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/internet<class_EditorExportPlatformAndroid_property_permissions/internet>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/kill_background_processes<class_EditorExportPlatformAndroid_property_permissions/kill_background_processes>`                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/location_hardware<class_EditorExportPlatformAndroid_property_permissions/location_hardware>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/manage_accounts<class_EditorExportPlatformAndroid_property_permissions/manage_accounts>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/manage_app_tokens<class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/manage_documents<class_EditorExportPlatformAndroid_property_permissions/manage_documents>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/manage_external_storage<class_EditorExportPlatformAndroid_property_permissions/manage_external_storage>`                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/manage_media<class_EditorExportPlatformAndroid_property_permissions/manage_media>`                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/master_clear<class_EditorExportPlatformAndroid_property_permissions/master_clear>`                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/media_content_control<class_EditorExportPlatformAndroid_property_permissions/media_content_control>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/modify_audio_settings<class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/modify_phone_state<class_EditorExportPlatformAndroid_property_permissions/modify_phone_state>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/mount_format_filesystems<class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems>`                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/mount_unmount_filesystems<class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems>`                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/nfc<class_EditorExportPlatformAndroid_property_permissions/nfc>`                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/persistent_activity<class_EditorExportPlatformAndroid_property_permissions/persistent_activity>`                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/post_notifications<class_EditorExportPlatformAndroid_property_permissions/post_notifications>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/process_outgoing_calls<class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls>`                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_calendar<class_EditorExportPlatformAndroid_property_permissions/read_calendar>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_call_log<class_EditorExportPlatformAndroid_property_permissions/read_call_log>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_contacts<class_EditorExportPlatformAndroid_property_permissions/read_contacts>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_external_storage<class_EditorExportPlatformAndroid_property_permissions/read_external_storage>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_frame_buffer<class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_history_bookmarks<class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks>`                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_input_state<class_EditorExportPlatformAndroid_property_permissions/read_input_state>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_logs<class_EditorExportPlatformAndroid_property_permissions/read_logs>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_media_audio<class_EditorExportPlatformAndroid_property_permissions/read_media_audio>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_media_images<class_EditorExportPlatformAndroid_property_permissions/read_media_images>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_media_video<class_EditorExportPlatformAndroid_property_permissions/read_media_video>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_media_visual_user_selected<class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected>`       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_phone_state<class_EditorExportPlatformAndroid_property_permissions/read_phone_state>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_profile<class_EditorExportPlatformAndroid_property_permissions/read_profile>`                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_sms<class_EditorExportPlatformAndroid_property_permissions/read_sms>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_social_stream<class_EditorExportPlatformAndroid_property_permissions/read_social_stream>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_sync_settings<class_EditorExportPlatformAndroid_property_permissions/read_sync_settings>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_sync_stats<class_EditorExportPlatformAndroid_property_permissions/read_sync_stats>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/read_user_dictionary<class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/reboot<class_EditorExportPlatformAndroid_property_permissions/reboot>`                                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/receive_boot_completed<class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed>`                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/receive_mms<class_EditorExportPlatformAndroid_property_permissions/receive_mms>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/receive_sms<class_EditorExportPlatformAndroid_property_permissions/receive_sms>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/receive_wap_push<class_EditorExportPlatformAndroid_property_permissions/receive_wap_push>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/record_audio<class_EditorExportPlatformAndroid_property_permissions/record_audio>`                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/reorder_tasks<class_EditorExportPlatformAndroid_property_permissions/reorder_tasks>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/restart_packages<class_EditorExportPlatformAndroid_property_permissions/restart_packages>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/send_respond_via_message<class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message>`                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/send_sms<class_EditorExportPlatformAndroid_property_permissions/send_sms>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_activity_watcher<class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher>`                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_alarm<class_EditorExportPlatformAndroid_property_permissions/set_alarm>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_always_finish<class_EditorExportPlatformAndroid_property_permissions/set_always_finish>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_animation_scale<class_EditorExportPlatformAndroid_property_permissions/set_animation_scale>`                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_debug_app<class_EditorExportPlatformAndroid_property_permissions/set_debug_app>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_orientation<class_EditorExportPlatformAndroid_property_permissions/set_orientation>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_pointer_speed<class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_preferred_applications<class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications>`                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_process_limit<class_EditorExportPlatformAndroid_property_permissions/set_process_limit>`                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_time<class_EditorExportPlatformAndroid_property_permissions/set_time>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_time_zone<class_EditorExportPlatformAndroid_property_permissions/set_time_zone>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_wallpaper<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/set_wallpaper_hints<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints>`                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/signal_persistent_processes<class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes>`               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/status_bar<class_EditorExportPlatformAndroid_property_permissions/status_bar>`                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/subscribed_feeds_read<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/subscribed_feeds_write<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write>`                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/system_alert_window<class_EditorExportPlatformAndroid_property_permissions/system_alert_window>`                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/transmit_ir<class_EditorExportPlatformAndroid_property_permissions/transmit_ir>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/uninstall_shortcut<class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/update_device_stats<class_EditorExportPlatformAndroid_property_permissions/update_device_stats>`                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/use_credentials<class_EditorExportPlatformAndroid_property_permissions/use_credentials>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/use_sip<class_EditorExportPlatformAndroid_property_permissions/use_sip>`                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/vibrate<class_EditorExportPlatformAndroid_property_permissions/vibrate>`                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/wake_lock<class_EditorExportPlatformAndroid_property_permissions/wake_lock>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_apn_settings<class_EditorExportPlatformAndroid_property_permissions/write_apn_settings>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_calendar<class_EditorExportPlatformAndroid_property_permissions/write_calendar>`                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_call_log<class_EditorExportPlatformAndroid_property_permissions/write_call_log>`                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_contacts<class_EditorExportPlatformAndroid_property_permissions/write_contacts>`                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_external_storage<class_EditorExportPlatformAndroid_property_permissions/write_external_storage>`                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_gservices<class_EditorExportPlatformAndroid_property_permissions/write_gservices>`                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_history_bookmarks<class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks>`                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_profile<class_EditorExportPlatformAndroid_property_permissions/write_profile>`                                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_secure_settings<class_EditorExportPlatformAndroid_property_permissions/write_secure_settings>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_settings<class_EditorExportPlatformAndroid_property_permissions/write_settings>`                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_sms<class_EditorExportPlatformAndroid_property_permissions/write_sms>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_social_stream<class_EditorExportPlatformAndroid_property_permissions/write_social_stream>`                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_sync_settings<class_EditorExportPlatformAndroid_property_permissions/write_sync_settings>`                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`permissions/write_user_dictionary<class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary>`                           |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                         | :ref:`screen/background_color<class_EditorExportPlatformAndroid_property_screen/background_color>`                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`screen/edge_to_edge<class_EditorExportPlatformAndroid_property_screen/edge_to_edge>`                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`screen/immersive_mode<class_EditorExportPlatformAndroid_property_screen/immersive_mode>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`screen/support_large<class_EditorExportPlatformAndroid_property_screen/support_large>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`screen/support_normal<class_EditorExportPlatformAndroid_property_screen/support_normal>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`screen/support_small<class_EditorExportPlatformAndroid_property_screen/support_small>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`screen/support_xlarge<class_EditorExportPlatformAndroid_property_screen/support_xlarge>`                                                   |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`shader_baker/enabled<class_EditorExportPlatformAndroid_property_shader_baker/enabled>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                         | :ref:`splash_screen/background_color<class_EditorExportPlatformAndroid_property_splash_screen/background_color>`                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`splash_screen/branding_image<class_EditorExportPlatformAndroid_property_splash_screen/branding_image>`                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`splash_screen/disable_godot_boot_splash<class_EditorExportPlatformAndroid_property_splash_screen/disable_godot_boot_splash>`               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`splash_screen/icon<class_EditorExportPlatformAndroid_property_splash_screen/icon>`                                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`user_data_backup/allow<class_EditorExportPlatformAndroid_property_user_data_backup/allow>`                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`version/code<class_EditorExportPlatformAndroid_property_version/code>`                                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`version/name<class_EditorExportPlatformAndroid_property_version/name>`                                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`xr_features/xr_mode<class_EditorExportPlatformAndroid_property_xr_features/xr_mode>`                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_EditorExportPlatformAndroid_property_architectures/arm64-v8a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/arm64-v8a** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/arm64-v8a>`

Si es ``true``, los binarios ``arm64`` se incluirán en el proyecto exportado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/armeabi-v7a** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a>`

Si es ``true``, los binarios ``arm32`` se incluirán en el proyecto exportado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/x86:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/x86** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/x86>`

If ``true``, ``x86_32`` binaries are included into exported project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/x86_64:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/x86_64** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/x86_64>`

Si es ``true``, los binarios ``x86_64`` se incluirán en el proyecto exportado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_command_line/extra_args:

.. rst-class:: classref-property

:ref:`String<class_String>` **command_line/extra_args** :ref:`🔗<class_EditorExportPlatformAndroid_property_command_line/extra_args>`

Una lista de argumentos de línea de comandos adicionales, separados por espacios, que el proyecto exportado recibirá cuando se inicie.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_custom_template/debug>`

Ruta a un archivo APK para usar como plantilla de exportación personalizada para exportaciones de depuración. Si se deja vacío, se utiliza la plantilla predeterminada.

\ **Nota:** Esto solo se usa si :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` está deshabilitado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformAndroid_property_custom_template/release>`

Ruta a un archivo APK para usar como plantilla de exportación personalizada para exportaciones de lanzamiento. Si se deja vacío, se utiliza la plantilla predeterminada.

\ **Nota:** Esto solo se usa si :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` está deshabilitado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gesture/swipe_to_dismiss** :ref:`🔗<class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss>`

Si es ``true``, `Deslizar para descartar <https://developer.android.com/design/ui/wear/guides/components/swipe-to-dismiss>`__ se habilitará.

Esta funcionalidad está pensada para relojes inteligentes y generalmente se ignora en dispositivos Android estándar. Sin embargo, algunos dispositivos pueden no ignorarlo. Por lo tanto, se recomienda mantener esta función desactivada para las aplicaciones estándar de Android para evitar un comportamiento inesperado.

\ **Nota:** Esto es ``false`` por defecto. Para habilitar este comportamiento, se requiere :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/android_source_template:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/android_source_template** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/android_source_template>`

Ruta a un archivo ZIP que contiene la fuente para la plantilla de exportación utilizada en una compilación de Gradle. Si se deja vacío, se utiliza la plantilla predeterminada.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gradle_build/compress_native_libraries** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries>`

Si es ``true``, las librerías nativas se comprimen cuando se realiza una compilación de Gradle.

\ **Nota:** Si bien habilitar la compresión puede reducir el tamaño del binario, puede resultar en un inicio de aplicación más lento porque las librerías nativas deben extraerse antes de usarse, en lugar de cargarse directamente.

Si estás distribuyendo tu aplicación a través de Play Store, generalmente se recomienda mantener esta opción ``false``, véase `documentación oficial <https://developer.android.com/build/releases/past-releases/agp-3-6-0-release-notes#extractNativeLibs>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **gradle_build/custom_theme_attributes** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes>`

Un diccionario de atributos de tema personalizados para incluir en el proyecto Android exportado. Cada entrada define un nombre de atributo de tema y su valor, y se agregará a **GodotAppMainTheme**.

Por ejemplo, la clave ``android:windowSwipeToDismiss`` con el valor ``false`` se resuelve a ``<item name="android:windowSwipeToDismiss">false</item>``.

\ **Nota:** Para agregar un atributo personalizado a **GodotAppSplashTheme**, prefija el nombre del atributo con ``[splash]``.

\ **Nota:** Los atributos reservados configurados a través de otras opciones de exportación o la configuración del proyecto no pueden ser anulados por ``custom_theme_attributes`` y se omiten durante la exportación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/export_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **gradle_build/export_format** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/export_format>`

Formato de exportación de la aplicación (\*.apk o \*.aab).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/gradle_build_directory** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory>`

Ruta al directorio de compilación de Gradle. Si se deja vacío, se utilizará ``res://android``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/min_sdk:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/min_sdk** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/min_sdk>`

Nivel mínimo de API de Android requerido para que la aplicación se ejecute (utilizado durante la compilación de Gradle). Véase `android:minSdkVersion <https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/target_sdk:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/target_sdk** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/target_sdk>`

El nivel de API de Android en el que la aplicación está diseñada para ejecutarse (utilizado durante la compilación de Gradle). Véase `android:targetSdkVersion <https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gradle_build/use_gradle_build** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`

Si es ``true``, se utiliza la compilación de Gradle en lugar de APK precompilado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_graphics/opengl_debug:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **graphics/opengl_debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_graphics/opengl_debug>`

Si es ``true``, se creará un contexto de depuración OpenGL ES (verificación, validación y registro adicionales en tiempo de ejecución).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug>`

Ruta del archivo keystore de depuración.

Se puede sobrescribir con la variable de entorno ``GODOT_ANDROID_KEYSTORE_DEBUG_PATH``.

Si está vacío, recurre a ``EditorSettings.export/android/debug_keystore``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug_password** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug_password>`

Contraseña para el archivo keystore de depuración.

Se puede sobrescribir con la variable de entorno ``GODOT_ANDROID_KEYSTORE_DEBUG_PASSWORD``.

Si tanto esta como :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>` están vacías, recurre a ``EditorSettings.export/android/debug_keystore_pass``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug_user:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug_user** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug_user>`

Nombre de usuario para el archivo keystore de depuración.

Se puede sobrescribir con la variable de entorno ``GODOT_ANDROID_KEYSTORE_DEBUG_USER``.

Si tanto esta como :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>` están vacías, recurre a ``EditorSettings.export/android/debug_keystore_user``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release>`

Ruta del archivo keystore de lanzamiento.

Se puede sobrescribir con la variable de entorno ``GODOT_ANDROID_KEYSTORE_RELEASE_PATH``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release_password** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release_password>`

Contraseña para el archivo keystore de lanzamiento.

Se puede sobrescribir con la variable de entorno ``GODOT_ANDROID_KEYSTORE_RELEASE_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release_user:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release_user** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release_user>`

Nombre de usuario para el archivo keystore de lanzamiento.

Se puede sobrescribir con la variable de entorno ``GODOT_ANDROID_KEYSTORE_RELEASE_USER``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_background_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`

Capa de fondo del archivo de icono adaptativo de la aplicación. Véase `Diseñar iconos adaptativos <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_foreground_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432>`

Capa de primer plano del archivo de icono adaptativo de la aplicación. Véase `Diseñar iconos adaptativos <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_monochrome_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432>`

Capa monocromática del archivo de icono adaptativo de la aplicación. Véase `Diseñar iconos adaptativos <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/main_192x192** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192>`

Archivo de icono de la aplicación. Si se deja vacío, recurrirá a :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/app_category:

.. rst-class:: classref-property

:ref:`int<class_int>` **package/app_category** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/app_category>`

Categoría de la aplicación para Google Play Store. Solo define esto si tu aplicación se ajusta bien a una de las categorías. Véase `android:appCategory <https://developer.android.com/guide/topics/manifest/application-element#appCategory>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/exclude_from_recents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/exclude_from_recents** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/exclude_from_recents>`

Si es ``true``, la tarea iniciada por la actividad principal se excluirá de la lista de aplicaciones utilizadas recientemente. Véase `android:excludeFromRecents <https://developer.android.com/guide/topics/manifest/activity-element#exclude>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **package/name** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/name>`

El nombre de la aplicación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/retain_data_on_uninstall** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall>`

Si es ``true``, cuando el usuario desinstala una aplicación, se mostrará un aviso para conservar los datos de la aplicación. Véase `android:hasFragileUserData <https://developer.android.com/guide/topics/manifest/application-element#fragileuserdata>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_as_launcher_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_as_launcher_app** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_as_launcher_app>`

Si es ``true``, el usuario podrá establecer esta aplicación como el launcher del sistema en las preferencias de Android.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_in_android_tv:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_in_android_tv** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_in_android_tv>`

Si es ``true``, esta aplicación se mostrará en la interfaz de inicio de Android TV.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_in_app_library:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_in_app_library** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_in_app_library>`

Si es ``true``, esta aplicación se mostrará en la biblioteca de aplicaciones del dispositivo.

\ **Nota:** Esto es ``true`` por defecto.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/signed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/signed** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/signed>`

Si es ``true``, la firma del paquete está habilitada.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/unique_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **package/unique_name** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/unique_name>`

Identificador único de la aplicación en un formato de DNS inverso. El formato de DNS inverso debe coincidir preferiblemente con un nombre de dominio que controles, pero esto no es estrictamente obligatorio. Por ejemplo, si eres dueño de ``example.com``, el nombre único de tu paquete debería ser preferiblemente de la forma ``com.example.mygame``. Este identificador solo puede contener caracteres alfanuméricos en minúsculas (``a-z`` y ``0-9``), guiones bajos (``_``) y puntos (``.``). Cada componente del formato de DNS inverso debe comenzar con una letra: por ejemplo, ``com.example.8game`` no es válido.

Si ``$genname`` está presente en el valor, se reemplazará por el nombre del proyecto convertido a minúsculas. Si hay caracteres no válidos en el nombre del proyecto, se eliminarán. Si todos los caracteres en el nombre del proyecto se eliminan, ``$genname`` se reemplaza por ``noname``.

\ **Nota:** Cambiar el nombre del paquete hará que el paquete se considere como un nuevo paquete, con su propia instalación y rutas de datos. El nuevo paquete no se podrá utilizar para actualizar las instalaciones existentes.

\ **Nota:** Al publicar en Google Play, el nombre del paquete debe ser *globalmente* único. Esto significa que ninguna otra aplicación publicada en Google Play debe estar utilizando el mismo nombre de paquete que la tuya. De lo contrario, se te impedirá publicar tu aplicación en Google Play.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_checkin_properties** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties>`

Permite el acceso de lectura/escritura a la tabla de "propiedades" en la base de datos de registro. Véase `ACCESS_CHECKIN_PROPERTIES <https://developer.android.com/reference/android/Manifest.permission#ACCESS_CHECKIN_PROPERTIES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_coarse_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_coarse_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_coarse_location>`

Permite acceder a la información de ubicación aproximada. Véase `ACCESS_COARSE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_COARSE_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_fine_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_fine_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_fine_location>`

Permite acceder a la información de ubicación precisa. Véase `ACCESS_FINE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_location_extra_commands** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands>`

Permite acceder a los comandos adicionales del proveedor de ubicación. Véase `ACCESS_LOCATION_EXTRA_COMMANDS <https://developer.android.com/reference/android/Manifest.permission#ACCESS_LOCATION_EXTRA_COMMANDS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_media_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_media_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_media_location>`

Permite que una aplicación acceda a cualquier ubicación geográfica persistente en la colección compartida del usuario. Véase `ACCESS_MEDIA_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_MEDIA_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_mock_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_mock_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_mock_location>`

Permite que una aplicación cree proveedores de ubicación simulados para realizar pruebas.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_network_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_network_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_network_state>`

Permite acceder a la información sobre las redes. Véase `ACCESS_NETWORK_STATE <https://developer.android.com/reference/android/Manifest.permission#ACCESS_NETWORK_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_surface_flinger** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger>`

Permite que una aplicación utilice las características de bajo nivel de SurfaceFlinger.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_wifi_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_wifi_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_wifi_state>`

Permite acceder a la información sobre las redes Wi-Fi. Véase `ACCESS_WIFI_STATE <https://developer.android.com/reference/android/Manifest.permission#ACCESS_WIFI_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/account_manager:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/account_manager** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/account_manager>`

Permite que las aplicaciones llamen a AccountAuthenticators. Véase `ACCOUNT_MANAGER <https://developer.android.com/reference/android/Manifest.permission#ACCOUNT_MANAGER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/add_voicemail:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/add_voicemail** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/add_voicemail>`

Permite que una aplicación agregue mensajes de voz al sistema. Véase `ADD_VOICEMAIL <https://developer.android.com/reference/android/Manifest.permission#ADD_VOICEMAIL>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/authenticate_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts>`

Permite que una aplicación actúe como un AccountAuthenticator para el AccountManager.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/battery_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/battery_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/battery_stats>`

Permite que una aplicación recopile estadísticas de batería. Véase `BATTERY_STATS <https://developer.android.com/reference/android/Manifest.permission#BATTERY_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_accessibility_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service>`

Debe ser requerido por un AccessibilityService, para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_ACCESSIBILITY_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_ACCESSIBILITY_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_appwidget:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_appwidget** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_appwidget>`

Permite que una aplicación le diga al servicio AppWidget qué aplicación puede acceder a los datos de AppWidget. Véase `BIND_APPWIDGET <https://developer.android.com/reference/android/Manifest.permission#BIND_APPWIDGET>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_device_admin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_device_admin** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_device_admin>`

Debe ser requerido por el receptor de administración de dispositivos, para garantizar que solo el sistema pueda interactuar con él. Véase `BIND_DEVICE_ADMIN <https://developer.android.com/reference/android/Manifest.permission#BIND_DEVICE_ADMIN>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_input_method:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_input_method** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_input_method>`

Debe ser requerido por un InputMethodService, para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_INPUT_METHOD <https://developer.android.com/reference/android/Manifest.permission#BIND_INPUT_METHOD>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_nfc_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service>`

Debe ser requerido por un HostApduService u OffHostApduService para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_NFC_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_NFC_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_notification_listener_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service>`

Debe ser requerido por un NotificationListenerService, para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_NOTIFICATION_LISTENER_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_NOTIFICATION_LISTENER_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_print_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_print_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_print_service>`

Debe ser requerido por un PrintService, para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_PRINT_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_PRINT_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_remoteviews** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews>`

Debe ser requerido por un RemoteViewsService, para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_REMOTEVIEWS <https://developer.android.com/reference/android/Manifest.permission#BIND_REMOTEVIEWS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_text_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_text_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_text_service>`

Debe ser requerido por un TextService (ej. SpellCheckerService) para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_TEXT_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_TEXT_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_vpn_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service>`

Debe ser requerido por un VpnService, para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_VPN_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_VPN_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_wallpaper** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper>`

Debe ser requerido por un WallpaperService, para garantizar que solo el sistema pueda vincularse a él. Véase `BIND_WALLPAPER <https://developer.android.com/reference/android/Manifest.permission#BIND_WALLPAPER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth>`

Permite a las aplicaciones conectarse a dispositivos bluetooth emparejados. Véase `BLUETOOTH <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth_admin** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin>`

Permite a las aplicaciones descubrir y emparejar dispositivos bluetooth. Véase `BLUETOOTH_ADMIN <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_ADMIN>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth_privileged** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged>`

Permite a las aplicaciones emparejar dispositivos bluetooth sin interacción del usuario, y permitir o denegar el acceso a la agenda telefónica o a los mensajes. Véase `BLUETOOTH_PRIVILEGED <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_PRIVILEGED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/brick:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/brick** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/brick>`

Requerido para poder desactivar el dispositivo (¡muy peligroso!).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_package_removed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed>`

Permite a una aplicación transmitir una notificación de que un paquete de aplicación ha sido eliminado. Véase `BROADCAST_PACKAGE_REMOVED <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_PACKAGE_REMOVED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_sms>`

Permite a una aplicación transmitir una notificación de recepción de SMS. Véase `BROADCAST_SMS <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_sticky** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky>`

Permite que una aplicación transmita intenciones persistentes. Véase `BROADCAST_STICKY <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_STICKY>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_wap_push** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push>`

Permite que una aplicación transmita una notificación de recepción de WAP PUSH. Véase `BROADCAST_WAP_PUSH <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_WAP_PUSH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/call_phone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/call_phone** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/call_phone>`

Permite que una aplicación inicie una llamada telefónica sin pasar por la interfaz de usuario del Marcador. Véase `CALL_PHONE <https://developer.android.com/reference/android/Manifest.permission#CALL_PHONE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/call_privileged:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/call_privileged** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/call_privileged>`

Permite que una aplicación llame a cualquier número de teléfono, incluyendo números de emergencia, sin pasar por la interfaz de usuario del Marcador. Véase `CALL_PRIVILEGED <https://developer.android.com/reference/android/Manifest.permission#CALL_PRIVILEGED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/camera** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/camera>`

Requerido para poder acceder al dispositivo de la cámara. Véase `CAMERA <https://developer.android.com/reference/android/Manifest.permission#CAMERA>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_audio_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_audio_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_audio_output>`

Permite que una aplicación capture la salida de audio. Véase `CAPTURE_AUDIO_OUTPUT <https://developer.android.com/reference/android/Manifest.permission#CAPTURE_AUDIO_OUTPUT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_secure_video_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output>`

Permite que una aplicación capture la salida de vídeo segura.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_video_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_video_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_video_output>`

Permite que una aplicación capture la salida de vídeo.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_component_enabled_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state>`

Permite a una aplicación cambiar si un componente de la aplicación (distinto del suyo) está activado o no. Véase `CHANGE_COMPONENT_ENABLED_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_COMPONENT_ENABLED_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_configuration:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_configuration** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_configuration>`

Permite a una aplicación modificar la configuración actual, como la local. Véase `CHANGE_CONFIGURATION <https://developer.android.com/reference/android/Manifest.permission#CHANGE_CONFIGURATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_network_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_network_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_network_state>`

Permite a las aplicaciones cambiar el estado de la conectividad de red. Véase `CHANGE_NETWORK_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_NETWORK_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_wifi_multicast_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state>`

Permite a las aplicaciones entrar en el modo Wi-Fi Multicast. Véase `CHANGE_WIFI_MULTICAST_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_MULTICAST_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_wifi_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_wifi_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_wifi_state>`

Permite a las aplicaciones cambiar el estado de la conectividad Wi-Fi. Véase `CHANGE_WIFI_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/clear_app_cache:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/clear_app_cache** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/clear_app_cache>`

Permite que una aplicación borre los cachés de todas las aplicaciones instaladas en el dispositivo. Véase `CLEAR_APP_CACHE <https://developer.android.com/reference/android/Manifest.permission#CLEAR_APP_CACHE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/clear_app_user_data** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data>`

Permite que una aplicación borre los datos de usuario.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/control_location_updates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/control_location_updates** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/control_location_updates>`

Permite activar/desactivar las notificaciones de actualización de la ubicación desde la radio. Véase `CONTROL_LOCATION_UPDATES <https://developer.android.com/reference/android/Manifest.permission#CONTROL_LOCATION_UPDATES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/custom_permissions:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **permissions/custom_permissions** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/custom_permissions>`

Array de strings de permisos personalizados.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/delete_cache_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/delete_cache_files** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/delete_cache_files>`

**Obsoleto:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/delete_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/delete_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/delete_packages>`

Permite que una aplicación elimine paquetes. Véase `DELETE_PACKAGES <https://developer.android.com/reference/android/Manifest.permission#DELETE_PACKAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/device_power:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/device_power** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/device_power>`

Permite el acceso de bajo nivel a la gestión de energía.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/diagnostic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/diagnostic** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/diagnostic>`

Permite a las aplicaciones leer/escribir en los recursos de diagnóstico. Véase `DIAGNOSTIC <https://developer.android.com/reference/android/Manifest.permission#DIAGNOSTIC>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/disable_keyguard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/disable_keyguard** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/disable_keyguard>`

Permite a las aplicaciones desactivar el bloqueo de teclado si no es seguro. Véase `DISABLE_KEYGUARD <https://developer.android.com/reference/android/Manifest.permission#DISABLE_KEYGUARD>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/dump:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/dump** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/dump>`

Permite a una aplicación recuperar información de volcado de estado de los servicios del sistema. Véase `DUMP <https://developer.android.com/reference/android/Manifest.permission#DUMP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/expand_status_bar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/expand_status_bar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/expand_status_bar>`

Permite a una aplicación expandir o contraer la barra de estado. Véase `EXPAND_STATUS_BAR <https://developer.android.com/reference/android/Manifest.permission#EXPAND_STATUS_BAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/factory_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/factory_test** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/factory_test>`

Ejecutar como una aplicación de prueba del fabricante, ejecutándose como el usuario root. Véase `FACTORY_TEST <https://developer.android.com/reference/android/Manifest.permission#FACTORY_TEST>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/flashlight:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/flashlight** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/flashlight>`

Permite el acceso a la linterna.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/force_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/force_back** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/force_back>`

Permite que una aplicación fuerce una operación de retroceso (BACK) en la actividad que se encuentre en la parte superior.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_accounts>`

Permite el acceso a la lista de cuentas en el Servicio de Cuentas. Véase `GET_ACCOUNTS <https://developer.android.com/reference/android/Manifest.permission#GET_ACCOUNTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_package_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_package_size** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_package_size>`

Permite a una aplicación averiguar el espacio utilizado por cualquier paquete. Véase `GET_PACKAGE_SIZE <https://developer.android.com/reference/android/Manifest.permission#GET_PACKAGE_SIZE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_tasks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_tasks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_tasks>`

**Obsoleto:** Deprecated in API level 21.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_top_activity_info** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info>`

Permite a una aplicación recuperar información privada sobre la actividad superior actual.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/global_search:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/global_search** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/global_search>`

Utilizado en proveedores de contenido para permitir que el sistema de búsqueda global acceda a sus datos. Véase `GLOBAL_SEARCH <https://developer.android.com/reference/android/Manifest.permission#GLOBAL_SEARCH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/hardware_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/hardware_test** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/hardware_test>`

Permite el acceso a periféricos de hardware.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/inject_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/inject_events** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/inject_events>`

Permite a una aplicación inyectar eventos de usuario (teclas, táctiles, trackball) en el flujo de eventos y entregarlos a CUALQUIER ventana.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_location_provider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_location_provider** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_location_provider>`

Permite a una aplicación instalar un proveedor de ubicación en el Administrador de Ubicaciones. Véase `INSTALL_LOCATION_PROVIDER <https://developer.android.com/reference/android/Manifest.permission#INSTALL_LOCATION_PROVIDER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_packages>`

Permite a una aplicación instalar paquetes. Véase `INSTALL_PACKAGES <https://developer.android.com/reference/android/Manifest.permission#INSTALL_PACKAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_shortcut:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_shortcut** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_shortcut>`

Permite a una aplicación instalar un atajo en el Launcher. Véase `INSTALL_SHORTCUT <https://developer.android.com/reference/android/Manifest.permission#INSTALL_SHORTCUT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/internal_system_window:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/internal_system_window** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/internal_system_window>`

Permite a una aplicación abrir ventanas que son para uso de partes de la interfaz de usuario del sistema.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/internet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/internet** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/internet>`

Permite a las aplicaciones abrir sockets de red. Véase `INTERNET <https://developer.android.com/reference/android/Manifest.permission#INTERNET>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/kill_background_processes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/kill_background_processes** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/kill_background_processes>`

Permite a una aplicación llamar a ActivityManager.killBackgroundProcesses(String). Véase `KILL_BACKGROUND_PROCESSES <https://developer.android.com/reference/android/Manifest.permission#KILL_BACKGROUND_PROCESSES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/location_hardware:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/location_hardware** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/location_hardware>`

Permite a una aplicación utilizar las funciones de localización del hardware, como la API de geofencing. Véase `LOCATION_HARDWARE <https://developer.android.com/reference/android/Manifest.permission#LOCATION_HARDWARE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_accounts>`

Permite a una aplicación gestionar la lista de cuentas en el AccountManager.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_app_tokens** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens>`

Permite a una aplicación gestionar (crear, destruir, ordenar en Z) los tokens de la aplicación en el gestor de ventanas.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_documents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_documents** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_documents>`

Permite a una aplicación gestionar el acceso a los documentos, normalmente como parte de un selector de documentos. Véase `MANAGE_DOCUMENTS <https://developer.android.com/reference/android/Manifest.permission#MANAGE_DOCUMENTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_external_storage>`

Permite a una aplicación un amplio acceso al almacenamiento externo en el almacenamiento con ámbito. Véase `MANAGE_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#MANAGE_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_media:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_media** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_media>`

Allows an application to modify and delete media files on this device or any connected storage device without user confirmation. Applications must already be granted the ``READ_EXTERNAL_STORAGE`` or ``MANAGE_EXTERNAL_STORAGE`` permissions for this permission to take effect. See `MANAGE_MEDIA <https://developer.android.com/reference/android/Manifest.permission#MANAGE_MEDIA>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/master_clear:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/master_clear** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/master_clear>`

Véase `MASTER_CLEAR <https://developer.android.com/reference/android/Manifest.permission#MASTER_CLEAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/media_content_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/media_content_control** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/media_content_control>`

Permite a una aplicación saber qué contenido se está reproduciendo y controlar su reproducción. Véase `MEDIA_CONTENT_CONTROL <https://developer.android.com/reference/android/Manifest.permission#MEDIA_CONTENT_CONTROL>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/modify_audio_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings>`

Permite a una aplicación modificar la configuración de audio global. Véase `MODIFY_AUDIO_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#MODIFY_AUDIO_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/modify_phone_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/modify_phone_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/modify_phone_state>`

Permite la modificación del estado de la telefonía (encendido, MMI, etc.). No incluye la realización de llamadas. Véase `MODIFY_PHONE_STATE <https://developer.android.com/reference/android/Manifest.permission#MODIFY_PHONE_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/mount_format_filesystems** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems>`

Permite formatear sistemas de archivos para almacenamiento extraíble. Véase `MOUNT_FORMAT_FILESYSTEMS <https://developer.android.com/reference/android/Manifest.permission#MOUNT_FORMAT_FILESYSTEMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/mount_unmount_filesystems** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems>`

Permite montar y desmontar sistemas de archivos para almacenamiento extraíble. Véase `MOUNT_UNMOUNT_FILESYSTEMS <https://developer.android.com/reference/android/Manifest.permission#MOUNT_UNMOUNT_FILESYSTEMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/nfc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/nfc** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/nfc>`

Permite a las aplicaciones realizar operaciones de E/S a través de NFC. Véase `NFC <https://developer.android.com/reference/android/Manifest.permission#NFC>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/persistent_activity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/persistent_activity** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/persistent_activity>`

**Obsoleto:** Deprecated in API level 15.

Permite que una aplicación haga que sus actividades sean persistentes.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/post_notifications:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/post_notifications** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/post_notifications>`

Permite a una aplicación publicar notificaciones. Añadido en el nivel 33 de la API. Véase `Permiso de notificación en tiempo de ejecución <https://developer.android.com/develop/ui/views/notifications/notification-permission>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/process_outgoing_calls** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls>`

**Obsoleto:** Deprecated in API level 29.

Permite a una aplicación ver el número que se está marcando durante una llamada saliente con la opción de redirigir la llamada a un número diferente o anularla por completo. Véase `PROCESS_OUTGOING_CALLS <https://developer.android.com/reference/android/Manifest.permission#PROCESS_OUTGOING_CALLS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_calendar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_calendar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_calendar>`

Permite a una aplicación leer los datos del calendario del usuario. Véase `READ_CALENDAR <https://developer.android.com/reference/android/Manifest.permission#READ_CALENDAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_call_log:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_call_log** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_call_log>`

Permite a una aplicación leer el registro de llamadas del usuario. Véase `READ_CALL_LOG <https://developer.android.com/reference/android/Manifest.permission#READ_CALL_LOG>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_contacts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_contacts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_contacts>`

Permite a una aplicación leer los datos de los contactos del usuario. Véase `READ_CONTACTS <https://developer.android.com/reference/android/Manifest.permission#READ_CONTACTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_external_storage>`

**Obsoleto:** Deprecated in API level 33.

Permite a una aplicación leer desde el almacenamiento externo. Véase `READ_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#READ_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_frame_buffer** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer>`

Permite a una aplicación tomar capturas de pantalla y, en general, obtener acceso a los datos del búfer de fotogramas.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_history_bookmarks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks>`

Permite a una aplicación leer (pero no escribir) el historial de navegación y los marcadores del usuario.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_input_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_input_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_input_state>`

**Obsoleto:** Deprecated in API level 16.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_logs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_logs** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_logs>`

Permite a una aplicación leer los archivos de registro del sistema de bajo nivel. Véase `READ_LOGS <https://developer.android.com/reference/android/Manifest.permission#READ_LOGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_audio:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_audio** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_audio>`

Permite a una aplicación leer archivos de audio del almacenamiento externo. Véase `READ_MEDIA_AUDIO <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_AUDIO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_images:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_images** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_images>`

Permite a una aplicación leer archivos de imagen desde el almacenamiento externo. Véase `READ_MEDIA_IMAGES <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_IMAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_video:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_video** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_video>`

Permite a una aplicación leer archivos de video desde el almacenamiento externo. Véase `READ_MEDIA_VIDEO <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VIDEO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_visual_user_selected** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected>`

Permite a una aplicación leer archivos de imagen o vídeo del almacenamiento externo que un usuario ha seleccionado a través del selector de fotos del aviso de permiso. Véase `READ_MEDIA_VISUAL_USER_SELECTED <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VISUAL_USER_SELECTED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_phone_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_phone_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_phone_state>`

Permite el acceso de solo lectura al estado del teléfono. Véase `READ_PHONE_STATE <https://developer.android.com/reference/android/Manifest.permission#READ_PHONE_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_profile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_profile** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_profile>`

Permite que una aplicación lea los datos del perfil personal del usuario.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sms>`

Permite que una aplicación lea mensajes SMS. Véase `READ_SMS <https://developer.android.com/reference/android/Manifest.permission#READ_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_social_stream:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_social_stream** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_social_stream>`

Permite que una aplicación lea desde el flujo social del usuario.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sync_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sync_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sync_settings>`

Permite que las aplicaciones lean la configuración de sincronización. Véase `READ_SYNC_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sync_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sync_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sync_stats>`

Permite que las aplicaciones lean las estadísticas de sincronización. Véase `READ_SYNC_STATS <https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_user_dictionary** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary>`

Permite que una aplicación lea el diccionario del usuario.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/reboot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/reboot** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/reboot>`

Requerido para poder reiniciar el dispositivo. Véase `REBOOT <https://developer.android.com/reference/android/Manifest.permission#REBOOT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_boot_completed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed>`

Permite que una aplicación reciba el Intent.ACTION_BOOT_COMPLETED que se emite después de que el sistema termine de arrancar. Véase `RECEIVE_BOOT_COMPLETED <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_BOOT_COMPLETED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_mms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_mms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_mms>`

Permite que una aplicación monitoree los mensajes MMS entrantes. Véase `RECEIVE_MMS <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_MMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_sms>`

Permite que una aplicación reciba mensajes SMS. Véase `RECEIVE_SMS <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_wap_push:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_wap_push** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_wap_push>`

Permite que una aplicación reciba mensajes push WAP. Véase `RECEIVE_WAP_PUSH <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_WAP_PUSH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/record_audio:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/record_audio** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/record_audio>`

Permite que una aplicación grabe audio. Véase `RECORD_AUDIO <https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/reorder_tasks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/reorder_tasks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/reorder_tasks>`

Permite que una aplicación cambie el orden Z de las tareas. Véase `REORDER_TASKS <https://developer.android.com/reference/android/Manifest.permission#REORDER_TASKS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/restart_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/restart_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/restart_packages>`

**Obsoleto:** Deprecated in API level 15.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/send_respond_via_message** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message>`

Permite a una aplicación (Teléfono) enviar una solicitud a otras aplicaciones para gestionar la acción de respuesta por mensaje durante las llamadas entrantes. Véase `SEND_RESPOND_VIA_MESSAGE <https://developer.android.com/reference/android/Manifest.permission#SEND_RESPOND_VIA_MESSAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/send_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/send_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/send_sms>`

Permite a una aplicación enviar mensajes SMS. Véase `SEND_SMS <https://developer.android.com/reference/android/Manifest.permission#SEND_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_activity_watcher** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher>`

Permite a una aplicación observar y controlar cómo se inician las actividades globalmente en el sistema.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_alarm:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_alarm** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_alarm>`

Permite a una aplicación difundir un Intent para establecer una alarma para el usuario. Véase `SET_ALARM <https://developer.android.com/reference/android/Manifest.permission#SET_ALARM>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_always_finish:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_always_finish** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_always_finish>`

Permite a una aplicación controlar si las actividades finalizan inmediatamente cuando se ponen en segundo plano. Véase `SET_ALWAYS_FINISH <https://developer.android.com/reference/android/Manifest.permission#SET_ALWAYS_FINISH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_animation_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_animation_scale** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_animation_scale>`

Permite modificar el factor de escala de la animación global. Véase `SET_ANIMATION_SCALE <https://developer.android.com/reference/android/Manifest.permission#SET_ANIMATION_SCALE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_debug_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_debug_app** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_debug_app>`

Permite configurar una aplicación para la depuración. Véase `SET_DEBUG_APP <https://developer.android.com/reference/android/Manifest.permission#SET_DEBUG_APP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_orientation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_orientation** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_orientation>`

Permite el acceso de bajo nivel para establecer la orientación (en realidad, la rotación) de la pantalla.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_pointer_speed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed>`

Permite el acceso a bajo nivel para establecer la velocidad del puntero.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_preferred_applications** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications>`

**Obsoleto:** Deprecated in API level 15.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_process_limit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_process_limit** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_process_limit>`

Permite a una aplicación establecer el número máximo de procesos de aplicación (no necesarios) que pueden estar en ejecución. Véase `SET_PROCESS_LIMIT <https://developer.android.com/reference/android/Manifest.permission#SET_PROCESS_LIMIT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_time:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_time** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_time>`

Permite a las aplicaciones establecer la hora del sistema directamente. Véase `SET_TIME <https://developer.android.com/reference/android/Manifest.permission#SET_TIME>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_time_zone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_time_zone** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_time_zone>`

Permite a las aplicaciones establecer la zona horaria del sistema directamente. Véase `SET_TIME_ZONE <https://developer.android.com/reference/android/Manifest.permission#SET_TIME_ZONE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_wallpaper:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_wallpaper** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper>`

Permite a las aplicaciones establecer el fondo de pantalla. Véase `SET_WALLPAPER <https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_wallpaper_hints** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints>`

Permite que las aplicaciones establezcan las sugerencias del fondo de pantalla. Véase `SET_WALLPAPER_HINTS <https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER_HINTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/signal_persistent_processes** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes>`

Permite que una aplicación solicite que se envíe una señal a todos los procesos persistentes. Véase `SIGNAL_PERSISTENT_PROCESSES <https://developer.android.com/reference/android/Manifest.permission#SIGNAL_PERSISTENT_PROCESSES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/status_bar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/status_bar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/status_bar>`

Permite que una aplicación abra, cierre o desactive la barra de estado y sus iconos. Véase `STATUS_BAR <https://developer.android.com/reference/android/Manifest.permission#STATUS_BAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/subscribed_feeds_read** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read>`

Permite que una aplicación permita el acceso al ContentProvider de fuentes suscritas.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/subscribed_feeds_write** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write>`

**Obsoleto:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/system_alert_window:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/system_alert_window** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/system_alert_window>`

Permite que una aplicación cree ventanas usando el tipo WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY, que se muestra encima de todas las demás aplicaciones. Véase `SYSTEM_ALERT_WINDOW <https://developer.android.com/reference/android/Manifest.permission#SYSTEM_ALERT_WINDOW>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/transmit_ir:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/transmit_ir** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/transmit_ir>`

Permite usar el transmisor de infrarrojos del dispositivo, si está disponible. Véase `TRANSMIT_IR <https://developer.android.com/reference/android/Manifest.permission#TRANSMIT_IR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/uninstall_shortcut** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut>`

**Obsoleto:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/update_device_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/update_device_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/update_device_stats>`

Permite que una aplicación actualice las estadísticas del dispositivo. Véase `UPDATE_DEVICE_STATS <https://developer.android.com/reference/android/Manifest.permission#UPDATE_DEVICE_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/use_credentials:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/use_credentials** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/use_credentials>`

Permite que una aplicación solicite authtokens del AccountManager.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/use_sip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/use_sip** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/use_sip>`

Permite que una aplicación utilice el servicio SIP. Véase `USE_SIP <https://developer.android.com/reference/android/Manifest.permission#USE_SIP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/vibrate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/vibrate** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/vibrate>`

Permite acceder al vibrador. Véase `VIBRATE <https://developer.android.com/reference/android/Manifest.permission#VIBRATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/wake_lock:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/wake_lock** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/wake_lock>`

Permite usar PowerManager WakeLocks para evitar que el procesador se suspenda o que la pantalla se atenúe. Véase `WAKE_LOCK <https://developer.android.com/reference/android/Manifest.permission#WAKE_LOCK>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_apn_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_apn_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_apn_settings>`

Permite que las aplicaciones escriban la configuración apn y lean campos confidenciales de una configuración apn existente, como el usuario y la contraseña. Véase `WRITE_APN_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_APN_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_calendar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_calendar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_calendar>`

Permite que una aplicación escriba los datos del calendario del usuario. Véase `WRITE_CALENDAR <https://developer.android.com/reference/android/Manifest.permission#WRITE_CALENDAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_call_log:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_call_log** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_call_log>`

Permite que una aplicación escriba (pero no lea) los datos del registro de llamadas del usuario. Véase `WRITE_CALL_LOG <https://developer.android.com/reference/android/Manifest.permission#WRITE_CALL_LOG>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_contacts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_contacts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_contacts>`

Permite que una aplicación escriba los datos de los contactos del usuario. Véase `WRITE_CONTACTS <https://developer.android.com/reference/android/Manifest.permission#WRITE_CONTACTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_external_storage>`

Permite que una aplicación escriba en el almacenamiento externo. Véase `WRITE_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#WRITE_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_gservices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_gservices** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_gservices>`

Permite que una aplicación modifique el mapa de servicios de Google. Véase `WRITE_GSERVICES <https://developer.android.com/reference/android/Manifest.permission#WRITE_GSERVICES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_history_bookmarks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks>`

Permite que una aplicación escriba (pero no lea) el historial de navegación y los marcadores del usuario.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_profile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_profile** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_profile>`

Permite que una aplicación escriba (pero no lea) los datos del perfil personal del usuario.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_secure_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_secure_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_secure_settings>`

Permite que una aplicación lea o escriba la configuración segura del sistema. Véase `WRITE_SECURE_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SECURE_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_settings>`

Permite que una aplicación lea o escriba la configuración del sistema. Véase `WRITE_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_sms>`

Permite que una aplicación escriba mensajes SMS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_social_stream:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_social_stream** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_social_stream>`

Allows an application to write (but not read) the user's social stream data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_sync_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_sync_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_sync_settings>`

Permite que las aplicaciones escriban la configuración de sincronización. Véase `WRITE_SYNC_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SYNC_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_user_dictionary** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary>`

Permite que una aplicación escriba en el diccionario del usuario.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **screen/background_color** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/background_color>`

The background color used for the root window. By default it's :ref:`Color.BLACK<class_Color_constant_BLACK>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/edge_to_edge:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/edge_to_edge** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/edge_to_edge>`

Si es ``true``, esto hace que las barras de navegación y de estado sean translúcidas y permite que el contenido de la aplicación se extienda de borde a borde.

\ **Nota:** Debes asegurarte de que ningún elemento del sistema ocluya el contenido de la aplicación utilizando los métodos :ref:`DisplayServer.get_display_safe_area()<class_DisplayServer_method_get_display_safe_area>` y :ref:`DisplayServer.get_display_cutouts()<class_DisplayServer_method_get_display_cutouts>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/immersive_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/immersive_mode** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/immersive_mode>`

Si es ``true``, oculta la barra de navegación y la de estado. Establece :ref:`DisplayServer.window_set_mode()<class_DisplayServer_method_window_set_mode>` para cambiar esto en tiempo de ejecución.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_large:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_large** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_large>`

Indica si la aplicación soporta factores de forma de pantalla más grandes.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_normal:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_normal** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_normal>`

Indica si una aplicación soporta los factores de forma de pantalla "normales".

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_small:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_small** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_small>`

Indica si la aplicación admite factores de formato de pantalla más pequeños.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_xlarge:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_xlarge** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_xlarge>`

Indica si la aplicación admite factores de formato de pantalla extra grandes.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformAndroid_property_shader_baker/enabled>`

If ``true``, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ or Mobile renderers.

\ **Note:** When exporting as a dedicated server, the shader baker is always disabled since no rendering is performed.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_splash_screen/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **splash_screen/background_color** :ref:`🔗<class_EditorExportPlatformAndroid_property_splash_screen/background_color>`

The background color used for the system splash screen window.

If not set, it will fallback to :ref:`launcher_icons/adaptive_background_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`.

\ **Note:** This is only applied if :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` is enabled.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_splash_screen/branding_image:

.. rst-class:: classref-property

:ref:`String<class_String>` **splash_screen/branding_image** :ref:`🔗<class_EditorExportPlatformAndroid_property_splash_screen/branding_image>`

System splash screen branding image file. If left empty, no branding image will be used. See `splash-screen dimensions <https://developer.android.com/develop/ui/views/launch/splash-screen#dimensions>`__.

\ **Note:** Can be used to set an image to be shown at the bottom of the splash screen.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_splash_screen/disable_godot_boot_splash:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **splash_screen/disable_godot_boot_splash** :ref:`🔗<class_EditorExportPlatformAndroid_property_splash_screen/disable_godot_boot_splash>`

If ``true``, Godot's boot splash will not be shown, and the system boot splash will remain visible for a longer time, until the mainloop starts.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_splash_screen/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **splash_screen/icon** :ref:`🔗<class_EditorExportPlatformAndroid_property_splash_screen/icon>`

System splash screen icon file. If left empty, it will fall back to :ref:`launcher_icons/adaptive_foreground_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432>`. See `splash-screen dimensions <https://developer.android.com/develop/ui/views/launch/splash-screen#dimensions>`__.

\ **Note:** You can provide an `AnimatedVectorDrawable (AVD) <https://developer.android.com/reference/android/graphics/drawable/AnimatedVectorDrawable>`__ XML. However, the XML file will only be used if :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` is enabled. If not, it will fall back to :ref:`launcher_icons/adaptive_background_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_user_data_backup/allow:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **user_data_backup/allow** :ref:`🔗<class_EditorExportPlatformAndroid_property_user_data_backup/allow>`

Si es ``true``, permite que la aplicación participe en la infraestructura de copia de seguridad y restauración.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_version/code:

.. rst-class:: classref-property

:ref:`int<class_int>` **version/code** :ref:`🔗<class_EditorExportPlatformAndroid_property_version/code>`

Versión de la aplicación legible por máquina. Debe incrementarse con cada nuevo lanzamiento enviado a Play Store.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_version/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **version/name** :ref:`🔗<class_EditorExportPlatformAndroid_property_version/name>`

Versión de la aplicación visible para el usuario. Si se deja vacía, se recurre a :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_xr_features/xr_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **xr_features/xr_mode** :ref:`🔗<class_EditorExportPlatformAndroid_property_xr_features/xr_mode>`

El modo de realidad extendida (XR) para esta aplicación.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
