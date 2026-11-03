:github_url: hide

.. _class_EditorExportPlatformVisionOS:

EditorExportPlatformVisionOS
============================

**繼承：** :ref:`EditorExportPlatformAppleEmbedded<class_EditorExportPlatformAppleEmbedded>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

visionOS 匯出器。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`為 iOS 匯出 <../tutorials/export/exporting_for_ios>`

- :doc:`編輯器外掛程式文件索引 <../tutorials/platform/ios/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/additional_plist_content<class_EditorExportPlatformVisionOS_property_application/additional_plist_content>`                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/app_store_team_id<class_EditorExportPlatformVisionOS_property_application/app_store_team_id>`                                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/bundle_identifier<class_EditorExportPlatformVisionOS_property_application/bundle_identifier>`                                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/code_sign_identity_debug<class_EditorExportPlatformVisionOS_property_application/code_sign_identity_debug>`                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/code_sign_identity_release<class_EditorExportPlatformVisionOS_property_application/code_sign_identity_release>`                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`application/delete_old_export_files_unconditionally<class_EditorExportPlatformVisionOS_property_application/delete_old_export_files_unconditionally>`                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`application/export_method_debug<class_EditorExportPlatformVisionOS_property_application/export_method_debug>`                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`application/export_method_release<class_EditorExportPlatformVisionOS_property_application/export_method_release>`                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`application/export_project_only<class_EditorExportPlatformVisionOS_property_application/export_project_only>`                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`application/icon_interpolation<class_EditorExportPlatformVisionOS_property_application/icon_interpolation>`                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/min_visionos_version<class_EditorExportPlatformVisionOS_property_application/min_visionos_version>`                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/provisioning_profile_specifier_debug<class_EditorExportPlatformVisionOS_property_application/provisioning_profile_specifier_debug>`                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/provisioning_profile_specifier_release<class_EditorExportPlatformVisionOS_property_application/provisioning_profile_specifier_release>`                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/provisioning_profile_uuid_debug<class_EditorExportPlatformVisionOS_property_application/provisioning_profile_uuid_debug>`                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/provisioning_profile_uuid_release<class_EditorExportPlatformVisionOS_property_application/provisioning_profile_uuid_release>`                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/short_version<class_EditorExportPlatformVisionOS_property_application/short_version>`                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/signature<class_EditorExportPlatformVisionOS_property_application/signature>`                                                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/version<class_EditorExportPlatformVisionOS_property_application/version>`                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`architectures/arm64<class_EditorExportPlatformVisionOS_property_architectures/arm64>`                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`capabilities/access_wifi<class_EditorExportPlatformVisionOS_property_capabilities/access_wifi>`                                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`capabilities/additional<class_EditorExportPlatformVisionOS_property_capabilities/additional>`                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`capabilities/performance_a12<class_EditorExportPlatformVisionOS_property_capabilities/performance_a12>`                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`capabilities/performance_gaming_tier<class_EditorExportPlatformVisionOS_property_capabilities/performance_gaming_tier>`                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`custom_template/debug<class_EditorExportPlatformVisionOS_property_custom_template/debug>`                                                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`custom_template/release<class_EditorExportPlatformVisionOS_property_custom_template/release>`                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`entitlements/additional<class_EditorExportPlatformVisionOS_property_entitlements/additional>`                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`entitlements/game_center<class_EditorExportPlatformVisionOS_property_entitlements/game_center>`                                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`entitlements/increased_memory_limit<class_EditorExportPlatformVisionOS_property_entitlements/increased_memory_limit>`                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`entitlements/push_notifications<class_EditorExportPlatformVisionOS_property_entitlements/push_notifications>`                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`icons/icon_1024x1024<class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024>`                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`icons/icon_1024x1024_dark<class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024_dark>`                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`icons/icon_1024x1024_tinted<class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024_tinted>`                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`modules/camera<class_EditorExportPlatformVisionOS_property_modules/camera>`                                                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/active_keyboard_access_reasons<class_EditorExportPlatformVisionOS_property_privacy/active_keyboard_access_reasons>`                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/camera_usage_description<class_EditorExportPlatformVisionOS_property_privacy/camera_usage_description>`                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/camera_usage_description_localized<class_EditorExportPlatformVisionOS_property_privacy/camera_usage_description_localized>`                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/advertising_data/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/advertising_data/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/advertising_data/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/advertising_data/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/audio_data/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/collected>`                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/audio_data/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/collection_purposes>`                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/audio_data/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/linked_to_user>`                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/audio_data/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/used_for_tracking>`                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/browsing_history/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/browsing_history/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/browsing_history/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/browsing_history/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/coarse_location/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/collected>`                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/coarse_location/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/collection_purposes>`                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/coarse_location/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/linked_to_user>`                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/coarse_location/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/used_for_tracking>`                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/contacts/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/collected>`                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/contacts/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/collection_purposes>`                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/contacts/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/linked_to_user>`                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/contacts/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/used_for_tracking>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/crash_data/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/collected>`                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/crash_data/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/collection_purposes>`                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/crash_data/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/linked_to_user>`                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/crash_data/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/used_for_tracking>`                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/credit_info/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/collected>`                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/credit_info/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/collection_purposes>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/credit_info/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/linked_to_user>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/credit_info/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/used_for_tracking>`                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/customer_support/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/customer_support/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/customer_support/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/customer_support/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/device_id/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/collected>`                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/device_id/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/collection_purposes>`                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/device_id/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/linked_to_user>`                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/device_id/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/used_for_tracking>`                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/email_address/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/collected>`                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/email_address/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/collection_purposes>`                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/email_address/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/linked_to_user>`                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/email_address/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/used_for_tracking>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/emails_or_text_messages/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/collected>`                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/emails_or_text_messages/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes>` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/emails_or_text_messages/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user>`           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/emails_or_text_messages/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking>`     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/environment_scanning/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/collected>`                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/environment_scanning/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/collection_purposes>`       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/environment_scanning/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/linked_to_user>`                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/environment_scanning/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/used_for_tracking>`           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/fitness/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/collected>`                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/fitness/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/collection_purposes>`                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/fitness/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/linked_to_user>`                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/fitness/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/used_for_tracking>`                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/gameplay_content/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/gameplay_content/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/gameplay_content/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/gameplay_content/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/hands/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/collected>`                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/hands/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/collection_purposes>`                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/hands/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/linked_to_user>`                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/hands/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/used_for_tracking>`                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/head/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/collected>`                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/head/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/collection_purposes>`                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/head/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/linked_to_user>`                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/head/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/used_for_tracking>`                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/health/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/collected>`                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/health/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/collection_purposes>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/health/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/linked_to_user>`                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/health/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/used_for_tracking>`                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/name/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/collected>`                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/name/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/collection_purposes>`                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/name/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/linked_to_user>`                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/name/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/used_for_tracking>`                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_contact_info/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/collected>`                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_contact_info/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/collection_purposes>`           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_contact_info/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/linked_to_user>`                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_contact_info/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/used_for_tracking>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_data_types/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_data_types/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_data_types/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_data_types/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_diagnostic_data/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/collected>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_diagnostic_data/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes>`     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_diagnostic_data/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_diagnostic_data/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking>`         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_financial_info/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/collected>`                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_financial_info/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/collection_purposes>`       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_financial_info/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/linked_to_user>`                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_financial_info/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/used_for_tracking>`           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_usage_data/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_usage_data/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_usage_data/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_usage_data/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_user_content/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/collected>`                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/other_user_content/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/collection_purposes>`           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_user_content/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/linked_to_user>`                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/other_user_content/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/used_for_tracking>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/payment_info/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/collected>`                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/payment_info/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/collection_purposes>`                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/payment_info/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/linked_to_user>`                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/payment_info/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/used_for_tracking>`                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/performance_data/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/performance_data/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/performance_data/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/performance_data/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/phone_number/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/collected>`                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/phone_number/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/collection_purposes>`                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/phone_number/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/linked_to_user>`                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/phone_number/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/used_for_tracking>`                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/photos_or_videos/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/photos_or_videos/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/photos_or_videos/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/photos_or_videos/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/physical_address/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/physical_address/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/physical_address/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/physical_address/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/precise_location/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/precise_location/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/precise_location/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/precise_location/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/product_interaction/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/collected>`                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/product_interaction/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/collection_purposes>`         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/product_interaction/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/linked_to_user>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/product_interaction/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/used_for_tracking>`             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/purchase_history/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/collected>`                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/purchase_history/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/collection_purposes>`               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/purchase_history/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/linked_to_user>`                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/purchase_history/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/used_for_tracking>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/search_history/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/collected>`                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/search_history/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/collection_purposes>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/search_history/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/linked_to_user>`                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/search_history/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/used_for_tracking>`                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/sensitive_info/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/collected>`                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/sensitive_info/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/collection_purposes>`                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/sensitive_info/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/linked_to_user>`                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/sensitive_info/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/used_for_tracking>`                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/user_id/collected<class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/collected>`                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/collected_data/user_id/collection_purposes<class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/collection_purposes>`                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/user_id/linked_to_user<class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/linked_to_user>`                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/collected_data/user_id/used_for_tracking<class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/used_for_tracking>`                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/disk_space_access_reasons<class_EditorExportPlatformVisionOS_property_privacy/disk_space_access_reasons>`                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/file_timestamp_access_reasons<class_EditorExportPlatformVisionOS_property_privacy/file_timestamp_access_reasons>`                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/microphone_usage_description<class_EditorExportPlatformVisionOS_property_privacy/microphone_usage_description>`                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/microphone_usage_description_localized<class_EditorExportPlatformVisionOS_property_privacy/microphone_usage_description_localized>`                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`privacy/photolibrary_usage_description<class_EditorExportPlatformVisionOS_property_privacy/photolibrary_usage_description>`                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`privacy/photolibrary_usage_description_localized<class_EditorExportPlatformVisionOS_property_privacy/photolibrary_usage_description_localized>`                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/system_boot_time_access_reasons<class_EditorExportPlatformVisionOS_property_privacy/system_boot_time_access_reasons>`                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`privacy/tracking_domains<class_EditorExportPlatformVisionOS_property_privacy/tracking_domains>`                                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`privacy/tracking_enabled<class_EditorExportPlatformVisionOS_property_privacy/tracking_enabled>`                                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`privacy/user_defaults_access_reasons<class_EditorExportPlatformVisionOS_property_privacy/user_defaults_access_reasons>`                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`shader_baker/enabled<class_EditorExportPlatformVisionOS_property_shader_baker/enabled>`                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`user_data/accessible_from_files_app<class_EditorExportPlatformVisionOS_property_user_data/accessible_from_files_app>`                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`user_data/accessible_from_itunes_sharing<class_EditorExportPlatformVisionOS_property_user_data/accessible_from_itunes_sharing>`                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_EditorExportPlatformVisionOS_property_application/additional_plist_content:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/additional_plist_content** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/additional_plist_content>`

新增到 `Info.plist <https://developer.apple.com/documentation/bundleresources/information_property_list>`__ 檔案的根 ``<dict>`` 部分的其他資料。該值應該是帶有鍵值元素對的 XML 部分，例如：

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/app_store_team_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/app_store_team_id** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/app_store_team_id>`

Apple 團隊 ID，唯一的 10 字元的字串。要找到你的團隊 ID，請檢查 Apple 開發者帳戶儀錶板中的“會員詳細資訊”部分，或程式碼簽章憑證的“組織單位”。見 `搜尋你的團隊 ID <https://developer.apple.com/cn/help/account/manage-your-team/locate-your-team-id>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/bundle_identifier:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/bundle_identifier** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/bundle_identifier>`

反向 DNS 格式的唯一套用程式識別字，只能包含字母數位字元（\ ``A-Z``\ 、\ ``a-z`` 和 ``0-9``\ ）、連字號（\ ``-``\ ）和句點（\ ``.``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/code_sign_identity_debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/code_sign_identity_debug** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/code_sign_identity_debug>`

用於除錯匯出的簽章身份的“全名”、“通用名”或 SHA-1 雜湊值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/code_sign_identity_release:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/code_sign_identity_release** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/code_sign_identity_release>`

用於發行匯出的簽章身份的“全名”、“通用名”或 SHA-1 雜湊值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/delete_old_export_files_unconditionally:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/delete_old_export_files_unconditionally** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/delete_old_export_files_unconditionally>`

如果為 ``true``\ ，則匯出時將無條件刪除匯出目標目錄中已有的“專案名稱”和“專案名稱.xcodeproj”。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/export_method_debug:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_method_debug** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/export_method_debug>`

套用程式分發目標（除錯匯出）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/export_method_release:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_method_release** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/export_method_release>`

套用程式分發目標（發行匯出）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/export_project_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/export_project_only** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/export_project_only>`

如果 ``true``\ ，匯出 iOS專案檔案而不建構 XCArchive 或 ``.ipa`` 檔案。如果 ``false``\ ，匯出iOS 專案檔案並同時建置XCArchive 和\ ``.ipa`` 檔案。當Godot 與Fastlane 或其他建置管道結合使用時，您可能需要將其設為\ ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/icon_interpolation>`

用於調整套用程式圖示大小的插值方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/min_visionos_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/min_visionos_version** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/min_visionos_version>`

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/provisioning_profile_specifier_debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/provisioning_profile_specifier_debug** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/provisioning_profile_specifier_debug>`

預置描述檔案的名稱。設定除錯時 XCode 使用的 PROVISIONING_PROFILE_SPECIFIER。\ `用於手動描述 <https://developer.apple.com/documentation/xcode/build-settings-reference#Provisioning-Profile>`__\ 。

可以使用環境變數 ``GODOT_APPLE_PLATFORM_PROFILE_SPECIFIER_DEBUG`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/provisioning_profile_specifier_release:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/provisioning_profile_specifier_release** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/provisioning_profile_specifier_release>`

預置描述檔案的名稱。設定發佈時 XCode 使用的 PROVISIONING_PROFILE_SPECIFIER。\ `用於手動描述 <https://developer.apple.com/documentation/xcode/build-settings-reference#Provisioning-Profile>`__\ 。

可以使用環境變數 ``GODOT_APPLE_PLATFORM_PROFILE_SPECIFIER_RELEASE`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/provisioning_profile_uuid_debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/provisioning_profile_uuid_debug** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/provisioning_profile_uuid_debug>`

預置描述檔案的 UUID。如果留空，則 Xcode 會自動下載或建立一個預置描述檔案。見\ `編輯、下載或刪除預置描述檔案 <https://developer.apple.com/cn/help/account/manage-profiles/edit-download-or-delete-profiles/>`__\ 。

可以使用環境變數 ``GODOT_APPLE_PLATFORM_PROVISIONING_PROFILE_UUID_DEBUG`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/provisioning_profile_uuid_release:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/provisioning_profile_uuid_release** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/provisioning_profile_uuid_release>`

預置描述檔案的 UUID。如果留空，則 Xcode 會自動下載或建立一個預置描述檔案。見\ `編輯、下載或刪除預置描述檔案 <https://developer.apple.com/cn/help/account/manage-profiles/edit-download-or-delete-profiles/>`__\ 。

可以使用環境變數 ``GODOT_APPLE_PLATFORM_PROVISIONING_PROFILE_UUID_RELEASE`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/short_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/short_version** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/short_version>`

使用者可見的應用程式版本，只能包含數字字元（\ ``0-9``\ ）和句點（\ ``.``\ ）。如果留空，則回退到 :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`\ 。

\ **注意：**\ 生成的 Xcode 專案的 *Identity > Version* 會使用這個值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/signature:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/signature** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/signature>`

特定於該組合包的四字元建立者碼。可選的。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_application/version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/version** :ref:`🔗<class_EditorExportPlatformVisionOS_property_application/version>`

機器可讀的應用程式版本，採用 ``major.minor.patch`` 格式，只能包含數字字元（\ ``0-9``\ ）和句點（\ ``.``\ ）。該值必須在被推送到 App Store 的每個新版本中遞增。如果留空，則回退到 :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`\ 。

\ **注意：**\ 生成的 Xcode 專案的 *Identity > Build* 會使用這個值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_architectures/arm64:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **architectures/arm64** :ref:`🔗<class_EditorExportPlatformVisionOS_property_architectures/arm64>`

如果為 ``true``\ ，\ ``arm64`` 二進位檔案將包含在匯出的專案中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_capabilities/access_wifi:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **capabilities/access_wifi** :ref:`🔗<class_EditorExportPlatformVisionOS_property_capabilities/access_wifi>`

如果為 ``true``\ ，則啟用與 Wi-Fi 存取相關的網路功能。見 `App 所需的裝置功能 <https://developer.apple.com/cn/support/required-device-capabilities/>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_capabilities/additional:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **capabilities/additional** :ref:`🔗<class_EditorExportPlatformVisionOS_property_capabilities/additional>`

新增到 ``Info.plist`` 檔案的 ``UIRequiredDeviceCapabilities`` 陣列中的額外資料。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_capabilities/performance_a12:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **capabilities/performance_a12** :ref:`🔗<class_EditorExportPlatformVisionOS_property_capabilities/performance_a12>`

需要 A12 Bionic 及更高版本芯片（支援所有 Vulkan 渲染器功能的裝置）的圖形效能和功能。

啟用該選項會將支援的裝置限制為：iPhone XS、iPhone XR、iPad Mini（第 5 代）、iPad Air（第 3 代）、iPad（第 8 代）及更新版本。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_capabilities/performance_gaming_tier:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **capabilities/performance_gaming_tier** :ref:`🔗<class_EditorExportPlatformVisionOS_property_capabilities/performance_gaming_tier>`

需要 A17 Pro 及更高版本芯片的圖形效能和功能。

啟用該選項將支援的裝置限制為：iPhone 15 Pro 及更新版本。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformVisionOS_property_custom_template/debug>`

到自訂匯出範本的路徑。如果留空，則預設範本將被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformVisionOS_property_custom_template/release>`

到自訂匯出範本的路徑。如果留空，則預設範本將被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_entitlements/additional:

.. rst-class:: classref-property

:ref:`String<class_String>` **entitlements/additional** :ref:`🔗<class_EditorExportPlatformVisionOS_property_entitlements/additional>`

新增到 `.entitlements <https://developer.apple.com/documentation/bundleresources/entitlements>`__ 檔案的根 ``<dict>`` 部分的其他資料。該值應該是帶有鍵值元素對的 XML 部分，例如：

.. code:: text

    <key>key_name</key>
    <string>value</string>

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_entitlements/game_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **entitlements/game_center** :ref:`🔗<class_EditorExportPlatformVisionOS_property_entitlements/game_center>`

如果為 ``true``\ ，則會允許存取 Game Center 功能。見 `com.apple.developer.game-center <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_game-center>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_entitlements/increased_memory_limit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **entitlements/increased_memory_limit** :ref:`🔗<class_EditorExportPlatformVisionOS_property_entitlements/increased_memory_limit>`

如果為 ``true``\ ，則提示該應用在更高的記憶體限制下可能表現更好。見 `com.apple.developer.kernel.increased-memory-limit <https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_kernel_increased-memory-limit>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_entitlements/push_notifications:

.. rst-class:: classref-property

:ref:`String<class_String>` **entitlements/push_notifications** :ref:`🔗<class_EditorExportPlatformVisionOS_property_entitlements/push_notifications>`

Apple 推送通知服務的環境。見 `aps-environment <https://developer.apple.com/documentation/bundleresources/entitlements/aps-environment>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024:

.. rst-class:: classref-property

:ref:`String<class_String>` **icons/icon_1024x1024** :ref:`🔗<class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024>`

用於生成其他圖示的基礎應用程式圖示。如果留空則會回退到 :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`\ 。見 `App 圖示 <https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024_dark:

.. rst-class:: classref-property

:ref:`String<class_String>` **icons/icon_1024x1024_dark** :ref:`🔗<class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024_dark>`

用於生成其他圖示的基礎應用程式圖示，暗色版本。見 `App 圖示 <https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024_tinted:

.. rst-class:: classref-property

:ref:`String<class_String>` **icons/icon_1024x1024_tinted** :ref:`🔗<class_EditorExportPlatformVisionOS_property_icons/icon_1024x1024_tinted>`

用於生成其他圖示的基礎應用程式圖示，著色版本。見 `App 圖示 <https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_modules/camera:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modules/camera** :ref:`🔗<class_EditorExportPlatformVisionOS_property_modules/camera>`

如果設為 ``true``\ ，則會將 :ref:`CameraServer<class_CameraServer>`\ （相機服務）模組新增到匯出的專案中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/active_keyboard_access_reasons:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/active_keyboard_access_reasons** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/active_keyboard_access_reasons>`

你的應用使用活動鍵盤 API 的原因。請參閱 `描述所需原因 API 的使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/camera_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/camera_usage_description** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/camera_usage_description>`

請求存取裝置相機時顯示的（英文）訊息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/camera_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/camera_usage_description_localized** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/camera_usage_description_localized>`

請求存取裝置相機時顯示的（當地語系化）訊息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/collected>`

表示你的應用是否會收集廣告資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/advertising_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/collection_purposes>`

你的應用收集廣告資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/linked_to_user>`

表示你的應用是否會將廣告資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/advertising_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/advertising_data/used_for_tracking>`

表示你的應用是否會將廣告資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/collected>`

表示你的應用是否會收集音訊資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/audio_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/collection_purposes>`

你的應用收集音訊資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/linked_to_user>`

表示你的應用是否會將音訊資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/audio_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/audio_data/used_for_tracking>`

表示你的應用是否會將音訊資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/collected>`

表示你的應用是否會收集瀏覽歷史。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/browsing_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/collection_purposes>`

你的應用收集瀏覽歷史記錄的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/linked_to_user>`

表示你的應用是否會將瀏覽歷史連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/browsing_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/browsing_history/used_for_tracking>`

表示你的應用是否會將瀏覽歷史用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/collected>`

表示你的應用是否會收集粗略位置資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/coarse_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/collection_purposes>`

你的應用收集粗略位置資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/linked_to_user>`

表示你的應用是否會將粗略位置資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/coarse_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/coarse_location/used_for_tracking>`

表示你的應用是否會將粗略位置資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/collected>`

表示你的應用程式是否收集聯繫人。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/contacts/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/collection_purposes>`

你的應用收集聯繫人的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/linked_to_user>`

表示你的應用是否會將通訊錄連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/contacts/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/contacts/used_for_tracking>`

表示你的應用是否會將通訊錄用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/collected>`

表示你的應用是否會收集崩潰資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/crash_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/collection_purposes>`

你的應用收集崩潰資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/linked_to_user>`

表示你的應用是否會將崩潰資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/crash_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/crash_data/used_for_tracking>`

表示你的應用是否會將崩潰資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/collected>`

表示你的應用程式是否收集信用資訊。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/credit_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/collection_purposes>`

你的應用收集信用資訊的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/linked_to_user>`

表示你的應用是否會將信用資訊連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/credit_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/credit_info/used_for_tracking>`

表示你的應用是否會將信用資訊用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/collected>`

表示你的應用是否會收集客戶支援資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/customer_support/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/collection_purposes>`

你的應用程式收集客戶支援資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/linked_to_user>`

表示你的應用程式是否將客戶支援資料連結到使用者身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/customer_support/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/customer_support/used_for_tracking>`

表示你的應用是否使用客戶支援資料進行追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/collected>`

表示你的應用是否會收集裝置 ID。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/device_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/collection_purposes>`

你的應用收集裝置 ID 的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/linked_to_user>`

表示你的應用是否會將裝置 ID 連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/device_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/device_id/used_for_tracking>`

表示你的應用是否會將裝置 ID 連結用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/collected>`

表示你的應用是否會收集電子郵件位址。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/email_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/collection_purposes>`

你的應用程式收集電子郵件位址的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/linked_to_user>`

表示你的應用是否會將電子郵件位址連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/email_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/email_address/used_for_tracking>`

表示你的應用是否會將電子郵件位址用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/collected>`

表示你的應用是否會收集電子郵件或短信。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/emails_or_text_messages/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/collection_purposes>`

你的應用程式收集電子郵件或短信的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/linked_to_user>`

表示你的應用是否會將電子郵件或短信連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/emails_or_text_messages/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/emails_or_text_messages/used_for_tracking>`

表示你的應用是否會將電子郵件或短信用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/collected>`

表示你的應用是否會收集環境掃描資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/environment_scanning/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/collection_purposes>`

你的應用程式收集環境掃描資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/linked_to_user>`

表示你的應用是否會將環境掃描資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/environment_scanning/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/environment_scanning/used_for_tracking>`

表示你的應用是否會將環境掃描資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/collected>`

表示你的應用是否會收集健身和鍛鍊資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/fitness/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/collection_purposes>`

你的應用收集健身和鍛鍊資料的原因。見\ `《在隱私清單中描述資料用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/linked_to_user>`

表示你的應用是否會將健身和鍛鍊資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/fitness/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/fitness/used_for_tracking>`

表示你的應用是否會將健身和鍛鍊資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/collected>`

表示你的應用是否會收集遊戲內容。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/gameplay_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/collection_purposes>`

你的應用程式收集遊戲內容的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/linked_to_user>`

表示你的應用是否會將遊戲內容連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/gameplay_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/gameplay_content/used_for_tracking>`

表示你的應用是否會將遊戲內容用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/collected>`

表示你的應用是否會收集使用者的手部結構和手部移動。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/hands/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/collection_purposes>`

你的應用收集使用者的手部結構和手部移動的原因。見\ `《在隱私清單中描述資料用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/linked_to_user>`

表示你的應用是否會將使用者的手部結構和手部移動連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/hands/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/hands/used_for_tracking>`

表示你的應用是否會將使用者的手部結構和手部移動用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/collected>`

表示你的應用是否會收集使用者的頭部移動。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/head/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/collection_purposes>`

你的應用程式收集使用者頭部運動的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/linked_to_user>`

表示你的應用是否會將使用者的頭部移動連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/head/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/head/used_for_tracking>`

表示你的應用是否會將使用者的頭部移動用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/collected>`

表示你的應用是否會收集健康和醫學資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/health/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/collection_purposes>`

你的應用收集健康和醫學資料的原因。見\ `《在隱私清單中描述資料用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/linked_to_user>`

表示你的應用是否會將健康和醫學資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/health/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/health/used_for_tracking>`

表示你的應用是否會將健康和醫學資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/collected>`

表示你的應用是否會收集使用者的姓名。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/name/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/collection_purposes>`

你的應用程式收集使用者姓名的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/linked_to_user>`

表示你的應用是否會將使用者的姓名連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/name/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/name/used_for_tracking>`

表示你的應用是否會將使用者的姓名用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/collected>`

表示你的應用程式是否收集任何其他聯繫資訊。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_contact_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/collection_purposes>`

你的應用收程式集任何其他聯繫資訊的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/linked_to_user>`

表示你的應用是否會將任何其他聯繫資訊連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_contact_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_contact_info/used_for_tracking>`

表示你的應用是否會將任何其他聯繫資訊用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/collected>`

表示你的應用是否會收集任何其它資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_data_types/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/collection_purposes>`

你的應用程式收集任何其他資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/linked_to_user>`

表示你的應用是否會將任何其它資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_data_types/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_data_types/used_for_tracking>`

表示你的應用是否會將任何其它資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/collected>`

表示你的應用是否會收集任何其它診斷資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_diagnostic_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/collection_purposes>`

你的應用程式收集任何其他診斷資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/linked_to_user>`

表示你的應用是否會將任何其它診斷資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_diagnostic_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_diagnostic_data/used_for_tracking>`

表示你的應用是否會將任何其它診斷資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/collected>`

表示你的應用程式是否收集任何其他財務資訊。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_financial_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/collection_purposes>`

你的應用程式收集任何其他財務資訊的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/linked_to_user>`

表示你的應用是否會將任何其它財務資訊連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_financial_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_financial_info/used_for_tracking>`

表示你的應用是否會將任何其它財務資訊用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/collected>`

表示你的應用是否會收集任何其它使用資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_usage_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/collection_purposes>`

你的應用程式收集任何其他使用資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/linked_to_user>`

表示你的應用是否會將任何其它使用資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_usage_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_usage_data/used_for_tracking>`

表示你的應用是否會將任何其它使用資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/collected>`

表示你的應用是否會收集任何其它使用者生成內容。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/other_user_content/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/collection_purposes>`

你的應用程式收集任何其他使用者生成內容的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/linked_to_user>`

表示你的應用是否會將任何其它使用者生成內容連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/other_user_content/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/other_user_content/used_for_tracking>`

表示你的應用是否會將任何其它使用者生成內容用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/collected>`

表示你的應用程式是否收集支付資訊。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/payment_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/collection_purposes>`

你的應用程式收集支付資訊的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/linked_to_user>`

表示你的應用是否會將支付資訊連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/payment_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/payment_info/used_for_tracking>`

表示你的應用是否會將支付資訊用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/collected>`

表示你的應用程式是否收集效能資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/performance_data/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/collection_purposes>`

你的應用收集效能資料的原因。見\ `《在隱私清單中描述資料用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/linked_to_user>`

表示你的應用是否會將效能資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/performance_data/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/performance_data/used_for_tracking>`

表示你的應用是否會將效能資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/collected>`

表示你的應用是否會收集電話號碼。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/phone_number/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/collection_purposes>`

你的應用程式收集電話號碼的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/linked_to_user>`

表示你的應用是否會將電話號碼連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/phone_number/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/phone_number/used_for_tracking>`

表示你的應用是否會將電話號碼用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/collected>`

表示你的應用程式是否收集照片或影片。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/photos_or_videos/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/collection_purposes>`

你的應用程式收集照片或影片的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/linked_to_user>`

表示你的應用是否會將照片或影片連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/photos_or_videos/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/photos_or_videos/used_for_tracking>`

表示你的應用是否會將照片或影片用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/collected>`

表示你的應用是否會收集實際住址。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/physical_address/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/collection_purposes>`

你的應用收集實際住址的原因。見\ `《在隱私清單中描述資料用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/linked_to_user>`

表示你的應用是否會將實際住址連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/physical_address/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/physical_address/used_for_tracking>`

表示你的應用是否會將實際住址用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/collected>`

表示你的應用是否會收集精確位置資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/precise_location/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/collection_purposes>`

你的應用程式收集精確位置資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/linked_to_user>`

表示你的應用是否會將精確位置資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/precise_location/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/precise_location/used_for_tracking>`

表示你的應用是否會將精確位置資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/collected>`

表示你的應用是否會收集產品互動資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/product_interaction/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/collection_purposes>`

你的應用程式收集產品互動資料的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/linked_to_user>`

表示你的應用是否會將產品互動資料連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/product_interaction/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/product_interaction/used_for_tracking>`

表示你的應用是否會將產品互動資料用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/collected>`

表示你的應用是否會收集購買歷史。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/purchase_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/collection_purposes>`

你的應用收集購買歷史的原因。見\ `《在隱私清單中描述資料用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/linked_to_user>`

表示你的應用是否會將購買歷史連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/purchase_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/purchase_history/used_for_tracking>`

表示你的應用是否會將購買歷史用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/collected>`

表示你的應用程式是否收集搜尋歷史記錄。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/search_history/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/collection_purposes>`

你的應用程式收集搜尋歷史的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/linked_to_user>`

表示你的應用是否會將搜尋歷史連結到使用者的身份。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/search_history/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/search_history/used_for_tracking>`

表示你的應用是否會將搜尋歷史用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/collected>`

表示你的應用程式是否收集敏感的使用者資訊。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/sensitive_info/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/collection_purposes>`

你的應用程式收集敏感使用者資訊的原因。請參閱 `描述隱私清單中的資料使用 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/linked_to_user>`

表示你的 app 是否會將敏感使用者資訊連結到使用者的身份上。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/sensitive_info/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/sensitive_info/used_for_tracking>`

表示你的 app 是否會將敏感使用者資訊用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/collected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/collected** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/collected>`

表示你的 app 是否會收集使用者 ID。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/collection_purposes:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/collected_data/user_id/collection_purposes** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/collection_purposes>`

你的 app 收集使用者 ID 的原因。見\ `《在隱私清單中描述資料用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_data_use_in_privacy_manifests>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/linked_to_user:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/linked_to_user** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/linked_to_user>`

表示你的 app 是否會將使用者 ID 連結到使用者的身份上。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/used_for_tracking:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/collected_data/user_id/used_for_tracking** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/collected_data/user_id/used_for_tracking>`

表示你的 app 是否會將使用者 ID 用於追蹤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/disk_space_access_reasons:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/disk_space_access_reasons** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/disk_space_access_reasons>`

你的 app 使用磁碟空間清理 API 的原因。見\ `《描述使用需要原因的 API 的用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/file_timestamp_access_reasons:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/file_timestamp_access_reasons** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/file_timestamp_access_reasons>`

你的 app 使用檔案時間戳記/中繼資料 API 的原因。見\ `《描述使用需要原因的 API 的用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/microphone_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/microphone_usage_description** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/microphone_usage_description>`

請求存取裝置麥克風時顯示的（英文）訊息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/microphone_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/microphone_usage_description_localized** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/microphone_usage_description_localized>`

請求存取裝置麥克風時顯示的（當地語系化）訊息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/photolibrary_usage_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **privacy/photolibrary_usage_description** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/photolibrary_usage_description>`

請求存取使用者照片圖庫時顯示的（英文）訊息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/photolibrary_usage_description_localized:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **privacy/photolibrary_usage_description_localized** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/photolibrary_usage_description_localized>`

請求存取使用者照片圖庫時顯示的（當地語系化）訊息。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/system_boot_time_access_reasons:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/system_boot_time_access_reasons** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/system_boot_time_access_reasons>`

你的 app 使用系統啟動時間/絕對時間 API 的原因。見\ `《描述使用需要原因的 API 的用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/tracking_domains:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **privacy/tracking_domains** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/tracking_domains>`

你的應用程式連接到的參與追蹤的互連網域清單。請參閱 `隱私清單檔案 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/tracking_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **privacy/tracking_enabled** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/tracking_enabled>`

表示你的應用程式是否使用資料進行追蹤。請參閱 `隱私清單檔案 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_privacy/user_defaults_access_reasons:

.. rst-class:: classref-property

:ref:`int<class_int>` **privacy/user_defaults_access_reasons** :ref:`🔗<class_EditorExportPlatformVisionOS_property_privacy/user_defaults_access_reasons>`

你的 app 使用使用者預設值 API 的原因。見\ `《描述使用需要原因的 API 的用途》 <https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformVisionOS_property_shader_baker/enabled>`

如果為 ``true``\ ，則著色器將被編譯並嵌入到應用程式中。此選項僅當使用 Forward+ 或 Mobile 渲染器時才受支援。

\ **注意：**\ 匯出為專用伺服器時，由於不執行渲染，著色器烘焙器將始終被停用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_user_data/accessible_from_files_app:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **user_data/accessible_from_files_app** :ref:`🔗<class_EditorExportPlatformVisionOS_property_user_data/accessible_from_files_app>`

如果為 ``true``\ ，套用的“Documents”資料夾可以在“檔”套用中存取。見 `LSSupportsOpeningDocumentsInPlace <https://developer.apple.com/documentation/bundleresources/information_property_list/lssupportsopeningdocumentsinplace>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformVisionOS_property_user_data/accessible_from_itunes_sharing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **user_data/accessible_from_itunes_sharing** :ref:`🔗<class_EditorExportPlatformVisionOS_property_user_data/accessible_from_itunes_sharing>`

如果為 ``true``\ ，套用的“Documents”資料夾可以在 iTunes 檔共用中訪問。見 `UIFileSharingEnabled <https://developer.apple.com/documentation/bundleresources/information_property_list/uifilesharingenabled>`__\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
