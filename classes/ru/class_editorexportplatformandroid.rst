:github_url: hide

.. _class_EditorExportPlatformAndroid:

EditorExportPlatformAndroid
===========================

**Наследует:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Экспортер для ОС Android.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Экспортирование для ОС Android <../tutorials/export/exporting_for_android>`

- :doc:`Сборки Gradle для Android <../tutorials/export/android_gradle_build>`

- :doc:`Индекс документации плагинов Android <../tutorials/platform/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

.. _class_EditorExportPlatformAndroid_property_apk_expansion/SALT:

.. rst-class:: classref-property

:ref:`String<class_String>` **apk_expansion/SALT** :ref:`🔗<class_EditorExportPlatformAndroid_property_apk_expansion/SALT>`

Массив случайных байтов, который политика лицензирования использует для создания `обфускатора <https://developer.android.com/google/play/licensing/adding-licensing#impl-Obfuscator>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_apk_expansion/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **apk_expansion/enable** :ref:`🔗<class_EditorExportPlatformAndroid_property_apk_expansion/enable>`

Если ``true``, ресурсы проекта хранятся в отдельном файле расширения APK, а не в APK.

\ **Примечание:** Расширение APK должно быть включено для использования шифрования PCK. См. `Файлы расширения APK <https://developer.android.com/google/play/expansion-files>`__

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_apk_expansion/public_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **apk_expansion/public_key** :ref:`🔗<class_EditorExportPlatformAndroid_property_apk_expansion/public_key>`

Открытый ключ RSA в кодировке Base64 для вашей учетной записи издателя, доступный на странице профиля в «Google Play Console».

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/arm64-v8a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/arm64-v8a** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/arm64-v8a>`

Если ``true``, двоичные файлы ``arm64`` включаются в экспортируемый проект.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/armeabi-v7a** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/armeabi-v7a>`

Если ``true``, двоичные файлы ``arm32`` включаются в экспортируемый проект.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/x86:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/x86** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/x86>`

Если ``true``, двоичные файлы ``x86_32`` включаются в экспортируемый проект.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_architectures/x86_64:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/x86_64** :ref:`🔗<class_EditorExportPlatformAndroid_property_architectures/x86_64>`

Если ``true``, двоичные файлы ``x86_64`` включаются в экспортируемый проект.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_command_line/extra_args:

.. rst-class:: classref-property

:ref:`String<class_String>` **command_line/extra_args** :ref:`🔗<class_EditorExportPlatformAndroid_property_command_line/extra_args>`

Список дополнительных аргументов командной строки, разделенных пробелом, которые экспортированный проект получит при запуске.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_custom_template/debug>`

Путь к файлу APK для использования в качестве пользовательского шаблона экспорта для экспорта отладки. Если оставить пустым, будет использоваться шаблон по умолчанию.

\ **Примечание:** Используется только если :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` отключен.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformAndroid_property_custom_template/release>`

Путь к файлу APK для использования в качестве пользовательского шаблона экспорта для экспорта релиза. Если оставить пустым, будет использоваться шаблон по умолчанию.

\ **Примечание:** Используется только если :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` отключен.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gesture/swipe_to_dismiss** :ref:`🔗<class_EditorExportPlatformAndroid_property_gesture/swipe_to_dismiss>`

Если ``true``, `Проведите пальцем, чтобы закрыть <https://developer.android.com/design/ui/wear/guides/components/swipe-to-dismiss>`__ будет включено.

Эта функция предназначена для умных часов и, как правило, игнорируется на стандартных устройствах Android. Однако некоторые устройства могут не игнорировать ее. Поэтому рекомендуется отключать эту функцию для стандартных приложений Android, чтобы избежать непредвиденного поведения.

\ **Примечание:** По умолчанию это ``false``. Чтобы включить это поведение, требуется :ref:`gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/android_source_template:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/android_source_template** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/android_source_template>`

Путь к ZIP-файлу, содержащему исходный код для шаблона экспорта, используемого в сборке Gradle. Если оставить пустым, будет использоваться шаблон по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gradle_build/compress_native_libraries** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/compress_native_libraries>`

Если ``true``, нативные библиотеки сжимаются при сборке Gradle.

\ **Примечание:** Хотя включение сжатия может уменьшить размер исполняемого файла, оно может привести к более медленному запуску приложения, поскольку нативные библиотеки необходимо извлечь перед использованием, а не загружать напрямую.

Если вы распространяете приложение через Play Маркет, обычно рекомендуется оставить этот параметр ``false``, см. `официальную документацию <https://developer.android.com/build/releases/past-releases/agp-3-6-0-release-notes#extractNativeLibs>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **gradle_build/custom_theme_attributes** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/custom_theme_attributes>`

Словарь пользовательских атрибутов темы для включения в экспортируемый проект Android. Каждая запись определяет имя атрибута темы и его значение и будет добавлена в **GodotAppMainTheme**.

Например, ключ ``android:windowSwipeToDismiss`` со значением ``false`` разрешается в ``<item name="android:windowSwipeToDismiss">false</item>``.

\ **Примечание:** Чтобы добавить пользовательский атрибут в **GodotAppSplashTheme**, добавьте к имени атрибута префикс ``[splash]``.

\ **Примечание:** Зарезервированные атрибуты, настроенные с помощью других параметров экспорта или настроек проекта, не могут быть переопределены с помощью ``custom_theme_attributes`` и пропускаются во время экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/export_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **gradle_build/export_format** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/export_format>`

Формат экспорта приложения (\*.apk или \*.aab).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/gradle_build_directory** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/gradle_build_directory>`

Путь к каталогу сборки Gradle. Если оставить пустым, то будет использоваться ``res://android``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/min_sdk:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/min_sdk** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/min_sdk>`

Минимальный уровень API Android, необходимый для запуска приложения (используется во время сборки Gradle). См. `android:minSdkVersion <https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/target_sdk:

.. rst-class:: classref-property

:ref:`String<class_String>` **gradle_build/target_sdk** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/target_sdk>`

Уровень API Android, на котором приложение предназначено для работы (используется во время сборки Gradle). См. `android:targetSdkVersion <https://developer.android.com/guide/topics/manifest/uses-sdk-element#uses>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gradle_build/use_gradle_build** :ref:`🔗<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`

Если ``true``, то вместо предварительно собранного APK используется сборка Gradle.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_graphics/opengl_debug:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **graphics/opengl_debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_graphics/opengl_debug>`

Если ``true``, будет создан контекст отладки OpenGL ES (дополнительная проверка во время выполнения, валидация и протоколирование).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug>`

Путь к файлу хранилища ключей отладки.

Можно переопределить с помощью переменной среды ``GODOT_ANDROID_KEYSTORE_DEBUG_PATH``.

Откат к ``EditorSettings.export/android/debug_keystore``, если пусто.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug_password** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug_password>`

Пароль для файла хранилища ключей отладки.

Можно переопределить с помощью переменной среды ``GODOT_ANDROID_KEYSTORE_DEBUG_PASSWORD``.

Откат к ``EditorSettings.export/android/debug_keystore_pass``, если и он, и :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>` пусты.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/debug_user:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/debug_user** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/debug_user>`

Имя пользователя для файла хранилища ключей отладки.

Можно переопределить с помощью переменной среды ``GODOT_ANDROID_KEYSTORE_DEBUG_USER``.

Откат к ``EditorSettings.export/android/debug_keystore_user``, если и он, и :ref:`keystore/debug<class_EditorExportPlatformAndroid_property_keystore/debug>` пусты.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release>`

Путь к файлу хранилища ключей релиза.

Можно переопределить с помощью переменной среды ``GODOT_ANDROID_KEYSTORE_RELEASE_PATH``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release_password** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release_password>`

Пароль для файла хранилища ключей релиза.

Можно переопределить с помощью переменной среды ``GODOT_ANDROID_KEYSTORE_RELEASE_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_keystore/release_user:

.. rst-class:: classref-property

:ref:`String<class_String>` **keystore/release_user** :ref:`🔗<class_EditorExportPlatformAndroid_property_keystore/release_user>`

Имя пользователя для файла хранилища ключей выпуска.

Можно переопределить с помощью переменной среды ``GODOT_ANDROID_KEYSTORE_RELEASE_USER``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_background_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_background_432x432>`

Фоновый слой файла адаптивной иконки приложения. См. `Разработка адаптивных иконок <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_foreground_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_foreground_432x432>`

Фоновый слой файла адаптивной иконки приложения. См. `Разработка адаптивных иконок <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/adaptive_monochrome_432x432** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/adaptive_monochrome_432x432>`

Монохромный слой файла адаптивной иконки приложения. Смотрите `Разработка адаптивных иконок <https://developer.android.com/develop/ui/views/launch/icon_design_adaptive#design-adaptive-icons>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192:

.. rst-class:: classref-property

:ref:`String<class_String>` **launcher_icons/main_192x192** :ref:`🔗<class_EditorExportPlatformAndroid_property_launcher_icons/main_192x192>`

Файл значка приложения. Если оставить пустым, то будет использован :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/app_category:

.. rst-class:: classref-property

:ref:`int<class_int>` **package/app_category** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/app_category>`

Категория приложения для Google Play Store. Определяйте это только в том случае, если ваше приложение хорошо подходит под одну из категорий. См. `android:appCategory <https://developer.android.com/guide/topics/manifest/application-element#appCategory>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/exclude_from_recents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/exclude_from_recents** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/exclude_from_recents>`

Если ``true``, задача, инициированная основной активностью, будет исключена из списка недавно использованных приложений. См. `android:excludeFromRecents <https://developer.android.com/guide/topics/manifest/activity-element#exclude>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **package/name** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/name>`

Название приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/retain_data_on_uninstall** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/retain_data_on_uninstall>`

Если ``true``, когда пользователь удаляет приложение, будет показано приглашение сохранить данные приложения. См. `android:hasFragileUserData <https://developer.android.com/guide/topics/manifest/application-element#fragileuserdata>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_as_launcher_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_as_launcher_app** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_as_launcher_app>`

Если ``true``, пользователь сможет установить это приложение в качестве системного средства запуска в настройках Android.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_in_android_tv:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_in_android_tv** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_in_android_tv>`

Если ``true``, это приложение будет отображаться в пользовательском интерфейсе лаунчера Android TV.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/show_in_app_library:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/show_in_app_library** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/show_in_app_library>`

Если ``true``, это приложение будет отображаться в библиотеке приложений устройства.

\ **Примечание:** По умолчанию это ``true``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/signed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **package/signed** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/signed>`

Если ``true``, подпись пакета включена.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_package/unique_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **package/unique_name** :ref:`🔗<class_EditorExportPlatformAndroid_property_package/unique_name>`

Уникальный идентификатор приложения в формате обратного DNS. Обратный формат DNS должен предпочтительно соответствовать доменному имени, которым вы управляете, но это не является строго обязательным. Например, если вы являетесь владельцем ``example.com``, уникальное имя вашего пакета должно предпочтительно иметь вид ``com.example.mygame``. Этот идентификатор может содержать только строчные буквенно-цифровые символы (``a-z`` и ``0-9``), подчеркивания (``_``) и точки (``.``). Каждый компонент обратного формата DNS должен начинаться с буквы: например, ``com.example.8game`` недопустимо.

Если в значении присутствует ``$genname``, оно будет заменено именем проекта, преобразованным в нижний регистр. Если в имени проекта есть недопустимые символы, они будут удалены. Если все символы в имени проекта удалены, ``$genname`` заменяется на ``noname``.

\ **Примечание:** Изменение имени пакета приведет к тому, что пакет будет считаться новым пакетом со своей собственной установкой и путями к данным. Новый пакет не будет использоваться для обновления существующих установок.

\ **Примечание:** При публикации в Google Play имя пакета должно быть *глобально* уникальным. Это означает, что никакие другие приложения, опубликованные в Google Play, не должны использовать то же имя пакета, что и ваше. В противном случае вы не сможете опубликовать свое приложение в Google Play.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_checkin_properties** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_checkin_properties>`

Позволяет читать/писать доступ к таблице "properties" в базе данных регистрации. См. `ACCESS_CHECKIN_PROPERTIES <https://developer.android.com/reference/android/Manifest.permission#ACCESS_CHECKIN_PROPERTIES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_coarse_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_coarse_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_coarse_location>`

Позволяет получить доступ к приблизительной информации о местоположении. См. `ACCESS_COARSE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_COARSE_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_fine_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_fine_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_fine_location>`

Позволяет получить доступ к точной информации о местоположении. См. `ACCESS_FINE_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_location_extra_commands** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_location_extra_commands>`

Позволяет получить доступ к дополнительным командам поставщика местоположения. См. `ACCESS_LOCATION_EXTRA_COMMANDS <https://developer.android.com/reference/android/Manifest.permission#ACCESS_LOCATION_EXTRA_COMMANDS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_media_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_media_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_media_location>`

Позволяет приложению получать доступ к любым географическим местоположениям, сохраненным в общей коллекции пользователя. См. `ACCESS_MEDIA_LOCATION <https://developer.android.com/reference/android/Manifest.permission#ACCESS_MEDIA_LOCATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_mock_location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_mock_location** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_mock_location>`

Позволяет приложению создавать фиктивные поставщики местоположения для тестирования.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_network_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_network_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_network_state>`

Позволяет получить доступ к информации о сетях. См. `ACCESS_NETWORK_STATE <https://developer.android.com/reference/android/Manifest.permission#ACCESS_NETWORK_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_surface_flinger** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_surface_flinger>`

Позволяет приложению использовать низкоуровневые функции SurfaceFlinger.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/access_wifi_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/access_wifi_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/access_wifi_state>`

Позволяет получить доступ к информации о сетях Wi-Fi. См. `ACCESS_WIFI_STATE <https://developer.android.com/reference/android/Manifest.permission#ACCESS_WIFI_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/account_manager:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/account_manager** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/account_manager>`

Позволяет приложениям вызывать AccountAuthenticators. См. `ACCOUNT_MANAGER <https://developer.android.com/reference/android/Manifest.permission#ACCOUNT_MANAGER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/add_voicemail:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/add_voicemail** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/add_voicemail>`

Позволяет приложению добавлять голосовые сообщения в систему. См. `ADD_VOICEMAIL <https://developer.android.com/reference/android/Manifest.permission#ADD_VOICEMAIL>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/authenticate_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/authenticate_accounts>`

Позволяет приложению выступать в качестве AccountAuthenticator для AccountManager.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/battery_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/battery_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/battery_stats>`

Позволяет приложению собирать статистику батареи. См. `BATTERY_STATS <https://developer.android.com/reference/android/Manifest.permission#BATTERY_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_accessibility_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_accessibility_service>`

Должно быть обязательным для AccessibilityService, чтобы гарантировать, что только система может к нему привязаться. См. `BIND_ACCESSIBILITY_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_ACCESSIBILITY_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_appwidget:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_appwidget** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_appwidget>`

Позволяет приложению сообщать службе AppWidget, какое приложение может получить доступ к данным AppWidget. См. `BIND_APPWIDGET <https://developer.android.com/reference/android/Manifest.permission#BIND_APPWIDGET>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_device_admin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_device_admin** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_device_admin>`

Должен быть затребован приемником администрирования устройства, чтобы гарантировать, что только система может взаимодействовать с ним. См. `BIND_DEVICE_ADMIN <https://developer.android.com/reference/android/Manifest.permission#BIND_DEVICE_ADMIN>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_input_method:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_input_method** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_input_method>`

Должен быть необходим InputMethodService, чтобы гарантировать, что только система может к нему привязаться. См. `BIND_INPUT_METHOD <https://developer.android.com/reference/android/Manifest.permission#BIND_INPUT_METHOD>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_nfc_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_nfc_service>`

Должен быть необходим HostApduService или OffHostApduService, чтобы гарантировать, что только система может к нему привязаться. См. `BIND_NFC_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_NFC_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_notification_listener_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_notification_listener_service>`

Должен быть необходим NotificationListenerService, чтобы гарантировать, что только система может привязываться к нему. См. `BIND_NOTIFICATION_LISTENER_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_NOTIFICATION_LISTENER_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_print_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_print_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_print_service>`

Должно быть обязательным для PrintService, чтобы гарантировать, что только система может к нему привязаться. См. `BIND_PRINT_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_PRINT_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_remoteviews** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_remoteviews>`

Должен быть необходим RemoteViewsService, чтобы гарантировать, что только система может к нему привязаться. См. `BIND_REMOTEVIEWS <https://developer.android.com/reference/android/Manifest.permission#BIND_REMOTEVIEWS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_text_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_text_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_text_service>`

Должно быть обязательным для TextService (например, SpellCheckerService), чтобы гарантировать, что только система может привязываться к нему. См. `BIND_TEXT_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_TEXT_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_vpn_service** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_vpn_service>`

Должен быть необходим VpnService, чтобы гарантировать, что только система может к нему подключиться. См. `BIND_VPN_SERVICE <https://developer.android.com/reference/android/Manifest.permission#BIND_VPN_SERVICE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bind_wallpaper** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bind_wallpaper>`

Должно быть обязательным для WallpaperService, чтобы гарантировать, что только система может привязываться к нему. См. `BIND_WALLPAPER <https://developer.android.com/reference/android/Manifest.permission#BIND_WALLPAPER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth>`

Позволяет приложениям подключаться к сопряженным устройствам Bluetooth. См. `BLUETOOTH <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth_admin** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth_admin>`

Позволяет приложениям обнаруживать и подключать устройства Bluetooth. См. `BLUETOOTH_ADMIN <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_ADMIN>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/bluetooth_privileged** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/bluetooth_privileged>`

Позволяет приложениям подключать устройства Bluetooth без взаимодействия с пользователем, а также разрешать или запрещать доступ к телефонной книге или сообщениям. См. `BLUETOOTH_PRIVILEGED <https://developer.android.com/reference/android/Manifest.permission#BLUETOOTH_PRIVILEGED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/brick:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/brick** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/brick>`

Необходимо иметь возможность отключить устройство (очень опасно!).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_package_removed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_package_removed>`

Позволяет приложению передавать уведомление об удалении пакета приложения. См. `BROADCAST_PACKAGE_REMOVED <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_PACKAGE_REMOVED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_sms>`

Позволяет приложению транслировать уведомление о получении SMS. См. `BROADCAST_SMS <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_sticky** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_sticky>`

Позволяет приложению транслировать липкие намерения. См. `BROADCAST_STICKY <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_STICKY>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/broadcast_wap_push** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/broadcast_wap_push>`

Позволяет приложению транслировать уведомление о получении WAP PUSH. См. `BROADCAST_WAP_PUSH <https://developer.android.com/reference/android/Manifest.permission#BROADCAST_WAP_PUSH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/call_phone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/call_phone** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/call_phone>`

Позволяет приложению инициировать телефонный звонок без использования пользовательского интерфейса Dialer. См. `CALL_PHONE <https://developer.android.com/reference/android/Manifest.permission#CALL_PHONE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/call_privileged:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/call_privileged** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/call_privileged>`

Позволяет приложению звонить на любой номер телефона, включая номера экстренных служб, без использования пользовательского интерфейса Dialer. См. `CALL_PRIVILEGED <https://developer.android.com/reference/android/Manifest.permission#CALL_PRIVILEGED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/camera** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/camera>`

Требуется для доступа к устройству камеры. См. `CAMERA <https://developer.android.com/reference/android/Manifest.permission#CAMERA>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_audio_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_audio_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_audio_output>`

Позволяет приложению захватывать аудиовыход. См. `CAPTURE_AUDIO_OUTPUT <https://developer.android.com/reference/android/Manifest.permission#CAPTURE_AUDIO_OUTPUT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_secure_video_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_secure_video_output>`

Позволяет приложению захватывать защищенный видеовыход.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/capture_video_output:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/capture_video_output** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/capture_video_output>`

Позволяет приложению захватывать видеовыход.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_component_enabled_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_component_enabled_state>`

Позволяет приложению изменять, включен ли компонент приложения (кроме его собственного) или нет. См. `CHANGE_COMPONENT_ENABLED_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_COMPONENT_ENABLED_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_configuration:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_configuration** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_configuration>`

Позволяет приложению изменять текущую конфигурацию, например, локаль. См. `CHANGE_CONFIGURATION <https://developer.android.com/reference/android/Manifest.permission#CHANGE_CONFIGURATION>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_network_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_network_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_network_state>`

Позволяет приложениям изменять состояние сетевого подключения. См. `CHANGE_NETWORK_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_NETWORK_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_wifi_multicast_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_wifi_multicast_state>`

Позволяет приложениям входить в режим Wi-Fi Multicast. См. `CHANGE_WIFI_MULTICAST_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_MULTICAST_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/change_wifi_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/change_wifi_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/change_wifi_state>`

Позволяет приложениям изменять состояние подключения Wi-Fi. См. `CHANGE_WIFI_STATE <https://developer.android.com/reference/android/Manifest.permission#CHANGE_WIFI_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/clear_app_cache:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/clear_app_cache** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/clear_app_cache>`

Позволяет приложению очищать кэши всех установленных приложений на устройстве. См. `CLEAR_APP_CACHE <https://developer.android.com/reference/android/Manifest.permission#CLEAR_APP_CACHE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/clear_app_user_data** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/clear_app_user_data>`

Позволяет приложению очищать данные пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/control_location_updates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/control_location_updates** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/control_location_updates>`

Позволяет включать/отключать уведомления об обновлении местоположения от радио. См. `CONTROL_LOCATION_UPDATES <https://developer.android.com/reference/android/Manifest.permission#CONTROL_LOCATION_UPDATES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/custom_permissions:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **permissions/custom_permissions** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/custom_permissions>`

Массив пользовательских строк разрешений.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/delete_cache_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/delete_cache_files** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/delete_cache_files>`

**Устарело:** Это свойство может быть изменено или удалено в будущих версиях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/delete_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/delete_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/delete_packages>`

Позволяет приложению удалять пакеты. См. `DELETE_PACKAGES <https://developer.android.com/reference/android/Manifest.permission#DELETE_PACKAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/device_power:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/device_power** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/device_power>`

Обеспечивает низкоуровневый доступ к управлению питанием.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/diagnostic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/diagnostic** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/diagnostic>`

Позволяет приложениям выполнять RW к диагностическим ресурсам. См. `DIAGNOSTIC <https://developer.android.com/reference/android/Manifest.permission#DIAGNOSTIC>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/disable_keyguard:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/disable_keyguard** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/disable_keyguard>`

Позволяет приложениям отключать блокировку клавиатуры, если она небезопасна. См. `DISABLE_KEYGUARD <https://developer.android.com/reference/android/Manifest.permission#DISABLE_KEYGUARD>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/dump:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/dump** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/dump>`

Позволяет приложению извлекать информацию о дампе состояния из системных служб. См. `DUMP <https://developer.android.com/reference/android/Manifest.permission#DUMP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/expand_status_bar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/expand_status_bar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/expand_status_bar>`

Позволяет приложению разворачивать или сворачивать строку состояния. См. `EXPAND_STATUS_BAR <https://developer.android.com/reference/android/Manifest.permission#EXPAND_STATUS_BAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/factory_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/factory_test** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/factory_test>`

Запустить как тестовое приложение производителя, запущенное как пользователь root. См. `FACTORY_TEST <https://developer.android.com/reference/android/Manifest.permission#FACTORY_TEST>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/flashlight:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/flashlight** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/flashlight>`

Обеспечивает доступ к фонарику.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/force_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/force_back** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/force_back>`

Позволяет приложению принудительно выполнить операцию BACK для любого основного действия.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_accounts>`

Разрешает доступ к списку аккаунтов в Accounts Service. См. `GET_ACCOUNTS <https://developer.android.com/reference/android/Manifest.permission#GET_ACCOUNTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_package_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_package_size** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_package_size>`

Позволяет приложению узнать, какое пространство использует любой пакет. См. `GET_PACKAGE_SIZE <https://developer.android.com/reference/android/Manifest.permission#GET_PACKAGE_SIZE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_tasks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_tasks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_tasks>`

**Устарело:** Deprecated in API level 21.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/get_top_activity_info** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/get_top_activity_info>`

Позволяет приложению извлекать конфиденциальную информацию о текущей наиболее активной активности.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/global_search:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/global_search** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/global_search>`

Используется поставщиками контента, чтобы разрешить глобальной поисковой системе доступ к их данным. См. `GLOBAL_SEARCH <https://developer.android.com/reference/android/Manifest.permission#GLOBAL_SEARCH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/hardware_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/hardware_test** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/hardware_test>`

Обеспечивает доступ к периферийным устройствам.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/inject_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/inject_events** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/inject_events>`

Позволяет приложению вставлять пользовательские события (клавиши, касания, трекбол) в поток событий и доставлять их в ЛЮБОЕ окно.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_location_provider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_location_provider** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_location_provider>`

Позволяет приложению устанавливать поставщика местоположения в Location Manager. См. `INSTALL_LOCATION_PROVIDER <https://developer.android.com/reference/android/Manifest.permission#INSTALL_LOCATION_PROVIDER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_packages>`

Позволяет приложению устанавливать пакеты. См. `INSTALL_PACKAGES <https://developer.android.com/reference/android/Manifest.permission#INSTALL_PACKAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/install_shortcut:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/install_shortcut** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/install_shortcut>`

Позволяет приложению устанавливать ярлык в Launcher. См. `INSTALL_SHORTCUT <https://developer.android.com/reference/android/Manifest.permission#INSTALL_SHORTCUT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/internal_system_window:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/internal_system_window** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/internal_system_window>`

Позволяет приложению открывать окна, предназначенные для использования частями пользовательского интерфейса системы.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/internet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/internet** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/internet>`

Позволяет приложениям открывать сетевые сокеты. См. `INTERNET <https://developer.android.com/reference/android/Manifest.permission#INTERNET>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/kill_background_processes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/kill_background_processes** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/kill_background_processes>`

Позволяет приложению вызывать ActivityManager.killBackgroundProcesses(String). См. `KILL_BACKGROUND_PROCESSES <https://developer.android.com/reference/android/Manifest.permission#KILL_BACKGROUND_PROCESSES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/location_hardware:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/location_hardware** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/location_hardware>`

Позволяет приложению использовать функции определения местоположения в оборудовании, такие как API геозонирования. См. `LOCATION_HARDWARE <https://developer.android.com/reference/android/Manifest.permission#LOCATION_HARDWARE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_accounts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_accounts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_accounts>`

Позволяет приложению управлять списком учетных записей в AccountManager.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_app_tokens** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_app_tokens>`

Позволяет приложению управлять (создавать, уничтожать, Z-упорядочивать) токенами приложений в диспетчере окон.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_documents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_documents** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_documents>`

Позволяет приложению управлять доступом к документам, обычно как часть средства выбора документов. См. `MANAGE_DOCUMENTS <https://developer.android.com/reference/android/Manifest.permission#MANAGE_DOCUMENTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_external_storage>`

Позволяет приложению получить широкий доступ к внешнему хранилищу в хранилище с ограниченной областью действия. См. `MANAGE_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#MANAGE_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/manage_media:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/manage_media** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/manage_media>`

Позволяет приложению изменять и удалять медиафайлы на этом устройстве или любом подключенном устройстве хранения без подтверждения пользователя. Для того чтобы это разрешение вступило в силу, приложению должны быть предварительно предоставлены разрешения ``READ_EXTERNAL_STORAGE`` или ``MANAGE_EXTERNAL_STORAGE``. См. `MANAGE_MEDIA <https://developer.android.com/reference/android/Manifest.permission#MANAGE_MEDIA>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/master_clear:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/master_clear** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/master_clear>`

См. `MASTER_CLEAR <https://developer.android.com/reference/android/Manifest.permission#MASTER_CLEAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/media_content_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/media_content_control** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/media_content_control>`

Позволяет приложению знать, какой контент воспроизводится, и управлять его воспроизведением. См. `MEDIA_CONTENT_CONTROL <https://developer.android.com/reference/android/Manifest.permission#MEDIA_CONTENT_CONTROL>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/modify_audio_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/modify_audio_settings>`

Позволяет приложению изменять глобальные настройки звука. См. `MODIFY_AUDIO_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#MODIFY_AUDIO_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/modify_phone_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/modify_phone_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/modify_phone_state>`

Позволяет изменять состояние телефонии — включение питания, mmi и т. д. Не включает совершение вызовов. См. `MODIFY_PHONE_STATE <https://developer.android.com/reference/android/Manifest.permission#MODIFY_PHONE_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/mount_format_filesystems** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/mount_format_filesystems>`

Позволяет форматировать файловые системы для съемных носителей. См. `MOUNT_FORMAT_FILESYSTEMS <https://developer.android.com/reference/android/Manifest.permission#MOUNT_FORMAT_FILESYSTEMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/mount_unmount_filesystems** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/mount_unmount_filesystems>`

Позволяет монтировать и демонтировать файловые системы для съемных носителей. См. `MOUNT_UNMOUNT_FILESYSTEMS <https://developer.android.com/reference/android/Manifest.permission#MOUNT_UNMOUNT_FILESYSTEMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/nfc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/nfc** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/nfc>`

Позволяет приложениям выполнять операции ввода-вывода через NFC. См. `NFC <https://developer.android.com/reference/android/Manifest.permission#NFC>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/persistent_activity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/persistent_activity** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/persistent_activity>`

**Устарело:** Deprecated in API level 15.

Позволяет приложению сделать свои действия постоянными.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/post_notifications:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/post_notifications** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/post_notifications>`

Позволяет приложению публиковать уведомления. Добавлено в API уровня 33. См. `Разрешение на выполнение уведомлений <https://developer.android.com/develop/ui/views/notifications/notification-permission>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/process_outgoing_calls** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/process_outgoing_calls>`

**Устарело:** Deprecated in API level 29.

Позволяет приложению видеть набираемый номер во время исходящего вызова с возможностью перенаправить вызов на другой номер или вообще отменить вызов. См. `PROCESS_OUTGOING_CALLS <https://developer.android.com/reference/android/Manifest.permission#PROCESS_OUTGOING_CALLS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_calendar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_calendar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_calendar>`

Позволяет приложению читать данные календаря пользователя. См. `READ_CALENDAR <https://developer.android.com/reference/android/Manifest.permission#READ_CALENDAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_call_log:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_call_log** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_call_log>`

Позволяет приложению читать журнал вызовов пользователя. См. `READ_CALL_LOG <https://developer.android.com/reference/android/Manifest.permission#READ_CALL_LOG>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_contacts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_contacts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_contacts>`

Позволяет приложению читать данные контактов пользователя. См. `READ_CONTACTS <https://developer.android.com/reference/android/Manifest.permission#READ_CONTACTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_external_storage>`

**Устарело:** Deprecated in API level 33.

Позволяет приложению читать из внешнего хранилища. См. `READ_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#READ_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_frame_buffer** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_frame_buffer>`

Позволяет приложению делать снимки экрана и, в более общем плане, получать доступ к данным буфера кадров.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_history_bookmarks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_history_bookmarks>`

Позволяет приложению читать (но не записывать) историю просмотров и закладки пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_input_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_input_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_input_state>`

**Устарело:** Deprecated in API level 16.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_logs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_logs** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_logs>`

Позволяет приложению читать файлы системного журнала низкого уровня. См. `READ_LOGS <https://developer.android.com/reference/android/Manifest.permission#READ_LOGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_audio:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_audio** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_audio>`

Позволяет приложению читать аудиофайлы с внешнего хранилища. См. `READ_MEDIA_AUDIO <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_AUDIO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_images:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_images** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_images>`

Позволяет приложению читать файлы изображений из внешнего хранилища. См. `READ_MEDIA_IMAGES <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_IMAGES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_video:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_video** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_video>`

Позволяет приложению читать видеофайлы с внешнего хранилища. См. `READ_MEDIA_VIDEO <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VIDEO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_media_visual_user_selected** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_media_visual_user_selected>`

Позволяет приложению читать файлы изображений или видео из внешнего хранилища, которые пользователь выбрал с помощью окна выбора фотографий с запросом на разрешение. См. `READ_MEDIA_VISUAL_USER_SELECTED <https://developer.android.com/reference/android/Manifest.permission#READ_MEDIA_VISUAL_USER_SELECTED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_phone_state:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_phone_state** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_phone_state>`

Позволяет только читать доступ к состоянию телефона. См. `READ_PHONE_STATE <https://developer.android.com/reference/android/Manifest.permission#READ_PHONE_STATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_profile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_profile** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_profile>`

Позволяет приложению читать данные личного профиля пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sms>`

Позволяет приложению читать SMS-сообщения. См. `READ_SMS <https://developer.android.com/reference/android/Manifest.permission#READ_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_social_stream:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_social_stream** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_social_stream>`

Позволяет приложению читать из социальной ленты пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sync_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sync_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sync_settings>`

Позволяет приложениям читать настройки синхронизации. См. `READ_SYNC_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_sync_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_sync_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_sync_stats>`

Позволяет приложениям читать статистику синхронизации. См. `READ_SYNC_STATS <https://developer.android.com/reference/android/Manifest.permission#READ_SYNC_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/read_user_dictionary** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/read_user_dictionary>`

Позволяет приложению читать пользовательский словарь.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/reboot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/reboot** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/reboot>`

Требуется для возможности перезагрузки устройства. См. `REBOOT <https://developer.android.com/reference/android/Manifest.permission#REBOOT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_boot_completed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_boot_completed>`

Позволяет приложению получать Intent.ACTION_BOOT_COMPLETED, который транслируется после завершения загрузки системы. См. `RECEIVE_BOOT_COMPLETED <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_BOOT_COMPLETED>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_mms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_mms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_mms>`

Позволяет приложению отслеживать входящие MMS-сообщения. См. `RECEIVE_MMS <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_MMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_sms>`

Позволяет приложению получать SMS-сообщения. См. `RECEIVE_SMS <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/receive_wap_push:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/receive_wap_push** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/receive_wap_push>`

Позволяет приложению получать WAP push-сообщения. См. `RECEIVE_WAP_PUSH <https://developer.android.com/reference/android/Manifest.permission#RECEIVE_WAP_PUSH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/record_audio:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/record_audio** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/record_audio>`

Позволяет приложению записывать звук. См. `RECORD_AUDIO <https://developer.android.com/reference/android/Manifest.permission#RECORD_AUDIO>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/reorder_tasks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/reorder_tasks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/reorder_tasks>`

Позволяет приложению изменять Z-порядок задач. См. `REORDER_TASKS <https://developer.android.com/reference/android/Manifest.permission#REORDER_TASKS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/restart_packages:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/restart_packages** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/restart_packages>`

**Устарело:** Deprecated in API level 15.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/send_respond_via_message** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/send_respond_via_message>`

Позволяет приложению (телефону) отправлять запрос другим приложениям для обработки действия ответа через сообщение во время входящих вызовов. См. `SEND_RESPOND_VIA_MESSAGE <https://developer.android.com/reference/android/Manifest.permission#SEND_RESPOND_VIA_MESSAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/send_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/send_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/send_sms>`

Позволяет приложению отправлять SMS-сообщения. См. `SEND_SMS <https://developer.android.com/reference/android/Manifest.permission#SEND_SMS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_activity_watcher** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_activity_watcher>`

Позволяет приложению отслеживать и контролировать запуск действий в системе в глобальном масштабе.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_alarm:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_alarm** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_alarm>`

Позволяет приложению транслировать намерение установить будильник для пользователя. См. `SET_ALARM <https://developer.android.com/reference/android/Manifest.permission#SET_ALARM>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_always_finish:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_always_finish** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_always_finish>`

Позволяет приложению контролировать, будут ли действия немедленно завершены при переводе в фоновый режим. См. `SET_ALWAYS_FINISH <https://developer.android.com/reference/android/Manifest.permission#SET_ALWAYS_FINISH>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_animation_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_animation_scale** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_animation_scale>`

Позволяет изменять глобальный коэффициент масштабирования анимации. См. `SET_ANIMATION_SCALE <https://developer.android.com/reference/android/Manifest.permission#SET_ANIMATION_SCALE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_debug_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_debug_app** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_debug_app>`

Настройте приложение для отладки. См. `SET_DEBUG_APP <https://developer.android.com/reference/android/Manifest.permission#SET_DEBUG_APP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_orientation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_orientation** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_orientation>`

Обеспечивает низкоуровневый доступ к настройке ориентации (фактически поворота) экрана.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_pointer_speed** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_pointer_speed>`

Обеспечивает низкоуровневый доступ к настройке скорости указателя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_preferred_applications** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_preferred_applications>`

**Устарело:** Deprecated in API level 15.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_process_limit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_process_limit** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_process_limit>`

Позволяет приложению устанавливать максимальное количество (необязательных) процессов приложения, которые могут быть запущены. См. `SET_PROCESS_LIMIT <https://developer.android.com/reference/android/Manifest.permission#SET_PROCESS_LIMIT>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_time:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_time** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_time>`

Позволяет приложениям устанавливать системное время напрямую. См. `SET_TIME <https://developer.android.com/reference/android/Manifest.permission#SET_TIME>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_time_zone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_time_zone** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_time_zone>`

Позволяет приложениям напрямую устанавливать часовой пояс системы. См. `SET_TIME_ZONE <https://developer.android.com/reference/android/Manifest.permission#SET_TIME_ZONE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_wallpaper:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_wallpaper** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper>`

Позволяет приложениям устанавливать обои. См. `SET_WALLPAPER <https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/set_wallpaper_hints** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/set_wallpaper_hints>`

Позволяет приложениям устанавливать подсказки обоев. См. `SET_WALLPAPER_HINTS <https://developer.android.com/reference/android/Manifest.permission#SET_WALLPAPER_HINTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/signal_persistent_processes** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/signal_persistent_processes>`

Разрешить приложению запрашивать отправку сигнала всем постоянным процессам. См. `SIGNAL_PERSISTENT_PROCESSES <https://developer.android.com/reference/android/Manifest.permission#SIGNAL_PERSISTENT_PROCESSES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/status_bar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/status_bar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/status_bar>`

Позволяет приложению открывать, закрывать или отключать строку состояния и ее значки. См. `STATUS_BAR <https://developer.android.com/reference/android/Manifest.permission#STATUS_BAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/subscribed_feeds_read** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_read>`

Позволяет приложению разрешить доступ к подписанным каналам ContentProvider.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/subscribed_feeds_write** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/subscribed_feeds_write>`

**Устарело:** Это свойство может быть изменено или удалено в будущих версиях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/system_alert_window:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/system_alert_window** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/system_alert_window>`

Позволяет приложению создавать окна с использованием типа WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY, отображаемые поверх всех других приложений. См. `SYSTEM_ALERT_WINDOW <https://developer.android.com/reference/android/Manifest.permission#SYSTEM_ALERT_WINDOW>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/transmit_ir:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/transmit_ir** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/transmit_ir>`

Позволяет использовать ИК-передатчик устройства, если он доступен. См. `TRANSMIT_IR <https://developer.android.com/reference/android/Manifest.permission#TRANSMIT_IR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/uninstall_shortcut** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/uninstall_shortcut>`

**Устарело:** Это свойство может быть изменено или удалено в будущих версиях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/update_device_stats:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/update_device_stats** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/update_device_stats>`

Позволяет приложению обновлять статистику устройства. См. `UPDATE_DEVICE_STATS <https://developer.android.com/reference/android/Manifest.permission#UPDATE_DEVICE_STATS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/use_credentials:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/use_credentials** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/use_credentials>`

Позволяет приложению запрашивать токены аутентификации у AccountManager.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/use_sip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/use_sip** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/use_sip>`

Позволяет приложению использовать службу SIP. См. `USE_SIP <https://developer.android.com/reference/android/Manifest.permission#USE_SIP>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/vibrate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/vibrate** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/vibrate>`

Разрешает доступ к вибратору. См. `VIBRATE <https://developer.android.com/reference/android/Manifest.permission#VIBRATE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/wake_lock:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/wake_lock** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/wake_lock>`

Позволяет использовать PowerManager WakeLocks для предотвращения перехода процессора в спящий режим или затемнения экрана. См. `WAKE_LOCK <https://developer.android.com/reference/android/Manifest.permission#WAKE_LOCK>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_apn_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_apn_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_apn_settings>`

Позволяет приложениям записывать настройки apn и читать конфиденциальные поля существующих настроек apn, такие как имя пользователя и пароль. См. `WRITE_APN_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_APN_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_calendar:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_calendar** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_calendar>`

Позволяет приложению записывать данные календаря пользователя. См. `WRITE_CALENDAR <https://developer.android.com/reference/android/Manifest.permission#WRITE_CALENDAR>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_call_log:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_call_log** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_call_log>`

Позволяет приложению записывать (но не читать) данные журнала вызовов пользователя. См. `WRITE_CALL_LOG <https://developer.android.com/reference/android/Manifest.permission#WRITE_CALL_LOG>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_contacts:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_contacts** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_contacts>`

Позволяет приложению записывать данные контактов пользователя. См. `WRITE_CONTACTS <https://developer.android.com/reference/android/Manifest.permission#WRITE_CONTACTS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_external_storage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_external_storage** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_external_storage>`

Позволяет приложению записывать данные во внешнее хранилище. См. `WRITE_EXTERNAL_STORAGE <https://developer.android.com/reference/android/Manifest.permission#WRITE_EXTERNAL_STORAGE>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_gservices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_gservices** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_gservices>`

Позволяет приложению изменять карту сервисов Google. См. `WRITE_GSERVICES <https://developer.android.com/reference/android/Manifest.permission#WRITE_GSERVICES>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_history_bookmarks** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_history_bookmarks>`

Позволяет приложению записывать (но не читать) историю просмотров и закладки пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_profile:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_profile** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_profile>`

Позволяет приложению записывать (но не читать) данные личного профиля пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_secure_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_secure_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_secure_settings>`

Позволяет приложению читать или записывать настройки защищенной системы. См. `WRITE_SECURE_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SECURE_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_settings>`

Позволяет приложению читать или записывать системные настройки. См. `WRITE_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_sms:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_sms** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_sms>`

Позволяет приложению писать SMS-сообщения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_social_stream:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_social_stream** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_social_stream>`

Позволяет приложению записывать (но не читать) данные социальной ленты пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_sync_settings:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_sync_settings** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_sync_settings>`

Позволяет приложениям записывать настройки синхронизации. См. `WRITE_SYNC_SETTINGS <https://developer.android.com/reference/android/Manifest.permission#WRITE_SYNC_SETTINGS>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **permissions/write_user_dictionary** :ref:`🔗<class_EditorExportPlatformAndroid_property_permissions/write_user_dictionary>`

Позволяет приложению записывать данные в пользовательский словарь.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/background_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **screen/background_color** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/background_color>`

Цвет фона, используемый для корневого окна. По умолчанию это :ref:`Color.BLACK<class_Color_constant_BLACK>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/edge_to_edge:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/edge_to_edge** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/edge_to_edge>`

Если ``true``, это делает панели навигации и состояния полупрозрачными, позволяя содержимому приложения простираться от края до края.

\ **Примечание:** Необходимо убедиться, что содержимое приложения не перекрыто системными элементами, используя методы :ref:`DisplayServer.get_display_safe_area()<class_DisplayServer_method_get_display_safe_area>` и :ref:`DisplayServer.get_display_cutouts()<class_DisplayServer_method_get_display_cutouts>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/immersive_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/immersive_mode** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/immersive_mode>`

Если ``true``, скрывает навигацию и строку состояния. Установите :ref:`DisplayServer.window_set_mode()<class_DisplayServer_method_window_set_mode>`, чтобы изменить это во время выполнения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_large:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_large** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_large>`

Указывает, поддерживает ли приложение экраны большего размера.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_normal:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_normal** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_normal>`

Указывает, поддерживает ли приложение «обычные» форм-факторы экрана.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_small:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_small** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_small>`

Указывает, поддерживает ли приложение устройства с меньшим форм-фактором экрана.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_screen/support_xlarge:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **screen/support_xlarge** :ref:`🔗<class_EditorExportPlatformAndroid_property_screen/support_xlarge>`

Указывает, поддерживает ли приложение экраны очень большого размера.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformAndroid_property_shader_baker/enabled>`

Если ``true``, шейдеры будут скомпилированы и встроены в приложение. Эта опция поддерживается только при использовании рендереров Forward+ или Mobile.

\ **Примечание:** При экспорте в качестве выделенного сервера запекатель шейдеров всегда отключен, поскольку рендеринг не выполняется.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_user_data_backup/allow:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **user_data_backup/allow** :ref:`🔗<class_EditorExportPlatformAndroid_property_user_data_backup/allow>`

Если ``true``, приложение может участвовать в инфраструктуре резервного копирования и восстановления.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_version/code:

.. rst-class:: classref-property

:ref:`int<class_int>` **version/code** :ref:`🔗<class_EditorExportPlatformAndroid_property_version/code>`

Машиночитаемая версия приложения. Она должна увеличиваться для каждого нового релиза, помещаемого в Play Store.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_version/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **version/name** :ref:`🔗<class_EditorExportPlatformAndroid_property_version/name>`

Версия приложения видна пользователю. Возвращается к :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`, если оставить пустым.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformAndroid_property_xr_features/xr_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **xr_features/xr_mode** :ref:`🔗<class_EditorExportPlatformAndroid_property_xr_features/xr_mode>`

Режим расширенной реальности (XR) для этого приложения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
