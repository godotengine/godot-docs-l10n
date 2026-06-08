:github_url: hide

.. _class_EditorExportPlatformAndroid:

EditorExportPlatformAndroid
===========================

**Успадковує:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Експортер для Android.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Експорт для Android <../tutorials/export/exporting_for_android>`

- :doc:`Виставки для Android <../tutorials/export/android_gradle_build>`

- :doc:`Індекс документації додатків Android <../tutorials/platform/index>`

.. rst-class:: classref-reftable-group

Властивості
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

Описи властивостей
------------------------------------

.. _class_EditorExportPlatformAndroid_property_architectures/arm64-v8a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/arm64-v8a** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/arm64-v8a>`

``true``, ``arm64`` binaries включено до експортованого проекту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/armeabi-v7a** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a>`

Якщо ``true``, ``arm32`` бункери включені в експортований проект.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/x86:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/x86** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/x86>`

Якщо ``true``, ``x86_32`` бункери включені в експортований проект.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/x86_64:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/x86_64** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/x86_64>`

Якщо ``true``, ``x86_64`` бункери включені в експортований проект.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_command_line/extra_args:

.. rst-class:: classref-property

:ref:`String<class_String>` **command_line/extra_args** :ref:`🔗<class_EditorExportPlatformAndroid_property_command_line/extra_args>`

Перелік додаткових аргументів командного рядка, відокремлених просторами, що експортується проект буде отримувати при старті.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_custom_template/debug>`

Шлях до файлу APK, щоб використовувати як спеціальний шаблон експорту для експорту debug. Якщо лівий порожній, використовується шаблон за замовчуванням.

\ **Примітка:** Це тільки використовується, якщо :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformAndroid_property_custom_template/release>`

Шлях до файлу APK, щоб використовувати як спеціальний шаблон експорту для експорту. Якщо лівий порожній, використовується шаблон за замовчуванням.

\ **Примітка:** Це тільки використовується, якщо :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gesture/swipe_to_dismiss** :ref:`🔗<class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss>`

Якщо ``true``, `Проведіть пальцем, щоб закрити <https://developer.android.com/design/ui/wear/guides/components/swipe-to-dismiss>`__ буде ввімкнено.

Ця функція призначена для розумних годинників і зазвичай ігнорується на стандартних пристроях Android. Однак деякі пристрої не можуть його ігнорувати. Тому рекомендується залишати цю функцію вимкненою для стандартних програм Android, щоб уникнути неочікуваної поведінки.

\ **Примітка: ** За замовчуванням це ``false``. Щоб увімкнути цю поведінку, потрібен :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/android_source_template:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/android_source_template** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/android_source_template>`

Шлях до ZIP-файлу, що містить джерело для експортного шаблону, що використовується в збірці. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gradle_build/compress_native_libraries** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries>`

Якщо ``true``, нативні бібліотеки стискаються під час виконання Gradle build.

\ **Примітка:** Хоча увімкнення стиснення може зменшити розмір бінарного файлу, це може призвести до повільнішого запуску програми, оскільки нативні бібліотеки необхідно витягувати перед використанням, а не завантажувати безпосередньо.

Якщо ви поширюєте свою програму через Play Store, зазвичай рекомендується залишити цей параметр ``false``, див. `офіційну документацію <https://developer.android.com/build/releases/past-releases/agp-3-6-0-release-notes#extractNativeLibs>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **gradle_build/custom_theme_attributes** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes>`

Словник атрибутів користувацьких тем для включення до експортованого проекту Android. Кожен запис визначає назву атрибута теми та його значення, і буде додано до **GodotAppMainTheme**.

Наприклад, ключ ``android:windowSwipeToDismiss`` зі значенням ``false`` перетворюється на ``<item name="android:windowSwipeToDismiss">false</item>``.

\ **Примітка:** Щоб додати користувацький атрибут до **GodotAppSplashTheme**, додайте перед назвою атрибута префікс ``[splash]``.

\ **Примітка:** Зарезервовані атрибути, налаштовані за допомогою інших параметрів експорту або налаштувань проекту, не можуть бути перезаписані параметром ``custom_theme_attributes`` і пропускаються під час експорту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/export_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **gradle_build/export_format** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/export_format>`

Формат експорту (\*.apk або \*.aab).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/gradle_build_directory** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory>`

Шлях до каталогу збірки Gradle. Якщо лівий порожній, то `` буде використовуватися ``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/min_sdk:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/min_sdk** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/min_sdk>`

Мінімум Android Необхідний рівень API для запуску програми (використаний під час створення Gradle). `android:minSdkVersion <https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/target_sdk:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/target_sdk** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/target_sdk>`

Рівень Android API, на якому додаток призначений для запуску (використаний під час створення Gradle). `android:targetSdkVersion <https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gradle_build/use_gradle_build** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`

Якщо ``true``, Gradle build використовується замість попереднього вбудованого APK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_graphics/opengl_debug:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **graphics/opengl_debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_graphics/opengl_debug>`

Якщо ``true``, OpenGL ES debug контекст буде створено (додатково-перевірочна перевірка, перевірка та запис).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug>`

Патріарха debug keystore файл.

Може передаватися з змінною середовища ``GODOT_ANDROID_KEYSTORE_DEBUG_PATH``.

Завантажити ``EditorSettings.export/android/debug_keystore``, якщо порожній.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug_password** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug_password>`

Пароль для файла debug keystore.

Може передаватися з змінною середовища ``GODOT_ANDROID_KEYSTORE_DEBUG_PASSWORD``.

\ ``РедастрНалаштування.export/android/debug_keystore_pass``, якщо вона і :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>` порожній.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug_user:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug_user** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug_user>`

Ім'я користувача для файла debug.

Може передаватися з змінною середовища ``GODOT_ANDROID_KEYSTORE_DEBUG_USER``.

Завантажити ``EditorSettings.export/android/debug_keystore_user``, якщо він і :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>` порожній.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release>`

Шлях файлу ключа релізу.

Може передаватися з змінною середовища ``GODOT_ANDROID_KEYSTORE_RELEASE_PATH``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release_password** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release_password>`

Пароль для файлу ключів релізу.

Може передаватися з змінною середовища ``GODOT_ANDROID_KEYSTORE_RELEASE_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release_user:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release_user** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release_user>`

Ім'я користувача для файлу ключів релізу.

Може передаватися з змінною середовища ``GODOT_ANDROID_KEYSTORE_RELEASE_USER``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_background_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`

Підземний шар апробаційної іконки файл. `Дизайн адаптивних іконок <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_foreground_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432>`

Передній шар програми адаптивний іконок файл. `Дизайн адаптивних іконок <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_monochrome_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432>`

Монохромний шар файлу адаптивної піктограми програми. Перегляньте `Дизайн адаптивних значків <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/main_192x192** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192>`

Файл іконки додатків. Якщо ліва порожня, вона повернеться до :ref:`ПроектуНалаштування.application/config/icon<class_ПроектуНалаштування_member_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/app_category:

.. rst-class:: classref-property

:ref:`int<class_int>` **package/app_category** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/app_category>`

Категорія додатків для Google Play Store. Визначте це, якщо ваш додаток добре підходить для однієї з категорій. `android:appCategory <https://developer.android.com/guide/topics/manifest/application-element#appCategory>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/exclude_from_recents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/exclude_from_recents** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/exclude_from_recents>`

Якщо ``true``, завдання, ініційовані основною діяльністю, буде виключено з переліку нещодавно використовуваних додатків. Див. `android:excludeЗ альбомуRecents <https://developer.android.com/guide/topics/manifest/action-element#exclude>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **package/name** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/name>`

Назва заявки.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/retain_data_on_uninstall** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall>`

Якщо ``true``, коли користувач видаляє додаток, буде показано запит для збереження даних програми. Див. `android:hasFragileUserData <https://developer.android.com/guide/topics/manifest/application-element#fragileuserdata>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_as_launcher_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_as_launcher_app** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_as_launcher_app>`

Якщо ``true`` користувач зможе встановити цей додаток як системний пускач у налаштуваннях Android.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_in_android_tv:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_in_android_tv** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_in_android_tv>`

Якщо ``true``, цей додаток буде показувати в Android TV Launcher UI.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_in_app_library:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_in_app_library** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_in_app_library>`

Якщо ``true``, цей додаток покаже в бібліотеці додатків пристрою.

\ **Примітка:** Це ``true`` за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/signed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/signed** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/signed>`

Якщо ``true``, ввімкнення пакета.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/unique_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **package/unique_name** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/unique_name>`

Унікальний ідентифікатор програми у форматі зворотного керування. Відновлений формат DNS повинен переважно відповідати назві домену, але це не обов'язково. Наприклад, якщо ви володієте ``example.com``, Ваш пакет унікальний ім'я повинен бути з форми ``com.example.mygame``. Цей ідентифікатор може містити лише нижчі літерні символи (``a-z``, а ``0-9``), underscores (``_``), а також періоди (`` і ``). Кожен компонент зворотного формату DNS повинен почати з листа: наприклад, ``com.example.8game`` не діє.

Якщо ``$genname`` присутній у значення, він буде замінено на назву проекту, що перетворюється в нижній регістр. Якщо є недійсними символи в назві проекту, вони будуть роздягатися. Якщо всі символи в назві проекту смуговані, ``$genname`` замінено на ``noname``.

\ **Примітка:** Зміна назви пакета призведе до того, що пакет буде розглядатися як новий пакет, з власною установкою та шляхами даних. Новий пакет не доступний для оновлення існуючих інсталяцій.

\ **Примітка:** При публікації в Google Play, назву пакета повинна бути *globally* унікальний. Це означає, що не інші додатки, опубліковані на Google Play, повинні використовувати той же назву пакета, як ваш. В іншому випадку ви будете попереджені від публікації вашого додатка на Google Play.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_checkin_properties** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties>`

Дозволяє читати / записувати доступ до таблиці «пропорції» в базі даних. `ACCESS_CHECKIN_PROPERTIES <https://developer.android.com/reference/android/Manifest.permission#ACCESS_CHECKIN_PROPERTIES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_coarse_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_coarse_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_coarse_location>`

Дозволяє отримати доступ до інформації про приблизне розташування. `ACCESS_COARSE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_COARSE_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_fine_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_fine_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_fine_location>`

Дозволяє отримати доступ до точної інформації про розташування. `ACCESS_FINE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_location_extra_commands** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands>`

Дозволяє отримати доступ до додаткових команд провайдера. `ACCESS_LOCATION_EXTRA_COMMANDS <https://developer.android.com/reference/android/Manifest.permission#ACCESS_LOCATION_EXTRA_COMMANDS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_media_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_media_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_media_location>`

Дозволяє програмі отримати доступ до точної інформації про розташування. `ACCESS_FINE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_mock_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_mock_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_mock_location>`

Дозволяє програмі створювати локацію для тестування.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_network_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_network_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_network_state>`

Дозволяє отримати доступ до інформації про мережі. Переглянути `ACCESS_NETWORK_STATE <https://developer.android.com/reference/android/Manifest.permission#ACCESS_NETWORK_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_surface_flinger** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger>`

Дозволяє використовувати функцію низького рівня SurfaceFlinger.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_wifi_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_wifi_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_wifi_state>`

Дозволяє отримати доступ до інформації про мережі Wi-Fi. `ACCESS_WIFI_STATE <https://developer.android.com/reference/android/Manifest.permission#ACCESS_WIFI_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/account_manager:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/account_manager** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/account_manager>`

Дозволяє застосувати додатки для виклику в облікові записи. `ACCOUNT_MANAGER <https://developer.android.com/reference/android/Manifest.permission#ACCOUNT_MANAGER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/add_voicemail:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/add_voicemail** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/add_voicemail>`

Дозволяє програмі додати голосові повідомлення в систему. `ADD_VOICEMAIL <https://developer.android.com/reference/android/Manifest.permission#ADD_VOICEMAIL>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/authenticate_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts>`

Дозволяє програмі діяти як Аккаунтагент для бухгалтера.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/battery_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/battery_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/battery_stats>`

Дозволяє програмі збирати статистику акумулятора. `BATTERY_STATS <https://developer.android.com/reference/android/Manifest.permission#BATTERY_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_accessibility_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service>`

Для того, щоб забезпечити доступ до неї тільки систему. `BIND_ACCESSIBILITY_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_ACCESSIBILITY_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_appwidget:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_appwidget** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_appwidget>`

Дозволяє програмі розповісти про послугу AppWidget, який може отримати доступ до даних AppWidget. `BIND_APPWIDGET <https://developer.android.com/reference/android/Manifest.permission#BIND_APPWIDGET>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_device_admin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_device_admin** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_device_admin>`

Для того, щоб забезпечити, що тільки система може взаємодіяти з нею. `BIND_DEVICE_ADMIN <https://developer.android.com/reference/android/Manifest.permission#BIND_DEVICE_ADMIN>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_input_method:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_input_method** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_input_method>`

Повинна бути обов'язково за допомогою InputMethodService, щоб переконатися, що тільки система може зв'язатися з ним. `BIND_INPUT_METHOD <https://developer.android.com/reference/android/Manifest.permission#BIND_INPUT_METHOD>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_nfc_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service>`

Потрібні бути обов’язковими для того, щоб забезпечити доступ до неї лише системи. `BIND_NFC_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_NFC_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_notification_listener_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service>`

Повинен бути обов'язковим для того, щоб забезпечити, що тільки система може зв'язатися з ним. `BIND_NOTIFICATION_LISTENER_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_NOTIFICATION_LISTENER_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_print_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_print_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_print_service>`

Для того, щоб забезпечити доступ до неї тільки системи. `BIND_PRINT_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_PRINT_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_remoteviews** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews>`

Для того, щоб забезпечити доступ до неї тільки системи. `BIND_REMOTEVIEWS <https://developer.android.com/reference/android/Manifest.permission#BIND_REMOTEVIEWS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_text_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_text_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_text_service>`

Потрібні бути обов’язковими за допомогою TextService (наприклад, SpellCheckerService) для того, щоб забезпечити доступ до неї лише системи. `BIND_TEXT_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_TEXT_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_vpn_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service>`

Для того, щоб забезпечити доступ до неї тільки системи. Див. `BIND_VPN_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_VPN_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_wallpaper** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper>`

Повинен бути необхідний WallpaperService, щоб гарантувати, що лише система може прив’язуватися до нього. Перегляньте `BIND_WALLPAPER <https://developer.android.com/reference/android/Manifest.permission#BIND_WALLPAPER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth>`

Дозволяє застосувати додатки для підключення до припарених пристроїв bluetooth. Переглянути `BLUETOOTH <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth_admin** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin>`

Дозволяє додаткам для виявлення та пари пристроїв bluetooth. Переглянути `BLUETOOTH_ADMIN <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_ADMIN>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth_privileged** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged>`

Дозволяє застосувати пристрої bluetooth без взаємодії користувача, і дозволити або вимкнути доступ до телефонної книги або доступу до повідомлень. Переглянути `BLUETOOTH_PRIVILEGED <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_PRIVILEGED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/brick:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/brick** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/brick>`

Потрібно вміти відключити пристрій (небезпечний!).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_package_removed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed>`

Дозволяє програмі транслювати повідомлення, що було видалено пакет додатків. `BROADCAST_PACKAGE_REMOVED <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_PACKAGE_REMOVED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_sms>`

Дозволяє програмі транслювати повідомлення про отримання SMS. `BROADCAST_SMS <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_sticky** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky>`

Дозволяє програмі віщати липкі інтенси. `BROADCAST_STICKY <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_STICKY>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_wap_push** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push>`

Дозволяє програмі транслювати повідомлення про отримання WAP PUSH. `BROADST_WAP_PUSH <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_WAP_PUSH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/call_phone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/call_phone** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/call_phone>`

Дозволяє програмі ініціювати телефонний дзвінок без використання інтерфейсу користувача Dialer. Див. `CALL_PHONE <https://developer.android.com/reference/android/Manifest.permission#CALL_PHONE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/call_privileged:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/call_privileged** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/call_privileged>`

Дозволяє програмі дзвонити на будь-який телефонний номер, включно з екстреними номерами, без переходу через інтерфейс користувача Dialer. Див. `CALL_PRIVILEGED <https://developer.android.com/reference/android/Manifest.permission#CALL_PRIVILEGED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/camera** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/camera>`

Необхідно мати можливість доступу до пристрою камери. Переглянути `CAMERA <https://developer.android.com/reference/android/Manifest.permission#CAMERA>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_audio_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_audio_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_audio_output>`

Дозволяє програмі захопити аудіовихід. `CAPTURE_AUDIO_OUTPUT <https://developer.android.com/reference/android/Manifest.permission#CAPTURE_AUDIO_OUTPUT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_secure_video_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output>`

Дозволяє програмі для захоплення безпечного виходу відео.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_video_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_video_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_video_output>`

Дозволяє програмі захопити відеовихід.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_component_enabled_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state>`

Дозволяє програмі змінювати, чи ввімкнено компонент програми (по-своєму) або ні. `CHANGE_COMPONENT_ENABLED_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_COMPONENT_ENABLED_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_configuration:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_configuration** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_configuration>`

Дозволяє програмі змінювати точну конфігурацію, такі як локальне. Переглянути `CHANGE_CONFIGURATION <https://developer.android.com/reference/android/Manifest.permission#CHANGE_CONFIGURATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_network_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_network_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_network_state>`

Дозволяє програмам змінити стан підключення мережі. `CHANGE_NETWORK_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_NETWORK_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_wifi_multicast_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state>`

Дозволяє застосувати додатки, щоб ввести Wi-Fi багатокатний режим. `CHANGE_WIFI_MULTICAST_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_MULTICAST_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_wifi_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_wifi_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_wifi_state>`

Дозволяє програмі змінювати стан підключення Wi-Fi. `CHANGE_WIFI_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/clear_app_cache:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/clear_app_cache** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/clear_app_cache>`

Дозволяє програмі очистити кеш всіх встановлених додатків на пристрої. `CLEAR_APP_CACHE <https://developer.android.com/reference/android/Manifest.permission#CLEAR_APP_CACHE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/clear_app_user_data** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data>`

Дозволяє програмі очистити дані користувачів.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/control_location_updates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/control_location_updates** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/control_location_updates>`

Дозволяє отримувати повідомлення про оновлення місця розташування з радіо. `CONTROL_LOCATION_UPDATES <https://developer.android.com/reference/android/Manifest.permission#CONTROL_LOCATION_UPDATES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/custom_permissions:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **permissions/custom_permissions** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/custom_permissions>`

Армування користувацьких рядків дозволу.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/delete_cache_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/delete_cache_files** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/delete_cache_files>`

**Застаріло:** Ця властивість може бути змінена або усунута у наступних версіях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/delete_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/delete_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/delete_packages>`

Дозволяє програмі видаляти пакети. Переглянути `DELETE_PACKAGES <https://developer.android.com/reference/android/Manifest.permission#DELETE_PACKAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/device_power:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/device_power** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/device_power>`

Дозволяє низький рівень доступу до управління електромережами.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/diagnostic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/diagnostic** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/diagnostic>`

Дозволяє застосувати додатки до діагностичних ресурсів. `DIAGNOSTIC <https://developer.android.com/reference/android/Manifest.permission#DIAGNOSTIC>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/disable_keyguard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/disable_keyguard** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/disable_keyguard>`

Дозволяє застосувати додатки, щоб вимкнути блокування, якщо він не надійний. Переглянути `DISABLE_KEYGUARD <https://developer.android.com/reference/android/Manifest.permission#DISABLE_KEYGUARD>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/dump:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/dump** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/dump>`

Дозволяє програмі отримувати інформацію про стан від системних послуг. `DUMP <https://developer.android.com/reference/android/Manifest.permission#DUMP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/expand_status_bar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/expand_status_bar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/expand_status_bar>`

Дозволяє програмі розширити або згорнути рядок стану. `EXPAND_STATUS_BAR <https://developer.android.com/reference/android/Manifest.permission#EXPAND_STATUS_BAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/factory_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/factory_test** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/factory_test>`

Запуск як виробник тестової програми, яка працює як корінь користувача. `FACTORY_TEST <https://developer.android.com/reference/android/Manifest.permission#FACTORY_TEST>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/flashlight:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/flashlight** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/flashlight>`

Дозволяє отримати доступ до ліхтаря.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/force_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/force_back** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/force_back>`

Дозволяє програмі змусити роботу з BACK на будь-якому місці.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_accounts>`

Дозволяє отримати доступ до списку облікових записів в Сервісі Обліку. `GET_ACCOUNTS <https://developer.android.com/reference/android/Manifest.permission#GET_ACCOUNTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_package_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_package_size** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_package_size>`

Дозволяє програмі дізнатися простір, що використовується будь-яким пакетом. `GET_PACKAGE_SIZE <https://developer.android.com/reference/android/Manifest.permission#GET_PACKAGE_SIZE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_tasks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_tasks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_tasks>`

**Застаріло:** Deprecated in API level 21.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_top_activity_info** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info>`

Дозволяє отримувати персональну інформацію про актуальну діяльність.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/global_search:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/global_search** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/global_search>`

Використовується для доступу до даних. `GLOBAL_SEARCH <https://developer.android.com/reference/android/Manifest.permission#GLOBAL_SEARCH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/hardware_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/hardware_test** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/hardware_test>`

Дозволяє доступу до апаратних периферій.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/inject_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/inject_events** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/inject_events>`

Дозволяє програмі вводити події користувача (під ключі, дотик, трекбол) в потік подій і доставити їх до вікна ANY.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_location_provider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_location_provider** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_location_provider>`

Дозволяє програмі встановити провайдера розташування в диспетчері Місцезнаходження. `INSTALL_LOCATION_PROVIDER <https://developer.android.com/reference/android/Manifest.permission#INSTALL_LOCATION_PROVIDER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_packages>`

Дозволяє програмі встановлювати пакети. Переглянути `INSTALL_PACKAGES <https://developer.android.com/reference/android/Manifest.permission#INSTALL_PACKAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_shortcut:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_shortcut** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_shortcut>`

Дозволяє програмі встановити ярлик в Launcher. Переглянути `INSTALL_SHORTCUT <https://developer.android.com/reference/android/Manifest.permission#INSTALL_SHORTCUT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/internal_system_window:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/internal_system_window** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/internal_system_window>`

Дозволяє програмі відкривати вікна, призначені для використання частинами інтерфейсу користувача системи.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/internet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/internet** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/internet>`

Дозволяє додаткам для відкритих мережевих розеток. `INTERNET <https://developer.android.com/reference/android/Manifest.permission#INTERNET>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/kill_background_processes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/kill_background_processes** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/kill_background_processes>`

Дозволяє програмі для виклику активностіManager.killBackgroundProcesss(String). `KILL_BACKGROUND_PROCESSES <https://developer.android.com/reference/android/Manifest.permission#KILL_BACKGROUND_PROCESSES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/location_hardware:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/location_hardware** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/location_hardware>`

Дозволяє програмі використовувати функції місцезнаходження в апаратному забезпеченні, такі як геоfencing api. `LOCATION_HARDWARE <https://developer.android.com/reference/android/Manifest.permission#LOCATION_HARDWARE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_accounts>`

Дозволяє програмі керувати переліком рахунків в обліковому записі.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_app_tokens** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens>`

Дозволяє програмі керувати (відтворити, знищити, Z-замовити) токени у віконному менеджеру.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_documents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_documents** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_documents>`

Дозволяє програмі керувати доступом до документів, як правило, в рамках вибору документа. `MANAGE_DOCUMENTS <https://developer.android.com/reference/android/Manifest.permission#MANAGE_DOCUMENTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_external_storage>`

Дозволяє скористатися широким доступом до зовнішнього сховища в об'ємному зберіганні. `MANAGE_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#MANAGE_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_media:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_media** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_media>`

Дозволяє програмі змінювати та видаляти медіафайли на цьому пристрої або будь-якому підключеному пристрої пам’яті без підтвердження користувача. Щоб цей дозвіл набув чинності, програмам вже мають бути надані дозволи ``READ_EXTERNAL_STORAGE`` або ``MANAGE_EXTERNAL_STORAGE``. Див. `MANAGE_MEDIA <https://developer.android.com/reference/android/Manifest.permission#MANAGE_MEDIA>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/master_clear:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/master_clear** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/master_clear>`

`MASTER_CLEAR <https://developer.android.com/reference/android/Manifest.permission#MASTER_CLEAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/media_content_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/media_content_control** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/media_content_control>`

Дозволяє програмі знати, який контент грає і контролювати його відтворення. [url=https://developer.android.com/reference/android/Manifest.permission#MEDIA_CONTENT_CONTENT_CONTENT_CONTENT_CONTROL[/url].

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/modify_audio_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings>`

Дозволяє програмі модифікувати глобальні налаштування аудіо. `MODIFY_AUDIO_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#MODIFY_AUDIO_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/modify_phone_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/modify_phone_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/modify_phone_state>`

Дозволяє модифікувати телефонний стан - потужність, мм і т.д. Чи не входить у вартість розміщення дзвінків. `MODIFY_PHONE_STATE <https://developer.android.com/reference/android/Manifest.permission#MODIFY_PHONE_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/mount_format_filesystems** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems>`

Дозволяє форматувати файлові системи для знімного зберігання. Переглянути `MOUNT_FORMAT_FILESYSTEMS <https://developer.android.com/reference/android/Manifest.permission#MOUNT_FORMAT_FILESYSTEMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/mount_unmount_filesystems** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems>`

Дозволяє встановлювати та немонтувати файлові системи для знімного зберігання. `MOUNT_UNMOUNT_FILESYSTEMS <https://developer.android.com/reference/android/Manifest.permission#MOUNT_UNMOUNT_FILESYSTEMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/nfc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/nfc** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/nfc>`

Дозволяє програмі виконувати операції I/O на NFC. `NFC <https://developer.android.com/reference/android/Manifest.permission#NFC>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/persistent_activity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/persistent_activity** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/persistent_activity>`

**Застаріло:** Deprecated in API level 15.

Дозволяє програмі зробити свою діяльність стійким.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/post_notifications:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/post_notifications** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/post_notifications>`

Дозволяє програмі розміщувати повідомлення. Додано в рівень API 33. Див. `Повідомлення пропуску  <https://developer.android.com/develop/ui/views/notification-permission>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/process_outgoing_calls** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls>`

**Застаріло:** Deprecated in API level 29.

Дозволяє програмі переглядати номер, який занурюється під час вихідних викликів з можливістю перенаправлення виклику на інший номер або упорядковувати дзвінок. `PROCESS_OUTGOING_CALLS <https://developer.android.com/reference/android/Manifest.permission#PROCESS_OUTGOING_CALLS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_calendar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_calendar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_calendar>`

Дозволяє програмі читати дані календаря користувача. `READ_CALENDAR <https://developer.android.com/reference/android/Manifest.permission#READ_CALENDAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_call_log:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_call_log** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_call_log>`

Дозволяє програмі читати журнал дзвінків користувача. `READ_CALL_LOG <https://developer.android.com/reference/android/Manifest.permission#READ_CALL_LOG>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_contacts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_contacts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_contacts>`

Дозволяє програмі читати дані контактів користувача. `READ_CONTACTS <https://developer.android.com/reference/android/Manifest.permission#READ_CONTACTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_external_storage>`

**Застаріло:** Deprecated in API level 33.

Дозволяє програмі читати з зовнішнього сховища. `READ_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#READ_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_frame_buffer** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer>`

Дозволяє програмі знімати знімки екрана і більше, як правило, отримати доступ до даних буфера.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_history_bookmarks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks>`

Дозволяє програмі читати (але не писати) історію та закладки користувачів.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_input_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_input_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_input_state>`

**Застаріло:** Deprecated in API level 16.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_logs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_logs** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_logs>`

Дозволяє програмі читати файли журналів низького рівня. `READ_LOGS <https://developer.android.com/reference/android/Manifest.permission#READ_LOGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_audio:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_audio** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_audio>`

Дозволяє програмі читати з зовнішнього сховища. `READ_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#READ_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_images:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_images** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_images>`

Дозволяє програмі читати зображення з зовнішнього сховища. Див. `READ_MEDIA_IMAGES <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_IMAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_video:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_video** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_video>`

Дозволяє програмі читати відеофайли з зовнішнього сховища. Див. `READ_MEDIA_VIDEO <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VIDEO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_visual_user_selected** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected>`

Дозволяє програмі читати зображення або відеофайли з зовнішнього сховища, доступ до яких дозволено користувачем за допомогою спеціального запиту. Див. `READ_MEDIA_VISUAL_USER_SELECTED <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VISUAL_USER_SELECTED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_phone_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_phone_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_phone_state>`

Дозволяє читати тільки доступ до стану телефону. `READ_PHONE_STATE <https://developer.android.com/reference/android/Manifest.permission#READ_PHONE_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_profile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_profile** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_profile>`

Дозволяє програмі читати персональні дані користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sms>`

Дозволяє програмі читати SMS повідомлення. `READ_SMS <https://developer.android.com/reference/android/Manifest.permission#READ_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_social_stream:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_social_stream** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_social_stream>`

Дозволяє програмі читати з соціального потоку користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sync_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sync_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sync_settings>`

Дозволяє програмі читати налаштування синхронізації. Переглянути `READ_SYNC_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sync_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sync_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sync_stats>`

Дозволяє програмам читати статистика синхронізації. `READ_SYNC_STATS <https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_user_dictionary** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary>`

Дозволяє програмі читати словник користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/reboot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/reboot** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/reboot>`

Необхідно мати можливість перезавантажити пристрій. `REBOOT <https://developer.android.com/reference/android/Manifest.permission#REBOOT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_boot_completed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed>`

Дозволяє програмі отримувати Intent. АКЦІЇ_BOOT_COMPLETED що транслюється після завантаження системи. `RECEIVE_BOOT_COMPLETED <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_BOOT_COMPLETED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_mms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_mms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_mms>`

Дозволяє програмі контролювати вхідні повідомлення ММС. `RECEIVE_MMS <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_MMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_sms>`

Дозволяє отримувати повідомлення SMS. `RECEIVE_SMS <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_wap_push:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_wap_push** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_wap_push>`

Дозволяє програмі отримувати повідомлення від WAP. `RECEIVE_WAP_PUSH <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_WAP_PUSH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/record_audio:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/record_audio** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/record_audio>`

Дозволяє програмі записувати аудіо. `RECORD_AUDIO <https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/reorder_tasks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/reorder_tasks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/reorder_tasks>`

Дозволяє програмі змінити Z-замовлення завдань. `REORDER_TASKS <https://developer.android.com/reference/android/Manifest.permission#REORDER_TASKS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/restart_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/restart_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/restart_packages>`

**Застаріло:** Deprecated in API level 15.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/send_respond_via_message** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message>`

Дозволяє програмі (Телефон) надсилати запит на інші програми, щоб впоратися з дією відповіді під час вхідних дзвінків. `SEND_RESPOND_VIA_MESSAGE <https://developer.android.com/reference/android/Manifest.permission#SEND_RESPOND_VIA_MESSAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/send_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/send_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/send_sms>`

Дозволяє програмі надсилати повідомлення SMS. `SEND_SMS <https://developer.android.com/reference/android/Manifest.permission#SEND_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_activity_watcher** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher>`

Дозволяє програмі дивитися і контролювати, як розпочато роботу по всьому світу в системі.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_alarm:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_alarm** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_alarm>`

Дозволяє програмі транслювати додаток, щоб встановити сигналізацію для користувача. `SET_ALARM <https://developer.android.com/reference/android/Manifest.permission#SET_ALARM>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_always_finish:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_always_finish** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_always_finish>`

Дозволяє програмі контролювати, чи працює діяльність відразу при введенні на фоні. `SET_ALWAYS_FINISH <https://developer.android.com/reference/android/Manifest.permission#SET_ALWAYS_FINISH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_animation_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_animation_scale** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_animation_scale>`

Дозволяє змінювати глобальний фактор масштабування анімації. `SET_ANIMATION_SCALE <https://developer.android.com/reference/android/Manifest.permission#SET_ANIMATION_SCALE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_debug_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_debug_app** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_debug_app>`

Налаштуйте програму для видалення. `SET_DEBUG_APP <https://developer.android.com/reference/android/Manifest.permission#SET_DEBUG_APP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_orientation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_orientation** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_orientation>`

Дозволяє отримати доступ до низького рівня для налаштування орієнтації (актуально обертання) екрану.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_pointer_speed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed>`

Дозволяє отримати доступ до низького рівня для налаштування швидкості точилка.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_preferred_applications** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications>`

**Застаріло:** Deprecated in API level 15.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_process_limit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_process_limit** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_process_limit>`

Дозволяє програмі встановити максимальну кількість (не потрібно) процесів додатків, які можуть працювати. `SET_PROCESS_LIMIT <https://developer.android.com/reference/android/Manifest.permission#SET_PROCESS_LIMIT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_time:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_time** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_time>`

Дозволяє встановлювати час системи безпосередньо. `SET_TIME <https://developer.android.com/reference/android/Manifest.permission#SET_TIME>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_time_zone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_time_zone** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_time_zone>`

Дозволяє застосувати додатки для встановлення зони часу системи безпосередньо. `SET_TIME_ZONE <https://developer.android.com/reference/android/Manifest.permission#SET_TIME_ZONE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_wallpaper:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_wallpaper** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper>`

Дозволяє застосувати додатки для встановлення шпалер. Переглянути `SET_WALLPAPER <https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_wallpaper_hints** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints>`

Дозволяє застосувати додатки, щоб встановити підказки шпалер. `SET_WALLPAPER_HINTS <https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER_HINTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/signal_persistent_processes** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes>`

Додайте заявку на запит, що сигнал буде відправлений на всі постійні процеси. `SIGNAL_PERSISTENT_PROCESSES <https://developer.android.com/reference/android/Manifest.permission#SIGNAL_PERSISTENT_PROCESSES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/status_bar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/status_bar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/status_bar>`

Дозволяє програмі відкрити, закрити або вимкнути рядок стану та його ікони. `STATUS_BAR <https://developer.android.com/reference/android/Manifest.permission#STATUS_BAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/subscribed_feeds_read** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read>`

Дозволяє отримувати доступ до абонентських кормів ContentProvider.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/subscribed_feeds_write** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write>`

**Застаріло:** Ця властивість може бути змінена або усунута у наступних версіях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/system_alert_window:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/system_alert_window** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/system_alert_window>`

Дозволяє програмі створювати вікна за допомогою типу WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY, показано на вершині всіх інших додатків. `SYSTEM_ALERT_WINDOW <https://developer.android.com/reference/android/Manifest.permission#SYSTEM_ALERT_WINDOW>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/transmit_ir:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/transmit_ir** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/transmit_ir>`

Дозволяє використовувати IR-передавач пристрою, якщо це можливо. `TRANSMIT_IR <https://developer.android.com/reference/android/Manifest.permission#TRANSMIT_IR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/uninstall_shortcut** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut>`

**Застаріло:** Ця властивість може бути змінена або усунута у наступних версіях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/update_device_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/update_device_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/update_device_stats>`

Дозволяє програмі оновити статистику пристрою. `UPDATE_DEVICE_STATS <https://developer.android.com/reference/android/Manifest.permission#UPDATE_DEVICE_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/use_credentials:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/use_credentials** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/use_credentials>`

Дозволяє програмі запитувати ауттокенів від AccountManager.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/use_sip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/use_sip** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/use_sip>`

Дозволяє використовувати послугу SIP. `USE_SIP <https://developer.android.com/reference/android/Manifest.permission#USE_SIP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/vibrate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/vibrate** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/vibrate>`

Дозволяє отримати доступ до вібратора. `VIBRATE <https://developer.android.com/reference/android/Manifest.permission#VIBRATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/wake_lock:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/wake_lock** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/wake_lock>`

Дозволяє використовувати PowerManager WakeLocks для збереження процесора від сну або екрана від dimming. `WAKE_LOCK <https://developer.android.com/reference/android/Manifest.permission#WAKE_LOCK>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_apn_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_apn_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_apn_settings>`

Дозволяє програмам писати параметри apn і читати конфіденційні поля існуючих параметрів apn, як користувач і пароль. Переглянути `WRITE_APN_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_APN_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_calendar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_calendar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_calendar>`

Дозволяє програмі писати дані календаря користувача. `WRITE_CALENDAR <https://developer.android.com/reference/android/Manifest.permission#WRITE_CALENDAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_call_log:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_call_log** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_call_log>`

Дозволяє програмі писати (але не читати) дані журналу дзвінків користувача. `WRITE_CALL_LOG <https://developer.android.com/reference/android/Manifest.permission#WRITE_CALL_LOG>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_contacts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_contacts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_contacts>`

Дозволяє програмі писати дані контактів користувача. Переглянути `WRITE_CONTACTS <https://developer.android.com/reference/android/Manifest.permission#WRITE_CONTACTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_external_storage>`

Дозволяє програмі писати на зовнішній склад. `WRITE_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#WRITE_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_gservices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_gservices** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_gservices>`

Дозволяє програмі змінювати карту сервісів Google. Переглянути `WRITE_GSERVICES <https://developer.android.com/reference/android/Manifest.permission#WRITE_GSERVICES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_history_bookmarks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks>`

Дозволяє програмі писати (але не читати) історію та закладки користувачів.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_profile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_profile** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_profile>`

Дозволяє програмі писати (але не читати) персональні дані профілю користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_secure_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_secure_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_secure_settings>`

Дозволяє програмі читати або писати налаштування системи безпеки. `WRITE_SECURE_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SECURE_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_settings>`

Дозволяє програмі читати або писати налаштування системи. Переглянути `WRITE_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_sms>`

Дозволяє програмі писати SMS повідомлення.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_social_stream:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_social_stream** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_social_stream>`

Дозволяє програмі писати (але не читати) дані соціального потоку користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_sync_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_sync_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_sync_settings>`

Дозволяє програмам писати налаштування синхронізації. `WRITE_SYNC_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SYNC_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_user_dictionary** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary>`

Дозволяє програмі писати словнику користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **screen/background_color** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/background_color>`

Колір фону, який використовується для кореневого вікна. За замовчуванням це :ref:`Color.BLACK<class_Color_constant_BLACK>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/edge_to_edge:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/edge_to_edge** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/edge_to_edge>`

Якщо значення ``true``, це робить рядок навігації та рядок стану напівпрозорими та дозволяє вмісту програми розширюватися від краю до краю.

\ **Примітка:** Вам слід переконатися, що вміст програми не перекривається системними елементами, використовуючи методи :ref:`DisplayServer.get_display_safe_area()<class_DisplayServer_method_get_display_safe_area>` та :ref:`DisplayServer.get_display_cutouts()<class_DisplayServer_method_get_display_cutouts>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/immersive_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/immersive_mode** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/immersive_mode>`

Якщо ``true``, приховує рядок навігації та рядок стану. Встановіть :ref:`DisplayServer.window_set_mode()<class_DisplayServer_method_window_set_mode>`, щоб змінити це під час виконання.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_large:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_large** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_large>`

Повідомляє, чи підтримує програма більших значень у форматі екрана.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_normal:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_normal** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_normal>`

Повідомляє, чи підтримує додаток "нормальний" екран.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_small:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_small** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_small>`

Повідомляє, чи підтримує програма менших значень у форматі екрана.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_xlarge:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_xlarge** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_xlarge>`

Повідомляє, чи підтримує додаток додаткові великі редактори.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformAndroid_property_shader_baker/enabled>`

Якщо значення ``true``, шейдери будуть скомпільовані та вбудовані в програму. Ця опція підтримується лише під час використання рендерерів Forward+ або Mobile.

\ **Примітка:** Під час експорту на виділений сервер, шейдер-бейкер завжди вимкнено, оскільки рендеринг не виконується.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_splash_screen/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **splash_screen/background_color** :ref:`🔗<class_EditorExportPlatformAndroid_property_splash_screen/background_color>`

Колір фону, що використовується для вікна заставного екрана системи.

Якщо значення не вказано, буде використано значення за замовчуванням :ref:`launcher_icons/adaptive_background_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`.

\ **Примітка:** Цей параметр застосовується лише в тому випадку, якщо ввімкнено :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_splash_screen/branding_image:

.. rst-class:: classref-property

:ref:`String<class_String>` **splash_screen/branding_image** :ref:`🔗<class_EditorExportPlatformAndroid_property_splash_screen/branding_image>`

Файл зображення для брендингу заставного екрану системи. Якщо поле залишити порожнім, зображення для брендингу не буде використовуватися. Див. `розміри заставного екрану <https://developer.android.com/develop/ui/views/launch/splash-screen#dimensions>`__.

\ **Примітка:** Може використовуватися для налаштування зображення, яке відображатиметься внизу заставного екрану.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_splash_screen/disable_godot_boot_splash:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **splash_screen/disable_godot_boot_splash** :ref:`🔗<class_EditorExportPlatformAndroid_property_splash_screen/disable_godot_boot_splash>`

Якщо ``true``, заставка завантаження Godot не відображатиметься, а заставка завантаження системи залишатиметься на екрані довше — до запуску головного циклу.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_splash_screen/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **splash_screen/icon** :ref:`🔗<class_EditorExportPlatformAndroid_property_splash_screen/icon>`

Файл іконки заставного екрану системи. Якщо поле залишити порожнім, система використає файл :ref:`launcher_icons/adaptive_foreground_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432>`. Див. `розміри заставного екрану <https://developer.android.com/develop/ui/views/launch/splash-screen#dimensions>`__.

\ **Примітка:** Ви можете надати XML-файл `AnimatedVectorDrawable (AVD) <https://developer.android.com/reference/android/graphics/drawable/AnimatedVectorDrawable>`__. Однак XML-файл буде використано лише у разі, якщо увімкнено :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`. Якщо ні, буде використано :ref:`launcher_icons/adaptive_background_432x432<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_user_data_backup/allow:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **user_data_backup/allow** :ref:`🔗<class_EditorExportPlatformAndroid_property_user_data_backup/allow>`

Якщо ``true``, можна скористатися додатком для участі в резервній та відновленій інфраструктурі.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_version/code:

.. rst-class:: classref-property

:ref:`int<class_int>` **version/code** :ref:`🔗<class_EditorExportPlatformAndroid_property_version/code>`

Машинна версія програми. Для кожного нового релізу натисніть на Play Store.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_version/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **version/name** :ref:`🔗<class_EditorExportPlatformAndroid_property_version/name>`

Версія програми видима для користувача. Повернутися до ``члени ПроектуНалаштування.application/config/version``, якщо зліва порожній.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_xr_features/xr_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **xr_features/xr_mode** :ref:`🔗<class_EditorExportPlatformAndroid_property_xr_features/xr_mode>`

Режим розширеної реальності (XR) для цього додатка.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
