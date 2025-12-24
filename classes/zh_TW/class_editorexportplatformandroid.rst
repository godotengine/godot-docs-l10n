:github_url: hide

.. _class_EditorExportPlatformAndroid:

EditorExportPlatformAndroid
===========================

**繼承：** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

適用於 Android 的匯出器。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`為 Android 匯出 <../tutorials/export/exporting_for_android>`

- :doc:`Gradle builds for Android <../tutorials/export/android_gradle_build>`

- :doc:`編輯器外掛程式文件索引 <../tutorials/platform/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`apk_expansion/SALT<class_EditorExportPlatformAndroid_property_apk_expansion/SALT>`                                                         |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`apk_expansion/enable<class_EditorExportPlatformAndroid_property_apk_expansion/enable>`                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`apk_expansion/public_key<class_EditorExportPlatformAndroid_property_apk_expansion/public_key>`                                             |
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

屬性說明
--------

.. _class_EditorExportPlatformAndroid_property_apk_expansion/SALT:

.. rst-class:: classref-property

:ref:`String<class_String>` **apk_expansion/SALT** :ref:`🔗<class_EditorExportPlatformAndroid_property_apk_expansion/SALT>`

許可政策用於建立 `Obfuscator <https://developer.android.com/google/play/licensing/adding-licensing#impl-Obfuscator>`__ 的隨機位元組陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_apk_expansion/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **apk_expansion/enable** :ref:`🔗<class_EditorExportPlatformAndroid_property_apk_expansion/enable>`

If ``true``, project resources are stored in the separate APK expansion file, instead of the APK.

\ **Note:** APK expansion should be enabled to use PCK encryption. See `APK Expansion Files <https://developer.android.com/google/play/expansion-files>`__

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_apk_expansion/public_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **apk_expansion/public_key** :ref:`🔗<class_EditorExportPlatformAndroid_property_apk_expansion/public_key>`

Base64 encoded RSA public key for your publisher account, available from the profile page on the "Google Play Console".

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/arm64-v8a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/arm64-v8a** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/arm64-v8a>`

如果為 ``true``\ ，\ ``arm64`` 二進位檔案將包含在匯出的專案中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/armeabi-v7a** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a>`

如果為 ``true``\ ，\ ``arm32`` 二進位檔案將包含在匯出的專案中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/x86:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/x86** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/x86>`

如果為 ``true``\ ，\ ``x86_32`` 二進位檔案將包含在匯出的專案中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/x86_64:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/x86_64** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/x86_64>`

如果為 ``true``\ ，\ ``x86_64`` 二進位檔案將包含在匯出的專案中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_command_line/extra_args:

.. rst-class:: classref-property

:ref:`String<class_String>` **command_line/extra_args** :ref:`🔗<class_EditorExportPlatformAndroid_property_command_line/extra_args>`

A list of additional command line arguments, separated by space, which the exported project will receive when started.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_custom_template/debug>`

Path to an APK file to use as a custom export template for debug exports. If left empty, default template is used.

\ **Note:** This is only used if :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` is disabled.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformAndroid_property_custom_template/release>`

Path to an APK file to use as a custom export template for release exports. If left empty, default template is used.

\ **Note:** This is only used if :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` is disabled.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gesture/swipe_to_dismiss** :ref:`🔗<class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss>`

If ``true``, `Swipe to dismiss <https://developer.android.com/design/ui/wear/guides/components/swipe-to-dismiss>`__ will be enabled.

This functionality is intended for smartwatches and is generally ignored on standard Android devices. However, some devices may not ignore it. Therefore, it is recommended to keep this feature disabled for standard Android apps to avoid unexpected behavior.

\ **Note:** This is ``false`` by default. To enable this behavior, :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` is required.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/android_source_template:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/android_source_template** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/android_source_template>`

Path to a ZIP file holding the source for the export template used in a Gradle build. If left empty, the default template is used.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gradle_build/compress_native_libraries** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries>`

If ``true``, native libraries are compressed when performing a Gradle build.

\ **Note:** While enabling compression can reduce the size of the binary, it may result in slower application startup because the native libraries must be extracted before use, rather than being loaded directly.

If you're distributing your app via the Play Store, it's generally recommended to keep this option ``false``, see `official documentation <https://developer.android.com/build/releases/past-releases/agp-3-6-0-release-notes#extractNativeLibs>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **gradle_build/custom_theme_attributes** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes>`

A dictionary of custom theme attributes to include in the exported Android project. Each entry defines a theme attribute name and its value, and will be added to the **GodotAppMainTheme**.

For example, the key ``android:windowSwipeToDismiss`` with the value ``false`` is resolved to ``<item name="android:windowSwipeToDismiss">false</item>``.

\ **Note:** To add a custom attribute to the **GodotAppSplashTheme**, prefix the attribute name with ``[splash]``.

\ **Note:** Reserved attributes configured via other export options or project settings cannot be overridden by ``custom_theme_attributes`` and are skipped during export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/export_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **gradle_build/export_format** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/export_format>`

Application export format (\*.apk or \*.aab).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/gradle_build_directory** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory>`

Path to the Gradle build directory. If left empty, then ``res://android`` will be used.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/min_sdk:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/min_sdk** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/min_sdk>`

Minimum Android API level required for the application to run (used during Gradle build). See `android:minSdkVersion <https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/target_sdk:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/target_sdk** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/target_sdk>`

The Android API level on which the application is designed to run (used during Gradle build). See `android:targetSdkVersion <https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gradle_build/use_gradle_build** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`

如果為 ``true``\ ，則使用 Gradle 建構而不是預建構的 APK。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_graphics/opengl_debug:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **graphics/opengl_debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_graphics/opengl_debug>`

如果為 ``true``\ ，則將建立 OpenGL ES 除錯本文（額外的運作時檢查、驗證、和紀錄記錄）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug>`

除錯金鑰庫檔的路徑。

可以被環境變數 ``GODOT_ANDROID_KEYSTORE_DEBUG_PATH`` 覆蓋。

如果為空，則退回到 ``EditorSettings.export/android/debug_keystore``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug_password** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug_password>`

除錯金鑰庫檔的密碼。

可以使用環境變數 ``GODOT_ANDROID_KEYSTORE_DEBUG_PASSWORD`` 覆蓋。

如果該屬性和 :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>` 都為空，則退回到 ``EditorSettings.export/android/debug_keystore_pass``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug_user:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug_user** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug_user>`

除錯金鑰庫檔案的使用者名。

可以使用環境變數 ``GODOT_ANDROID_KEYSTORE_DEBUG_USER`` 覆蓋。

如果該屬性和 :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>` 都為空，則退回到 ``EditorSettings.export/android/debug_keystore_user``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release>`

發行金鑰庫檔的路徑。

可以使用環境變數 ``GODOT_ANDROID_KEYSTORE_RELEASE_PATH`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release_password** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release_password>`

發行金鑰庫檔的密碼。

可以使用環境變數 ``GODOT_ANDROID_KEYSTORE_RELEASE_PASSWORD`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release_user:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release_user** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release_user>`

發行金鑰庫檔的使用者名。

可以使用環境變數 ``GODOT_ANDROID_KEYSTORE_RELEASE_USER`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_background_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`

Background layer of the application adaptive icon file. See `Design adaptive icons <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_foreground_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432>`

Foreground layer of the application adaptive icon file. See `Design adaptive icons <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_monochrome_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432>`

Monochrome layer of the application adaptive icon file. See `Design adaptive icons <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/main_192x192** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192>`

套用程式圖示檔。如果留空，它將退回到 :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/app_category:

.. rst-class:: classref-property

:ref:`int<class_int>` **package/app_category** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/app_category>`

Application category for the Google Play Store. Only define this if your application fits one of the categories well. See `android:appCategory <https://developer.android.com/guide/topics/manifest/application-element#appCategory>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/exclude_from_recents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/exclude_from_recents** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/exclude_from_recents>`

If ``true``, task initiated by main activity will be excluded from the list of recently used applications. See `android:excludeFromRecents <https://developer.android.com/guide/topics/manifest/activity-element#exclude>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **package/name** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/name>`

套用程式的名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/retain_data_on_uninstall** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall>`

If ``true``, when the user uninstalls an app, a prompt to keep the app's data will be shown. See `android:hasFragileUserData <https://developer.android.com/guide/topics/manifest/application-element#fragileuserdata>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_as_launcher_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_as_launcher_app** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_as_launcher_app>`

如果為 ``true``\ ，則編輯器會在運作遊戲專案時清空“輸出”面板。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_in_android_tv:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_in_android_tv** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_in_android_tv>`

如果為 ``true``\ ，對話方塊將顯示出隱藏檔。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_in_app_library:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_in_app_library** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_in_app_library>`

如果為 ``true``\ ，則在觸控式螢幕裝置上啟用兩指平移和縮放手勢。

\ **注意：**\ 在觸控式螢幕裝置上預設為 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/signed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/signed** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/signed>`

如果為 ``true``\ ，則包簽章被啟用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/unique_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **package/unique_name** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/unique_name>`

Unique application identifier in a reverse-DNS format. The reverse DNS format should preferably match a domain name you control, but this is not strictly required. For instance, if you own ``example.com``, your package unique name should preferably be of the form ``com.example.mygame``. This identifier can only contain lowercase alphanumeric characters (``a-z``, and ``0-9``), underscores (``_``), and periods (``.``). Each component of the reverse DNS format must start with a letter: for instance, ``com.example.8game`` is not valid.

If ``$genname`` is present in the value, it will be replaced by the project name converted to lowercase. If there are invalid characters in the project name, they will be stripped. If all characters in the project name are stripped, ``$genname`` is replaced by ``noname``.

\ **Note:** Changing the package name will cause the package to be considered as a new package, with its own installation and data paths. The new package won't be usable to update existing installations.

\ **Note:** When publishing to Google Play, the package name must be *globally* unique. This means no other apps published on Google Play must be using the same package name as yours. Otherwise, you'll be prevented from publishing your app on Google Play.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_checkin_properties** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties>`

允許對簽到資料庫的“properties”表進行讀寫存取。見 `ACCESS_CHECKIN_PROPERTIES <https://developer.android.com/reference/android/Manifest.permission#ACCESS_CHECKIN_PROPERTIES>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_coarse_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_coarse_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_coarse_location>`

允許存取大致位置資訊。見 `ACCESS_COARSE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_COARSE_LOCATION>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_fine_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_fine_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_fine_location>`

允許存取精確位置資訊。見 `ACCESS_FINE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_location_extra_commands** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands>`

允許對額外位置提供方命令的存取。見 `ACCESS_LOCATION_EXTRA_COMMANDS <https://developer.android.com/reference/android/Manifest.permission#ACCESS_LOCATION_EXTRA_COMMANDS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_media_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_media_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_media_location>`

Allows an application to access any geographic locations persisted in the user's shared collection. See `ACCESS_MEDIA_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_MEDIA_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_mock_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_mock_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_mock_location>`

允許套用程式為測試目的建立 Mock 位置提供方。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_network_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_network_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_network_state>`

允許對網路相關資訊進行存取。見 `ACCESS_NETWORK_STATE <https://developer.android.com/reference/android/Manifest.permission#ACCESS_NETWORK_STATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_surface_flinger** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger>`

允許套用程式使用 SurfaceFlinger 的底層功能。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_wifi_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_wifi_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_wifi_state>`

允許對 Wi-Fi 網路相關資訊進行存取。見 `ACCESS_WIFI_STATE <https://developer.android.com/reference/android/Manifest.permission#ACCESS_WIFI_STATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/account_manager:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/account_manager** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/account_manager>`

允許套用程式對 AccountAuthenticator 進行呼叫。見 `ACCOUNT_MANAGER <https://developer.android.com/reference/android/Manifest.permission#ACCOUNT_MANAGER>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/add_voicemail:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/add_voicemail** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/add_voicemail>`

允許套用程式向系統中新增語音郵件。見 `ADD_VOICEMAIL <https://developer.android.com/reference/android/Manifest.permission#ADD_VOICEMAIL>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/authenticate_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts>`

允許套用程式在 AccountManager 中扮演 AccountAuthenticator 的角色。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/battery_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/battery_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/battery_stats>`

允許套用程式收集電池統計資訊。見 `BATTERY_STATS <https://developer.android.com/reference/android/Manifest.permission#BATTERY_STATS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_accessibility_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service>`

AccessibilityService 必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_ACCESSIBILITY_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_ACCESSIBILITY_SERVICE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_appwidget:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_appwidget** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_appwidget>`

允許套用程式告訴 AppWidget 服務哪個套用程式可以存取 AppWidget 的資料。見 `BIND_APPWIDGET <https://developer.android.com/reference/android/Manifest.permission#BIND_APPWIDGET>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_device_admin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_device_admin** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_device_admin>`

裝置管理接收器所必需的，以確保只有系統可以與其互動。見 `BIND_DEVICE_ADMIN <https://developer.android.com/reference/android/Manifest.permission#BIND_DEVICE_ADMIN>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_input_method:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_input_method** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_input_method>`

InputMethodService 必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_INPUT_METHOD <https://developer.android.com/reference/android/Manifest.permission#BIND_INPUT_METHOD>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_nfc_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service>`

HostApduService 或 OffHostApduService 必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_NFC_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_NFC_SERVICE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_notification_listener_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service>`

NotificationListenerService 必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_NOTIFICATION_LISTENER_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_NOTIFICATION_LISTENER_SERVICE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_print_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_print_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_print_service>`

PrintService 必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_PRINT_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_PRINT_SERVICE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_remoteviews** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews>`

RemoteViewsService 必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_REMOTEVIEWS <https://developer.android.com/reference/android/Manifest.permission#BIND_REMOTEVIEWS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_text_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_text_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_text_service>`

TextService（例如 SpellCheckerService）必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_TEXT_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_TEXT_SERVICE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_vpn_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service>`

VpnService 必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_VPN_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_VPN_SERVICE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_wallpaper** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper>`

WallpaperService 必須要求此許可權，確保只能系統能夠進行綁定。見 `BIND_WALLPAPER <https://developer.android.com/reference/android/Manifest.permission#BIND_WALLPAPER>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth>`

允許套用程式連接到配對的藍牙裝置。見 `BLUETOOTH <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth_admin** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin>`

允許套用程式發現並配對藍牙裝置。見 `BLUETOOTH_ADMIN <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_ADMIN>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth_privileged** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged>`

允許套用程式在無需使用者互動的情況下配對藍牙裝置，並允許或禁止存取電話簿或消息。見 `BLUETOOTH_PRIVILEGED <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_PRIVILEGED>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/brick:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/brick** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/brick>`

能夠禁用該裝置（非常危險！）必須要求此許可權。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_package_removed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed>`

允許套用程式廣播套用套裝程式已被刪除的通知。見 `BROADCAST_PACKAGE_REMOVED <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_PACKAGE_REMOVED>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_sms>`

允許套用程式廣播短信接收通知。見 `BROADCAST_SMS <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_SMS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_sticky** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky>`

允許套用程式廣播粘性意圖。見 `BROADCAST_STICKY <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_STICKY>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_wap_push** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push>`

允許套用程式廣播 WAP PUSH 回條通知。見 `BROADCAST_WAP_PUSH <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_WAP_PUSH>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/call_phone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/call_phone** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/call_phone>`

允許套用程式無需通過撥號器使用者介面即可發起電話呼叫。見 `CALL_PHONE <https://developer.android.com/reference/android/Manifest.permission#CALL_PHONE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/call_privileged:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/call_privileged** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/call_privileged>`

允許套用程式無需通過撥號器使用者介面，即可撥打任意電話號碼，包括緊急號碼。見 `CALL_PRIVILEGED <https://developer.android.com/reference/android/Manifest.permission#CALL_PRIVILEGED>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/camera** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/camera>`

能夠存取相機裝置必須要求此許可權。見 `CAMERA <https://developer.android.com/reference/android/Manifest.permission#CAMERA>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_audio_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_audio_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_audio_output>`

允許套用程式捕獲音訊輸出。見 `CAPTURE_AUDIO_OUTPUT <https://developer.android.com/reference/android/Manifest.permission#CAPTURE_AUDIO_OUTPUT>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_secure_video_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output>`

允許套用程式捕獲安全的影片輸出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_video_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_video_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_video_output>`

允許套用程式捕獲影片輸出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_component_enabled_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state>`

允許套用程式更改是否啟用套用程式元件（除了它自己的元件）。見 `CHANGE_COMPONENT_ENABLED_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_COMPONENT_ENABLED_STATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_configuration:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_configuration** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_configuration>`

允許套用程式修改目前配置，例如區域設定。見 `CHANGE_CONFIGURATION <https://developer.android.com/reference/android/Manifest.permission#CHANGE_CONFIGURATION>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_network_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_network_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_network_state>`

允許套用程式更改網路連接狀態。見 `CHANGE_NETWORK_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_NETWORK_STATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_wifi_multicast_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state>`

允許套用程式進入 Wi-Fi 多播模式。見 `CHANGE_WIFI_MULTICAST_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_MULTICAST_STATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_wifi_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_wifi_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_wifi_state>`

允許套用程式更改 Wi-Fi 連接狀態。見 `CHANGE_WIFI_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_STATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/clear_app_cache:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/clear_app_cache** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/clear_app_cache>`

允許套用程式清除裝置上所有已安裝套用程式的快取。見 `CLEAR_APP_CACHE <https://developer.android.com/reference/android/Manifest.permission#CLEAR_APP_CACHE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/clear_app_user_data** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data>`

允許套用程式清除使用者資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/control_location_updates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/control_location_updates** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/control_location_updates>`

允許啟用/禁用無線電的位置更新通知。見 `CONTROL_LOCATION_UPDATES <https://developer.android.com/reference/android/Manifest.permission#CONTROL_LOCATION_UPDATES>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/custom_permissions:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **permissions/custom_permissions** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/custom_permissions>`

自訂許可權字串陣列。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/delete_cache_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/delete_cache_files** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/delete_cache_files>`

**已棄用：** 此屬性可能在未來版本中變更或移除。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/delete_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/delete_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/delete_packages>`

允許套用程式刪除包。見 `DELETE_PACKAGES <https://developer.android.com/reference/android/Manifest.permission#DELETE_PACKAGES>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/device_power:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/device_power** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/device_power>`

允許對電源管理進行低級存取。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/diagnostic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/diagnostic** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/diagnostic>`

允許套用程式讀寫診斷資源。見 `DIAGNOSTIC <https://developer.android.com/reference/android/Manifest.permission#DIAGNOSTIC>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/disable_keyguard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/disable_keyguard** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/disable_keyguard>`

如果鍵盤保護不安全，則允許套用程式禁用它。見 `DISABLE_KEYGUARD <https://developer.android.com/reference/android/Manifest.permission#DISABLE_KEYGUARD>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/dump:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/dump** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/dump>`

允許套用程式從系統服務檢索狀態轉儲資訊。見 `DUMP <https://developer.android.com/reference/android/Manifest.permission#DUMP>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/expand_status_bar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/expand_status_bar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/expand_status_bar>`

允許套用程式展開或折疊狀態列。見 `EXPAND_STATUS_BAR <https://developer.android.com/reference/android/Manifest.permission#EXPAND_STATUS_BAR>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/factory_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/factory_test** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/factory_test>`

作為製造商測試套用程式運作，以 root 使用者身份運作。見 `FACTORY_TEST <https://developer.android.com/reference/android/Manifest.permission#FACTORY_TEST>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/flashlight:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/flashlight** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/flashlight>`

允許存取手電筒。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/force_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/force_back** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/force_back>`

允許套用程式對任何頂部 activity 強制執行 BACK 操作。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_accounts>`

允許存取帳戶服務中的帳戶列表。見 `GET_ACCOUNTS <https://developer.android.com/reference/android/Manifest.permission#GET_ACCOUNTS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_package_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_package_size** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_package_size>`

允許套用程式找出任何包所使用的空間。見 `GET_PACKAGE_SIZE <https://developer.android.com/reference/android/Manifest.permission#GET_PACKAGE_SIZE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_tasks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_tasks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_tasks>`

**已棄用：** Deprecated in API level 21.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_top_activity_info** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info>`

允許套用程式檢索有關目前頂部 activity 的私有資訊。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/global_search:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/global_search** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/global_search>`

用於內容提供者，以允許全域搜索系統存取其資料。見 `GLOBAL_SEARCH <https://developer.android.com/reference/android/Manifest.permission#GLOBAL_SEARCH>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/hardware_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/hardware_test** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/hardware_test>`

允許存取硬體週邊裝置。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/inject_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/inject_events** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/inject_events>`

允許套用程式將使用者事件（按鍵、觸摸、軌跡球）注入事件流並將它們傳遞到任意窗口。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_location_provider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_location_provider** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_location_provider>`

允許套用程式將位置提供程式安裝到位置管理器中。見 `INSTALL_LOCATION_PROVIDER <https://developer.android.com/reference/android/Manifest.permission#INSTALL_LOCATION_PROVIDER>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_packages>`

允許套用程式安裝套裝軟體。見 `INSTALL_PACKAGES <https://developer.android.com/reference/android/Manifest.permission#INSTALL_PACKAGES>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_shortcut:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_shortcut** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_shortcut>`

允許套用程式在啟動器中安裝快捷方式。見 `INSTALL_SHORTCUT <https://developer.android.com/reference/android/Manifest.permission#INSTALL_SHORTCUT>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/internal_system_window:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/internal_system_window** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/internal_system_window>`

允許套用程式打開供系統使用者介面部分使用的視窗。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/internet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/internet** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/internet>`

允許套用程式打開網路通訊端。見 `INTERNET <https://developer.android.com/reference/android/Manifest.permission#INTERNET>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/kill_background_processes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/kill_background_processes** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/kill_background_processes>`

允許套用程式呼叫 ActivityManager.killBackgroundProcesses(String)。見 `KILL_BACKGROUND_PROCESSES <https://developer.android.com/reference/android/Manifest.permission#KILL_BACKGROUND_PROCESSES>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/location_hardware:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/location_hardware** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/location_hardware>`

允許套用程式使用硬體中的位置功能，例如地理圍欄 API。見 `LOCATION_HARDWARE <https://developer.android.com/reference/android/Manifest.permission#LOCATION_HARDWARE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_accounts>`

允許套用程式管理 AccountManager 中的帳戶列表。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_app_tokens** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens>`

允許套用程式在視窗管理器中管理（建立、銷毀、Z 排序）套用程式權杖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_documents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_documents** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_documents>`

允許套用程式管理對文件的存取，通常作為文件選擇器的一部分。見 `MANAGE_DOCUMENTS <https://developer.android.com/reference/android/Manifest.permission#MANAGE_DOCUMENTS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_external_storage>`

允許套用程式廣泛存取範圍儲存中的外部儲存。見 `MANAGE_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#MANAGE_EXTERNAL_STORAGE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/master_clear:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/master_clear** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/master_clear>`

見 `MASTER_CLEAR <https://developer.android.com/reference/android/Manifest.permission#MASTER_CLEAR>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/media_content_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/media_content_control** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/media_content_control>`

允許套用程式瞭解正在播放的內容並控制其播放。見 `MEDIA_CONTENT_CONTROL <https://developer.android.com/reference/android/Manifest.permission#MEDIA_CONTENT_CONTROL>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/modify_audio_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings>`

允許套用程式修改全域音訊設定。見 `MODIFY_AUDIO_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#MODIFY_AUDIO_SETTINGS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/modify_phone_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/modify_phone_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/modify_phone_state>`

允許修改電話狀態 - 開機、mmi 等。不包括撥打電話。見 `MODIFY_PHONE_STATE <https://developer.android.com/reference/android/Manifest.permission#MODIFY_PHONE_STATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/mount_format_filesystems** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems>`

允許格式化卸除式存放裝置的檔案系統。見 `MOUNT_FORMAT_FILESYSTEMS <https://developer.android.com/reference/android/Manifest.permission#MOUNT_FORMAT_FILESYSTEMS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/mount_unmount_filesystems** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems>`

允許掛載和解除安裝卸除式存放裝置的檔案系統。見 `MOUNT_UNMOUNT_FILESYSTEMS <https://developer.android.com/reference/android/Manifest.permission#MOUNT_UNMOUNT_FILESYSTEMS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/nfc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/nfc** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/nfc>`

允許套用程式通過 NFC 執行 I/O 操作。見 `NFC <https://developer.android.com/reference/android/Manifest.permission#NFC>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/persistent_activity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/persistent_activity** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/persistent_activity>`

**已棄用：** Deprecated in API level 15.

Allows an application to make its activities persistent.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/post_notifications:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/post_notifications** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/post_notifications>`

Allows an application to post notifications. Added in API level 33. See `Notification runtime permission <https://developer.android.com/develop/ui/views/notifications/notification-permission>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/process_outgoing_calls** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls>`

**已棄用：** Deprecated in API level 29.

Allows an application to see the number being dialed during an outgoing call with the option to redirect the call to a different number or abort the call altogether. See `PROCESS_OUTGOING_CALLS <https://developer.android.com/reference/android/Manifest.permission#PROCESS_OUTGOING_CALLS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_calendar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_calendar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_calendar>`

允許套用程式讀取使用者的日曆資料。見 `READ_CALENDAR <https://developer.android.com/reference/android/Manifest.permission#READ_CALENDAR>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_call_log:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_call_log** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_call_log>`

允許套用程式讀取使用者的通話記錄。見 `READ_CALL_LOG <https://developer.android.com/reference/android/Manifest.permission#READ_CALL_LOG>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_contacts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_contacts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_contacts>`

允許套用程式讀取使用者的連路人資料。見 `READ_CONTACTS <https://developer.android.com/reference/android/Manifest.permission#READ_CONTACTS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_external_storage>`

**已棄用：** Deprecated in API level 33.

Allows an application to read from external storage. See `READ_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#READ_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_frame_buffer** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer>`

允許套用程式截取螢幕截圖，並且更常見的是存取框架緩衝區資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_history_bookmarks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks>`

允許套用程式讀取（但不能寫入）使用者的流覽歷史記錄和書簽。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_input_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_input_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_input_state>`

**已棄用：** Deprecated in API level 16.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_logs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_logs** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_logs>`

允許套用程式讀取低級系統紀錄檔。見 `READ_LOGS <https://developer.android.com/reference/android/Manifest.permission#READ_LOGS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_audio:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_audio** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_audio>`

Allows an application to read audio files from external storage. See `READ_MEDIA_AUDIO <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_AUDIO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_images:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_images** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_images>`

Allows an application to read image files from external storage. See `READ_MEDIA_IMAGES <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_IMAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_video:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_video** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_video>`

Allows an application to read video files from external storage. See `READ_MEDIA_VIDEO <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VIDEO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_visual_user_selected** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected>`

Allows an application to read image or video files from external storage that a user has selected via the permission prompt photo picker. See `READ_MEDIA_VISUAL_USER_SELECTED <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VISUAL_USER_SELECTED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_phone_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_phone_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_phone_state>`

允許對電話狀態進行唯讀存取。見 `READ_PHONE_STATE <https://developer.android.com/reference/android/Manifest.permission#READ_PHONE_STATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_profile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_profile** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_profile>`

允許套用程式讀取使用者的個人設定檔資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sms>`

允許套用程式讀取 SMS 消息。見 `READ_SMS <https://developer.android.com/reference/android/Manifest.permission#READ_SMS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_social_stream:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_social_stream** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_social_stream>`

允許套用程式讀取使用者的社交流。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sync_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sync_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sync_settings>`

允許套用程式讀取同步設定。見 `READ_SYNC_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_SETTINGS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sync_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sync_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sync_stats>`

允許套用程式讀取同步統計資訊。見 `READ_SYNC_STATS <https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_STATS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_user_dictionary** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary>`

允許套用程式讀取使用者詞典。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/reboot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/reboot** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/reboot>`

能夠重新開機裝置必須要求此許可權。見 `REBOOT <https://developer.android.com/reference/android/Manifest.permission#REBOOT>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_boot_completed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed>`

允許套用程式接收系統啟動完成後廣播的 Intent.ACTION_BOOT_COMPLETED。見 `RECEIVE_BOOT_COMPLETED <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_BOOT_COMPLETED>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_mms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_mms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_mms>`

允許套用程式監聽收到的 MMS 消息。見 `RECEIVE_MMS <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_MMS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_sms>`

允許套用程式接收短信。見 `RECEIVE_SMS <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_SMS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_wap_push:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_wap_push** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_wap_push>`

允許套用程式接收 WAP 推送消息。見 `RECEIVE_WAP_PUSH <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_WAP_PUSH>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/record_audio:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/record_audio** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/record_audio>`

允許套用程式錄音。見 `RECORD_AUDIO <https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/reorder_tasks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/reorder_tasks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/reorder_tasks>`

允許套用程式對工作的 Z 順序進行修改。見 `REORDER_TASKS <https://developer.android.com/reference/android/Manifest.permission#REORDER_TASKS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/restart_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/restart_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/restart_packages>`

**已棄用：** Deprecated in API level 15.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/send_respond_via_message** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message>`

允許套用程式（手機）在接聽電話時向其他套用程式發送對“通過短信回復”動作的處理請求。見 `SEND_RESPOND_VIA_MESSAGE <https://developer.android.com/reference/android/Manifest.permission#SEND_RESPOND_VIA_MESSAGE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/send_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/send_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/send_sms>`

允許套用程式發送短信。見 `SEND_SMS <https://developer.android.com/reference/android/Manifest.permission#SEND_SMS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_activity_watcher** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher>`

允許套用程式對系統如何啟動 Activity 進行全域監聽和控制。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_alarm:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_alarm** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_alarm>`

允許套用程式對設定使用者鬧鐘的 Intent 進行廣播。見 `SET_ALARM <https://developer.android.com/reference/android/Manifest.permission#SET_ALARM>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_always_finish:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_always_finish** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_always_finish>`

允許套用程式對進入後臺時是否立即終止 Activity 進行控制。見 `SET_ALWAYS_FINISH <https://developer.android.com/reference/android/Manifest.permission#SET_ALWAYS_FINISH>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_animation_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_animation_scale** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_animation_scale>`

允許對全域動畫縮放係數進行修改。見 `SET_ANIMATION_SCALE <https://developer.android.com/reference/android/Manifest.permission#SET_ANIMATION_SCALE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_debug_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_debug_app** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_debug_app>`

對套用程式進行除錯配置。見 `SET_DEBUG_APP <https://developer.android.com/reference/android/Manifest.permission#SET_DEBUG_APP>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_orientation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_orientation** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_orientation>`

允許對設定螢幕朝向（本質為旋轉）的功能進行底層存取。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_pointer_speed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed>`

允許對設定指標速度的功能進行底層存取。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_preferred_applications** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications>`

**已棄用：** Deprecated in API level 15.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_process_limit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_process_limit** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_process_limit>`

允許套用程式對同時能夠運作的最大（不再需要的）套用程式程序數進行設定。見 `SET_PROCESS_LIMIT <https://developer.android.com/reference/android/Manifest.permission#SET_PROCESS_LIMIT>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_time:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_time** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_time>`

允許套用程式對系統時間進行直接設定。見 `SET_TIME <https://developer.android.com/reference/android/Manifest.permission#SET_TIME>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_time_zone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_time_zone** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_time_zone>`

允許套用程式對系統時區進行直接設定。見 `SET_TIME_ZONE <https://developer.android.com/reference/android/Manifest.permission#SET_TIME_ZONE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_wallpaper:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_wallpaper** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper>`

允許套用程式對壁紙進行設定。見 `SET_WALLPAPER <https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_wallpaper_hints** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints>`

允許套用程式對壁紙提示進行設定。見 `SET_WALLPAPER_HINTS <https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER_HINTS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/signal_persistent_processes** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes>`

允許套用程式請求將訊號發送到所有持久化程序。見 `SIGNAL_PERSISTENT_PROCESSES <https://developer.android.com/reference/android/Manifest.permission#SIGNAL_PERSISTENT_PROCESSES>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/status_bar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/status_bar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/status_bar>`

允許套用程式對狀態列及其圖示進行打開、關閉、禁用等操作。見 `STATUS_BAR <https://developer.android.com/reference/android/Manifest.permission#STATUS_BAR>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/subscribed_feeds_read** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read>`

允許套用程式對訂閱的 ContentProvider 源進行存取。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/subscribed_feeds_write** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write>`

**已棄用：** 此屬性可能在未來版本中變更或移除。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/system_alert_window:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/system_alert_window** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/system_alert_window>`

允許套用使用 WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY 型別建立顯示在其他套用之上的視窗。見 `SYSTEM_ALERT_WINDOW <https://developer.android.com/reference/android/Manifest.permission#SYSTEM_ALERT_WINDOW>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/transmit_ir:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/transmit_ir** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/transmit_ir>`

允許使用該裝置的 IR 發送器。見 `TRANSMIT_IR <https://developer.android.com/reference/android/Manifest.permission#TRANSMIT_IR>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/uninstall_shortcut** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut>`

**已棄用：** 此屬性可能在未來版本中變更或移除。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/update_device_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/update_device_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/update_device_stats>`

允許套用程式對裝置統計資訊進行更新。見 `UPDATE_DEVICE_STATS <https://developer.android.com/reference/android/Manifest.permission#UPDATE_DEVICE_STATS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/use_credentials:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/use_credentials** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/use_credentials>`

允許套用程式向 AccountManager 請求授權權杖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/use_sip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/use_sip** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/use_sip>`

允許套用程式使用 SIP 服務。見 `USE_SIP <https://developer.android.com/reference/android/Manifest.permission#USE_SIP>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/vibrate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/vibrate** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/vibrate>`

允許存取振動器。見 `VIBRATE <https://developer.android.com/reference/android/Manifest.permission#VIBRATE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/wake_lock:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/wake_lock** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/wake_lock>`

允許使用 PowerManager WakeLock 放置處理器進入休眠或螢幕變暗。見 `WAKE_LOCK <https://developer.android.com/reference/android/Manifest.permission#WAKE_LOCK>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_apn_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_apn_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_apn_settings>`

允許套用程式寫入 APN 設定並讀取已有 APN 設定中的使用者名、密碼等敏感欄位。見 `WRITE_APN_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_APN_SETTINGS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_calendar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_calendar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_calendar>`

允許套用程式對使用者的日曆資料進行寫操作。見 `WRITE_CALENDAR <https://developer.android.com/reference/android/Manifest.permission#WRITE_CALENDAR>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_call_log:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_call_log** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_call_log>`

允許套用程式對使用者的通話記錄資料進行寫操作（不會允許讀操作）。見 `WRITE_CALL_LOG <https://developer.android.com/reference/android/Manifest.permission#WRITE_CALL_LOG>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_contacts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_contacts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_contacts>`

允許套用程式對使用者的通訊錄資料進行寫操作。見 `WRITE_CONTACTS <https://developer.android.com/reference/android/Manifest.permission#WRITE_CONTACTS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_external_storage>`

允許套用程式對外部儲存進行寫操作。見 `WRITE_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#WRITE_EXTERNAL_STORAGE>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_gservices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_gservices** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_gservices>`

允許套用程式對 Google 服務對應進行修改。見 `WRITE_GSERVICES <https://developer.android.com/reference/android/Manifest.permission#WRITE_GSERVICES>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_history_bookmarks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks>`

允許套用程式對使用者的流覽器歷史和收藏進行寫操作（不會允許讀操作）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_profile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_profile** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_profile>`

允許套用程式對使用者的個人資訊資料進行寫操作（不會允許讀操作）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_secure_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_secure_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_secure_settings>`

允許套用程式對安全系統設定進行讀寫操作。見 `WRITE_SECURE_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SECURE_SETTINGS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_settings>`

允許套用程式對系統設定進行讀寫操作。見 `WRITE_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SETTINGS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_sms>`

允許套用程式發送短信。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_social_stream:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_social_stream** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_social_stream>`

允許套用程式對使用者的社交流資料進行寫操作（不會允許讀操作）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_sync_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_sync_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_sync_settings>`

允許套用程式對同步設定進行寫操作。見 `WRITE_SYNC_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SYNC_SETTINGS>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_user_dictionary** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary>`

允許套用程式對使用者字典進行寫操作。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **screen/background_color** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/background_color>`

The background color used for the root window. Default is ``black``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/edge_to_edge:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/edge_to_edge** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/edge_to_edge>`

If ``true``, this makes the navigation and status bars translucent and allows the application content to extend edge to edge.

\ **Note:** You should ensure that none of the application content is occluded by system elements by using the :ref:`DisplayServer.get_display_safe_area()<class_DisplayServer_method_get_display_safe_area>` and :ref:`DisplayServer.get_display_cutouts()<class_DisplayServer_method_get_display_cutouts>` methods.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/immersive_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/immersive_mode** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/immersive_mode>`

If ``true``, hides the navigation and status bar. Set :ref:`DisplayServer.window_set_mode()<class_DisplayServer_method_window_set_mode>` to change this at runtime.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_large:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_large** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_large>`

表示套用程式是否支援較大螢幕尺寸。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_normal:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_normal** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_normal>`

表示套用程式是否支援“正常”螢幕尺寸。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_small:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_small** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_small>`

表示套用程式是否支援較小螢幕尺寸。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_xlarge:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_xlarge** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_xlarge>`

表示套用程式是否支援超大螢幕尺寸。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformAndroid_property_shader_baker/enabled>`

If ``true``, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ or Mobile renderers.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_user_data_backup/allow:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **user_data_backup/allow** :ref:`🔗<class_EditorExportPlatformAndroid_property_user_data_backup/allow>`

如果為 ``true``\ ，則允許套用程式參與基礎設施的備份與恢復。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_version/code:

.. rst-class:: classref-property

:ref:`int<class_int>` **version/code** :ref:`🔗<class_EditorExportPlatformAndroid_property_version/code>`

機器可讀的套用程式版本。每向 Play Store 推送一個新版本，該版本都必須遞增。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_version/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **version/name** :ref:`🔗<class_EditorExportPlatformAndroid_property_version/name>`

套用程式圖示檔。如果留空，它將退回到 :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_xr_features/xr_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **xr_features/xr_mode** :ref:`🔗<class_EditorExportPlatformAndroid_property_xr_features/xr_mode>`

The extended reality (XR) mode for this application.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
