:github_url: hide

.. _class_EditorExportPlatformMacOS:

EditorExportPlatformMacOS
=========================

**继承：** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

macOS 导出器。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`为 macOS 导出 <../tutorials/export/exporting_for_macos>`

- :doc:`在 macOS 上运行 Godot 应用 <../tutorials//export/running_on_macos>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/additional_plist_content<class_EditorExportPlatformMacOS_property_application/additional_plist_content>`                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/app_category<class_EditorExportPlatformMacOS_property_application/app_category>`                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/bundle_identifier<class_EditorExportPlatformMacOS_property_application/bundle_identifier>`                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/copyright<class_EditorExportPlatformMacOS_property_application/copyright>`                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`application/copyright_localized<class_EditorExportPlatformMacOS_property_application/copyright_localized>`                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`application/export_angle<class_EditorExportPlatformMacOS_property_application/export_angle>`                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/icon<class_EditorExportPlatformMacOS_property_application/icon>`                                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`application/icon_interpolation<class_EditorExportPlatformMacOS_property_application/icon_interpolation>`                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/liquid_glass_icon<class_EditorExportPlatformMacOS_property_application/liquid_glass_icon>`                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/min_macos_version_arm64<class_EditorExportPlatformMacOS_property_application/min_macos_version_arm64>`                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/min_macos_version_x86_64<class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64>`                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/short_version<class_EditorExportPlatformMacOS_property_application/short_version>`                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/signature<class_EditorExportPlatformMacOS_property_application/signature>`                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/version<class_EditorExportPlatformMacOS_property_application/version>`                                                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`binary_format/architecture<class_EditorExportPlatformMacOS_property_binary_format/architecture>`                                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/apple_team_id<class_EditorExportPlatformMacOS_property_codesign/apple_team_id>`                                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/certificate_file<class_EditorExportPlatformMacOS_property_codesign/certificate_file>`                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/certificate_password<class_EditorExportPlatformMacOS_property_codesign/certificate_password>`                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`codesign/codesign<class_EditorExportPlatformMacOS_property_codesign/codesign>`                                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`codesign/custom_options<class_EditorExportPlatformMacOS_property_codesign/custom_options>`                                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/entitlements/additional<class_EditorExportPlatformMacOS_property_codesign/entitlements/additional>`                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/address_book<class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book>`                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/allow_dyld_environment_variables<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/allow_jit_code_execution<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution>`                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/allow_unsigned_executable_memory<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/app_sandbox/device_bluetooth<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth>`                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/app_sandbox/device_usb<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb>`                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/app_sandbox/enabled<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled>`                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`codesign/entitlements/app_sandbox/files_downloads<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`codesign/entitlements/app_sandbox/files_movies<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies>`                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`codesign/entitlements/app_sandbox/files_music<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music>`                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`codesign/entitlements/app_sandbox/files_pictures<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`codesign/entitlements/app_sandbox/files_user_selected<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`codesign/entitlements/app_sandbox/helper_executables<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables>`                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/app_sandbox/network_client<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/app_sandbox/network_server<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/apple_events<class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events>`                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/audio_input<class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input>`                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/calendars<class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars>`                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/camera<class_EditorExportPlatformMacOS_property_codesign/entitlements/camera>`                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/entitlements/custom_file<class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file>`                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/debugging<class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging>`                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/disable_library_validation<class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/location<class_EditorExportPlatformMacOS_property_codesign/entitlements/location>`                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/entitlements/photos_library<class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library>`                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/identity<class_EditorExportPlatformMacOS_property_codesign/identity>`                                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/installer_identity<class_EditorExportPlatformMacOS_property_codesign/installer_identity>`                                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/provisioning_profile<class_EditorExportPlatformMacOS_property_codesign/provisioning_profile>`                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`custom_template/debug<class_EditorExportPlatformMacOS_property_custom_template/debug>`                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`custom_template/release<class_EditorExportPlatformMacOS_property_custom_template/release>`                                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`debug/export_console_wrapper<class_EditorExportPlatformMacOS_property_debug/export_console_wrapper>`                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`display/high_res<class_EditorExportPlatformMacOS_property_display/high_res>`                                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`export/distribution_type<class_EditorExportPlatformMacOS_property_export/distribution_type>`                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`notarization/api_key<class_EditorExportPlatformMacOS_property_notarization/api_key>`                                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`notarization/api_key_id<class_EditorExportPlatformMacOS_property_notarization/api_key_id>`                                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`notarization/api_uuid<class_EditorExportPlatformMacOS_property_notarization/api_uuid>`                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`notarization/apple_id_name<class_EditorExportPlatformMacOS_property_notarization/apple_id_name>`                                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`notarization/apple_id_password<class_EditorExportPlatformMacOS_property_notarization/apple_id_password>`                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`notarization/notarization<class_EditorExportPlatformMacOS_property_notarization/notarization>`                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/address_book_usage_description<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>`                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/address_book_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/calendar_usage_description<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description>`                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/calendar_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized>`                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/camera_usage_description<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description>`                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/camera_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized>`                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/advertising_data/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/advertising_data/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/advertising_data/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/advertising_data/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/audio_data/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected>`                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/audio_data/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/audio_data/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/audio_data/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking>`                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/browsing_history/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/browsing_history/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/browsing_history/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/browsing_history/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/coarse_location/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/coarse_location/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes>`                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/coarse_location/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/coarse_location/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking>`                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/contacts/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected>`                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/contacts/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes>`                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/contacts/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user>`                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/contacts/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/crash_data/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected>`                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/crash_data/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/crash_data/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/crash_data/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking>`                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/credit_info/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected>`                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/credit_info/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/credit_info/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/credit_info/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking>`                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/customer_support/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/customer_support/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/customer_support/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/customer_support/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/device_id/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected>`                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/device_id/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes>`                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/device_id/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user>`                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/device_id/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking>`                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/email_address/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected>`                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/email_address/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes>`                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/email_address/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user>`                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/email_address/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/emails_or_text_messages/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected>`                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/emails_or_text_messages/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes>` |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/emails_or_text_messages/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user>`           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/emails_or_text_messages/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking>`     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/environment_scanning/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/environment_scanning/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes>`       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/environment_scanning/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user>`                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/environment_scanning/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking>`           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/fitness/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected>`                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/fitness/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes>`                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/fitness/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user>`                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/fitness/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/gameplay_content/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/gameplay_content/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/gameplay_content/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/gameplay_content/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/hands/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected>`                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/hands/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/hands/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user>`                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/hands/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking>`                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/head/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected>`                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/head/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes>`                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/head/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user>`                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/head/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking>`                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/health/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected>`                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/health/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/health/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user>`                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/health/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking>`                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/name/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected>`                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/name/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes>`                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/name/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user>`                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/name/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking>`                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_contact_info/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected>`                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_contact_info/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes>`           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_contact_info/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user>`                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_contact_info/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_data_types/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_data_types/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_data_types/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_data_types/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_diagnostic_data/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_diagnostic_data/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes>`     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_diagnostic_data/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_diagnostic_data/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking>`         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_financial_info/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_financial_info/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes>`       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_financial_info/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user>`                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_financial_info/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking>`           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_usage_data/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_usage_data/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_usage_data/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_usage_data/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_user_content/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected>`                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_user_content/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes>`           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_user_content/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user>`                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_user_content/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/payment_info/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected>`                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/payment_info/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes>`                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/payment_info/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user>`                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/payment_info/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/performance_data/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/performance_data/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/performance_data/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/performance_data/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/phone_number/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected>`                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/phone_number/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes>`                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/phone_number/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user>`                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/phone_number/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/photos_or_videos/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/photos_or_videos/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/photos_or_videos/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/photos_or_videos/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/physical_address/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/physical_address/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/physical_address/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/physical_address/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/precise_location/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/precise_location/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/precise_location/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/precise_location/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/product_interaction/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected>`                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/product_interaction/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes>`         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/product_interaction/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/product_interaction/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking>`             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/purchase_history/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected>`                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/purchase_history/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes>`               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/purchase_history/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user>`                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/purchase_history/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/search_history/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected>`                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/search_history/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/search_history/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user>`                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/search_history/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking>`                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/sensitive_info/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected>`                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/sensitive_info/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes>`                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/sensitive_info/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user>`                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/sensitive_info/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking>`                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/user_id/collected<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected>`                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/user_id/collection_purposes<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes>`                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/user_id/linked_to_user<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user>`                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/user_id/used_for_tracking<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking>`                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/desktop_folder_usage_description<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description>`                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/desktop_folder_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized>`                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/documents_folder_usage_description<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description>`                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/documents_folder_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized>`                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/downloads_folder_usage_description<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description>`                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/downloads_folder_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized>`                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/location_usage_description<class_EditorExportPlatformMacOS_property_privacy/location_usage_description>`                                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/location_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized>`                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/microphone_usage_description<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description>`                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/microphone_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized>`                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/network_volumes_usage_description<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description>`                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/network_volumes_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized>`                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/photos_library_usage_description<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>`                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/photos_library_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized>`                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/removable_volumes_usage_description<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description>`                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/removable_volumes_usage_description_localized<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized>`                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`privacy/tracking_domains<class_EditorExportPlatformMacOS_property_privacy/tracking_domains>`                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/tracking_enabled<class_EditorExportPlatformMacOS_property_privacy/tracking_enabled>`                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`shader_baker/enabled<class_EditorExportPlatformMacOS_property_shader_baker/enabled>`                                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/cleanup_script<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/cleanup_script>`                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`ssh_remote_deploy/enabled<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled>`                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/extra_args_scp<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp>`                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/extra_args_ssh<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh>`                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/host<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host>`                                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/port<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port>`                                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/run_script<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script>`                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`xcode/platform_build<class_EditorExportPlatformMacOS_property_xcode/platform_build>`                                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`xcode/sdk_build<class_EditorExportPlatformMacOS_property_xcode/sdk_build>`                                                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`xcode/sdk_name<class_EditorExportPlatformMacOS_property_xcode/sdk_name>`                                                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`xcode/sdk_version<class_EditorExportPlatformMacOS_property_xcode/sdk_version>`                                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`xcode/xcode_build<class_EditorExportPlatformMacOS_property_xcode/xcode_build>`                                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`xcode/xcode_version<class_EditorExportPlatformMacOS_property_xcode/xcode_version>`                                                                                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_EditorExportPlatformMacOS_property_application/additional_plist_content:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/additional_plist_content** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/additional_plist_content>`

添加到 `Info.plist <https://developer.apple.com/documentation/bundleresources/information_property_list>`__ 文件的根 ``<dict>`` 部分的其他数据。该值应该是带有键值元素对的 XML 部分，例如：

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/app_category:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/app_category** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/app_category>`

App Store 的应用程序分类。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/bundle_identifier:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/bundle_identifier** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/bundle_identifier>`

反向 DNS 格式的唯一应用程序标识符，只能包含字母数字字符（\ ``A-Z``\ 、\ ``a-z`` 和 ``0-9``\ ）、连字符（\ ``-``\ ）和句点（\ ``.``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/copyright** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/copyright>`

捆绑包的（英文）版权声明，用户可见。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/copyright_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **application/copyright_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/copyright_localized>`

捆绑包的（本地化）版权声明，用户可见。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/export_angle:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_angle** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/export_angle>`

如果设置为 ``1``\ ，ANGLE 库将随导出的应用程序一起导出。如果设置为 ``0``\ ，则仅当 :ref:`ProjectSettings.rendering/gl_compatibility/driver<class_ProjectSettings_property_rendering/gl_compatibility/driver>` 被设置为 ``"opengl3_angle"`` 时才会导出 ANGLE 库。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/icon** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/icon>`

应用程序图标文件。如果留空，则会回退至 :ref:`ProjectSettings.application/config/macos_native_icon<class_ProjectSettings_property_application/config/macos_native_icon>`\ ，继而回退至 :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/icon_interpolation>`

用于调整应用程序图标大小的插值方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/liquid_glass_icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/liquid_glass_icon** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/liquid_glass_icon>`

macOS 26 Liquid Glass icon source file. Use `Icon Composer <https://developer.apple.com/icon-composer/>`__ to create Liquid Glass icons.

\ **Note:** Supported when exporting from macOS only, Xcode 26+ required.

\ **Note:** Liquid Glass icons are supported on macOS 26 only, use :ref:`application/icon<class_EditorExportPlatformMacOS_property_application/icon>` to set the icon for older macOS versions.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/min_macos_version_arm64:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/min_macos_version_arm64** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/min_macos_version_arm64>`

在 Apple Silicon 设备上运行该应用程序所需的最低 macOS 版本，格式为 ``主版本号.次版本号.补丁号`` 或 ``主版本号.次版本号``\ ，只能包含数字（\ ``0-9``\ ）和英文句点（\ ``.``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/min_macos_version_x86_64** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64>`

在 Intel 设备上运行该应用程序所需的最低 macOS 版本，格式为 ``主版本号.次版本号.补丁号`` 或 ``主版本号.次版本号``\ ，只能包含数字（\ ``0-9``\ ）和英文句点（\ ``.``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/short_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/short_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/short_version>`

用户可见的应用程序版本，只能包含数字字符（\ ``0-9``\ ）和句点（\ ``.``\ ）。如果留空，则回退到 :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`\ 。

\ **注意：**\ 生成的 Xcode 项目的 *Identity > Version* 会使用这个值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/signature:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/signature** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/signature>`

特定于该捆绑包的四字符创建者码。可选的。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/version** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/version>`

机器可读的应用程序版本，采用 ``major.minor.patch`` 格式，只能包含数字字符（\ ``0-9``\ ）和句点（\ ``.``\ ）。该值必须在被推送到 App Store 的每个新版本中递增。如果留空，则回退到 :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`\ 。

\ **注意：**\ 生成的 Xcode 项目的 *Identity > Build* 会使用这个值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformMacOS_property_binary_format/architecture>`

应用程序可执行文件的架构。

支持的架构有：\ ``x86_64``\ 、\ ``arm64``\ 、\ ``universal``\ （\ ``x86_64 + arm64``\ ）。

官方导出模板中只包含 ``universal`` 的二进制文件。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/apple_team_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/apple_team_id** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/apple_team_id>`

Apple 团队 ID，唯一的 10 字符的字符串。要找到你的团队 ID，请检查 Apple 开发者帐户仪表板中的“会员详细信息”部分，或代码签名证书的“组织单位”。见 `查找你的团队 ID <https://developer.apple.com/cn/help/account/manage-your-team/locate-your-team-id>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/certificate_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/certificate_file** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/certificate_file>`

用于对 ``.app`` 捆绑包进行签名的 PKCS #12 证书文件。

可以使用环境变量 ``GODOT_MACOS_CODESIGN_CERTIFICATE_FILE`` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/certificate_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/certificate_password** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/certificate_password>`

用于对 ``.app`` 捆绑包进行签名的证书文件的密码。

可以使用环境变量 ``GODOT_MACOS_CODESIGN_CERTIFICATE_PASSWORD`` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/codesign:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/codesign** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/codesign>`

用于代码签名的工具。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/custom_options:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **codesign/custom_options** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/custom_options>`

要额外传给代码签名工具的命令行参数的数组。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/additional:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/entitlements/additional** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/additional>`

添加到 `.entitlements <https://developer.apple.com/documentation/bundleresources/entitlements>`__ 文件的根 ``<dict>`` 部分的其他数据。该值应该是带有键值元素对的 XML 部分，例如：

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/address_book** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book>`

启用后允许访问用户地址簿中的联系人，如果启用，还应该在 :ref:`privacy/address_book_usage_description<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>` 选项中提供用途信息。请参阅 `com.apple.security.personal-information.addressbook <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_addressbook>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_dyld_environment_variables** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables>`

允许应用使用动态链接器环境变量注入代码。如果你使用的插件使用了动态或自我修改的原生代码，请根据该插件文档中的说明启用。见 `com.apple.security.cs.allow-dyld-environment-variables <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-dyld-environment-variables>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_jit_code_execution** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution>`

允许创建可写可执行内存，用于 JIT 代码。如果你使用的插件使用了动态或自我修改的原生代码，请根据该插件文档中的说明启用。见 `com.apple.security.cs.allow-jit <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-jit>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_unsigned_executable_memory** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory>`

允许创建可写可执行内存，不受 JIT 限制。如果你使用的插件使用了动态或自我修改的原生代码，请根据该插件文档中的说明启用。见 `com.apple.security.cs.allow-unsigned-executable-memory <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-unsigned-executable-memory>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/device_bluetooth** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth>`

启用后能够允许应用与蓝牙设备交互。使用无线控制器时，必须拥有这项权利。见 `com.apple.security.device.bluetooth <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_bluetooth>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/device_usb** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb>`

启用后能够允许应用与 USB 设备交互。使用有线控制器时，必须拥有这项权利。见 `com.apple.security.device.usb <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_usb>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled>`

启用 App Sandbox 应用沙盒。App Sandbox 能够限制对用户数据、网络以及设备的访问。沙盒应用无法访问文件系统中的大部分区域，无法使用自定义文件对话框，也无法执行 .app 捆绑包之外的二进制文件。见 `App Sandbox <https://developer.apple.com/documentation/security/app_sandbox>`__\ 。

\ **注意：**\ 通过 App Store 分发应用时必须启用 App Sandbox。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_downloads** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads>`

允许对用户“下载”文件夹的读写访问。见 `com.apple.security.files.downloads.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_downloads_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_movies** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies>`

允许对用户“影片”文件夹的读写访问。见 `com.apple.security.files.movies.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_movies_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_music** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music>`

允许对用户“音乐”文件夹的读写访问。见 `com.apple.security.files.music.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_music_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_pictures** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures>`

允许对用户“图片”文件夹的读写访问。见 `com.apple.security.files.pictures.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_pictures_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_user_selected** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected>`

允许对用户使用原生文件对话框选择的位置进行读或写访问。请参阅 `com.apple.security.files.user-selected.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_user-selected_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **codesign/entitlements/app_sandbox/helper_executables** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables>`

要嵌入应用捆绑包的辅助可执行文件列表。沙盒应用仅限于执行这些可执行文件。见 `Embedding a command-line tool in a sandboxed app <https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/network_client** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client>`

启用后允许应用建立出站的网络连接。见 `com.apple.security.network.client <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_client>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/network_server** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server>`

启用后允许应用监听入站的网络连接。见 `com.apple.security.network.server <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_server>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/apple_events** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events>`

启用后允许应用向其他应用发送 Apple 事件。见 `com.apple.security.automation.apple-events <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_automation_apple-events>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/audio_input** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input>`

需要使用麦克风或其他音频输入源时启用，启用时还应在 :ref:`privacy/microphone_usage_description<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description>` 选项中提供用途信息。请参阅 `com.apple.security.device.audio-input <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_audio-input>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/calendars** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars>`

启用后允许访问用户的日历，启用时还应在 :ref:`privacy/calendar_usage_description<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description>` 选项中提供用途信息。请参阅 `com.apple.security.personal-information.calendars <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_calendars>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/camera** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/camera>`

需要使用相机时启用，启用时还应在 :ref:`privacy/camera_usage_description<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description>` 选项中提供用途信息。请参阅 `com.apple.security.device.camera <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_camera>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/entitlements/custom_file** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file>`

自定义权利 ``.plist`` 文件，如果指定，则会忽略导出配置中的其他权利。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/debugging** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging>`

临时启用这个权利就可以对导出的应用使用原生调试器（GDB、LLDB）。生产导出应该禁用这项权利。见 `Embedding a command-line tool in a sandboxed app <https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/disable_library_validation** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation>`

允许应用加载任意库和框架（没有使用与主可执行文件相同的团队 ID 进行签名，也没有经过 Apple 的签名）。如果你使用了 GDExtension 插件或 ad-hoc 签名，或者想要支持用户提供的外部插件，请启用该选项。见 `com.apple.security.cs.disable-library-validation <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_disable-library-validation>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/location** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/location>`

需要使用位置服务中的位置信息时启用，启用时还应在 :ref:`privacy/location_usage_description<class_EditorExportPlatformMacOS_property_privacy/location_usage_description>` 选项中提供用途信息。请参阅 `com.apple.security.personal-information.location <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_location>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/photos_library** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library>`

启用后允许访问用户的照片库，启用时还应在 :ref:`privacy/photos_library_usage_description<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>` 选项中提供用途消息。请参阅 `com.apple.security.personal-information.photos-library <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_photos-library>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/identity** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/identity>`

用于对 ``.app`` 捆绑包进行签名的签名身份的“全名”“通用名”或 SHA-1 哈希。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/installer_identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/installer_identity** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/installer_identity>`

用于对通过 App Store 分发的 ``.pkg`` 安装器进行签名的签名身份的“全名”“通用名”或 SHA-1 哈希，使用 ``3rd Party Mac Developer Installer: Name.`` 身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/provisioning_profile:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/provisioning_profile** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/provisioning_profile>`

从 Apple 开发者账户控制面板下载到的预置描述文件。见 `编辑、下载或删除预置描述文件 <https://developer.apple.com/cn/help/account/manage-profiles/edit-download-or-delete-profiles/>`__\ 。

可以使用环境变量 ``GODOT_MACOS_CODESIGN_PROVISIONING_PROFILE`` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformMacOS_property_custom_template/debug>`

到自定义导出模板的路径。如果留空，则默认模板将被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformMacOS_property_custom_template/release>`

到自定义导出模板的路径。如果留空，则默认模板将被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformMacOS_property_debug/export_console_wrapper>`

启用后，会在导出后的应用程序旁创建一个封装程序，可以用来以带命令行输出的形式运行该应用程序。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_display/high_res:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **display/high_res** :ref:`🔗<class_EditorExportPlatformMacOS_property_display/high_res>`

如果为 ``true``\ ，则应用程序使用原生显示器分辨率渲染，否则始终使用 loDPI 分辨率渲染，必要时由操作系统放大。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_export/distribution_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **export/distribution_type** :ref:`🔗<class_EditorExportPlatformMacOS_property_export/distribution_type>`

应用程序分发目标。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_key** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_key>`

Apple App Store Connect API 发行者密钥文件。

可以使用环境变量 ``GODOT_MACOS_NOTARIZATION_API_KEY`` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_key_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_key_id** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_key_id>`

Apple App Store Connect API 发行者密钥 ID。

可以使用环境变量 ``GODOT_MACOS_NOTARIZATION_API_KEY_ID`` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_uuid:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_uuid** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_uuid>`

Apple App Store Connect API 发行者 UUID。

可以使用环境变量 ``GODOT_MACOS_NOTARIZATION_API_UUID`` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/apple_id_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/apple_id_name** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/apple_id_name>`

Apple ID 账户名（邮箱地址）。

可以使用环境变量 ``GODOT_MACOS_NOTARIZATION_APPLE_ID_NAME`` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/apple_id_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/apple_id_password** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/apple_id_password>`

Apple ID 针对应用的密码。

可以使用环境变量 ``GODOT_MACOS_NOTARIZATION_APPLE_ID_PASSWORD`` 覆盖。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/notarization:

.. rst-class:: classref-property

:ref:`int<class_int>` **notarization/notarization** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/notarization>`

用于公证的工具。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/address_book_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>`

请求访问用户的联系人时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/address_book_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized>`

请求访问用户的联系人时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/calendar_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description>`

请求访问用户的日历数据时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/calendar_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized>`

请求访问用户的日历数据时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/camera_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/camera_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description>`

请求访问设备相机时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/camera_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized>`

请求访问设备相机时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected>`

表示你的应用是否会收集广告数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/advertising_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes>`

你的应用收集广告数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user>`

表示你的应用是否会将广告数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking>`

表示你的应用是否会将广告数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected>`

表示你的应用是否会收集音频数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/audio_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes>`

你的应用收集音频数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user>`

表示你的应用是否会将音频数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking>`

表示你的应用是否会将音频数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected>`

表示你的应用是否会收集浏览历史。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/browsing_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes>`

你的应用收集浏览历史记录的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user>`

表示你的应用是否会将浏览历史链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking>`

表示你的应用是否会将浏览历史用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected>`

表示你的应用是否会收集粗略位置数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/coarse_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes>`

你的应用收集粗略位置数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user>`

表示你的应用是否会将粗略位置数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking>`

表示你的应用是否会将粗略位置数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected>`

表示你的应用程序是否收集联系人。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/contacts/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes>`

你的应用收集联系人的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user>`

表示你的应用是否会将通讯录链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking>`

表示你的应用是否会将通讯录用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected>`

表示你的应用是否会收集崩溃数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/crash_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes>`

你的应用收集崩溃数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user>`

表示你的应用是否会将崩溃数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking>`

表示你的应用是否会将崩溃数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected>`

表示你的应用程序是否收集信用信息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/credit_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes>`

你的应用收集信用信息的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user>`

表示你的应用是否会将信用信息链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking>`

表示你的应用是否会将信用信息用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected>`

表示你的应用是否会收集客户支持数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/customer_support/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes>`

你的应用程序收集客户支持数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user>`

表示你的应用程序是否将客户支持数据链接到用户身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking>`

表示你的应用是否使用客户支持数据进行跟踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected>`

表示你的应用是否会收集设备 ID。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/device_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes>`

你的应用收集设备 ID 的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user>`

表示你的应用是否会将设备 ID 链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking>`

表示你的应用是否会将设备 ID 链接用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected>`

表示你的应用是否会收集电子邮件地址。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/email_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes>`

你的应用程序收集电子邮件地址的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user>`

表示你的应用是否会将电子邮件地址链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking>`

表示你的应用是否会将电子邮件地址用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected>`

表示你的应用是否会收集电子邮件或短信。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/emails_or_text_messages/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes>`

你的应用程序收集电子邮件或短信的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user>`

表示你的应用是否会将电子邮件或短信链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking>`

表示你的应用是否会将电子邮件或短信用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected>`

表示你的应用是否会收集环境扫描数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/environment_scanning/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes>`

你的应用程序收集环境扫描数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user>`

表示你的应用是否会将环境扫描数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking>`

表示你的应用是否会将环境扫描数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected>`

表示你的应用是否会收集健身和锻炼数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/fitness/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes>`

你的应用收集健身和锻炼数据的原因。见\ `《在隐私清单中描述数据用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user>`

表示你的应用是否会将健身和锻炼数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking>`

表示你的应用是否会将健身和锻炼数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected>`

表示你的应用是否会收集游戏内容。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/gameplay_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes>`

你的应用程序收集游戏内容的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user>`

表示你的应用是否会将游戏内容链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking>`

表示你的应用是否会将游戏内容用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected>`

表示你的应用是否会收集用户的手部结构和手部移动。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/hands/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes>`

你的应用收集用户的手部结构和手部移动的原因。见\ `《在隐私清单中描述数据用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user>`

表示你的应用是否会将用户的手部结构和手部移动链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking>`

表示你的应用是否会将用户的手部结构和手部移动用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected>`

表示你的应用是否会收集用户的头部移动。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/head/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes>`

你的应用程序收集用户头部运动的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user>`

表示你的应用是否会将用户的头部移动链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking>`

表示你的应用是否会将用户的头部移动用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected>`

表示你的应用是否会收集健康和医学数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/health/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes>`

你的应用收集健康和医学数据的原因。见\ `《在隐私清单中描述数据用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user>`

表示你的应用是否会将健康和医学数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking>`

表示你的应用是否会将健康和医学数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected>`

表示你的应用是否会收集用户的姓名。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/name/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes>`

你的应用程序收集用户姓名的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user>`

表示你的应用是否会将用户的姓名链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking>`

表示你的应用是否会将用户的姓名用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected>`

表示你的应用程序是否收集任何其他联系信息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_contact_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes>`

你的应用收程序集任何其他联系信息的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user>`

表示你的应用是否会将任何其他联系信息链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking>`

表示你的应用是否会将任何其他联系信息用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected>`

表示你的应用是否会收集任何其它数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_data_types/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes>`

你的应用程序收集任何其他数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user>`

表示你的应用是否会将任何其它数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking>`

表示你的应用是否会将任何其它数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected>`

表示你的应用是否会收集任何其它诊断数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_diagnostic_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes>`

你的应用程序收集任何其他诊断数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user>`

表示你的应用是否会将任何其它诊断数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking>`

表示你的应用是否会将任何其它诊断数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected>`

表示你的应用程序是否收集任何其他财务信息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_financial_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes>`

你的应用程序收集任何其他财务信息的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user>`

表示你的应用是否会将任何其它财务信息链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking>`

表示你的应用是否会将任何其它财务信息用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected>`

表示你的应用是否会收集任何其它使用数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_usage_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes>`

你的应用程序收集任何其他使用数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user>`

表示你的应用是否会将任何其它使用数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking>`

表示你的应用是否会将任何其它使用数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected>`

表示你的应用是否会收集任何其它用户生成内容。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_user_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes>`

你的应用程序收集任何其他用户生成内容的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user>`

表示你的应用是否会将任何其它用户生成内容链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking>`

表示你的应用是否会将任何其它用户生成内容用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected>`

表示你的应用程序是否收集支付信息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/payment_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes>`

你的应用程序收集支付信息的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user>`

表示你的应用是否会将支付信息链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking>`

表示你的应用是否会将支付信息用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected>`

表示你的应用程序是否收集性能数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/performance_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes>`

你的应用收集性能数据的原因。见\ `《在隐私清单中描述数据用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user>`

表示你的应用是否会将性能数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking>`

表示你的应用是否会将性能数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected>`

表示你的应用是否会收集电话号码。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/phone_number/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes>`

你的应用程序收集电话号码的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user>`

表示你的应用是否会将电话号码链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking>`

表示你的应用是否会将电话号码用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected>`

表示你的应用程序是否收集照片或视频。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/photos_or_videos/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes>`

你的应用程序收集照片或视频的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user>`

表示你的应用是否会将照片或视频链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking>`

表示你的应用是否会将照片或视频用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected>`

表示你的应用是否会收集实际住址。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/physical_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes>`

你的应用收集实际住址的原因。见\ `《在隐私清单中描述数据用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user>`

表示你的应用是否会将实际住址链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking>`

表示你的应用是否会将实际住址用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected>`

表示你的应用是否会收集精确位置数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/precise_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes>`

你的应用程序收集精确位置数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user>`

表示你的应用是否会将精确位置数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking>`

表示你的应用是否会将精确位置数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected>`

表示你的应用是否会收集产品互动数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/product_interaction/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes>`

你的应用程序收集产品互动数据的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user>`

表示你的应用是否会将产品互动数据链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking>`

表示你的应用是否会将产品互动数据用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected>`

表示你的应用是否会收集购买历史。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/purchase_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes>`

你的应用收集购买历史的原因。见\ `《在隐私清单中描述数据用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user>`

表示你的应用是否会将购买历史链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking>`

表示你的应用是否会将购买历史用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected>`

表示你的应用程序是否收集搜索历史记录。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/search_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes>`

你的应用程序收集搜索历史的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user>`

表示你的应用是否会将搜索历史链接到用户的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking>`

表示你的应用是否会将搜索历史用于追踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected>`

表示你的应用程序是否收集敏感的用户信息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/sensitive_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes>`

你的应用程序收集敏感用户信息的原因。请参阅 `描述隐私清单中的数据使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user>`

表示你的 app 是否会将敏感用户信息链接到用户的身份上。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking>`

表示你的 app 是否会将敏感用户信息用于跟踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected>`

表示你的 app 是否会收集用户 ID。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/user_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes>`

你的 app 收集用户 ID 的原因。见\ `《在隐私清单中描述数据用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user>`

表示你的 app 是否会将用户 ID 链接到用户的身份上。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking>`

表示你的 app 是否会将用户 ID 用于跟踪。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/desktop_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description>`

请求访问用户的“桌面”文件夹时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/desktop_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized>`

请求访问用户的“桌面”文件夹时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/documents_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description>`

请求访问用户的“文档”文件夹时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/documents_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized>`

请求访问用户的“文档”文件夹时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/downloads_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description>`

请求访问用户的“下载”文件夹时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/downloads_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized>`

请求访问用户的“下载”文件夹时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/location_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/location_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/location_usage_description>`

请求访问用户的位置信息时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/location_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized>`

请求访问用户的位置信息时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/microphone_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description>`

请求访问设备麦克风时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/microphone_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized>`

请求访问设备麦克风时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/network_volumes_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description>`

请求访问用户的网络驱动器时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/network_volumes_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized>`

请求访问用户的网络驱动器时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/photos_library_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>`

请求访问用户照片图库时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/photos_library_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized>`

请求访问用户照片图库时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/removable_volumes_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description>`

请求访问用户的可移除驱动器时显示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/removable_volumes_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized>`

请求访问用户的可移除驱动器时显示的（本地化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/tracking_domains:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **privacy/tracking_domains** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/tracking_domains>`

你的应用程序连接到的参与跟踪的互联网域列表。请参阅 `隐私清单文件 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/tracking_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/tracking_enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/tracking_enabled>`

表示你的应用程序是否使用数据进行跟踪。请参阅 `隐私清单文件 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_shader_baker/enabled>`

If ``true``, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ or Mobile renderers.

\ **Note:** When exporting as a dedicated server, the shader baker is always disabled since no rendering is performed.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/cleanup_script>`

应用结束时，要在远程主机上执行的脚本代码。

可以在脚本中使用以下变量：

- ``{temp_dir}`` - 远程的临时文件夹路径，用于上传应用和脚本。

- ``{archive_name}`` - 包含上传的应用程序的 ZIP 文件的名称。

- ``{exe_name}`` - 应用程序可执行文件的名称。

- ``{cmd_args}`` - 应用程序命令行参数的数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled>`

启用通过 SSH/SCP 进行远程部署。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp>`

要传给 SCP 的额外命令行参数的数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh>`

要传给 SSH 的额外命令行参数的数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host>`

远程主机 SSH 用户名及地址，格式为 ``用户名@地址``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port>`

远程主机 SSH 端口号。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script>`

运行应用时，要在远程主机上执行的脚本代码。

可以在脚本中使用以下变量：

- ``{temp_dir}`` - 远程的临时文件夹路径，用于上传应用和脚本。

- ``{archive_name}`` - 包含上传的应用程序的 ZIP 文件的名称。

- ``{exe_name}`` - 应用程序可执行文件的名称。

- ``{cmd_args}`` - 应用程序命令行参数的数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/platform_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/platform_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/platform_build>`

构建应用程序可执行文件所使用的 macOS 构建号。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_build>`

构建应用程序可执行文件所使用的 macOS SDK 构建号。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_name** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_name>`

构建应用程序可执行文件所使用的 macOS SDK 名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_version>`

构建应用程序可执行文件所使用的 macOS SDK 版本，格式为 ``主版本号.次版本号``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/xcode_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/xcode_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/xcode_build>`

构建应用程序可执行文件所使用的 Xcode 构建号。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/xcode_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/xcode_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/xcode_version>`

构建应用程序可执行文件所使用的 Xcode 版本。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
