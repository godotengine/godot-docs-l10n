:github_url: hide

.. _class_EditorExportPlatform:

EditorExportPlatform
====================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`EditorExportPlatformAndroid<class_EditorExportPlatformAndroid>`, :ref:`EditorExportPlatformAppleEmbedded<class_EditorExportPlatformAppleEmbedded>`, :ref:`EditorExportPlatformExtension<class_EditorExportPlatformExtension>`, :ref:`EditorExportPlatformMacOS<class_EditorExportPlatformMacOS>`, :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>`, :ref:`EditorExportPlatformWeb<class_EditorExportPlatformWeb>`

Определяет поддерживаемую платформу экспорта и внутренне обеспечивает функциональность экспорта на эту платформу.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый ресурс, который обеспечивает функциональность экспорта сборки выпуска проекта на платформу из редактора. Сохраняет метаданные, специфичные для платформы, такие как имя и поддерживаемые функции платформы, и выполняет экспорт проектов, файлов PCK и файлов ZIP. Использует шаблон экспорта для платформы, предоставленный во время экспорта проекта.

Используется в скриптах :ref:`EditorExportPlugin<class_EditorExportPlugin>` для настройки платформенно-специфической настройки сцен и ресурсов. Подробнее см. :ref:`EditorExportPlugin._begin_customize_scenes()<class_EditorExportPlugin_private_method__begin_customize_scenes>` и :ref:`EditorExportPlugin._begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`add_message<class_EditorExportPlatform_method_add_message>`\ (\ type\: :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>`, category\: :ref:`String<class_String>`, message\: :ref:`String<class_String>`\ )                                                                                                                                                         |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`clear_messages<class_EditorExportPlatform_method_clear_messages>`\ (\ )                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorExportPreset<class_EditorExportPreset>`                   | :ref:`create_preset<class_EditorExportPlatform_method_create_preset>`\ (\ )                                                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_pack<class_EditorExportPlatform_method_export_pack>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ )                                                                                                |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_pack_patch<class_EditorExportPlatform_method_export_pack_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_project<class_EditorExportPlatform_method_export_project>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ )                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_project_files<class_EditorExportPlatform_method_export_project_files>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, save_cb\: :ref:`Callable<class_Callable>`, shared_cb\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_zip<class_EditorExportPlatform_method_export_zip>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ )                                                                                                  |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_zip_patch<class_EditorExportPlatform_method_export_zip_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ )   |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`find_export_template<class_EditorExportPlatform_method_find_export_template>`\ (\ template_file_name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                     | :ref:`gen_export_flags<class_EditorExportPlatform_method_gen_export_flags>`\ (\ flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ )                                                                                                                                                                                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                             | :ref:`get_current_presets<class_EditorExportPlatform_method_get_current_presets>`\ (\ ) |const|                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                     | :ref:`get_forced_export_files<class_EditorExportPlatform_method_get_forced_export_files>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>` = null\ ) |static|                                                                                                                                                                                                                |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`get_internal_export_files<class_EditorExportPlatform_method_get_internal_export_files>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                           |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_message_category<class_EditorExportPlatform_method_get_message_category>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_message_count<class_EditorExportPlatform_method_get_message_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_message_text<class_EditorExportPlatform_method_get_message_text>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` | :ref:`get_message_type<class_EditorExportPlatform_method_get_message_type>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_os_name<class_EditorExportPlatform_method_get_os_name>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` | :ref:`get_worst_message_type<class_EditorExportPlatform_method_get_worst_message_type>`\ (\ ) |const|                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`save_pack<class_EditorExportPlatform_method_save_pack>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, embed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`save_pack_patch<class_EditorExportPlatform_method_save_pack_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ )                                                                                                                                                                           |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`save_zip<class_EditorExportPlatform_method_save_zip>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ )                                                                                                                                                                                         |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`save_zip_patch<class_EditorExportPlatform_method_save_zip_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ )                                                                                                                                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`ssh_push_to_remote<class_EditorExportPlatform_method_ssh_push_to_remote>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, scp_args\: :ref:`PackedStringArray<class_PackedStringArray>`, src_file\: :ref:`String<class_String>`, dst_file\: :ref:`String<class_String>`\ ) |const|                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`ssh_run_on_remote<class_EditorExportPlatform_method_ssh_run_on_remote>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_arg\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, output\: :ref:`Array<class_Array>` = [], port_fwd\: :ref:`int<class_int>` = -1\ ) |const|                                     |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`ssh_run_on_remote_no_wait<class_EditorExportPlatform_method_ssh_run_on_remote_no_wait>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_args\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, port_fwd\: :ref:`int<class_int>` = -1\ ) |const|                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_EditorExportPlatform_ExportMessageType:

.. rst-class:: classref-enumeration

enum **ExportMessageType**: :ref:`🔗<enum_EditorExportPlatform_ExportMessageType>`

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_NONE** = ``0``

Неверный тип сообщения, используемый в качестве значения по умолчанию, если тип не указан.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_INFO:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_INFO** = ``1``

Тип сообщения для информационных сообщений, не влияющих на экспорт.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_WARNING** = ``2``

Тип сообщения для предупреждающих сообщений, на которые следует обратить внимание, но которые все равно позволят завершить экспорт.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_ERROR** = ``3``

Тип сообщения для сообщений об ошибках, которые необходимо устранить и которые приводят к сбою экспорта.

.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPlatform_DebugFlags:

.. rst-class:: classref-enumeration

flags **DebugFlags**: :ref:`🔗<enum_EditorExportPlatform_DebugFlags>`

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_DUMB_CLIENT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_DUMB_CLIENT** = ``1``

Флаг устанавливается, если отлаживаемый удалённо проект должен использовать удалённую файловую систему. Если он установлен, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` добавит аргументы командной строки ``--remote-fs`` и ``--remote-fs-password`` (если определён :ref:`EditorSettings.filesystem/file_server/password<class_EditorSettings_property_filesystem/file_server/password>`) к возвращаемому списку.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG** = ``2``

Флаг устанавливается, если включена удалённая отладка. Если он установлен, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` добавит аргументы командной строки ``--remote-debug`` и ``--breakpoints`` (если точки останова выбраны в редакторе скриптов или добавлены плагином) к возвращаемому списку.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST** = ``4``

Флаг устанавливается, если удаленно отлаживаемый проект запущен на локальном хосте. Если установлено, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` будет использовать ``localhost`` вместо :ref:`EditorSettings.network/debug/remote_host<class_EditorSettings_property_network/debug/remote_host>` в качестве удаленного хоста отладчика.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_COLLISIONS:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_COLLISIONS** = ``8``

Флаг устанавливается, если включена опция удалённой отладки «Видимые формы столкновений». Если этот флаг установлен, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` добавит аргумент командной строки ``--debug-collisions`` к возвращаемому списку.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_NAVIGATION:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_NAVIGATION** = ``16``

Флаг устанавливается, если включена опция удалённой отладки «Видимая навигация». Если она установлена, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` добавит аргумент командной строки ``--debug-navigation`` к возвращаемому списку.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorExportPlatform_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ type\: :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>`, category\: :ref:`String<class_String>`, message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_add_message>`

Добавляет сообщение в журнал экспорта, которое будет отображено после завершения экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_clear_messages:

.. rst-class:: classref-method

|void| **clear_messages**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_clear_messages>`

Очищает журнал экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_create_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **create_preset**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_create_preset>`

Создайте новый пресет для этой платформы.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack>`

Создает архив PCK по адресу ``path`` для указанного ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack_patch>`

Создает архив патча PCK в ``path`` для указанного ``preset``, содержащий только файлы, которые были изменены с момента последнего патча.

\ **Примечание:** ``patches`` — это необязательное переопределение набора патчей, определенных в экспортном пресете. Если пусто, вместо него будут использоваться патчи, определенные в экспортном пресете.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project>`

Создает полный проект по адресу ``path`` для указанного ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project_files:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, save_cb\: :ref:`Callable<class_Callable>`, shared_cb\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project_files>`

Экспортирует файлы проекта для указанного пресета. Этот метод можно использовать для реализации пользовательского формата экспорта, отличного от PCK и ZIP. Один из обратных вызовов вызывается для каждого экспортированного файла.

\ ``save_cb`` вызывается для всех экспортированных файлов и имеет следующие аргументы: ``file_path: String``, ``file_data: PackedByteArray``, ``file_index: int``, ``file_count: int``, ``encryption_include_filters: PackedStringArray``, ``encryption_exclude_filters: PackedStringArray``, ``encryption_key: PackedByteArray``.

\ ``shared_cb`` вызывается для экспортированных собственных общих/статических библиотек и имеет следующие аргументы: ``file_path: String``, ``tags: PackedStringArray``, ``target_folder: String``.

\ **Примечание:** ``file_index`` и ``file_count`` предназначены только для отслеживания прогресса и не обязательно являются уникальными и точными.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip>`

Создать ZIP-архив по адресу ``path`` для указанного ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip_patch>`

Создайте архив ZIP патча в ``path`` для указанного ``preset``, содержащий только файлы, которые были изменены с момента последнего патча.

\ **Примечание:** ``patches`` — это необязательное переопределение набора патчей, определенных в экспортном пресете. Если пусто, вместо него будут использоваться патчи, определенные в экспортном пресете.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_find_export_template:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **find_export_template**\ (\ template_file_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_find_export_template>`

Находит шаблон экспорта для платформы и возвращает :ref:`Dictionary<class_Dictionary>` со следующими ключами: ``path: String`` и ``error: String``. Этот метод предоставляется для удобства, и пользовательские платформы экспорта не обязаны его использовать или хранить шаблоны экспорта так же, как официальные шаблоны.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_gen_export_flags:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **gen_export_flags**\ (\ flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) :ref:`🔗<class_EditorExportPlatform_method_gen_export_flags>`

Генерирует массив аргументов командной строки для шаблонов экспорта по умолчанию для флагов отладки и настроек редактора.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_current_presets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_current_presets**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_current_presets>`

Возвращает массив :ref:`EditorExportPreset<class_EditorExportPreset>` для этой платформы.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_forced_export_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_forced_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>` = null\ ) |static| :ref:`🔗<class_EditorExportPlatform_method_get_forced_export_files>`

Возвращает массив имен основных файлов, которые всегда следует экспортировать независимо от предустановленной конфигурации.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_internal_export_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_internal_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorExportPlatform_method_get_internal_export_files>`

Возвращает дополнительные файлы, которые всегда должны экспортироваться независимо от предустановленной конфигурации и не являются частью исходного кода проекта. Возвращаемый :ref:`Dictionary<class_Dictionary>` содержит ключи имени файла (:ref:`String<class_String>`) и соответствующие им необработанные данные (:ref:`PackedByteArray<class_PackedByteArray>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_category**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_category>`

Возвращает категорию сообщения для сообщения с заданным ``index``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_count>`

Возвращает количество сообщений в журнале экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_text**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_text>`

Возвращает текст сообщения с заданным ``index``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_message_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_type>`

Возвращает тип сообщения с заданным ``index``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_os_name**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_os_name>`

Возвращает имя экспортируемой операционной системы, обрабатываемой этим классом **EditorExportPlatform**, как понятную строку. Возможные возвращаемые значения: ``Windows``, ``Linux``, ``macOS``, ``Android``, ``iOS``, и ``Web``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_worst_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_worst_message_type**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_worst_message_type>`

Возвращает наиболее серьезный тип сообщения, присутствующий в данный момент в журнале экспорта.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, embed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack>`

Сохраняет архив PCK и возвращает :ref:`Dictionary<class_Dictionary>` со следующими ключами: ``result: Error``, ``so_files: Array`` (массив общих/статических объектов, содержащий словари со следующими ключами: ``path: String``, ``tags: PackedStringArray`` и ``target_folder: String``). 

Если ``embed`` равен ``true``, содержимое PCK добавляется в конец файла ``path`` и возвращаемый :ref:`Dictionary<class_Dictionary>` дополнительно включает следующие ключи: ``embedded_start: int`` (смещение внедренного PCK) и ``embedded_size: int`` (размер внедренного PCK).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack_patch>`

Сохраняет архив исправлений PCK и возвращает :ref:`Dictionary<class_Dictionary>` со следующими ключами: ``result: Error``, ``so_files: Array`` (массив общих/статических объектов, содержащий словари со следующими ключами: ``path: String``, ``tags: PackedStringArray`` и ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip>`

Сохраняет ZIP-архив и возвращает :ref:`Dictionary<class_Dictionary>` со следующими ключами: ``result: Error``, ``so_files: Array`` (массив общих/статических объектов, содержащий словари со следующими ключами: ``path: String``, ``tags: PackedStringArray`` и ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip_patch>`

Сохраняет архив ZIP с исправлениями и возвращает :ref:`Dictionary<class_Dictionary>` со следующими ключами: ``result: Error``, ``so_files: Array`` (массив общих/статических объектов, содержащий словари со следующими ключами: ``path: String``, ``tags: PackedStringArray`` и ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_push_to_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_push_to_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, scp_args\: :ref:`PackedStringArray<class_PackedStringArray>`, src_file\: :ref:`String<class_String>`, dst_file\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_push_to_remote>`

Загружает указанный файл по протоколу SCP на удаленный хост.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_run_on_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_arg\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, output\: :ref:`Array<class_Array>` = [], port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote>`

Выполняет указанную команду на удаленном хосте по протоколу SSH и возвращает вывод команды в ``output``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote_no_wait:

.. rst-class:: classref-method

:ref:`int<class_int>` **ssh_run_on_remote_no_wait**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_args\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote_no_wait>`

Выполняет указанную команду на удаленном хосте по протоколу SSH и возвращает идентификатор процесса (на удаленном хосте), не дожидаясь завершения команды.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
