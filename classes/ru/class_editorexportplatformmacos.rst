:github_url: hide

.. _class_EditorExportPlatformMacOS:

EditorExportPlatformMacOS
=========================

**Наследует:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Экспортер для macOS.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Экспорт для macOS <../tutorials/export/exporting_for_macos>`

- :doc:`Запуск приложений Godot на macOS <../tutorials//export/running_on_macos>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

.. _class_EditorExportPlatformMacOS_property_application/additional_plist_content:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/additional_plist_content** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/additional_plist_content>`

Дополнительные данные, добавленные в корневой раздел ``<dict>`` файла `Info.plist <https://developer.apple.com/documentation/bundleresources/information_property_list>`__. Значение должно быть разделом XML с парами элементов «ключ-значение», например:

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/app_category:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/app_category** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/app_category>`

Категория приложений для App Store.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/bundle_identifier:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/bundle_identifier** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/bundle_identifier>`

Уникальный идентификатор приложения в формате обратного DNS может содержать только буквенно-цифровые символы (``A-Z``, ``a-z`` и ``0-9``), дефисы (``-``) и точки (``.``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/copyright** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/copyright>`

Уведомление об авторских правах на комплект, видимое пользователю (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/copyright_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **application/copyright_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/copyright_localized>`

Уведомление об авторских правах на комплект, видимое пользователю (локализованное).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/export_angle:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_angle** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/export_angle>`

Если установлено значение ``1``, библиотеки ANGLE экспортируются вместе с экспортированным приложением. Если установлено значение ``0``, библиотеки ANGLE экспортируются только в том случае, если :ref:`ProjectSettings.rendering/gl_compatibility/driver<class_ProjectSettings_property_rendering/gl_compatibility/driver>` установлено значение ``"opengl3_angle"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/icon** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/icon>`

Файл значка приложения. Если оставить пустым, то он будет возвращаться к :ref:`ProjectSettings.application/config/macos_native_icon<class_ProjectSettings_property_application/config/macos_native_icon>`, а затем к :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/icon_interpolation>`

Метод интерполяции, используемый для изменения размера значка приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/liquid_glass_icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/liquid_glass_icon** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/liquid_glass_icon>`

Исходный файл иконки Liquid Glass для macOS 26. Используйте `Icon Composer <https://developer.apple.com/icon-composer/>`__ для создания иконок Liquid Glass.

\ **Примечание:** Поддерживается только при экспорте из macOS, требуется Xcode 26+.

\ **Примечание:** Иконки Liquid Glass поддерживаются только в macOS 26, используйте :ref:`application/icon<class_EditorExportPlatformMacOS_property_application/icon>` для установки иконки для более старых версий macOS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/min_macos_version_arm64:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/min_macos_version_arm64** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/min_macos_version_arm64>`

Минимальная версия macOS, необходимая для запуска этого приложения на компьютерах Apple Silicon Mac, в формате ``major.minor.patch`` или ``major.minor`` может содержать только числовые символы (``0-9``) и точки (``.``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/min_macos_version_x86_64** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/min_macos_version_x86_64>`

Минимальная версия macOS, необходимая для запуска этого приложения на компьютерах Mac с процессором Intel, в формате ``major.minor.patch`` или ``major.minor`` может содержать только числовые символы (``0-9``) и точки (``.``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/short_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/short_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/short_version>`

Версия приложения видна пользователю. Может содержать только цифры (``0-9``) и точки (``.``). Если оставить пустым, возвращается к :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`.

\ **Примечание:** Это значение используется для параметра *Identity > Version* в сгенерированном проекте Xcode.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/signature:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/signature** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/signature>`

Четырехзначный код создателя, относящийся к конкретному пакету. Необязательно.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_application/version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/version** :ref:`🔗<class_EditorExportPlatformMacOS_property_application/version>`

Машиночитаемая версия приложения в формате ``major.minor.patch``. Может содержать только цифры (``0-9``) и точки (``.``). Необходимо увеличивать версию с каждой новой версией, публикуемой в App Store. Если оставить её пустой, возвращается к :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`.

\ **Примечание:** Это значение используется для параметра *Identity > Build* в сгенерированном проекте Xcode.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformMacOS_property_binary_format/architecture>`

Архитектура исполняемого файла приложения.

Поддерживаемые архитектуры: ``x86_64``, ``arm64`` и ``universal`` (``x86_64 + arm64``).

Официальные шаблоны экспорта включают только двоичные файлы ``universal``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/apple_team_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/apple_team_id** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/apple_team_id>`

Apple Team ID, уникальная строка из 10 символов. Чтобы найти свой Team ID, проверьте раздел «Сведения о членстве» на панели управления учетной записью разработчика Apple или «Организационное подразделение» вашего сертификата подписи кода. См. `Найдите свой Team ID <https://developer.apple.com/help/account/manage-your-team/locate-your-team-id>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/certificate_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/certificate_file** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/certificate_file>`

Файл сертификата PKCS #12, используемый для подписи пакета ``.app``.

Можно переопределить с помощью переменной среды ``GODOT_MACOS_CODESIGN_CERTIFICATE_FILE``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/certificate_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/certificate_password** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/certificate_password>`

Пароль для файла сертификата, используемого для подписи пакета ``.app``.

Можно переопределить с помощью переменной среды ``GODOT_MACOS_CODESIGN_CERTIFICATE_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/codesign:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/codesign** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/codesign>`

Инструмент для подписи кода.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/custom_options:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **codesign/custom_options** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/custom_options>`

Массив дополнительных аргументов командной строки, переданных инструменту подписи кода.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/additional:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/entitlements/additional** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/additional>`

Дополнительные данные, добавленные в корневой раздел ``<dict>`` файла `.entitlements <https://developer.apple.com/documentation/bundleresources/entitlements>`__. Значение должно быть разделом XML с парами элементов ключ-значение, например:

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/address_book** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/address_book>`

Включите, чтобы разрешить доступ к контактам в адресной книге пользователя, если эта опция включена, вы также должны предоставить сообщение об использовании в параметре :ref:`privacy/address_book_usage_description<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>`. См. `com.apple.security.personal-information.addressbook <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_addressbook>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_dyld_environment_variables** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_dyld_environment_variables>`

Позволяет приложению использовать динамические переменные среды компоновщика для внедрения кода. Если вы используете надстройки с динамическим или самомодифицирующимся собственным кодом, включите их в соответствии с документацией надстройки. См. `com.apple.security.cs.allow-dyld-environment-variables <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-dyld-environment-variables>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_jit_code_execution** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_jit_code_execution>`

Позволяет создавать записываемую и исполняемую память для JIT-кода. Если вы используете надстройки с динамическим или самомодифицирующимся собственным кодом, включите их в соответствии с документацией надстройки. См. `com.apple.security.cs.allow-jit <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-jit>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/allow_unsigned_executable_memory** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/allow_unsigned_executable_memory>`

Позволяет создавать записываемую и исполняемую память без ограничений JIT. Если вы используете надстройки с динамическим или самомодифицирующимся собственным кодом, включите их в соответствии с документацией надстройки. См. `com.apple.security.cs.allow-unsigned-executable-memory <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_allow-unsigned-executable-memory>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/device_bluetooth** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_bluetooth>`

Включите, чтобы разрешить приложению взаимодействовать с устройствами Bluetooth. Это разрешение требуется для использования беспроводных контроллеров. См. `com.apple.security.device.bluetooth <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_bluetooth>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/device_usb** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/device_usb>`

Включите, чтобы разрешить приложению взаимодействовать с USB-устройствами. Это разрешение требуется для использования проводных контроллеров. См. `com.apple.security.device.usb <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_usb>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/enabled>`

Включает App Sandbox. App Sandbox ограничивает доступ к пользовательским данным, сетевым подключениям и устройствам. Изолированные приложения не могут получить доступ к большей части файловой системы, не могут использовать настраиваемые диалоговые окна файлов и выполнять двоичные файлы вне пакета .app. См. `App Sandbox <https://developer.apple.com/documentation/security/app_sandbox>`__.

\ **Примечание:** Чтобы распространять приложение через App Store, необходимо включить App Sandbox.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_downloads** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_downloads>`

Позволяет читать или записывать в папку «Загрузки» пользователя. См. `com.apple.security.files.downloads.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_downloads_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_movies** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_movies>`

Позволяет читать или записывать в папку "Фильмы" ("Movies") пользователя. См. `com.apple.security.files.movies.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_movies_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_music** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_music>`

Позволяет читать или записывать в папку пользователя «Музыка» (Music). См. `com.apple.security.files.music.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_music_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_pictures** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_pictures>`

Позволяет читать или записывать в папку "Фотографии" ("Pictures") пользователя. См. `com.apple.security.files.pictures.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_assets_pictures_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/entitlements/app_sandbox/files_user_selected** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/files_user_selected>`

Позволяет читать или записывать доступ к расположениям, выбранным пользователем с помощью собственного диалогового окна файла. См. `com.apple.security.files.user-selected.read-write <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_user-selected_read-write>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **codesign/entitlements/app_sandbox/helper_executables** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/helper_executables>`

Список вспомогательных исполняемых файлов для встраивания в пакет приложения. Изолированные приложения ограничены выполнением только этих исполняемых файлов. См. `Встраивание инструмента командной строки в изолированное приложение <https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/network_client** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_client>`

Включите, чтобы разрешить приложению устанавливать исходящие сетевые соединения. См. `com.apple.security.network.client <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_client>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/app_sandbox/network_server** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/app_sandbox/network_server>`

Включите, чтобы разрешить приложению прослушивать входящие сетевые подключения. См. `com.apple.security.network.server <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_server>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/apple_events** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/apple_events>`

Включите, чтобы разрешить приложению отправлять события Apple в другие приложения. См. `com.apple.security.automation.apple-events <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_automation_apple-events>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/audio_input** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/audio_input>`

Включите, если вам нужно использовать микрофон или другие источники аудиовхода, если он включен, вы также должны предоставить сообщение об использовании в параметре :ref:`privacy/microphone_usage_description<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description>`. См. `com.apple.security.device.audio-input <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_audio-input>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/calendars** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/calendars>`

Включите, чтобы разрешить доступ к календарю пользователя, если он включен, вы также должны предоставить сообщение об использовании в параметре :ref:`privacy/calendar_usage_description<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description>`. См. `com.apple.security.personal-information.calendars <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_calendars>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/camera** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/camera>`

Включите, если вам нужно использовать камеру, если она включена, вы также должны предоставить сообщение об использовании в параметре :ref:`privacy/camera_usage_description<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description>`. См. `com.apple.security.device.camera <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_device_camera>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/entitlements/custom_file** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/custom_file>`

Файл пользовательских прав ``.plist``, если он указан, остальные права в конфигурации экспорта игнорируются.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/debugging** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/debugging>`

Вы можете временно включить это право, чтобы использовать собственный отладчик (GDB, LLDB) с экспортированным приложением. Это право должно быть отключено для экспорта в производство. См. `Внедрение инструмента командной строки в изолированное приложение <https://developer.apple.com/documentation/xcode/embedding-a-helper-tool-in-a-sandboxed-app>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/disable_library_validation** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/disable_library_validation>`

Позволяет приложению загружать произвольные библиотеки и фреймворки (не подписанные тем же Team ID, что и основной исполняемый файл или Apple). Включите его, если вы используете надстройки GDExtension или ad-hoc-подписывание, или хотите поддерживать внешние надстройки, предоставляемые пользователем. См. `com.apple.security.cs.disable-library-validation <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_cs_disable-library-validation>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/location:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/location** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/location>`

Включите, если вам нужно использовать информацию о местоположении из служб определения местоположения, если она включена, вы также должны предоставить сообщение об использовании в параметре :ref:`privacy/location_usage_description<class_EditorExportPlatformMacOS_property_privacy/location_usage_description>`. См. `com.apple.security.personal-information.location <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_location>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/entitlements/photos_library** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/entitlements/photos_library>`

Включите, чтобы разрешить доступ к библиотеке фотографий пользователя, если она включена, вы также должны предоставить сообщение об использовании в параметре :ref:`privacy/photos_library_usage_description<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>`. См. `com.apple.security.personal-information.photos-library <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_personal-information_photos-library>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/identity** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/identity>`

«Полное имя», «Общее имя» или хэш SHA-1 подписи удостоверения, используемого для подписания пакета ``.app``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/installer_identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/installer_identity** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/installer_identity>`

«Полное имя», «Общее имя» или хэш SHA-1 подписи удостоверения, используемого для подписи пакета установщика ``.pkg`` для распространения через App Store, используйте удостоверение ``3rd Party Mac Developer Installer: ``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_codesign/provisioning_profile:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/provisioning_profile** :ref:`🔗<class_EditorExportPlatformMacOS_property_codesign/provisioning_profile>`

Файл профиля обеспечения, загруженный из панели управления учетной записью разработчика Apple. См. `Редактирование, загрузка или удаление профилей обеспечения <https://developer.apple.com/help/account/manage-profiles/edit-download-or-delete-profiles>`__.

Можно переопределить с помощью переменной среды ``GODOT_MACOS_CODESIGN_PROVISIONING_PROFILE``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformMacOS_property_custom_template/debug>`

Путь к пользовательскому шаблону экспорта. Если оставить пустым, будет использоваться шаблон по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformMacOS_property_custom_template/release>`

Путь к пользовательскому шаблону экспорта. Если оставить пустым, будет использоваться шаблон по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformMacOS_property_debug/export_console_wrapper>`

Если этот параметр включен, то вместе с экспортированным приложением создается оболочка, которую можно использовать для запуска приложения с выводом на консоль.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_display/high_res:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **display/high_res** :ref:`🔗<class_EditorExportPlatformMacOS_property_display/high_res>`

Если ``true``, приложение отображается с собственным разрешением дисплея, в противном случае оно всегда отображается с разрешением loDPI и масштабируется ОС при необходимости.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_export/distribution_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **export/distribution_type** :ref:`🔗<class_EditorExportPlatformMacOS_property_export/distribution_type>`

Цель распространения приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_key:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_key** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_key>`

Файл ключа эмитента API Apple App Store Connect.

Можно переопределить с помощью переменной среды ``GODOT_MACOS_NOTARIZATION_API_KEY``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_key_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_key_id** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_key_id>`

Идентификатор ключа издателя API App Store Connect от Apple.

Можно переопределить с помощью переменной среды ``GODOT_MACOS_NOTARIZATION_API_KEY_ID``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/api_uuid:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/api_uuid** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/api_uuid>`

UUID издателя API Apple App Store Connect.

Можно переопределить с помощью переменной среды ``GODOT_MACOS_NOTARIZATION_API_UUID``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/apple_id_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/apple_id_name** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/apple_id_name>`

Имя учетной записи Apple ID (адрес электронной почты).

Можно переопределить с помощью переменной среды ``GODOT_MACOS_NOTARIZATION_APPLE_ID_NAME``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/apple_id_password:

.. rst-class:: classref-property

:ref:`String<class_String>` **notarization/apple_id_password** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/apple_id_password>`

Пароль приложения Apple ID.

Можно переопределить с помощью переменной среды ``GODOT_MACOS_NOTARIZATION_APPLE_ID_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_notarization/notarization:

.. rst-class:: classref-property

:ref:`int<class_int>` **notarization/notarization** :ref:`🔗<class_EditorExportPlatformMacOS_property_notarization/notarization>`

Инструмент для нотариального заверения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/address_book_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description>`

Сообщение, отображаемое при запросе доступа к контактам пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/address_book_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/address_book_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к контактам пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/calendar_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description>`

Сообщение, отображаемое при запросе доступа к данным календаря пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/calendar_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/calendar_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к данным календаря пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/camera_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/camera_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description>`

Сообщение, отображаемое при запросе доступа к камере устройства (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/camera_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/camera_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к камере устройства (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collected>`

Указывает, собирает ли ваше приложение рекламные данные.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/advertising_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/collection_purposes>`

Причины, по которым ваше приложение собирает рекламные данные. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/linked_to_user>`

Указывает, связывает ли ваше приложение рекламные данные с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/advertising_data/used_for_tracking>`

Указывает, использует ли ваше приложение рекламные данные для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collected>`

Указывает, собирает ли ваше приложение аудиоданные.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/audio_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/collection_purposes>`

Причины, по которым ваше приложение собирает аудиоданные. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/linked_to_user>`

Указывает, связывает ли ваше приложение аудиоданные с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/audio_data/used_for_tracking>`

Указывает, использует ли ваше приложение аудиоданные для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collected>`

Указывает, собирает ли ваше приложение историю просмотров.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/browsing_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/collection_purposes>`

Причины, по которым ваше приложение собирает историю просмотров. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/linked_to_user>`

Указывает, связывает ли ваше приложение историю просмотров с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/browsing_history/used_for_tracking>`

Указывает, использует ли ваше приложение историю просмотров для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collected>`

Указывает, собирает ли ваше приложение приблизительные данные о местоположении.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/coarse_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/collection_purposes>`

Причины, по которым ваше приложение собирает грубые данные о местоположении. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/linked_to_user>`

Указывает, связывает ли ваше приложение общие данные о местоположении с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/coarse_location/used_for_tracking>`

Указывает, использует ли ваше приложение грубые данные о местоположении для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collected>`

Указывает, собирает ли ваше приложение контакты.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/contacts/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/collection_purposes>`

Причины, по которым ваше приложение собирает контакты. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/linked_to_user>`

Указывает, связывает ли ваше приложение контакты с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/contacts/used_for_tracking>`

Указывает, использует ли ваше приложение контакты для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collected>`

Указывает, собирает ли ваше приложение данные о сбоях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/crash_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/collection_purposes>`

Причины, по которым ваше приложение собирает данные о сбоях. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/linked_to_user>`

Указывает, связывает ли ваше приложение данные о сбоях с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/crash_data/used_for_tracking>`

Указывает, использует ли ваше приложение данные о сбоях для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collected>`

Указывает, собирает ли ваше приложение кредитную информацию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/credit_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/collection_purposes>`

Причины, по которым ваше приложение собирает кредитную информацию. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/linked_to_user>`

Указывает, связывает ли ваше приложение кредитную информацию с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/credit_info/used_for_tracking>`

Указывает, использует ли ваше приложение кредитную информацию для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collected>`

Указывает, собирает ли ваше приложение данные о поддержке клиентов.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/customer_support/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/collection_purposes>`

Причины, по которым ваше приложение собирает данные поддержки клиентов. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/linked_to_user>`

Указывает, связывает ли ваше приложение данные службы поддержки клиентов с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/customer_support/used_for_tracking>`

Указывает, использует ли ваше приложение данные службы поддержки клиентов для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collected>`

Указывает, собирает ли ваше приложение идентификаторы устройств.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/device_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/collection_purposes>`

Причины, по которым ваше приложение собирает идентификаторы устройств. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/linked_to_user>`

Указывает, связывает ли ваше приложение идентификаторы устройств с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/device_id/used_for_tracking>`

Указывает, использует ли ваше приложение идентификаторы устройств для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collected>`

Указывает, собирает ли ваше приложение адреса электронной почты.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/email_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/collection_purposes>`

Причины, по которым ваше приложение собирает адрес электронной почты. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/linked_to_user>`

Указывает, связывает ли ваше приложение адрес электронной почты с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/email_address/used_for_tracking>`

Указывает, использует ли ваше приложение адрес электронной почты для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collected>`

Указывает, собирает ли ваше приложение электронные письма или текстовые сообщения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/emails_or_text_messages/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes>`

Причины, по которым ваше приложение собирает электронные письма или текстовые сообщения. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user>`

Указывает, связывает ли ваше приложение электронные письма или текстовые сообщения с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking>`

Указывает, использует ли ваше приложение для отслеживания электронные письма или текстовые сообщения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collected>`

Указывает, собирает ли ваше приложение данные сканирования среды.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/environment_scanning/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/collection_purposes>`

Причины, по которым ваше приложение собирает данные сканирования среды. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/linked_to_user>`

Указывает, связывает ли ваше приложение данные сканирования среды с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/environment_scanning/used_for_tracking>`

Указывает, использует ли ваше приложение данные сканирования среды для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collected>`

Указывает, собирает ли ваше приложение данные о фитнесе и упражнениях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/fitness/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/collection_purposes>`

Причины, по которым ваше приложение собирает данные о фитнесе и упражнениях. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/linked_to_user>`

Указывает, связывает ли ваше приложение данные о фитнесе и упражнениях с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/fitness/used_for_tracking>`

Указывает, использует ли ваше приложение данные о фитнесе и упражнениях для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collected>`

Указывает, собирает ли ваше приложение игровой контент.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/gameplay_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/collection_purposes>`

Причины, по которым ваше приложение собирает игровой контент. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/linked_to_user>`

Указывает, связывает ли ваше приложение игровой контент с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/gameplay_content/used_for_tracking>`

Указывает, использует ли ваше приложение игровой контент для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collected>`

Указывает, собирает ли ваше приложение данные о строении и движениях рук пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/hands/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/collection_purposes>`

Причины, по которым ваше приложение собирает структуру и движения рук пользователя. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/linked_to_user>`

Указывает, связывает ли ваше приложение строение руки и движения руки пользователя с его личностью.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/hands/used_for_tracking>`

Указывает, использует ли ваше приложение строение руки пользователя и его движения для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collected>`

Указывает, регистрирует ли ваше приложение движения головы пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/head/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/collection_purposes>`

Причины, по которым ваше приложение собирает движения головы пользователя. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/linked_to_user>`

Указывает, связывает ли ваше приложение движение головы пользователя с его личностью.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/head/used_for_tracking>`

Указывает, использует ли ваше приложение движение головы пользователя для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collected>`

Указывает, собирает ли ваше приложение данные о состоянии здоровья и медицинские данные.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/health/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/collection_purposes>`

Причины, по которым ваше приложение собирает данные о здоровье и медицине. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/linked_to_user>`

Указывает, связывает ли ваше приложение данные о состоянии здоровья и медицинские данные с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/health/used_for_tracking>`

Указывает, использует ли ваше приложение данные о состоянии здоровья и медицинские данные для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collected>`

Указывает, собирает ли ваше приложение имя пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/name/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/collection_purposes>`

Причины, по которым ваше приложение собирает имя пользователя. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/linked_to_user>`

Указывает, связывает ли ваше приложение имя пользователя с его личностью.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/name/used_for_tracking>`

Указывает, использует ли ваше приложение имя пользователя для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collected>`

Указывает, собирает ли ваше приложение какую-либо другую контактную информацию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_contact_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/collection_purposes>`

Причины, по которым ваше приложение собирает любую другую контактную информацию. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/linked_to_user>`

Указывает, связывает ли ваше приложение какую-либо другую контактную информацию с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_contact_info/used_for_tracking>`

Указывает, использует ли ваше приложение какую-либо другую контактную информацию для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collected>`

Указывает, собирает ли ваше приложение какие-либо другие данные.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_data_types/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/collection_purposes>`

Причины, по которым ваше приложение собирает любые другие данные. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/linked_to_user>`

Указывает, связывает ли ваше приложение какие-либо другие данные с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_data_types/used_for_tracking>`

Указывает, использует ли ваше приложение какие-либо другие данные для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collected>`

Указывает, собирает ли ваше приложение какие-либо другие диагностические данные.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_diagnostic_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes>`

Причины, по которым ваше приложение собирает любые другие диагностические данные. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user>`

Указывает, связывает ли ваше приложение какие-либо другие диагностические данные с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking>`

Указывает, использует ли ваше приложение какие-либо другие диагностические данные для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collected>`

Указывает, собирает ли ваше приложение какую-либо другую финансовую информацию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_financial_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/collection_purposes>`

Причины, по которым ваше приложение собирает любую другую финансовую информацию. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/linked_to_user>`

Указывает, связывает ли ваше приложение какую-либо другую финансовую информацию с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_financial_info/used_for_tracking>`

Указывает, использует ли ваше приложение какую-либо другую финансовую информацию для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collected>`

Указывает, собирает ли ваше приложение какие-либо другие данные об использовании.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_usage_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/collection_purposes>`

Причины, по которым ваше приложение собирает любые другие данные об использовании. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/linked_to_user>`

Указывает, связывает ли ваше приложение какие-либо другие данные об использовании с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_usage_data/used_for_tracking>`

Указывает, использует ли ваше приложение какие-либо другие данные об использовании для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collected>`

Указывает, собирает ли ваше приложение какой-либо другой пользовательский контент.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_user_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/collection_purposes>`

Причины, по которым ваше приложение собирает любой другой контент, созданный пользователем. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/linked_to_user>`

Указывает, связывает ли ваше приложение какой-либо другой пользовательский контент с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/other_user_content/used_for_tracking>`

Указывает, использует ли ваше приложение какой-либо другой пользовательский контент для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collected>`

Указывает, собирает ли ваше приложение платежную информацию.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/payment_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/collection_purposes>`

Причины, по которым ваше приложение собирает платежную информацию. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/linked_to_user>`

Указывает, связывает ли ваше приложение платежную информацию с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/payment_info/used_for_tracking>`

Указывает, использует ли ваше приложение платежную информацию для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collected>`

Указывает, собирает ли ваше приложение данные о производительности.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/performance_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/collection_purposes>`

Причины, по которым ваше приложение собирает данные о производительности. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/linked_to_user>`

Указывает, связывает ли ваше приложение данные о производительности с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/performance_data/used_for_tracking>`

Указывает, использует ли ваше приложение данные о производительности для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collected>`

Указывает, собирает ли ваше приложение номер телефона.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/phone_number/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/collection_purposes>`

Причины, по которым ваше приложение собирает номер телефона. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/linked_to_user>`

Указывает, связывает ли ваше приложение номер телефона с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/phone_number/used_for_tracking>`

Указывает, использует ли ваше приложение номер телефона для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collected>`

Указывает, собирает ли ваше приложение фотографии или видео.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/photos_or_videos/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/collection_purposes>`

Причины, по которым ваше приложение собирает фотографии или видео. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/linked_to_user>`

Указывает, связывает ли ваше приложение фотографии или видео с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/photos_or_videos/used_for_tracking>`

Указывает, использует ли ваше приложение фотографии или видео для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collected>`

Указывает, собирает ли ваше приложение физический адрес.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/physical_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/collection_purposes>`

Причины, по которым ваше приложение собирает физический адрес. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/linked_to_user>`

Указывает, связывает ли ваше приложение физический адрес с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/physical_address/used_for_tracking>`

Указывает, использует ли ваше приложение физический адрес для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collected>`

Указывает, собирает ли ваше приложение точные данные о местоположении.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/precise_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/collection_purposes>`

Причины, по которым ваше приложение собирает точные данные о местоположении. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/linked_to_user>`

Указывает, связывает ли ваше приложение точные данные о местоположении с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/precise_location/used_for_tracking>`

Указывает, использует ли ваше приложение точные данные о местоположении для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collected>`

Указывает, собирает ли ваше приложение данные о взаимодействии с продуктом.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/product_interaction/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/collection_purposes>`

Причины, по которым ваше приложение собирает данные о взаимодействии с продуктом. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/linked_to_user>`

Указывает, связывает ли ваше приложение данные о взаимодействии с продуктом с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/product_interaction/used_for_tracking>`

Указывает, использует ли ваше приложение данные о взаимодействии с продуктом для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collected>`

Указывает, собирает ли ваше приложение историю покупок.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/purchase_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/collection_purposes>`

Причины, по которым ваше приложение собирает историю покупок. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/linked_to_user>`

Указывает, связывает ли ваше приложение историю покупок с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/purchase_history/used_for_tracking>`

Указывает, использует ли ваше приложение историю покупок для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collected>`

Указывает, собирает ли ваше приложение историю поиска.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/search_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/collection_purposes>`

Причины, по которым ваше приложение собирает историю поиска. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/linked_to_user>`

Указывает, связывает ли ваше приложение историю поиска с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/search_history/used_for_tracking>`

Указывает, использует ли ваше приложение историю поиска для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collected>`

Указывает, собирает ли ваше приложение конфиденциальную информацию пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/sensitive_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/collection_purposes>`

Причины, по которым ваше приложение собирает конфиденциальную информацию пользователя. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/linked_to_user>`

Указывает, связывает ли ваше приложение конфиденциальную информацию пользователя с его личностью.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/sensitive_info/used_for_tracking>`

Указывает, использует ли ваше приложение конфиденциальную информацию пользователя для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/collected** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collected>`

Указывает, собирает ли ваше приложение идентификаторы пользователей.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/user_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/collection_purposes>`

Причины, по которым ваше приложение собирает идентификаторы пользователей. См. `Описание использования данных в манифестах конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/linked_to_user>`

Указывает, связывает ли ваше приложение идентификаторы пользователей с личностью пользователя.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/collected_data/user_id/used_for_tracking>`

Указывает, использует ли ваше приложение идентификаторы пользователей для отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/desktop_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description>`

Сообщение, отображаемое при запросе доступа к папке «Рабочий стол» пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/desktop_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/desktop_folder_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к папке «Рабочий стол» пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/documents_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description>`

Сообщение, отображаемое при запросе доступа к папке «Документы» пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/documents_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/documents_folder_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к папке «Документы» пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/downloads_folder_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description>`

Сообщение, отображаемое при запросе доступа к папке «Загрузки» пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/downloads_folder_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/downloads_folder_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к папке «Загрузки» пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/location_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/location_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/location_usage_description>`

Сообщение, отображаемое при запросе доступа к информации о местоположении пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/location_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/location_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к информации о местоположении пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/microphone_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description>`

Сообщение, отображаемое при запросе доступа к микрофону устройства (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/microphone_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/microphone_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к микрофону устройства (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/network_volumes_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description>`

Сообщение, отображаемое при запросе доступа к сетевым дискам пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/network_volumes_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/network_volumes_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к сетевым дискам пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/photos_library_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description>`

Сообщение, отображаемое при запросе доступа к библиотеке фотографий пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/photos_library_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/photos_library_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к библиотеке фотографий пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/removable_volumes_usage_description** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description>`

Сообщение, отображаемое при запросе доступа к съемным дискам пользователя (на английском языке).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/removable_volumes_usage_description_localized** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/removable_volumes_usage_description_localized>`

Сообщение, отображаемое при запросе доступа к съемным дискам пользователя (локализовано).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/tracking_domains:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **privacy/tracking_domains** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/tracking_domains>`

Список интернет-доменов, к которым подключается ваше приложение, которые занимаются отслеживанием. См. `Файлы манифеста конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_privacy/tracking_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/tracking_enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_privacy/tracking_enabled>`

Указывает, использует ли ваше приложение данные для отслеживания. См. `Файлы манифеста конфиденциальности <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_shader_baker/enabled>`

Если ``true``, шейдеры будут скомпилированы и встроены в приложение. Эта опция поддерживается только при использовании рендереров Forward+ или Mobile.

\ **Примечание:** При экспорте в качестве выделенного сервера запекатель шейдеров всегда отключен, поскольку рендеринг не выполняется.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/cleanup_script>`

Код скрипта для выполнения на удаленном хосте после завершения работы приложения.

В скрипте можно использовать следующие переменные:

- ``{temp_dir}`` - Путь к временной папке на удаленном компьютере, в которую загружаются приложение и скрипты.

- ``{archive_name}`` - Имя ZIP-архива, содержащего загруженное приложение.

- ``{exe_name}`` - Имя исполняемого файла приложения.

- ``{cmd_args}`` - Массив аргументов командной строки для приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/enabled>`

Позволяет выполнять удаленное развертывание с использованием SSH/SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_scp>`

Массив дополнительных аргументов командной строки, переданных SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/extra_args_ssh>`

Массив дополнительных аргументов командной строки, переданных в SSH.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/host>`

Имя пользователя и адрес SSH удаленного хоста в формате ``user@address``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/port>`

Номер порта SSH удаленного хоста.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformMacOS_property_ssh_remote_deploy/run_script>`

Код скрипта для выполнения на удаленном хосте при запуске приложения.

В скрипте можно использовать следующие переменные:

- ``{temp_dir}`` - Путь к временной папке на удаленном компьютере, в которую загружаются приложение и скрипты.

- ``{archive_name}`` - Имя ZIP-архива, содержащего загруженное приложение.

- ``{exe_name}`` - Имя исполняемого файла приложения.

- ``{cmd_args}`` - Массив аргументов командной строки для приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/platform_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/platform_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/platform_build>`

Номер сборки macOS, используемый для сборки исполняемого файла приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_build>`

Номер сборки macOS SDK, используемый для сборки исполняемого файла приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_name** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_name>`

Имя macOS SDK, используемое для сборки исполняемого файла приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/sdk_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/sdk_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/sdk_version>`

Версия macOS SDK, используемая для сборки исполняемого файла приложения в формате ``major.minor``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/xcode_build:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/xcode_build** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/xcode_build>`

Номер сборки Xcode, используемый для сборки исполняемого файла приложения.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformMacOS_property_xcode/xcode_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **xcode/xcode_version** :ref:`🔗<class_EditorExportPlatformMacOS_property_xcode/xcode_version>`

Версия Xcode, используемая для сборки исполняемого файла приложения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
