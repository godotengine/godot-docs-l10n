:github_url: hide

.. _class_EditorExportPlatformLinuxBSD:

EditorExportPlatformLinuxBSD
============================

**Успадковує:** :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Експортер для Linux/BSD.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Експорт для Linux <../tutorials/export/exporting_for_linux>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`binary_format/architecture<class_EditorExportPlatformLinuxBSD_property_binary_format/architecture>`             |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`binary_format/embed_pck<class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck>`                   |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/debug<class_EditorExportPlatformLinuxBSD_property_custom_template/debug>`                       |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`custom_template/release<class_EditorExportPlatformLinuxBSD_property_custom_template/release>`                   |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`debug/export_console_wrapper<class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper>`         |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`shader_baker/enabled<class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled>`                         |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/cleanup_script<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script>` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`ssh_remote_deploy/enabled<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled>`               |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/extra_args_scp<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp>` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/extra_args_ssh<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh>` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/host<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host>`                     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/port<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port>`                     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ssh_remote_deploy/run_script<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script>`         |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`texture_format/etc2_astc<class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc>`                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`texture_format/s3tc_bptc<class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc>`                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorExportPlatformLinuxBSD_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_binary_format/architecture>`

Архітектура виконуваного файлу програми.

Підтримувані архітектури: ``x86_32``, ``x86_64``, ``arm64``, ``arm32``, ``rv64``, ``ppc64`` та ``loongarch64``.

Офіційні шаблони експорту включають лише бінарні файли ``x86_32``, ``x86_64``, ``arm32`` та ``arm64``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **binary_format/embed_pck** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck>`

Якщо ``true``, ресурси проекту вбудовані в виконуваний.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_custom_template/debug>`

Шлях до користувацького шаблону експорту. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_custom_template/release>`

Шлях до користувацького шаблону експорту. Якщо лівий порожній, використовується шаблон за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper>`

Якщо ``true``, консольна обгортка експортується поряд з основним виконуваних, що дозволяє запустити проект з ввімкненим вихідом консолі.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled>`

Якщо значення ``true``, шейдери будуть скомпільовані та вбудовані в програму. Ця опція підтримується лише під час використання рендерерів Forward+ або Mobile.

\ **Примітка:** Під час експорту на виділений сервер, шейдер-бейкер завжди вимкнено, оскільки рендеринг не виконується.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script>`

Скриптовий код для виконання на віддаленому хості, коли додаток завершено.

У скрипті можна використовувати наступні змінні:

- ``{temp_dir}`` - Шлях тимчасової папки на пульті дистанційного керування, який використовується для завантаження додатків і сценаріїв.

- ``{archive_name}`` - Назва ZIP, що містить завантажену програму.

- ``{exe_name}`` - Ім'я користувача.

- ``{cmd_args}`` - Аррій аргументу командного рядка для програми.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled>`

Увімкнути дистанційне розгортання за допомогою SSH/SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp>`

Проведення додаткових аргументів командного рядка до SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh>`

Арра додаткових аргументів командного рядка, переданих до СШ.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host>`

Віддалений хост SSH ім'я користувача та адреса, в форматі ``user@address``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port>`

Віддалений хост SSH номер порту.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script>`

Скриптовий код для виконання віддаленого хосту при запуску програми.

У скрипті можна використовувати наступні змінні:

- ``{temp_dir}`` - Шлях тимчасової папки на пульті дистанційного керування, який використовується для завантаження додатків і сценаріїв.

- ``{archive_name}`` - Назва ZIP, що містить завантажену програму.

- ``{exe_name}`` - Ім'я користувача.

- ``{cmd_args}`` - Аррій аргументу командного рядка для програми.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/etc2_astc** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc>`

Якщо ``true``, текстури проекту експортуються в форматі ETC2/ASTC.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/s3tc_bptc** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc>`

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
