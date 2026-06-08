:github_url: hide

.. _class_EditorVCSInterface:

EditorVCSInterface
==================

**Наследует:** :ref:`Object<class_Object>`

Интерфейс системы контроля версий (VCS), который считывает и записывает данные в используемую локальную систему VCS.

.. rst-class:: classref-introduction-group

Описание
----------------

Определяет API, который редактор использует для извлечения информации из базовой VCS. Реализация этого API включена в плагины VCS, которые являются плагинами GDExtension, которые наследуют **EditorVCSInterface** и присоединяются (по требованию) к единичному экземпляру **EditorVCSInterface**. Вместо того, чтобы выполнять задачу самостоятельно, все виртуальные функции, перечисленные ниже, вызывают внутренне переопределенные функции в плагинах VCS для обеспечения работы по принципу plug-n-play. Пользовательский плагин VCS должен наследовать от **EditorVCSInterface** и переопределять каждую из этих виртуальных функций.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Системы контроля версий <../tutorials/best_practices/version_control_systems>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_allow_amends<class_EditorVCSInterface_private_method__allow_amends>`\ (\ ) |virtual|                                                                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_checkout_branch<class_EditorVCSInterface_private_method__checkout_branch>`\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_commit<class_EditorVCSInterface_private_method__commit>`\ (\ msg\: :ref:`String<class_String>`, amend\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_create_branch<class_EditorVCSInterface_private_method__create_branch>`\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_create_remote<class_EditorVCSInterface_private_method__create_remote>`\ (\ remote_name\: :ref:`String<class_String>`, remote_url\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_discard_file<class_EditorVCSInterface_private_method__discard_file>`\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_fetch<class_EditorVCSInterface_private_method__fetch>`\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]         | :ref:`_get_branch_list<class_EditorVCSInterface_private_method__get_branch_list>`\ (\ ) |virtual| |required|                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_current_branch_name<class_EditorVCSInterface_private_method__get_current_branch_name>`\ (\ ) |virtual| |required|                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_diff<class_EditorVCSInterface_private_method__get_diff>`\ (\ identifier\: :ref:`String<class_String>`, area\: :ref:`int<class_int>`\ ) |virtual| |required|                                                                                                                                                                            |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_line_diff<class_EditorVCSInterface_private_method__get_line_diff>`\ (\ file_path\: :ref:`String<class_String>`, text\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_modified_files_data<class_EditorVCSInterface_private_method__get_modified_files_data>`\ (\ ) |virtual| |required|                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_previous_commits<class_EditorVCSInterface_private_method__get_previous_commits>`\ (\ max_commits\: :ref:`int<class_int>`\ ) |virtual| |required|                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]         | :ref:`_get_remotes<class_EditorVCSInterface_private_method__get_remotes>`\ (\ ) |virtual| |required|                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_vcs_name<class_EditorVCSInterface_private_method__get_vcs_name>`\ (\ ) |virtual| |required|                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_initialize<class_EditorVCSInterface_private_method__initialize>`\ (\ project_path\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                                    |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_pull<class_EditorVCSInterface_private_method__pull>`\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_push<class_EditorVCSInterface_private_method__push>`\ (\ remote\: :ref:`String<class_String>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required|                                                                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_remove_branch<class_EditorVCSInterface_private_method__remove_branch>`\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_remove_remote<class_EditorVCSInterface_private_method__remove_remote>`\ (\ remote_name\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_set_credentials<class_EditorVCSInterface_private_method__set_credentials>`\ (\ username\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`, ssh_public_key_path\: :ref:`String<class_String>`, ssh_private_key_path\: :ref:`String<class_String>`, ssh_passphrase\: :ref:`String<class_String>`\ ) |virtual| |required| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_shut_down<class_EditorVCSInterface_private_method__shut_down>`\ (\ ) |virtual| |required|                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_stage_file<class_EditorVCSInterface_private_method__stage_file>`\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_unstage_file<class_EditorVCSInterface_private_method__unstage_file>`\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`add_diff_hunks_into_diff_file<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`\ (\ diff_file\: :ref:`Dictionary<class_Dictionary>`, diff_hunks\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ )                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`add_line_diffs_into_diff_hunk<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>`\ (\ diff_hunk\: :ref:`Dictionary<class_Dictionary>`, line_diffs\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ )                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`create_commit<class_EditorVCSInterface_method_create_commit>`\ (\ msg\: :ref:`String<class_String>`, author\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`, unix_timestamp\: :ref:`int<class_int>`, offset_minutes\: :ref:`int<class_int>`\ )                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`create_diff_file<class_EditorVCSInterface_method_create_diff_file>`\ (\ new_file\: :ref:`String<class_String>`, old_file\: :ref:`String<class_String>`\ )                                                                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`create_diff_hunk<class_EditorVCSInterface_method_create_diff_hunk>`\ (\ old_start\: :ref:`int<class_int>`, new_start\: :ref:`int<class_int>`, old_lines\: :ref:`int<class_int>`, new_lines\: :ref:`int<class_int>`\ )                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`create_diff_line<class_EditorVCSInterface_method_create_diff_line>`\ (\ new_line_no\: :ref:`int<class_int>`, old_line_no\: :ref:`int<class_int>`, content\: :ref:`String<class_String>`, status\: :ref:`String<class_String>`\ )                                                                                                            |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`create_status_file<class_EditorVCSInterface_method_create_status_file>`\ (\ file_path\: :ref:`String<class_String>`, change_type\: :ref:`ChangeType<enum_EditorVCSInterface_ChangeType>`, area\: :ref:`TreeArea<enum_EditorVCSInterface_TreeArea>`\ )                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`popup_error<class_EditorVCSInterface_method_popup_error>`\ (\ msg\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                          |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_EditorVCSInterface_ChangeType:

.. rst-class:: classref-enumeration

enum **ChangeType**: :ref:`🔗<enum_EditorVCSInterface_ChangeType>`

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_NEW** = ``0``

Добавлен новый файл.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_MODIFIED** = ``1``

Ранее добавленный файл был изменен.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_RENAMED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_RENAMED** = ``2``

Ранее добавленный файл был переименован.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_DELETED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_DELETED** = ``3``

Ранее добавленный файл был удален.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_TYPECHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_TYPECHANGE** = ``4``

Ранее добавленный файл был изменен типом.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_UNMERGED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_UNMERGED** = ``5``

Файл остается необъединенным.

.. rst-class:: classref-item-separator

----

.. _enum_EditorVCSInterface_TreeArea:

.. rst-class:: classref-enumeration

enum **TreeArea**: :ref:`🔗<enum_EditorVCSInterface_TreeArea>`

.. _class_EditorVCSInterface_constant_TREE_AREA_COMMIT:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_COMMIT** = ``0``

В области коммита обнаружен коммит.

.. _class_EditorVCSInterface_constant_TREE_AREA_STAGED:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_STAGED** = ``1``

Файл обнаружен в подготовленной области.

.. _class_EditorVCSInterface_constant_TREE_AREA_UNSTAGED:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_UNSTAGED** = ``2``

Обнаружен файл из неподготовленной области.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorVCSInterface_private_method__allow_amends:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_allow_amends**\ (\ ) |virtual| :ref:`🔗<class_EditorVCSInterface_private_method__allow_amends>`

Возвращает значение, указывающее, разрешает ли плагин внесение изменений в коммит.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__checkout_branch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_checkout_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__checkout_branch>`

Извлекает ``branch_name`` в VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__commit:

.. rst-class:: classref-method

|void| **_commit**\ (\ msg\: :ref:`String<class_String>`, amend\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorVCSInterface_private_method__commit>`

Фиксирует текущие изменения в индексе и применяет коммит ``msg`` к результирующему коммиту. Если ``amend`` имеет значение ``true``, коммит изменит самый последний коммит.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__create_branch:

.. rst-class:: classref-method

|void| **_create_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__create_branch>`

Создает новую ветку с именем ``branch_name`` в VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__create_remote:

.. rst-class:: classref-method

|void| **_create_remote**\ (\ remote_name\: :ref:`String<class_String>`, remote_url\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__create_remote>`

Создает новый удаленный пункт назначения с именем ``remote_name`` и указывает на ``remote_url``. Это может быть удаленный HTTPS или удаленный SSH.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__discard_file:

.. rst-class:: classref-method

|void| **_discard_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__discard_file>`

Отменяет изменения, внесенные в файл, расположенный по адресу ``file_path``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__fetch:

.. rst-class:: classref-method

|void| **_fetch**\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__fetch>`

Извлекает новые изменения из ``remote``, но не записывает изменения в текущий рабочий каталог. Эквивалентно ``git fetch``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_branch_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **_get_branch_list**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_branch_list>`

Получает экземпляр :ref:`Array<class_Array>` из :ref:`String<class_String>`, содержащих доступные имена ветвей в VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_current_branch_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_current_branch_name**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_current_branch_name>`

Получает текущее имя ветви, определенное в VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_diff:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_diff**\ (\ identifier\: :ref:`String<class_String>`, area\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_diff>`

Возвращает массив элементов :ref:`Dictionary<class_Dictionary>` (см. :ref:`create_diff_file()<class_EditorVCSInterface_method_create_diff_file>`, :ref:`create_diff_hunk()<class_EditorVCSInterface_method_create_diff_hunk>`, :ref:`create_diff_line()<class_EditorVCSInterface_method_create_diff_line>`, :ref:`add_line_diffs_into_diff_hunk()<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>` и :ref:`add_diff_hunks_into_diff_file()<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`), каждый из которых содержит информацию о diff. Если ``identifier`` является путем к файлу, возвращает diff файла, а если это идентификатор фиксации, то возвращает diff фиксации.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_line_diff:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_line_diff**\ (\ file_path\: :ref:`String<class_String>`, text\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_line_diff>`

Возвращает :ref:`Array<class_Array>` элементов :ref:`Dictionary<class_Dictionary>` (см. :ref:`create_diff_hunk()<class_EditorVCSInterface_method_create_diff_hunk>`), каждый из которых содержит разницу строк между файлом по адресу ``file_path`` и переданным ``text``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_modified_files_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_modified_files_data**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_modified_files_data>`

Возвращает :ref:`Array<class_Array>` элементов :ref:`Dictionary<class_Dictionary>` (см. :ref:`create_status_file()<class_EditorVCSInterface_method_create_status_file>`), каждый из которых содержит данные о состоянии каждого измененного файла в папке проекта.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_previous_commits:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_previous_commits**\ (\ max_commits\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_previous_commits>`

Возвращает :ref:`Array<class_Array>` элементов :ref:`Dictionary<class_Dictionary>` (см. :ref:`create_commit()<class_EditorVCSInterface_method_create_commit>`), каждый из которых содержит данные о прошлой фиксации.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_remotes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **_get_remotes**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_remotes>`

Возвращает :ref:`Array<class_Array>` из :ref:`String<class_String>`, каждая из которых содержит имя удаленного устройства, настроенного в VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_vcs_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_vcs_name**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_vcs_name>`

Возвращает имя базового поставщика VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_initialize**\ (\ project_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__initialize>`

Инициализирует плагин VCS при вызове из редактора. Возвращает, был ли успешно инициализирован плагин. Проект VCS инициализируется в ``project_path``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__pull:

.. rst-class:: classref-method

|void| **_pull**\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__pull>`

Извлекает изменения из удаленного. Это может привести к конфликтам слияния.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__push:

.. rst-class:: classref-method

|void| **_push**\ (\ remote\: :ref:`String<class_String>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__push>`

Отправляет изменения на ``remote``. Если ``force`` равно ``true``, принудительная отправка переопределит историю изменений, уже имеющуюся на удаленном.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__remove_branch:

.. rst-class:: classref-method

|void| **_remove_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__remove_branch>`

Удалить ветку из локальной VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__remove_remote:

.. rst-class:: classref-method

|void| **_remove_remote**\ (\ remote_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__remove_remote>`

Удалить удаленный объект из локальной VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__set_credentials:

.. rst-class:: classref-method

|void| **_set_credentials**\ (\ username\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`, ssh_public_key_path\: :ref:`String<class_String>`, ssh_private_key_path\: :ref:`String<class_String>`, ssh_passphrase\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__set_credentials>`

Установите учетные данные пользователя в базовой системе контроля версий. ``username`` и ``password`` используются только во время аутентификации HTTPS, если иное не указано в удаленном URL. ``ssh_public_key_path``, ``ssh_private_key_path`` и ``ssh_passphrase`` используются только во время аутентификации SSH.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__shut_down:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_shut_down**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__shut_down>`

Выключает экземпляр плагина VCS. Вызывается, когда пользователь либо закрывает редактор, либо выключает плагин VCS через пользовательский интерфейс редактора.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__stage_file:

.. rst-class:: classref-method

|void| **_stage_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__stage_file>`

Помещает файл, находящийся по адресу ``file_path``, в подготовленную область.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__unstage_file:

.. rst-class:: classref-method

|void| **_unstage_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__unstage_file>`

Перемещает файл, находящийся по адресу ``file_path``, из подготовленной области в неподготовленную область.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_add_diff_hunks_into_diff_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **add_diff_hunks_into_diff_file**\ (\ diff_file\: :ref:`Dictionary<class_Dictionary>`, diff_hunks\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ ) :ref:`🔗<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`

Вспомогательная функция для добавления массива ``diff_hunks`` в ``diff_file``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **add_line_diffs_into_diff_hunk**\ (\ diff_hunk\: :ref:`Dictionary<class_Dictionary>`, line_diffs\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ ) :ref:`🔗<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>`

Вспомогательная функция для добавления массива ``line_diffs`` в ``diff_hunk``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_commit:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_commit**\ (\ msg\: :ref:`String<class_String>`, author\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`, unix_timestamp\: :ref:`int<class_int>`, offset_minutes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_commit>`

Вспомогательная функция для создания элемента коммита :ref:`Dictionary<class_Dictionary>`. ``msg`` — сообщение коммита. ``author`` — отдельная удобочитаемая строка, содержащая все данные автора, например, адрес электронной почты и имя, настроенные в VCS. ``id`` — идентификатор коммита в любом формате, который ваша VCS может предоставить идентификатору коммитов. ``unix_timestamp`` — временная метка UTC Unix, указывающая на время создания коммита. ``offset_minutes`` — смещение часового пояса в минутах, записанное относительно системного часового пояса, в котором был создан коммит.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_file**\ (\ new_file\: :ref:`String<class_String>`, old_file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_file>`

Вспомогательная функция для создания :ref:`Dictionary<class_Dictionary>` для хранения старых и новых путей к файлам различий.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_hunk:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_hunk**\ (\ old_start\: :ref:`int<class_int>`, new_start\: :ref:`int<class_int>`, old_lines\: :ref:`int<class_int>`, new_lines\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_hunk>`

Вспомогательная функция для создания :ref:`Dictionary<class_Dictionary>` для хранения данных diff hunk. ``old_start`` — начальный номер строки в старом файле. ``new_start`` — начальный номер строки в новом файле. ``old_lines`` — количество строк в старом файле. ``new_lines`` — количество строк в новом файле.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_line:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_line**\ (\ new_line_no\: :ref:`int<class_int>`, old_line_no\: :ref:`int<class_int>`, content\: :ref:`String<class_String>`, status\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_line>`

Вспомогательная функция для создания :ref:`Dictionary<class_Dictionary>` для хранения разницы строк. ``new_line_no`` — номер строки в новом файле (может быть ``-1``, если строка удалена). ``old_line_no`` — номер строки в старом файле (может быть ``-1``, если строка добавлена). ``content`` — текст разницы. ``status`` — строка из одного символа, в которой хранится начало строки.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_status_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_status_file**\ (\ file_path\: :ref:`String<class_String>`, change_type\: :ref:`ChangeType<enum_EditorVCSInterface_ChangeType>`, area\: :ref:`TreeArea<enum_EditorVCSInterface_TreeArea>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_status_file>`

Вспомогательная функция для создания :ref:`Dictionary<class_Dictionary>`, используемого редактором для чтения статуса файла.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_popup_error:

.. rst-class:: classref-method

|void| **popup_error**\ (\ msg\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_popup_error>`

Выводит сообщение об ошибке в редакторе, которое отображается как исходящее от базовой VCS. Используйте это, чтобы показать сообщения об ошибках, специфичные для VCS.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
