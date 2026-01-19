:github_url: hide

.. _class_EditorExportPlatformMacOS:

EditorExportPlatformMacOS
=========================

**Успадковує:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Експортер для macOS.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Експорт для macOS <../tutorials/export/exporting_for_macos>`

- :doc:`Запуск застосунків Godot на macOS <../tutorials//export/running_on_macos>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Описи властивостей
------------------------------------

.. _class_EditorExportPlatformMacOS_property_application/additional_plist_content:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/additional_plist_content** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/additional_plist_content>`

Додаткові дані додані в корінь ``<dict>`` розділ `Info.plist <https://developer.apple.com/documentation/bundleresources/information_property_list>`__ файл. Значення має бути XML секція з парами ключових елементів, наприклад:

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/app_category:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/app_category** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/app_category>`

Категорії додатків для App Store.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/bundle_identifier:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/bundle_identifier** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/bundle_identifier>`

Унікальний ідентифікатор програми у форматі зворотних-DNS, може містити лише альфа-нумеричні символи (``A-Z``, ``a-z``, а ``0-9``), гіфени (``-``), а також періоди (`` і ``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/copyright** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/copyright>`

Повідомляємо про те, що вказаний користувач (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/copyright_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **application/copyright_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/copyright_localized>`

Повідомляємо про те, що вказаний користувач (розрахований).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/export_angle:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_angle** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/export_angle>`

Якщо встановити до ``1``, бібліотеки ANGLE експортуються за допомогою експортованої програми. Якщо встановити до ``0``, бібліотеки ANGLE експортуються тільки в тому випадку, якщо ``пам'ять проектівНалаштування.rendering/gl_compatibility/driver`` встановлюється на ``"opengl3_angle"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/icon** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/icon>`

Файл значка програми. Якщо залишити порожнім, буде використано файл :ref:`ProjectSettings.application/config/macos_native_icon<class_ProjectSettings_property_application/config/macos_native_icon>`, а потім :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/icon_interpolation>`

Метод інтерполяції, який використовується для зміни іконки додатків.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/liquid_glass_icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/liquid_glass_icon** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/liquid_glass_icon>`

Вихідний файл значка Liquid Glass для macOS 26. Використовуйте `Icon Composer <https://developer.apple.com/icon-composer/>`__ для створення значків Liquid Glass.

\ **Примітка:** Підтримується лише під час експорту з macOS, потрібен Xcode 26+.

\ **Примітка:** Значки Liquid Glass підтримуються лише в macOS 26, використовуйте :ref:`application/icon<class_EditorExportPlatformMacOS_property_application/icon>`, щоб встановити значок для старіших версій macOS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/min_macos_version_arm64:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/min_macos_version_arm64** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/min_macos_version_arm64>`

Мінімальна версія macOS, необхідна для роботи цієї програми на Apple Silicon Mac, у форматі ``major.minor.patch`` або ``major.minor``, може містити лише цифри (``0-9``) і крапки (``.``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/min_macos_version_x86_64** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64>`

Мінімальна версія macOS, необхідна для роботи цієї програми на Intel Mac, у форматі ``major.minor.patch`` або ``major.minor``, може містити лише цифри (``0-9``) і крапки (``.``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/short_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/short_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/short_version>`

Версія програми, видима для користувача. Може містити тільки цифрові символи (``0-9``) і крапки (``.``). Якщо поле залишено порожнім, використовується значення :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`.

\ **Примітка:** Це значення використовується для параметра *Identity > Version* у створеному проекті Xcode.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/signature:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/signature** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/signature>`

Четвертий код творця, який специфічний до пачки. Додатково.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/version** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/version>`

Версія програми, що зчитується машиною, у форматі ``major.minor.patch``. Може містити тільки цифрові символи (``0-9``) та крапки (``.``). Ця версія повинна збільшуватися з кожним новим випуском, що надсилається до App Store. Якщо поле залишено порожнім, використовується значення :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`.

\ **Примітка:** Це значення використовується для значення *Identity > Build* у згенерованому проекті Xcode.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformMacOS_property_binary_format/architecture>`

Застосувати архітектуру.

\ ``x86_64``, ``arm64``, і ``universal`` (``x86_64 + arm64``).

Офіційні шаблони експорту включають в себе ``універсал``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/apple_team_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/apple_team_id** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/apple_team_id>`

Apple Team ID, унікальний 10-символьний рядок. Щоб знайти свій Team ID, перевірте "Membership details" у вашому обліковому записі Apple розробника, або "Organizational Unit" вашого сертифіката для підписки коду. Дивитися `Locate your Team ID <https://developer.apple.com/help/account/manage-your-team/locate-your-team-id>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/certificate_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/certificate_file** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/certificate_file>`

PKCS #12 файл сертифіката, який використовується для входу ``.app``.

Може передаватися з змінною середовища ``GODOT_MACOS_CODESIGN_CERTIFICATE_FILE``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/certificate_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/certificate_password** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/certificate_password>`

Пароль для файлу сертифіката, який використовується для входу ``.app``.

Може передаватися з змінною середовища ``GODOT_MACOS_CODESIGN_CERTIFICATE_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/codesign:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/codesign** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/codesign>`

Інструмент для запису коду.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/custom_options:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **codesign/custom_options** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/custom_options>`

Проведення додаткових аргументів командного рядка, переданих на інструмент реєстрації коду.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/additional:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/entitlements/additional** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/additional>`

Додаткові дані додано до кореневого розділу ``<dict>`` файлу `.entitlements <https://developer.apple.com/documentation/bundleresources/entitlements>`__. Значення має бути розділом XML із парами елементів ключ-значення, наприклад:

.. code:: text

    <key>key_name</key>
    <string>значення</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/address_book** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book>`

Увімкніть, щоб дозволити доступ до контактів у адресній книзі користувача, якщо це ввімкнено, ви також повинні надати повідомлення про використання в :ref:`privacy/address_book_usage_description<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>`. `com.apple.security.personal-information.addressbook <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_addressbook>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_dyld_environment_variables** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables>`

Дозволяє програмі використовувати динамічні змінні середовища посилань для ін'єкційного коду. Якщо ви використовуєте додатки з динамічним або самооціночним кодом, ввімкніть їх відповідно до документації. `com.apple.security.cs.allow-dyld-environment-variables <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-dyld-environment-variables>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_jit_code_execution** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution>`

Дозволяє створювати зважені та виконувані пам'ять для коду JIT. Якщо ви використовуєте додатки з динамічним або самооціночним кодом, ввімкніть їх відповідно до документації. `com.apple.security.cs.allow-jit <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-jit>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_unsigned_executable_memory** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory>`

Дозволяє створювати зважені та виконувані пам'ять без обмежень JIT. Якщо ви використовуєте додатки з динамічним або самооціночним кодом, ввімкніть їх відповідно до документації. `com.apple.security.cs.allow-unsigned-executable-memory <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-unsigned-executable-memory>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/device_bluetooth** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth>`

Увімкнути додаток для взаємодії з пристроями Bluetooth. Для використання бездротових контролерів необхідно використовувати цей принцип. `com.apple.security.device.bluetooth <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_bluetooth>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/device_usb** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb>`

Увімкнути додаток для взаємодії з пристроями USB. Для використання дротових контролерів обов'язкові для використання. `com.apple.security.device.usb <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_usb>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled>`

Увімкнути програму Sandbox. Додаток Sandbox обмежує доступ до даних користувачів, мереж та пристроїв. Застосункові додатки не можуть доступу до більшості файлової системи, не можуть використовувати користувацькі діалоги файлів і виконувати бункери за межами пакета .app. `App Sandbox <https://developer.apple.com/documentation/security/app_sandbox>`__.

\ **Примітка:** Щоб розподілити додаток через App Store, необхідно включити App Sandbox.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_downloads** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads>`

Дозволяє читати або писати доступ до папки користувача «Завантажити». `com.apple.security.files.downloads.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_downloads_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_movies** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies>`

Дозволяє читати або писати доступ до папки «Мові» користувача. `com.apple.security.files.movies.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_movies_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_music** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music>`

Дозволяє читати або писати доступ до папки «Музика». `com.apple.security.files.music.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_music_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_pictures** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures>`

Дозволяє читати або писати доступ до папки користувача "Піктюри". `com.apple.security.files.pictures.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_pictures_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_user_selected** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected>`

Дозволяє читати або писати доступ до локацій користувач вибрав за допомогою діалогу з рідним файлом. `com.apple.security.files.user-selected.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_user-selected_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **codesign/entitlements/app_sandbox/helper_executables** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables>`

Список використаних інструментів для вбудовування в пакет додатків. Додаток Sandboxed обмежений, щоб виконати тільки ці виконувані. Див. `Підібравши інструмент командного рядка в пісочниці  <https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/network_client** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client>`

Увімкнути додаток для встановлення мережевих підключень. `com.apple.security.network.client <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_client>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/network_server** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server>`

Увімкнути додаток для прослуховування вхідних мережевих підключень. `com.apple.security.network.server <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_server>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/apple_events** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events>`

Увімкнути додаток, щоб надсилати події Apple на інші програми. `com.apple.security.automation.apple-events <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_automation_apple-events>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/audio_input** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input>`

Увімкнути, якщо вам потрібно використовувати мікрофон або інші джерела введення аудіо, якщо це ввімкнено, ви також повинні надати повідомлення про використання в параметрі ``пам'ятати конфіденційність / microphone_usage_description``. `com.apple.security.device.audio-input <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_audio-input>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/calendars** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars>`

Увімкнути, щоб дозволити доступ до календаря користувача, якщо це ввімкнено, ви також повинні надати повідомлення про використання в параметрі ``пам'ятна конфіденційність/calendar_usage_description``. `com.apple.security.personal-information.calendars <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_calendars>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/camera** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/camera>`

Увімкнути, якщо потрібно використовувати камеру, якщо це ввімкнено, ви також повинні надати повідомлення про використання в параметрі ``пам'ятна конфіденційність / камера_usage_description``. `com.apple.security.device.camera <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_camera>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/entitlements/custom_file** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file>`

Призначені для користувача коди ``.plist`` файл, якщо вказано решту кодів в конфігурації експорту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/debugging** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging>`

Ви можете тимчасово увімкнути цю назву для використання рідного debugger (GDB, LLDB) з експортованим додатком. Для експорту продукції слід відключати назву цього договору. Див. `Підібравши інструмент командного рядка в пісочниці  <https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/disable_library_validation** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation>`

Додаток для завантаження довільних бібліотек та рамок (не підписано з таким же ідентифікатором команди, як основний виконуваний або Apple). Увімкнути його, якщо ви використовуєте GDExtension add-ons або оголошення-hoc, або хочете підтримувати користувацькі зовнішні додатки. `com.apple.security.cs.disable-library-validation <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_disable-library-validation>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/location** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/location>`

Увімкнути, якщо вам потрібно використовувати інформацію про місцезнаходження з Послуг Місцезнаходження, якщо це ввімкнено, ви також повинні надати повідомлення про використання в ``пам'яті конфіденційності / локації_description`` варіант. `com.apple.security.personal-information.location <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_location>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/photos_library** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library>`

Увімкнути, щоб дозволити доступ до бібліотеки фотографій користувачів, якщо це можливо, ви також повинні надати повідомлення про використання в :ref:`privacy/photos_library_usage_description<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>`. `com.apple.security.personal-information.photos-library <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_photos-library>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/identity** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/identity>`

"Повний ім'я", "Ім'я комона" або SHA-1 хеш фірмового стилю, який використовується для входу ``.app``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/installer_identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/installer_identity** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/installer_identity>`

"Повний ім'я", "Ім'я комона" або SHA-1 хеш фірмового стилю, який використовується для входу ``.pkg`` пакет інсталятора для розподілу додатків, використання ``3rd Партія Mac Розробник Встановлення: Назва `` ідентичність.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/provisioning_profile:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/provisioning_profile** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/provisioning_profile>`

Надання файлу профілю, завантаженого з облікового запису Apple розробника. ` Редагування, завантаження або видалення профілювання  <https://developer.apple.com/help/account/manage-profiles/edit-download-or-delete-profiles>`__.

Може передаватися з змінною середовища ``GODOT_MACOS_CODESIGN_PROVISIONING_PROFILE``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformMacOS_property_custom_template/debug>`

Шлях до користувацького шаблону експорту. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformMacOS_property_custom_template/release>`

Шлях до користувацького шаблону експорту. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformMacOS_property_debug/export_console_wrapper>`

Якщо увімкнено обгортку, яка може бути використана для запуску програми з виходом консолі, створюється поряд з експортованою програмою.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_display/high_res:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **display/high_res** :ref:`🔗<class_EditorExportPlatformMacOS_property_display/high_res>`

Якщо ``true``, програма подається на локальній роздільній здатності дисплея, інакше вона завжди надана в роздільній здатності loDPI і масштабується ОС при необхідності.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_export/distribution_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **export/distribution_type** :ref:`🔗<class_EditorExportPlatformMacOS_property_export/distribution_type>`

Призначення розподілу додатків.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_key** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_key>`

Apple App Store Підключіть файл емітента API.

Може передаватися з змінною середовища ``GODOT_MACOS_NOTARIZATION_API_KEY``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_key_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_key_id** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_key_id>`

Apple App Store Connect API ключ ID.

Може передаватися з змінною середовища ``GODOT_MACOS_NOTARIZATION_API_KEY_ID``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_uuid:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_uuid** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_uuid>`

Apple App Store Connect API емітент UUID.

Може передаватися з змінною середовища ``GODOT_MACOS_NOTARIZATION_API_UUID``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/apple_id_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/apple_id_name** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/apple_id_name>`

Ім'я облікового запису Apple ID (адреса електронної пошти).

Може передаватися з змінною середовища ``GODOT_MACOS_NOTARIZATION_APPLE_ID_NAME``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/apple_id_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/apple_id_password** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/apple_id_password>`

Apple ID додаток-специфічний пароль.

Може передаватися з змінною середовища ``GODOT_MACOS_NOTARIZATION_APPLE_ID_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/notarization:

.. rst-class:: classref-property

:ref:`int<class_int>` **notarization/notarization** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/notarization>`

Інструмент для використання для нотаріального засвідчення.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/address_book_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>`

Повідомлення відображається при запитанні доступу до контактів користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/address_book_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized>`

Повідомлення відображається при запитанні доступу до контактів користувача (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/calendar_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description>`

Повідомлення відображається при запитанні доступу до даних календаря користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/calendar_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized>`

Повідомлення відображається при запитанні доступу до даних календаря користувача (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/camera_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/camera_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description>`

Повідомлення відображається при запитанні доступу до камери пристрою (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/camera_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized>`

Повідомлення відображається при запитанні доступу до камери пристрою (локалізовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected>`

Повідомляє, чи збираєте ваш додаток рекламні дані.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/advertising_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes>`

Причини вашого додатку збирає рекламні дані. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user>`

Повідомляємо, чи пов’язує ваш додаток рекламні дані до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking>`

Повідомляє, чи використовує ваш додаток рекламні дані для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected>`

Повідомляє, чи збираєте ваш додаток аудіо дані.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/audio_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes>`

Причини вашого додатка збирає аудіо дані. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user>`

Повідомляє, чи зв’язує аудіо дані вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking>`

Вкажіть, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected>`

Повідомляє, чи збираєте ваш додаток історію перегляду.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/browsing_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes>`

Причини вашого додатка збирає історію перегляду. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user>`

Повідомляє, чи історія перегляду ваших посилань на додаток до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking>`

Вкажіть, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected>`

Повідомляємо, що ваш додаток збирає дані про місце розташування.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/coarse_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes>`

Причини, що ваш додаток збирає грубі дані розташування. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user>`

Повідомляє, чи є дані про розташування вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected>`

Повідомляє, чи збираєте ваш додаток контакти.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/contacts/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes>`

Причини вашого додатку збирають контакти. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected>`

Повідомляє, чи працює ваша програма з аварійними даними.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/crash_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes>`

Причини, що ваш додаток збирає аварійні дані. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user>`

Повідомляє, чи з’являться дані про аварійні дані вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected>`

Повідомляє, чи збираєте ваш додаток кредитною інформацією.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/credit_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes>`

Причини збору кредитної інформації. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user>`

Повідомляє, чи замовляється ваша заявка до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток кредитну інформацію для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected>`

Повідомляємо, що ваш додаток збирає дані підтримки клієнтів.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/customer_support/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes>`

Причини збору даних підтримки клієнтів. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user>`

Повідомляє, чи підтримуєте дані щодо служби підтримки користувачів.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking>`

Повідомляє, чи використовує дані служби підтримки клієнтів для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected>`

Повідомляє, чи збираєте пристрій ID.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/device_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes>`

Причини вашого додатка збирає ідентифікатори пристрою. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user>`

Повідомляє, чи ідентифікатори вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected>`

Повідомляє, чи працює ваша заявка.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/email_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes>`

Причини вашого додатку збирає адресу електронної пошти. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user>`

Повідомляємо, що адреса електронної пошти вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected>`

Повідомляємо, що ваш додаток збирає електронні листи або текстові повідомлення.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/emails_or_text_messages/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes>`

Причини вашого додатка збирає електронні листи або текстові повідомлення. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток електронною поштою або текстовими повідомленнями до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток електронні листи або текстові повідомлення для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected>`

Повідомляє, чи працює ваш додаток для сканування навколишнього середовища.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/environment_scanning/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes>`

Причини сканування навколишнього середовища Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user>`

Повідомляє, чи сканує дані про конфіденційність вашого додатку.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking>`

Повідомляє, чи використовує дані про сканування навколишнього середовища для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected>`

Повідомляє, чи працює ваш додаток для фітнесу та фізичних вправ.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/fitness/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes>`

Причини вашого додатку збирає дані про фітнес і вправи. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user>`

Повідомляє, чи працює ваша програма для фітнесу та фізичних вправ до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected>`

Повідомляє, чи працює ваш додаток.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/gameplay_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes>`

Причини вашого додатка збирає вміст геймплей. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user>`

Повідомляє, чи працює ваш контент для гри у користувачів.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking>`

Вкажіть, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected>`

Повідомляє, чи працює ваша програма з ручною структурою та рухами рук.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/hands/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes>`

Причини, що ваш додаток збирає структуру користувача та рухи рук. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток структуру та рухи рук до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking>`

Повідомляє, чи використовує ваш додаток вручну та рухи рук для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected>`

Повідомляє, чи працює ваш додаток.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/head/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes>`

Причини вашого додатку збирає рух голови користувача. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected>`

Повідомляємо, що ваш додаток збирає здоров’я та медичні дані.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/health/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes>`

Причини вашого додатку збирає здоров’я та медичні дані. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user>`

Повідомляє, чи лікує ваш додаток медичними даними до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток медичні дані для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected>`

Повідомляє, чи працює ваш додаток.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/name/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes>`

Причини вашого додатку збирає ім’я користувача. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user>`

Повідомляє, чи ім’я користувача додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected>`

Повідомляємо, що ваш додаток збирає будь-яку іншу контактну інформацію.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_contact_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes>`

З причин, що ваш додаток збирає будь-яку іншу контактну інформацію. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user>`

Повідомляє, чи зв’язує Ваш додаток будь-яку іншу контактну інформацію до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток інші контактні дані для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected>`

Повідомляє, чи збираєте ваш додаток інші дані.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_data_types/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes>`

Причини, що ваш додаток збирає будь-які інші дані. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток інші дані для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected>`

Повідомляє, чи збирає ваш додаток інші діагностичні дані.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_diagnostic_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes>`

Причини, що ваш додаток збирає будь-які інші діагностичні дані. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток будь-які інші діагностичні дані до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток інші діагностичні дані для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected>`

Повідомляємо, що ваш додаток збирає будь-яку іншу фінансову інформацію.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_financial_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes>`

З причин, що ваш додаток збирає будь-яку іншу фінансову інформацію. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток будь-яку іншу фінансову інформацію до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток інші фінансові дані для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected>`

Повідомляє, чи збираєте ваш додаток інші дані про використання.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_usage_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes>`

Причини, що ваш додаток збирає інші дані про використання. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected>`

Повідомляємо, що ваш додаток збирає будь-який інший користувацький контент.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_user_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes>`

Причини, що ваш додаток збирає будь-який інший користувач, що генерує контент. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user>`

Зазначте, що ваш додаток посилання на будь-який інший користувач, що генерує контент до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected>`

Повідомляє, чи збирається ваша заявка на оплату.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/payment_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes>`

Причини отримання платіжної інформації. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user>`

Повідомляє про те, що ваша інформація про оплату посилань на додаток до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток платіжну інформацію для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected>`

Повідомляє, чи працює ваш додаток.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/performance_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes>`

Причини збору даних про продуктивність вашого додатку. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user>`

Повідомляємо, що дані про роботу вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected>`

Повідомляє, чи працює ваш додаток.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/phone_number/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes>`

Причини вашого додатку збирає номер телефону. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user>`

Повідомляє, чи працює ваш номер телефону для користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking>`

Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected>`

Повідомляє, чи збираєте ваш додаток фотографії або відео.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/photos_or_videos/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes>`

Причини вашого додатка збирає фотографії або відео. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user>`

Повідомляє, чи зв’язує ваш додаток фотографії або відео до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected>`

Повідомляє, чи працює ваша заявка фізична адреса.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/physical_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes>`

Причини вашого додатку збирає фізична адреса. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user>`

Повідомляємо, що фізична адреса вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking>`

Повідомляє, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected>`

Повідомляємо, що ваш додаток збирає точні дані про розташування.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/precise_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes>`

Причини, що ваш додаток збирає точні дані про розташування. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user>`

Вказуйте, чи точні дані вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking>`

Зазначте, чи використовує Ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected>`

Повідомляє, чи працює ваша програма з даними взаємодії продукту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/product_interaction/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes>`

Причини вашого додатку збирає дані взаємодії продукту. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user>`

Повідомляє, чи пов’язує дані взаємодії продукту до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking>`

Вкажіть, чи використовує дані взаємодії продукту для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected>`

Повідомляємо, що ваш додаток збирає історію купівлі.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/purchase_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes>`

З причин, що ваш додаток збирає історію купівлі. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user>`

Повідомляємо, що історія закупівлі вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected>`

Повідомляємо, що ваш додаток збирає історію пошуку.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/search_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes>`

Причини історії пошуку вашого додатку. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user>`

Повідомляємо, що історія пошуку вашого додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking>`

Вкажіть, чи використовує Ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected>`

Повідомляє, чи працює ваш додаток конфіденційною інформацією користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/sensitive_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes>`

Причини, що ваш додаток збирає конфіденційну інформацію користувача. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user>`

Повідомляє, чи є ваша інформація про користувачів, які чутливі до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking>`

Повідомляє, чи використовує Ваш додаток конфіденційну інформацію для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected>`

Повідомляє, чи збирає ваш додаток ідентифікатори користувачів.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/user_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes>`

Причини вашого додатка збирає ідентифікатори користувачів. Див. `Describing data use in Privacy проявляється <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user>`

Повідомляє, чи є ідентифікатор користувача додатку до ідентичності користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking>`

Вкажіть, чи використовує ваш додаток для відстеження.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/desktop_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description>`

Повідомлення відображається при запитанні доступу до папки "Desktop" користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/desktop_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized>`

Повідомлення відображається при запитанні доступу до папки "Desktop" користувача (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/documents_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description>`

Повідомлення відображається при запитанні доступу до папки "Документи" користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/documents_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized>`

Повідомлення відображається при запитанні доступу до папки "Документи" користувача (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/downloads_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description>`

Повідомлення відображається при запитанні доступу до папки "Завантаження" користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/downloads_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized>`

Повідомлення відображається при запитанні доступу до папки "Завантажити" користувача (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/location_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/location_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/location_usage_description>`

Під час запиту доступу до інформації про розташування користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/location_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized>`

Повідомлення відображається при запитанні доступу до інформації про місце розташування користувача (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/microphone_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description>`

Повідомлення відображається при запитанні доступу до мікрофона пристрою (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/microphone_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized>`

Повідомлення відображається при запитанні доступу до мікрофона пристрою (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/network_volumes_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description>`

Повідомлення відображається при запитанні доступу до мережевих дисків користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/network_volumes_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized>`

Повідомлення відображається при запитанні доступу до мережевих дисків користувача (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/photos_library_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>`

Під час запиту на доступ до бібліотеки фотографій користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/photos_library_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized>`

Повідомлення відображається при запитанні доступу до фото бібліотеки користувача (локалізовані).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/removable_volumes_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description>`

Повідомлення відображається при запитанні доступу до знімних дисків користувача (англійською мовою).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/removable_volumes_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized>`

Повідомлення відображається при запитанні доступу до знімних дисків користувача.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/tracking_domains:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **privacy/tracking_domains** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/tracking_domains>`

Список інтернет- доменів вашого додатка підключається до того, що за допомогою відстеження. Див. `Privacy проявляються файли <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/tracking_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/tracking_enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/tracking_enabled>`

Вкажіть, чи використовує ваш додаток для відстеження. Див. `Privacy проявляються файли <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_shader_baker/enabled>`

Якщо значення ``true``, шейдери будуть скомпільовані та вбудовані в програму. Ця опція підтримується лише під час використання рендерерів Forward+ або Mobile.

\ **Примітка:** Під час експорту на виділений сервер, шейдер-бейкер завжди вимкнено, оскільки рендеринг не виконується.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/cleanup_script>`

Скриптовий код для виконання на віддаленому хості, коли додаток завершено.

У скрипті можна використовувати наступні змінні:

- ``{temp_dir}`` - Шлях тимчасової папки на пульті дистанційного керування, який використовується для завантаження додатків і сценаріїв.

- ``{archive_name}`` - Назва ZIP, що містить завантажену програму.

- ``{exe_name}`` - Ім'я користувача.

- ``{cmd_args}`` - Аррій аргументу командного рядка для програми.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled>`

Увімкнути дистанційне розгортання за допомогою SSH/SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp>`

Проведення додаткових аргументів командного рядка до SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh>`

Арра додаткових аргументів командного рядка, переданих до СШ.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host>`

Віддалений хост SSH ім'я користувача та адреса, в форматі ``user@address``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port>`

Віддалений хост SSH номер порту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script>`

Скриптовий код для виконання віддаленого хосту при запуску програми.

У скрипті можна використовувати наступні змінні:

- ``{temp_dir}`` - Шлях тимчасової папки на пульті дистанційного керування, який використовується для завантаження додатків і сценаріїв.

- ``{archive_name}`` - Назва ZIP, що містить завантажену програму.

- ``{exe_name}`` - Ім'я користувача.

- ``{cmd_args}`` - Аррій аргументу командного рядка для програми.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/platform_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/platform_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/platform_build>`

номер збірки macOS, який використовується для побудови програми.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_build>`

номер збірки macOS SDK використовується для побудови програми, що виконуваний.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_name** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_name>`

назва macOS SDK, що використовується для побудови програми, що виконуються.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_version>`

macOS SDK версія використовується для побудови програми, що виконується в форматі ``major.minor``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/xcode_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/xcode_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/xcode_build>`

Xcode будувати номер, який використовується для побудови програми, що виконується.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/xcode_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/xcode_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/xcode_version>`

Версія Xcode, що використовується для побудови програми, що виконується.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
