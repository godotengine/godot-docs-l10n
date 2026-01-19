:github_url: hide

.. _class_EditorExportPlatform:

EditorExportPlatform
====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`EditorExportPlatformAndroid<class_EditorExportPlatformAndroid>`, :ref:`EditorExportPlatformAppleEmbedded<class_EditorExportPlatformAppleEmbedded>`, :ref:`EditorExportPlatformExtension<class_EditorExportPlatformExtension>`, :ref:`EditorExportPlatformMacOS<class_EditorExportPlatformMacOS>`, :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>`, :ref:`EditorExportPlatformWeb<class_EditorExportPlatformWeb>`

Визначає підтримуну експортну платформу, і внутрішньо забезпечує функціональність експорту на цю платформу.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий ресурс, що забезпечує функціональність експорту збірки проекту на платформу, від редактора. Зберігає конкретні метадані, такі як ім'я та підтримувані функції платформи та виконує експорт проектів, файлів PCK та ZIP. Використовуйте експортний шаблон для платформи, що надається в момент експорту проекту.

Використовуються в сценаріїв :ref:`EditorExportPlugin<class_EditorExportPlugin>` для налаштування специфіки платформи та ресурсів. :ref:`редакторExportPlugin._begin_customize_scenes()<class_редакторExportPlugin_method__begin_customize_scenes>` та :ref:`редакторExportPlugin._begin_customize_resources()<class_редакторExportPlugin_method__begin_customize_resources>` для отримання більш детальної інформації.

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

.. _enum_EditorExportPlatform_ExportMessageType:

.. rst-class:: classref-enumeration

enum **ExportMessageType**: :ref:`🔗<enum_EditorExportPlatform_ExportMessageType>`

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_NONE** = ``0``

Недійсний тип повідомлення використовується як значення за умовчанням, якщо тип не вказано.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_INFO:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_INFO** = ``1``

Тип повідомлення для інформаційних повідомлень, які не впливають на експорт.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_WARNING** = ``2``

Тип повідомлення для попереджувальних повідомлень, які слід розглянути, але все одно дозволяють завершити експорт.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_ERROR** = ``3``

Тип повідомлення для повідомлень про помилку, які потрібно вирішити та не експортувати.

.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPlatform_DebugFlags:

.. rst-class:: classref-enumeration

flags **DebugFlags**: :ref:`🔗<enum_EditorExportPlatform_DebugFlags>`

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_DUMB_CLIENT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_DUMB_CLIENT** = ``1``

Прапорець встановлено, якщо очікується, що віддалено налагоджуваний проект використовуватиме віддалену файлову систему. Якщо встановлено, метод :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` додасть аргументи командного рядка ``--remote-fs`` та ``--remote-fs-password`` (якщо визначено учасника :ref:`EditorSettings.filesystem/file_server/password<class_EditorSettings_property_filesystem/file_server/password>`) до повернутого списку.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG** = ``2``

Прапорець встановлено, якщо ввімкнено віддалене налагодження. Якщо встановлено, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` додасть аргументи командного рядка ``--remote-debug`` та ``--breakpoints`` (якщо точки зупинки вибрано в редакторі скриптів або додано плагіном) до повернутого списку.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST** = ``4``

Прапор встановлено, якщо віддалено налагоджений проект працює на локальному хості. Якщо встановлено, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` використовуватиме ``localhost`` замість :ref:`EditorSettings.network/debug/remote_host<class_EditorSettings_property_network/debug/remote_host>` як віддалений хост налагоджувача.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_COLLISIONS:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_COLLISIONS** = ``8``

Прапорець встановлено, якщо ввімкнено опцію віддаленого налагодження "Видимі форми зіткнень". Якщо встановлено, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` додасть аргумент командного рядка ``--debug-collisions`` до повернутого списку.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_NAVIGATION:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_NAVIGATION** = ``16``

Прапорець встановлено, якщо ввімкнено опцію віддаленого налагодження "Visible Navigation". Якщо встановлено, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` додасть аргумент командного рядка ``--debug-navigation`` до повернутого списку.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorExportPlatform_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ type\: :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>`, category\: :ref:`String<class_String>`, message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_add_message>`

Додає повідомлення до журналу експорту, яке відображатиметься після завершення експорту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_clear_messages:

.. rst-class:: classref-method

|void| **clear_messages**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_clear_messages>`

Очищає журнал експорту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_create_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **create_preset**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_create_preset>`

Створіть новий стиль для цієї платформи.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack>`

Створює архів PCK за адресою ``path`` для вказаного ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack_patch>`

Створює архів патчів PCK за адресою ``path`` для вказаного ``preset``, що містить лише ті файли, які було змінено з часу останнього патчу.

\ **Примітка:** ``patches`` є необов'язковим параметром для заміни набору патчів, визначеного у пресеті експорту. Якщо параметр порожній, замість нього буде використано патчі, визначені у попередньому налаштуванні експорту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project>`

Створює повний проект на ``path`` для вказаного ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project_files:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, save_cb\: :ref:`Callable<class_Callable>`, shared_cb\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project_files>`

Експортує файли проекту для вказаного пресету. Цей метод може бути використаний для реалізації користувацького формату експорту, відмінного від PCK та ZIP. Для кожного експортованого файлу викликається один з методів зворотного виклику.

\ ``save_cb`` викликається для всіх експортованих файлів і має наступні аргументи: ``шлях до файлу: Рядок``, ``file_data: PackedByteArray``, ``file_index: int``, ``file_count: int``, ``encryption_include_filters: PackedStringArray``, ``encryption_exclude_filters: PackedStringArray``, ``encryption_key: PackedByteArray``.

\ ``shared_cb`` викликається для експортованих нативних спільних/статичних бібліотек і має наступні аргументи: ``шлях до файлу: String``, ``tags: PackedStringArray``, ``target_folder: String``.

\ **Примітка:** ``file_index`` і ``file_count`` призначені лише для відстеження прогресу і не обов'язково повинні бути унікальними і точними.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip>`

Створіть ZIP-архів за адресою ``path`` для вказаного ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip_patch>`

Створити ZIP-архів патчів за адресою ``path`` для вказаного ``preset``, що містить лише файли, які було змінено з часу останнього патчу.

\ **Примітка:** ``patches`` є необов'язковим для перевизначення набору патчів, визначеного у пресеті експорту. Якщо параметр порожній, замість нього буде використано патчі, визначені у попередньому налаштуванні експорту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_find_export_template:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **find_export_template**\ (\ template_file_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_find_export_template>`

Знаходить шаблон експорту для платформи і повертає :ref:`Dictionary<class_Dictionary>` з наступними ключами: ``шлях: Рядок`` та ``error: String``. Цей метод надано для зручності, і користувацькі платформи експорту не зобов'язані використовувати його або зберігати шаблони експорту так само, як офіційні шаблони.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_gen_export_flags:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **gen_export_flags**\ (\ flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) :ref:`🔗<class_EditorExportPlatform_method_gen_export_flags>`

Створює масив аргументів командного рядка для стандартних шаблонів експорту для позначок налагодження та налаштувань редактора.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_current_presets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_current_presets**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_current_presets>`

Повертає масив :ref:`EditorExportPreset<class_EditorExportPreset>` для цієї платформи.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_forced_export_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_forced_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>` = null\ ) |static| :ref:`🔗<class_EditorExportPlatform_method_get_forced_export_files>`

Повертає масив імен основних файлів, які завжди слід експортувати незалежно від попередньо встановленої конфігурації.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_internal_export_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_internal_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorExportPlatform_method_get_internal_export_files>`

Повертає додаткові файли, які завжди слід експортувати незалежно від попередньо встановленої конфігурації, і які не є частиною вихідних даних проекту. Повернутий :ref:`Dictionary<class_Dictionary>` містить ключі назв файлів (:ref:`String<class_String>`) та відповідні їм вихідні дані (:ref:`PackedByteArray<class_PackedByteArray>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_category**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_category>`

Повертає категорію повідомлення для повідомлення з заданим значенням ``index``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_count>`

Повертає кількість повідомлень у журналі експорту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_text**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_text>`

Повертає текст повідомлення з заданим значенням ``index``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_message_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_type>`

Повертає тип повідомлення із заданим значенням ``index``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_os_name**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_os_name>`

Повертає назву операційної системи експорту, яку обробляє цей клас **EditorExportPlatform**, у вигляді дружнього рядка. Можливі значення повернення: ``Windows``, ``Linux``, ``macOS``, ``Android``, ``iOS`` та ``Web``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_worst_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_worst_message_type**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_worst_message_type>`

Повертає найсерйозніший тип повідомлення, наявний у журналі експорту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, embed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack>`

Зберігає архів PCK і повертає :ref:`Dictionary<class_Dictionary>` з наступними ключами: ``result: Error``, ``so_files: Array`` (масив спільних/статичних об'єктів, який містить словники з такими ключами: ``path: String``, ``tags: PackedStringArray`` та ``target_folder: String``).

Якщо ``embed`` має значення ``true``, вміст PCK додається у кінець файлу ``path`` і повертається :ref:`Dictionary<class_Dictionary>`, який додатково містить такі ключі: ``embedded_start: int`` (вбудований зсув PCK) та ``embedded_size: int`` (вбудований розмір PCK).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack_patch>`

Зберігає архів патчів PCK і повертає :ref:`Dictionary<class_Dictionary>` з наступними ключами: ``result: Error``, ``so_files: Array`` (масив спільних/статичних об'єктів, який містить словники з такими ключами: ``path: String``, ``tags: PackedStringArray`` та ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip>`

Зберігає ZIP-архів і повертає :ref:`Dictionary<class_Dictionary>` з наступними ключами: ``result: Error``, ``so_files: Array`` (масив спільних/статичних об'єктів, який містить словники з такими ключами: ``path: String``, ``tags: PackedStringArray`` та ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip_patch>`

Зберігає ZIP-архів патчів і повертає :ref:`Dictionary<class_Dictionary>` з наступними ключами: ``result: Error``, ``so_files: Array`` (масив спільних/статичних об'єктів, який містить словники з такими ключами: ``path: String``, ``tags: PackedStringArray`` та ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_push_to_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_push_to_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, scp_args\: :ref:`PackedStringArray<class_PackedStringArray>`, src_file\: :ref:`String<class_String>`, dst_file\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_push_to_remote>`

Завантажує вказаний файл через протокол SCP на віддалений хост.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_run_on_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_arg\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, output\: :ref:`Array<class_Array>` = [], port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote>`

Виконує вказану команду на віддаленому хості через протокол SSH і повертає вихідні дані команди в ``output``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote_no_wait:

.. rst-class:: classref-method

:ref:`int<class_int>` **ssh_run_on_remote_no_wait**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_args\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote_no_wait>`

Виконує вказану команду на віддаленому хості через протокол SSH і повертає ідентифікатор процесу (на віддаленому хості), не чекаючи завершення команди.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
