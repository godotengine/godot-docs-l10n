:github_url: hide

.. _class_EditorExportPlatformMacOS:

EditorExportPlatformMacOS
=========================

**繼承：** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

macOS 匯出器。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`為 macOS 匯出 <../tutorials/export/exporting_for_macos>`

- :doc:`在 macOS 上運作 Godot 套用 <../tutorials//export/running_on_macos>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_EditorExportPlatformMacOS_property_application/additional_plist_content:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/additional_plist_content** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/additional_plist_content>`

Additional data added to the root ``<dict>`` section of the `Info.plist <https://developer.apple.com/documentation/bundleresources/information_property_list>`__ file. The value should be an XML section with pairs of key-value elements, e.g.:

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/app_category:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/app_category** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/app_category>`

App Store 的套用程式分類。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/bundle_identifier:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/bundle_identifier** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/bundle_identifier>`

反向 DNS 格式的唯一套用程式識別字，只能包含字母數位字元（\ ``A-Z``\ 、\ ``a-z`` 和 ``0-9``\ ）、連字號（\ ``-``\ ）和句點（\ ``.``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/copyright** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/copyright>`

組合包的（英文）版權宣告，使用者可見。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/copyright_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **application/copyright_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/copyright_localized>`

組合包的（當地語系化）版權宣告，使用者可見。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/export_angle:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_angle** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/export_angle>`

如果設定為\ ``1``\ ，則ANGLE 函式庫將隨匯出的應用程式一起匯出。如果設定為\ ``0``\ ，則匯出ANGLE 函式庫僅當 :ref:`ProjectSettings.rendering/gl_compatibility/driver<class_ProjectSettings_property_rendering/gl_compatibility/driver>` 設定為 ``"opengl3_angle"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/icon** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/icon>`

套用程式圖示檔。如果留空，則會退回至 :ref:`ProjectSettings.application/config/macos_native_icon<class_ProjectSettings_property_application/config/macos_native_icon>`\ ，繼而退回至 :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/icon_interpolation>`

用於調整套用程式圖示大小的插值方法。

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

Minimum version of macOS required for this application to run on Apple Silicon Macs, in the ``major.minor.patch`` or ``major.minor`` format, can only contain numeric characters (``0-9``) and periods (``.``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/min_macos_version_x86_64** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64>`

Minimum version of macOS required for this application to run on Intel Macs, in the ``major.minor.patch`` or ``major.minor`` format, can only contain numeric characters (``0-9``) and periods (``.``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/short_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/short_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/short_version>`

Application version visible to the user. Can only contain numeric characters (``0-9``) and periods (``.``). Falls back to :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` if left empty.

\ **Note:** This value is used for the *Identity > Version* value in the generated Xcode project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/signature:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/signature** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/signature>`

特定於該組合包的四字元建立者碼。可選的。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/version** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/version>`

Machine-readable application version in the ``major.minor.patch`` format. Can only contain numeric characters (``0-9``) and periods (``.``). This must be incremented with every new release pushed to the App Store. Falls back to :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` if left empty.

\ **Note:** This value is used for the *Identity > Build* value in the generated Xcode project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformMacOS_property_binary_format/architecture>`

套用程式可執行檔的架構。

支援的架構有：\ ``x86_64``\ 、\ ``arm64``\ 、\ ``universal``\ （\ ``x86_64 + arm64``\ ）。

官方匯出範本中只包含 ``universal`` 的二進位檔案。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/apple_team_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/apple_team_id** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/apple_team_id>`

Apple 團隊 ID，唯一的 10 字元的字串。要找到你的團隊 ID，請檢查 Apple 開發者帳戶儀錶板中的“會員詳細資訊”部分，或程式碼簽章憑證的“組織單位”。見 `搜尋你的團隊 ID <https://developer.apple.com/cn/help/account/manage-your-team/locate-your-team-id>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/certificate_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/certificate_file** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/certificate_file>`

用於對 ``.app`` 組合包進行簽章的 PKCS #12 憑證檔。

可以使用環境變數 ``GODOT_MACOS_CODESIGN_CERTIFICATE_FILE`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/certificate_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/certificate_password** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/certificate_password>`

用於對 ``.app`` 組合包進行簽章的憑證檔的密碼。

可以使用環境變數 ``GODOT_MACOS_CODESIGN_CERTIFICATE_PASSWORD`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/codesign:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/codesign** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/codesign>`

用於程式碼簽章的工具。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/custom_options:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **codesign/custom_options** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/custom_options>`

要額外傳給程式碼簽章工具的命令列參數的陣列。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/additional:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/entitlements/additional** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/additional>`

Additional data added to the root ``<dict>`` section of the `.entitlements <https://developer.apple.com/documentation/bundleresources/entitlements>`__ file. The value should be an XML section with pairs of key-value elements, for example:

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/address_book** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book>`

Enable to allow access to contacts in the user's address book, if it's enabled you should also provide usage message in the :ref:`privacy/address_book_usage_description<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>` option. See `com.apple.security.personal-information.addressbook <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_addressbook>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_dyld_environment_variables** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables>`

允許套用使用動態連結器環境變數注入程式碼。如果你使用的外掛程式使用了動態或自我修改的原生程式碼，請根據該外掛程式文件中的說明啟用。見 `com.apple.security.cs.allow-dyld-environment-variables <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-dyld-environment-variables>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_jit_code_execution** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution>`

允許建立可寫可執行記憶體，用於 JIT 程式碼。如果你使用的外掛程式使用了動態或自我修改的原生程式碼，請根據該外掛程式文件中的說明啟用。見 `com.apple.security.cs.allow-jit <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-jit>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_unsigned_executable_memory** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory>`

允許建立可寫可執行記憶體，不受 JIT 限制。如果你使用的外掛程式使用了動態或自我修改的原生程式碼，請根據該外掛程式文件中的說明啟用。見 `com.apple.security.cs.allow-unsigned-executable-memory <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-unsigned-executable-memory>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/device_bluetooth** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth>`

啟用後能夠允許套用與藍牙裝置互動。使用無線控制器時，必須擁有這項權利。見 `com.apple.security.device.bluetooth <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_bluetooth>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/device_usb** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb>`

啟用後能夠允許套用與 USB 裝置互動。使用有線控制器時，必須擁有這項權利。見 `com.apple.security.device.usb <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_usb>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled>`

啟用 App Sandbox 套用沙盒。App Sandbox 能夠限制對使用者資料、網路以及裝置的訪問。沙盒套用無法存取檔案系統中的大部分區域，無法使用自訂檔對話方塊，也無法執行 .app 組合包之外的二進位檔案。見 `App Sandbox <https://developer.apple.com/documentation/security/app_sandbox>`__\ 。

\ **注意：**\ 通過 App Store 分發套用時必須啟用 App Sandbox。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_downloads** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads>`

允許對使用者“下載”資料夾的讀寫存取。見 `com.apple.security.files.downloads.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_downloads_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_movies** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies>`

允許對使用者“影片”資料夾的讀寫存取。見 `com.apple.security.files.movies.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_movies_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_music** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music>`

允許對使用者“音樂”資料夾的讀寫存取。見 `com.apple.security.files.music.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_music_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_pictures** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures>`

允許對使用者“圖片”資料夾的讀寫存取。見 `com.apple.security.files.pictures.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_pictures_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_user_selected** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected>`

允許對使用者“音樂”資料夾的讀寫存取。見 `com.apple.security.files.music.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_music_read-write>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **codesign/entitlements/app_sandbox/helper_executables** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables>`

要嵌入套用組合包的輔助可執行檔列表。沙盒套用僅限於執行這些可執行檔。見 `Embedding a command-line tool in a sandboxed app <https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/network_client** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client>`

啟用後允許套用建立出站的網路連接。見 `com.apple.security.network.client <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_client>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/network_server** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server>`

啟用後允許套用監聽入站的網路連接。見 `com.apple.security.network.server <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_server>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/apple_events** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events>`

啟用後允許套用向其他套用發送 Apple 事件。見 `com.apple.security.automation.apple-events <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_automation_apple-events>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/audio_input** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input>`

Enable if you need to use the microphone or other audio input sources, if it's enabled you should also provide usage message in the :ref:`privacy/microphone_usage_description<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description>` option. See `com.apple.security.device.audio-input <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_audio-input>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/calendars** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars>`

Enable to allow access to the user's calendar, if it's enabled you should also provide usage message in the :ref:`privacy/calendar_usage_description<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description>` option. See `com.apple.security.personal-information.calendars <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_calendars>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/camera** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/camera>`

Enable if you need to use the camera, if it's enabled you should also provide usage message in the :ref:`privacy/camera_usage_description<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description>` option. See `com.apple.security.device.camera <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_camera>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/entitlements/custom_file** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file>`

自訂權利 ``.plist`` 檔，如果指定，則會忽略匯出配置中的其他權利。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/debugging** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging>`

臨時啟用這個權利就可以對匯出的套用使用原生除錯器（GDB、LLDB）。生產匯出應該禁用這項權利。見 `Embedding a command-line tool in a sandboxed app <https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/disable_library_validation** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation>`

允許套用載入任意庫和框架（沒有使用與主可執行檔相同的團隊 ID 進行簽章，也沒有經過 Apple 的簽章）。如果你使用了 GDExtension 外掛程式或 ad-hoc 簽章，或者想要支援使用者提供的外部外掛程式，請啟用該選項。見 `com.apple.security.cs.disable-library-validation <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_disable-library-validation>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/location** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/location>`

Enable if you need to use location information from Location Services, if it's enabled you should also provide usage message in the :ref:`privacy/location_usage_description<class_EditorExportPlatformMacOS_property_privacy/location_usage_description>` option. See `com.apple.security.personal-information.location <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_location>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/photos_library** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library>`

Enable to allow access to the user's Photos library, if it's enabled you should also provide usage message in the :ref:`privacy/photos_library_usage_description<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>` option. See `com.apple.security.personal-information.photos-library <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_photos-library>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/identity** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/identity>`

用於對 ``.app`` 組合包進行簽章的簽章身份的“全名”“通用名”或 SHA-1 哈希。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/installer_identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/installer_identity** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/installer_identity>`

用於對通過 App Store 分發的 ``.pkg`` 安裝器進行簽章的簽章身份的“全名”“通用名”或 SHA-1 雜湊，使用 ``3rd Party Mac Developer Installer: Name.`` 身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/provisioning_profile:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/provisioning_profile** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/provisioning_profile>`

從 Apple 開發者帳戶控制台下載到的預置描述檔。見 `編輯、下載或刪除預置描述檔 <https://developer.apple.com/cn/help/account/manage-profiles/edit-download-or-delete-profiles/>`__\ 。

可以使用環境變數 ``GODOT_MACOS_CODESIGN_PROVISIONING_PROFILE`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformMacOS_property_custom_template/debug>`

到自訂匯出範本的路徑。如果留空，則預設範本將被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformMacOS_property_custom_template/release>`

到自訂匯出範本的路徑。如果留空，則預設範本將被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformMacOS_property_debug/export_console_wrapper>`

啟用後，會在匯出後的套用程式旁建立一個封裝程式，可以用來以帶命令行輸出的形式運作該套用程式。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_display/high_res:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **display/high_res** :ref:`🔗<class_EditorExportPlatformMacOS_property_display/high_res>`

如果為 ``true``\ ，則套用程式使用原生顯示器解析度算繪，否則始終使用 loHPI 解析度算繪，必要時由作業系統放大。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_export/distribution_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **export/distribution_type** :ref:`🔗<class_EditorExportPlatformMacOS_property_export/distribution_type>`

套用程式分發目標。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_key** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_key>`

Apple App Store Connect API 發行者金鑰檔案。

可以使用環境變數 ``GODOT_MACOS_NOTARIZATION_API_KEY`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_key_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_key_id** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_key_id>`

Apple App Store Connect API 發行者金鑰 ID。

可以使用環境變數 ``GODOT_MACOS_NOTARIZATION_API_KEY_ID`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_uuid:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_uuid** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_uuid>`

Apple App Store Connect API 發行者 UUID。

可以使用環境變數 ``GODOT_MACOS_NOTARIZATION_API_UUID`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/apple_id_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/apple_id_name** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/apple_id_name>`

Apple ID 帳戶名（郵箱地址）。

可以使用環境變數 ``GODOT_MACOS_NOTARIZATION_APPLE_ID_NAME`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/apple_id_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/apple_id_password** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/apple_id_password>`

Apple ID 針對套用的密碼。

可以使用環境變數 ``GODOT_MACOS_NOTARIZATION_APPLE_ID_PASSWORD`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/notarization:

.. rst-class:: classref-property

:ref:`int<class_int>` **notarization/notarization** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/notarization>`

用於公證的工具。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/address_book_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>`

請求存取使用者的連路人時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/address_book_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized>`

請求存取使用者的連路人時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/calendar_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description>`

請求存取使用者的日曆資料時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/calendar_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized>`

請求存取使用者的日曆資料時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/camera_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/camera_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description>`

請求存取裝置相機時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/camera_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized>`

請求存取裝置相機時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected>`

Indicates whether your app collects advertising data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/advertising_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes>`

The reasons your app collects advertising data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user>`

Indicates whether your app links advertising data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking>`

Indicates whether your app uses advertising data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected>`

Indicates whether your app collects audio data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/audio_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes>`

The reasons your app collects audio data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user>`

Indicates whether your app links audio data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking>`

Indicates whether your app uses audio data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected>`

Indicates whether your app collects browsing history.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/browsing_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes>`

The reasons your app collects browsing history. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user>`

Indicates whether your app links browsing history to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking>`

Indicates whether your app uses browsing history for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected>`

Indicates whether your app collects coarse location data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/coarse_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes>`

The reasons your app collects coarse location data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user>`

Indicates whether your app links coarse location data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking>`

Indicates whether your app uses coarse location data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected>`

Indicates whether your app collects contacts.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/contacts/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes>`

The reasons your app collects contacts. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user>`

Indicates whether your app links contacts to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking>`

Indicates whether your app uses contacts for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected>`

Indicates whether your app collects crash data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/crash_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes>`

The reasons your app collects crash data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user>`

Indicates whether your app links crash data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking>`

Indicates whether your app uses crash data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected>`

Indicates whether your app collects credit information.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/credit_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes>`

The reasons your app collects credit information. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user>`

Indicates whether your app links credit information to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking>`

Indicates whether your app uses credit information for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected>`

Indicates whether your app collects customer support data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/customer_support/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes>`

The reasons your app collects customer support data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user>`

Indicates whether your app links customer support data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking>`

Indicates whether your app uses customer support data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected>`

Indicates whether your app collects device IDs.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/device_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes>`

The reasons your app collects device IDs. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user>`

Indicates whether your app links device IDs to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking>`

Indicates whether your app uses device IDs for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected>`

Indicates whether your app collects email address.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/email_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes>`

The reasons your app collects email address. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user>`

Indicates whether your app links email address to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking>`

Indicates whether your app uses email address for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected>`

Indicates whether your app collects emails or text messages.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/emails_or_text_messages/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes>`

The reasons your app collects emails or text messages. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user>`

Indicates whether your app links emails or text messages to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking>`

Indicates whether your app uses emails or text messages for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected>`

Indicates whether your app collects environment scanning data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/environment_scanning/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes>`

The reasons your app collects environment scanning data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user>`

Indicates whether your app links environment scanning data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking>`

Indicates whether your app uses environment scanning data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected>`

Indicates whether your app collects fitness and exercise data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/fitness/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes>`

The reasons your app collects fitness and exercise data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user>`

Indicates whether your app links fitness and exercise data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking>`

Indicates whether your app uses fitness and exercise data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected>`

Indicates whether your app collects gameplay content.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/gameplay_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes>`

The reasons your app collects gameplay content. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user>`

Indicates whether your app links gameplay content to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking>`

Indicates whether your app uses gameplay content for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected>`

Indicates whether your app collects user's hand structure and hand movements.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/hands/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes>`

The reasons your app collects user's hand structure and hand movements. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user>`

Indicates whether your app links user's hand structure and hand movements to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking>`

Indicates whether your app uses user's hand structure and hand movements for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected>`

Indicates whether your app collects user's head movement.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/head/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes>`

The reasons your app collects user's head movement. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user>`

Indicates whether your app links user's head movement to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking>`

Indicates whether your app uses user's head movement for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected>`

Indicates whether your app collects health and medical data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/health/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes>`

The reasons your app collects health and medical data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user>`

Indicates whether your app links health and medical data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking>`

Indicates whether your app uses health and medical data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected>`

Indicates whether your app collects user's name.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/name/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes>`

The reasons your app collects user's name. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user>`

Indicates whether your app links user's name to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking>`

Indicates whether your app uses user's name for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected>`

Indicates whether your app collects any other contact information.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_contact_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes>`

The reasons your app collects any other contact information. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user>`

Indicates whether your app links any other contact information to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking>`

Indicates whether your app uses any other contact information for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected>`

Indicates whether your app collects any other data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_data_types/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes>`

The reasons your app collects any other data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user>`

Indicates whether your app links any other data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking>`

Indicates whether your app uses any other data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected>`

Indicates whether your app collects any other diagnostic data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_diagnostic_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes>`

The reasons your app collects any other diagnostic data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user>`

Indicates whether your app links any other diagnostic data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking>`

Indicates whether your app uses any other diagnostic data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected>`

Indicates whether your app collects any other financial information.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_financial_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes>`

The reasons your app collects any other financial information. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user>`

Indicates whether your app links any other financial information to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking>`

Indicates whether your app uses any other financial information for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected>`

Indicates whether your app collects any other usage data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_usage_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes>`

The reasons your app collects any other usage data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user>`

Indicates whether your app links any other usage data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking>`

Indicates whether your app uses any other usage data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected>`

Indicates whether your app collects any other user generated content.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_user_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes>`

The reasons your app collects any other user generated content. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user>`

Indicates whether your app links any other user generated content to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking>`

Indicates whether your app uses any other user generated content for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected>`

Indicates whether your app collects payment information.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/payment_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes>`

The reasons your app collects payment information. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user>`

Indicates whether your app links payment information to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking>`

Indicates whether your app uses payment information for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected>`

Indicates whether your app collects performance data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/performance_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes>`

The reasons your app collects performance data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user>`

Indicates whether your app links performance data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking>`

Indicates whether your app uses performance data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected>`

Indicates whether your app collects phone number.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/phone_number/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes>`

The reasons your app collects phone number. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user>`

Indicates whether your app links phone number to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking>`

Indicates whether your app uses phone number for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected>`

Indicates whether your app collects photos or videos.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/photos_or_videos/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes>`

The reasons your app collects photos or videos. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user>`

Indicates whether your app links photos or videos to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking>`

Indicates whether your app uses photos or videos for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected>`

Indicates whether your app collects physical address.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/physical_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes>`

The reasons your app collects physical address. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user>`

Indicates whether your app links physical address to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking>`

Indicates whether your app uses physical address for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected>`

Indicates whether your app collects precise location data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/precise_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes>`

The reasons your app collects precise location data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user>`

Indicates whether your app links precise location data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking>`

Indicates whether your app uses precise location data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected>`

Indicates whether your app collects product interaction data.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/product_interaction/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes>`

The reasons your app collects product interaction data. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user>`

Indicates whether your app links product interaction data to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking>`

Indicates whether your app uses product interaction data for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected>`

Indicates whether your app collects purchase history.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/purchase_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes>`

The reasons your app collects purchase history. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user>`

Indicates whether your app links purchase history to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking>`

Indicates whether your app uses purchase history for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected>`

Indicates whether your app collects search history.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/search_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes>`

The reasons your app collects search history. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user>`

Indicates whether your app links search history to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking>`

Indicates whether your app uses search history for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected>`

Indicates whether your app collects sensitive user information.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/sensitive_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes>`

The reasons your app collects sensitive user information. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user>`

Indicates whether your app links sensitive user information to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking>`

Indicates whether your app uses sensitive user information for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected>`

Indicates whether your app collects user IDs.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/user_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes>`

The reasons your app collects user IDs. See `Describing data use in privacy manifests <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user>`

Indicates whether your app links user IDs to the user's identity.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking>`

Indicates whether your app uses user IDs for tracking.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/desktop_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description>`

請求存取使用者的“桌面”資料夾時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/desktop_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized>`

請求存取使用者的“桌面”資料夾時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/documents_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description>`

請求存取使用者的“文件”資料夾時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/documents_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized>`

請求存取使用者的“文件”資料夾時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/downloads_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description>`

請求存取使用者的“下載”資料夾時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/downloads_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized>`

請求存取使用者的“下載”資料夾時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/location_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/location_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/location_usage_description>`

請求存取使用者的位置資訊時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/location_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized>`

請求存取使用者的位置資訊時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/microphone_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description>`

請求存取裝置麥克風時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/microphone_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized>`

請求存取裝置麥克風時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/network_volumes_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description>`

請求存取使用者的網路磁碟時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/network_volumes_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized>`

請求存取使用者的網路磁碟時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/photos_library_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>`

請求存取使用者照片圖庫時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/photos_library_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized>`

請求存取使用者照片圖庫時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/removable_volumes_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description>`

請求存取使用者的可移除驅動器時顯示的（英文）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/removable_volumes_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized>`

請求存取使用者的可移除驅動器時顯示的（當地語系化）消息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/tracking_domains:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **privacy/tracking_domains** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/tracking_domains>`

The list of internet domains your app connects to that engage in tracking. See `Privacy manifest files <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/tracking_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/tracking_enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/tracking_enabled>`

Indicates whether your app uses data for tracking. See `Privacy manifest files <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__.

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

套用結束時，要在遠端主機上執行的腳本程式碼。

可以在腳本中使用以下變數：

- ``{temp_dir}`` - 遠端的暫存檔案夾路徑，用於上傳套用和腳本。

- ``{archive_name}`` - 包含上傳的套用程式的 ZIP 檔的名稱。

- ``{exe_name}`` - 套用程式可執行檔的名稱。

- ``{cmd_args}`` - 套用程式命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled>`

啟用通過 SSH/SCP 進行遠端部署。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp>`

要傳給 SCP 的額外命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh>`

要傳給 SSH 的額外命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host>`

遠端主機 SSH 使用者名及位址，格式為 ``使用者名@地址``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port>`

遠端主機 SSH 埠號。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script>`

運作套用時，要在遠端主機上執行的腳本程式碼。

可以在腳本中使用以下變數：

- ``{temp_dir}`` - 遠端的暫存檔案夾路徑，用於上傳套用和腳本。

- ``{archive_name}`` - 包含上傳的套用程式的 ZIP 檔的名稱。

- ``{exe_name}`` - 套用程式可執行檔的名稱。

- ``{cmd_args}`` - 套用程式命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/platform_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/platform_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/platform_build>`

建構套用程式可執行檔所使用的 macOS 建構號。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_build>`

建構套用程式可執行檔所使用的 macOS SDK 建構號。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_name** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_name>`

建構套用程式可執行檔所使用的 macOS SDK 名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_version>`

建構套用程式可執行檔所使用的 macOS SDK 版本，格式為 ``主版本號.次版本號``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/xcode_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/xcode_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/xcode_build>`

建構套用程式可執行檔所使用的 Xcode 建構號。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/xcode_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/xcode_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/xcode_version>`

建構套用程式可執行檔所使用的 Xcode 版本。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
