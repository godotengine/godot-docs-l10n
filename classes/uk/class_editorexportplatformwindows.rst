:github_url: hide

.. _class_EditorExportPlatformWindows:

EditorExportPlatformWindows
===========================

**Успадковує:** :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Експортер для Windows.

.. rst-class:: classref-introduction-group

Опис
--------

Експортер Windows налаштовує, як працює збірка Windows. У вікні редактора "Експорт" створюється при додаванні нового "Windows".

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Експорт на Windows <../tutorials/export/exporting_for_windows>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/company_name<class_EditorExportPlatformWindows_property_application/company_name>`                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/console_wrapper_icon<class_EditorExportPlatformWindows_property_application/console_wrapper_icon>`               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/copyright<class_EditorExportPlatformWindows_property_application/copyright>`                                     |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`application/d3d12_agility_sdk_multiarch<class_EditorExportPlatformWindows_property_application/d3d12_agility_sdk_multiarch>` |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`application/export_angle<class_EditorExportPlatformWindows_property_application/export_angle>`                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`application/export_d3d12<class_EditorExportPlatformWindows_property_application/export_d3d12>`                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/file_description<class_EditorExportPlatformWindows_property_application/file_description>`                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/file_version<class_EditorExportPlatformWindows_property_application/file_version>`                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/icon<class_EditorExportPlatformWindows_property_application/icon>`                                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`application/icon_interpolation<class_EditorExportPlatformWindows_property_application/icon_interpolation>`                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`application/modify_resources<class_EditorExportPlatformWindows_property_application/modify_resources>`                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/product_name<class_EditorExportPlatformWindows_property_application/product_name>`                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/product_version<class_EditorExportPlatformWindows_property_application/product_version>`                         |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`application/trademarks<class_EditorExportPlatformWindows_property_application/trademarks>`                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`binary_format/architecture<class_EditorExportPlatformWindows_property_binary_format/architecture>`                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`binary_format/embed_pck<class_EditorExportPlatformWindows_property_binary_format/embed_pck>`                                 |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`codesign/custom_options<class_EditorExportPlatformWindows_property_codesign/custom_options>`                                 |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/description<class_EditorExportPlatformWindows_property_codesign/description>`                                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`codesign/digest_algorithm<class_EditorExportPlatformWindows_property_codesign/digest_algorithm>`                             |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/enable<class_EditorExportPlatformWindows_property_codesign/enable>`                                                 |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/identity<class_EditorExportPlatformWindows_property_codesign/identity>`                                             |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`codesign/identity_type<class_EditorExportPlatformWindows_property_codesign/identity_type>`                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/password<class_EditorExportPlatformWindows_property_codesign/password>`                                             |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`codesign/timestamp<class_EditorExportPlatformWindows_property_codesign/timestamp>`                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`codesign/timestamp_server_url<class_EditorExportPlatformWindows_property_codesign/timestamp_server_url>`                     |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`custom_template/debug<class_EditorExportPlatformWindows_property_custom_template/debug>`                                     |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`custom_template/release<class_EditorExportPlatformWindows_property_custom_template/release>`                                 |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`debug/export_console_wrapper<class_EditorExportPlatformWindows_property_debug/export_console_wrapper>`                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`shader_baker/enabled<class_EditorExportPlatformWindows_property_shader_baker/enabled>`                                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/cleanup_script<class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script>`               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`ssh_remote_deploy/enabled<class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled>`                             |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/extra_args_scp<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp>`               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/extra_args_ssh<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh>`               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/host<class_EditorExportPlatformWindows_property_ssh_remote_deploy/host>`                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/port<class_EditorExportPlatformWindows_property_ssh_remote_deploy/port>`                                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`ssh_remote_deploy/run_script<class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script>`                       |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`texture_format/etc2_astc<class_EditorExportPlatformWindows_property_texture_format/etc2_astc>`                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`texture_format/s3tc_bptc<class_EditorExportPlatformWindows_property_texture_format/s3tc_bptc>`                               |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorExportPlatformWindows_property_application/company_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/company_name** :ref:`🔗<class_EditorExportPlatformWindows_property_application/company_name>`

Компанія, що виробляє додаток. Необхідно. `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/console_wrapper_icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/console_wrapper_icon** :ref:`🔗<class_EditorExportPlatformWindows_property_application/console_wrapper_icon>`

Файл значка обгортки консолі. Якщо залишити порожнім, буде використано файл :ref:`application/icon<class_EditorExportPlatformWindows_property_application/icon>`, а потім :ref:`ProjectSettings.application/config/windows_native_icon<class_ProjectSettings_property_application/config/windows_native_icon>`, і нарешті, :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/copyright** :ref:`🔗<class_EditorExportPlatformWindows_property_application/copyright>`

Повідомляємо про те, що вказаний користувач. Додатково. `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/d3d12_agility_sdk_multiarch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/d3d12_agility_sdk_multiarch** :ref:`🔗<class_EditorExportPlatformWindows_property_application/d3d12_agility_sdk_multiarch>`

Якщо ``true``, і ``пам'ятний додаток/export_d3d12`` встановлюється, Agility SDK DLLs буде зберігатися в арочних підкатегоріях.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/export_angle:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_angle** :ref:`🔗<class_EditorExportPlatformWindows_property_application/export_angle>`

Якщо встановити до ``1``, бібліотеки ANGLE експортуються за допомогою експортованої програми. Якщо встановити до ``0``, бібліотеки ANGLE експортуються тільки в тому випадку, якщо ``пам'ять проектівНалаштування.rendering/gl_compatibility/driver`` встановлюється на ``"opengl3_angle"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/export_d3d12:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_d3d12** :ref:`🔗<class_EditorExportPlatformWindows_property_application/export_d3d12>`

Якщо встановити до ``1``, бібліотеки Direct3D 12 runtime (Agility SDK, PIX) експортуються з експортованою програмою. Якщо встановити до ``0``, Direct3D 12 бібліотеки вивозяться тільки якщо :ref:`ProjectSettings.rendering/rendering_device/driver<class_ProjectSettings_property_rendering/rendering_device/driver>` встановлюється на ``"d3d12"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/file_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/file_description** :ref:`🔗<class_EditorExportPlatformWindows_property_application/file_description>`

Опис файлу, щоб бути представлений користувачам. Необхідно. `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/file_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/file_version** :ref:`🔗<class_EditorExportPlatformWindows_property_application/file_version>`

Версія номеру файлу. Повернутися до :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`, якщо зліва порожній. `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/icon** :ref:`🔗<class_EditorExportPlatformWindows_property_application/icon>`

Файл іконки додатків. Якщо ліва порожня, вона повернеться до :ref:`ProjectSettings.application/config/windows_native_icon<class_ProjectSettings_property_application/config/windows_native_icon>`, а потім до :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformWindows_property_application/icon_interpolation>`

Метод інтерполяції, який використовується для зміни іконки додатків.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/modify_resources:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/modify_resources** :ref:`🔗<class_EditorExportPlatformWindows_property_application/modify_resources>`

Якщо увімкнено, ікону та метадані експортованої виконуючої установки згідно з іншими значеннями ``application/*``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/product_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/product_name** :ref:`🔗<class_EditorExportPlatformWindows_property_application/product_name>`

Назва заявки. Необхідно. `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/product_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/product_version** :ref:`🔗<class_EditorExportPlatformWindows_property_application/product_version>`

Версія програми видима для користувача. Повернутися до :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>`, якщо зліва порожній. `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/trademarks:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/trademarks** :ref:`🔗<class_EditorExportPlatformWindows_property_application/trademarks>`

Товарні знаки та зареєстровані торгові марки, які застосовуються до файлу. Для додатковох інформації: `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformWindows_property_binary_format/architecture>`

Архітектура виконуваної програми.

Підтримувані архітектури: ``x86_32``, ``x86_64`` і ``arm64``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_binary_format/embed_pck:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **binary_format/embed_pck** :ref:`🔗<class_EditorExportPlatformWindows_property_binary_format/embed_pck>`

Якщо ``true``, ресурси проекту вбудовані в виконуваний.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/custom_options:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **codesign/custom_options** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/custom_options>`

Проведення додаткових аргументів командного рядка, переданих на інструмент реєстрації коду. ` Інструмент  <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/description:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/description** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/description>`

Опис підписаного вмісту. ` Інструмент  <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/digest_algorithm:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/digest_algorithm** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/digest_algorithm>`

Алгоритм дайджест для створення підпису. ` Інструмент  <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/enable** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/enable>`

Якщо увімкнено ``true``, виконуваний вхід.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/identity** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/identity>`

PKCS #12 файл сертифіката, який використовується для позначення виконуваних або сертифікатів SHA-1 (якщо :ref:`codesign/identity_type<class_EditorExportPlatformWindows_property_codesign/identity_type>` встановлюється до "Використовувати магазин сертифікатів"). ` Інструмент  <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

Може передаватися з змінною середовища ``GODOT_WINDOWS_CODESIGN_IDENTITY``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/identity_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/identity_type** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/identity_type>`

Тип ідентичності до використання. ` Інструмент  <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

Може передаватися з змінною середовища ``GODOT_WINDOWS_CODESIGN_IDENTITY_TYPE``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/password:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/password** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/password>`

Пароль для файлу сертифіката, який використовується для реєстрації. ` Інструмент  <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

Може передаватися з змінною середовища ``GODOT_WINDOWS_CODESIGN_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/timestamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/timestamp** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/timestamp>`

Якщо ``true``, до підпису додається час-тамп. ` Інструмент  <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/timestamp_server_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/timestamp_server_url** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/timestamp_server_url>`

URL сервера штампа часу. Якщо лівий порожній сервер за замовчуванням використовується. ` Інструмент  <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWindows_property_custom_template/debug>`

Шлях до користувацького шаблону експорту. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWindows_property_custom_template/release>`

Шлях до користувацького шаблону експорту. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformWindows_property_debug/export_console_wrapper>`

Якщо ``true``, консольний обгортковий виконуваний експортується поряд з основним виконуваних, що дозволяє запустити проект з ввімкненим вихідом консолі.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformWindows_property_shader_baker/enabled>`

Якщо значення ``true``, шейдери будуть скомпільовані та вбудовані в програму. Ця опція підтримується лише під час використання рендерерів Forward+ та Mobile.

\ **Примітка:** Під час експорту на виділений сервер, шейдер-бейкер завжди вимкнено, оскільки рендеринг не виконується.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script>`

Скриптовий код для виконання на віддаленому хості, коли додаток завершено.

У скрипті можна використовувати наступні змінні:

- ``{temp_dir}`` - Шлях тимчасової папки на пульті дистанційного керування, який використовується для завантаження додатків і сценаріїв.

- ``{archive_name}`` - Назва ZIP, що містить завантажену програму.

- ``{exe_name}`` - Ім'я користувача.

- ``{cmd_args}`` - Аррій аргументу командного рядка для програми.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled>`

Увімкнути дистанційне розгортання за допомогою SSH/SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp>`

Проведення додаткових аргументів командного рядка до SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh>`

Арра додаткових аргументів командного рядка, переданих до СШ.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/host>`

Віддалений хост SSH ім'я користувача та адреса, в форматі ``user@address``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/port>`

Віддалений хост SSH номер порту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script>`

Скриптовий код для виконання віддаленого хосту при запуску програми.

У скрипті можна використовувати наступні змінні:

- ``{temp_dir}`` - Шлях тимчасової папки на пульті дистанційного керування, який використовується для завантаження додатків і сценаріїв.

- ``{archive_name}`` - Назва ZIP, що містить завантажену програму.

- ``{exe_name}`` - Ім'я користувача.

- ``{cmd_args}`` - Аррій аргументу командного рядка для програми.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_texture_format/etc2_astc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/etc2_astc** :ref:`🔗<class_EditorExportPlatformWindows_property_texture_format/etc2_astc>`

Якщо ``true``, текстури проекту експортуються в форматі ETC2/ASTC.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_texture_format/s3tc_bptc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/s3tc_bptc** :ref:`🔗<class_EditorExportPlatformWindows_property_texture_format/s3tc_bptc>`

Якщо ``true``, текстури проекту експортуються у форматі S3TC/BPTC.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
