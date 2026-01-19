:github_url: hide

.. _class_EditorExportPlatformExtension:

EditorExportPlatformExtension
=============================

**Наследует:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовый класс для пользовательских реализаций :ref:`EditorExportPlatform<class_EditorExportPlatform>` (плагинов).

.. rst-class:: classref-introduction-group

Описание
----------------

Внешние реализации :ref:`EditorExportPlatform<class_EditorExportPlatform>` должны наследоваться от этого класса.

Чтобы использовать :ref:`EditorExportPlatform<class_EditorExportPlatform>`, сначала зарегистрируйте его с помощью метода :ref:`EditorPlugin.add_export_platform()<class_EditorPlugin_method_add_export_platform>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_can_export<class_EditorExportPlatformExtension_private_method__can_export>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                                                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_cleanup<class_EditorExportPlatformExtension_private_method__cleanup>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_pack<class_EditorExportPlatformExtension_private_method__export_pack>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_pack_patch<class_EditorExportPlatformExtension_private_method__export_pack_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_project<class_EditorExportPlatformExtension_private_method__export_project>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |required|                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_zip<class_EditorExportPlatformExtension_private_method__export_zip>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_zip_patch<class_EditorExportPlatformExtension_private_method__export_zip_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|   |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_binary_extensions<class_EditorExportPlatformExtension_private_method__get_binary_extensions>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_debug_protocol<class_EditorExportPlatformExtension_private_method__get_debug_protocol>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_device_architecture<class_EditorExportPlatformExtension_private_method__get_device_architecture>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_get_export_option_visibility<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_export_option_warning<class_EditorExportPlatformExtension_private_method__get_export_option_warning>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_export_options<class_EditorExportPlatformExtension_private_method__get_export_options>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_logo<class_EditorExportPlatformExtension_private_method__get_logo>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_name<class_EditorExportPlatformExtension_private_method__get_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_option_icon<class_EditorExportPlatformExtension_private_method__get_option_icon>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_option_label<class_EditorExportPlatformExtension_private_method__get_option_label>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_option_tooltip<class_EditorExportPlatformExtension_private_method__get_option_tooltip>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_options_count<class_EditorExportPlatformExtension_private_method__get_options_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_options_tooltip<class_EditorExportPlatformExtension_private_method__get_options_tooltip>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_os_name<class_EditorExportPlatformExtension_private_method__get_os_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_platform_features<class_EditorExportPlatformExtension_private_method__get_platform_features>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_preset_features<class_EditorExportPlatformExtension_private_method__get_preset_features>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_run_icon<class_EditorExportPlatformExtension_private_method__get_run_icon>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_valid_export_configuration<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |required| |const|                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_valid_project_configuration<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                   |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_initialize<class_EditorExportPlatformExtension_private_method__initialize>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_executable<class_EditorExportPlatformExtension_private_method__is_executable>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_poll_export<class_EditorExportPlatformExtension_private_method__poll_export>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_run<class_EditorExportPlatformExtension_private_method__run>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, device\: :ref:`int<class_int>`, debug_flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_should_update_export_options<class_EditorExportPlatformExtension_private_method__should_update_export_options>`\ (\ ) |virtual|                                                                                                                                                                                                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_config_error<class_EditorExportPlatformExtension_method_get_config_error>`\ (\ ) |const|                                                                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_config_missing_templates<class_EditorExportPlatformExtension_method_get_config_missing_templates>`\ (\ ) |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_config_error<class_EditorExportPlatformExtension_method_set_config_error>`\ (\ error_text\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_config_missing_templates<class_EditorExportPlatformExtension_method_set_config_missing_templates>`\ (\ missing_templates\: :ref:`bool<class_bool>`\ ) |const|                                                                                                                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorExportPlatformExtension_private_method__can_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_export**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__can_export>`

Возвращает ``true``, если указанный ``preset`` действителен и может быть экспортирован. Используйте :ref:`set_config_error()<class_EditorExportPlatformExtension_method_set_config_error>` и :ref:`set_config_missing_templates()<class_EditorExportPlatformExtension_method_set_config_missing_templates>` для установки подробностей ошибки.

Обычные реализации вызывают :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` и :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`, чтобы определить, возможен ли экспорт.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__cleanup:

.. rst-class:: classref-method

|void| **_cleanup**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__cleanup>`

Вызывается редактором перед отменой регистрации платформы.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack>`

Создает архив PCK в ``path`` для указанного ``preset``. 

Этот метод вызывается при нажатии кнопки «Экспорт PCK/ZIP» в диалоговом окне экспорта, при отключенном «Экспортировать как патч», и выборе PCK в качестве типа файла.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack_patch>`

Создает архив патча PCK в ``path`` для указанного ``preset``, содержащий только файлы, которые были изменены с момента последнего патча.

Этот метод вызывается при нажатии кнопки "Экспорт PCK/ZIP" в диалоговом окне экспорта с включенным "Экспортировать как патч" и выбором PCK в качестве типа файла.

\ **Примечание:** Патчи, предоставленные в ``patches``, уже были загружены при вызове этого метода и просто предоставляются в качестве контекста. Если пусто, вместо этого загружаются патчи, определенные в экспортном пресете.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_project>`

Создает полный проект в ``path`` для указанного ``preset``.

Этот метод вызывается при нажатии кнопки «Экспорт» в диалоговом окне экспорта.

Эта реализация метода может вызывать :ref:`EditorExportPlatform.save_pack()<class_EditorExportPlatform_method_save_pack>` или :ref:`EditorExportPlatform.save_zip()<class_EditorExportPlatform_method_save_zip>` для использования процесса экспорта PCK/ZIP по умолчанию или вызывать :ref:`EditorExportPlatform.export_project_files()<class_EditorExportPlatform_method_export_project_files>` и реализовывать пользовательский обратный вызов для обработки каждого экспортированного файла.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip>`

Создайте ZIP-архив в ``path`` для указанного ``preset``. 

Этот метод вызывается при нажатии кнопки «Экспорт PCK/ZIP» в диалоговом окне экспорта, при отключенном «Экспортировать как патч», и выборе ZIP в качестве типа файла.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip_patch>`

Создайте архив ZIP в ``path`` для указанного ``preset``, содержащий только файлы, которые были изменены с момента последнего исправления.

Этот метод вызывается при нажатии кнопки «Экспорт PCK/ZIP» в диалоговом окне экспорта с включенным «Экспортировать как Патч» и выбором ZIP в качестве типа файла.

\ **Примечание:** Патчи, предоставленные в ``patches``, уже были загружены при вызове этого метода и просто предоставляются в качестве контекста. Если пусто, вместо этого загружаются патчи, определенные в экспортном пресете.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_binary_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_binary_extensions**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_binary_extensions>`

Возвращает массив поддерживаемых двоичных расширений для полного экспорта проекта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_debug_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_debug_protocol**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_debug_protocol>`

Возвращает протокол, используемый для удаленной отладки. Реализация по умолчанию возвращает ``tcp://``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_device_architecture:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_device_architecture**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_device_architecture>`

Возвращает архитектуру устройства для развертывания в один клик.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`

Проверяет ``option`` и возвращает видимость для указанного ``preset``. Реализация по умолчанию возвращает ``true`` для всех параметров.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_warning>`

Проверяет ``option`` и возвращает предупреждающее сообщение для указанного ``preset``. Реализация по умолчанию возвращает пустую строку для всех параметров.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_options>`

Возвращает список свойств в виде :ref:`Array<class_Array>` словарей. Каждый :ref:`Dictionary<class_Dictionary>` должен содержать как минимум записи ``name: StringName`` и ``type: Variant.Type``.

Кроме того, поддерживаются следующие ключи:

- ``hint: PropertyHint``\ 

- ``hint_string: String``\ 

- ``usage: PropertyUsageFlags``\ 

- ``class_name: StringName``\ 

- ``default_value: Variant``, значение свойства по умолчанию.

- ``update_visibility: bool``, если установлено значение ``true``, :ref:`_get_export_option_visibility()<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>` вызывается для каждого свойства при изменении этого свойства.

- ``required: bool``, если установлено значение ``true``, предупреждения этого свойства являются критическими и должны быть разрешены, чтобы сделать экспорт возможным. Это значение является подсказкой для реализации :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` и не используется движком напрямую.

См. также :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_logo:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_logo**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_logo>`

Возвращает логотип платформы, отображаемый в диалоговом окне экспорта. Размер логотипа должен быть 32×32 пикселя с поправкой на текущий масштаб редактора (см. :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_name>`

Возвращает имя экспортной платформы.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_option_icon**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_icon>`

Возвращает значок элемента для указанного ``device`` в меню быстрого развёртывания. Размер значка должен быть 16×16 пикселей с учётом текущего масштаба редактора (см. :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_label**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_label>`

Возвращает метку элемента меню «Развернуть одним щелчком» для указанного ``device``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_tooltip**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_tooltip>`

Возвращает всплывающую подсказку элемента меню развертывания одним щелчком для указанного ``device``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_options_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_count>`

Возвращает количество устройств (или других параметров), доступных в меню развертывания одним щелчком мыши.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_options_tooltip**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_tooltip>`

Возвращает подсказку кнопки развертывания меню одним щелчком.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_os_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_os_name>`

Возвращает имя целевой ОС.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_platform_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_platform_features**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_platform_features>`

Возвращает массив специфичных для платформы функций и возможностей.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_preset_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_preset_features**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_preset_features>`

Возвращает массив специфичных для платформы функций и возможностей для указанного ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_run_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_run_icon**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_run_icon>`

Возвращает значок кнопки быстрого развёртывания меню. Размер значка должен быть 16×16 пикселей с учётом текущего масштаба редактора (см. :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_export_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_export_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`

Возвращает ``true``, если конфигурация экспорта действительна.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_project_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_project_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`

Возвращает ``true``, если конфигурация проекта действительна.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__initialize>`

Инициализирует плагин. Вызывается редактором при регистрации платформы.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__is_executable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_executable**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__is_executable>`

Возвращает ``true``, если указанный файл является допустимым исполняемым файлом (собственным исполняемым файлом или скриптом) для целевой платформы.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__poll_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_poll_export**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__poll_export>`

Возвращает ``true``, если параметры развертывания в один клик изменены и интерфейс редактора необходимо обновить.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__run:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_run**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, device\: :ref:`int<class_int>`, debug_flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__run>`

Этот метод вызывается, когда выбрана опция меню развертывания одним щелчком ``device``. 

Реализация должна экспортировать проект во временное местоположение, загрузить и запустить его на определенном ``device`` или выполнить другое действие, связанное с элементом меню.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__should_update_export_options:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_should_update_export_options**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__should_update_export_options>`

Возвращает ``true``, если список параметров экспорта изменен и предустановки должны быть обновлены.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_error:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_error**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_error>`

Возвращает текст сообщения об ошибке текущей конфигурации. Этот метод следует вызывать только из реализаций :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` или :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_missing_templates:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_config_missing_templates**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_missing_templates>`

Возвращает ``true``, если в текущей конфигурации отсутствуют шаблоны экспорта. Этот метод следует вызывать только из реализаций :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` или :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_error:

.. rst-class:: classref-method

|void| **set_config_error**\ (\ error_text\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_error>`

Устанавливает текст сообщения об ошибке текущей конфигурации. Этот метод следует вызывать только из реализаций :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` или :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_missing_templates:

.. rst-class:: classref-method

|void| **set_config_missing_templates**\ (\ missing_templates\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_missing_templates>`

Установите ``true``, если в текущей конфигурации отсутствуют шаблоны экспорта. Этот метод следует вызывать только из реализаций :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` или :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
