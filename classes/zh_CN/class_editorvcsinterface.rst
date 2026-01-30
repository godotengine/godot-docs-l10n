:github_url: hide

.. _class_EditorVCSInterface:

EditorVCSInterface
==================

**继承：** :ref:`Object<class_Object>`

版本控制系统（VCS）接口，用于读取和写入正在使用的本地 VCS。

.. rst-class:: classref-introduction-group

描述
----

定义编辑器使用的 API，负责从底层 VCS 提取信息。该 API 的实现包含在 VCS 插件中，这些插件是继承 **EditorVCSInterface** 并被附加（按需）到 **EditorVCSInterface** 的单例实例的 GDExtension 插件。以下列出的所有虚函数都不会亲自执行操作，而是会去调用 VCS 插件中内部覆盖的函数，以提供即插即用的体验。自定义 VCS 插件应当继承 **EditorVCSInterface** 并覆盖这些虚函数。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`版本控制系统 <../tutorials/best_practices/version_control_systems>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_checkout_branch<class_EditorVCSInterface_private_method__checkout_branch>`\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_commit<class_EditorVCSInterface_private_method__commit>`\ (\ msg\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                                                                                                                                     |
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

枚举
----

.. _enum_EditorVCSInterface_ChangeType:

.. rst-class:: classref-enumeration

enum **ChangeType**: :ref:`🔗<enum_EditorVCSInterface_ChangeType>`

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_NEW** = ``0``

添加了新文件。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_MODIFIED** = ``1``

先前添加的文件已被修改。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_RENAMED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_RENAMED** = ``2``

先前添加的文件已被重命名。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_DELETED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_DELETED** = ``3``

先前添加的文件已被删除。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_TYPECHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_TYPECHANGE** = ``4``

先前添加的文件已更改类型。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_UNMERGED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_UNMERGED** = ``5``

文件未合并。

.. rst-class:: classref-item-separator

----

.. _enum_EditorVCSInterface_TreeArea:

.. rst-class:: classref-enumeration

enum **TreeArea**: :ref:`🔗<enum_EditorVCSInterface_TreeArea>`

.. _class_EditorVCSInterface_constant_TREE_AREA_COMMIT:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_COMMIT** = ``0``

在提交区域遇到了提交。

.. _class_EditorVCSInterface_constant_TREE_AREA_STAGED:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_STAGED** = ``1``

在暂存区域遇到了文件。

.. _class_EditorVCSInterface_constant_TREE_AREA_UNSTAGED:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_UNSTAGED** = ``2``

在未暂存区域遇到了文件。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorVCSInterface_private_method__checkout_branch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_checkout_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__checkout_branch>`

检出 VCS 中的 ``branch_name`` 分支。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__commit:

.. rst-class:: classref-method

|void| **_commit**\ (\ msg\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__commit>`

提交当前暂存的修改，并对提交应用提交信息 ``msg``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__create_branch:

.. rst-class:: classref-method

|void| **_create_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__create_branch>`

在 VCS 中新建名为 ``branch_name`` 的分支。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__create_remote:

.. rst-class:: classref-method

|void| **_create_remote**\ (\ remote_name\: :ref:`String<class_String>`, remote_url\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__create_remote>`

创建一个名为 ``remote_name`` 的新远程仓库目标，并将其指向 ``remote_url``\ 。这既可以是 HTTPS 远程仓库，也可以是 SSH 远程仓库。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__discard_file:

.. rst-class:: classref-method

|void| **_discard_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__discard_file>`

丢弃对位于 ``file_path`` 的文件进行的修改。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__fetch:

.. rst-class:: classref-method

|void| **_fetch**\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__fetch>`

从远程仓库 ``remote`` 中抓取新修改，但不将修改写入当前工作目录。相当于 ``git fetch``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_branch_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **_get_branch_list**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_branch_list>`

获取 :ref:`String<class_String>` 字符串的 :ref:`Array<class_Array>` 数组实例，包含在 VCS 中可用的分支名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_current_branch_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_current_branch_name**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_current_branch_name>`

获取 VCS 中定义的当前分支名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_diff:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_diff**\ (\ identifier\: :ref:`String<class_String>`, area\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_diff>`

返回 :ref:`Dictionary<class_Dictionary>` 项的数组（参见 :ref:`create_diff_file()<class_EditorVCSInterface_method_create_diff_file>`\ 、\ :ref:`create_diff_hunk()<class_EditorVCSInterface_method_create_diff_hunk>`\ 、\ :ref:`create_diff_line()<class_EditorVCSInterface_method_create_diff_line>`\ 、\ :ref:`add_line_diffs_into_diff_hunk()<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>` 和 :ref:`add_diff_hunks_into_diff_file()<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`\ ），每项都包含一个差异的信息。如果 ``identifier`` 是文件路径，则返回文件差异；如果它是提交标识符，则返回提交差异。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_line_diff:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_line_diff**\ (\ file_path\: :ref:`String<class_String>`, text\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_line_diff>`

返回 :ref:`Dictionary<class_Dictionary>` 字典项的 :ref:`Array<class_Array>` 数组（见 :ref:`create_diff_hunk()<class_EditorVCSInterface_method_create_diff_hunk>`\ ），每一项都包含位于 ``file_path`` 的文件与传入的 ``text`` 之间的单行差异。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_modified_files_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_modified_files_data**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_modified_files_data>`

返回 :ref:`Dictionary<class_Dictionary>` 字典项的 :ref:`Array<class_Array>` 数组（见 :ref:`create_status_file()<class_EditorVCSInterface_method_create_status_file>`\ ），每一项都包含项目文件夹中每个已修改的文件的状态数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_previous_commits:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_previous_commits**\ (\ max_commits\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_previous_commits>`

返回 :ref:`Dictionary<class_Dictionary>` 字典项的 :ref:`Array<class_Array>` 数组（见 :ref:`create_commit()<class_EditorVCSInterface_method_create_commit>`\ ），每一项都包含一个过去提交的数据。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_remotes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **_get_remotes**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_remotes>`

返回 :ref:`String<class_String>` 字符串的 :ref:`Array<class_Array>` 数组，每一个都包含 VCS 中配置的一个远程仓库的名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_vcs_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_vcs_name**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_vcs_name>`

返回底层 VCS 提供方的名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_initialize**\ (\ project_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__initialize>`

从编辑器中调用时初始化该 VCS 插件。返回该插件是否成功初始化。会在 ``project_path`` 初始化 VCS 项目。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__pull:

.. rst-class:: classref-method

|void| **_pull**\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__pull>`

从远程仓库拉取修改。这可能会导致合并冲突。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__push:

.. rst-class:: classref-method

|void| **_push**\ (\ remote\: :ref:`String<class_String>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__push>`

将修改推送至远程仓库 ``remote``\ 。如果 ``force`` 为 ``true``\ ，则会进行强制推送，覆盖远程仓库中现有的修改历史。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__remove_branch:

.. rst-class:: classref-method

|void| **_remove_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__remove_branch>`

从本地 VCS 中移除一个分支。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__remove_remote:

.. rst-class:: classref-method

|void| **_remove_remote**\ (\ remote_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__remove_remote>`

从本地 VCS 中移除一个远程仓库。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__set_credentials:

.. rst-class:: classref-method

|void| **_set_credentials**\ (\ username\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`, ssh_public_key_path\: :ref:`String<class_String>`, ssh_private_key_path\: :ref:`String<class_String>`, ssh_passphrase\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__set_credentials>`

在底层 VCS 中设置用户认证信息。用户名 ``username`` 和密码 ``password`` 只会在进行 HTTPS 认证且没有在远程仓库 URL 中给出时使用。SSH 公钥路径 ``ssh_public_key_path``\ 、SSH 私钥路径 ``ssh_private_key_path``\ 、SSH 密码 ``ssh_passphrase`` 只会在进行 SSH 认证时使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__shut_down:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_shut_down**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__shut_down>`

关闭 VCS 插件实例。会在用户关闭编辑器或通过编辑器 UI 关闭该 VCS 插件时调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__stage_file:

.. rst-class:: classref-method

|void| **_stage_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__stage_file>`

将位于 ``file_path`` 的文件暂存到暂存区。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__unstage_file:

.. rst-class:: classref-method

|void| **_unstage_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__unstage_file>`

将位于 ``file_path`` 的文件从暂存区撤销到未暂存区。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_add_diff_hunks_into_diff_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **add_diff_hunks_into_diff_file**\ (\ diff_file\: :ref:`Dictionary<class_Dictionary>`, diff_hunks\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ ) :ref:`🔗<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`

辅助函数，用于将一组 ``diff_hunks`` 添加到 ``diff_file``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **add_line_diffs_into_diff_hunk**\ (\ diff_hunk\: :ref:`Dictionary<class_Dictionary>`, line_diffs\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ ) :ref:`🔗<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>`

辅助函数，用于将一组 ``line_diffs`` 添加到 ``diff_hunk`` 中。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_commit:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_commit**\ (\ msg\: :ref:`String<class_String>`, author\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`, unix_timestamp\: :ref:`int<class_int>`, offset_minutes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_commit>`

辅助函数， 用于创建一个提交 :ref:`Dictionary<class_Dictionary>` 项。\ ``msg`` 是该提交的提交消息。\ ``author`` 是单个人类可读的字符串，包含所有作者的详细信息，例如 VCS 中配置的电子邮件和名称。无论 VCS 可能以哪种格式为提交提供标识符，\ ``id`` 是该提交的标识符。\ ``unix_timestamp`` 是该提交被创建时的 UTC Unix 时间戳。\ ``offset_minutes`` 是该提交创建时当前系统时区的偏移量，单位为分钟。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_file**\ (\ new_file\: :ref:`String<class_String>`, old_file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_file>`

辅助函数，用于创建用来保存新旧文件路径差异的 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_hunk:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_hunk**\ (\ old_start\: :ref:`int<class_int>`, new_start\: :ref:`int<class_int>`, old_lines\: :ref:`int<class_int>`, new_lines\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_hunk>`

辅助函数，用于创建用于保存差异块数据的 :ref:`Dictionary<class_Dictionary>`\ 。\ ``old_start`` 是旧文件中的起始行号。\ ``new_start`` 是新文件中的起始行号。\ ``old_lines`` 是旧文件中的行数。\ ``new_lines`` 是新文件中的行数。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_line:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_line**\ (\ new_line_no\: :ref:`int<class_int>`, old_line_no\: :ref:`int<class_int>`, content\: :ref:`String<class_String>`, status\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_line>`

辅助函数，创建用于保存行差异的 :ref:`Dictionary<class_Dictionary>`\ 。\ ``new_line_no`` 是新文件中的行号（该行被删除时可为 ``-1``\ ）。\ ``old_line_no`` 是旧文件中的行号（该行为新增时可为 ``-1``\ ）。\ ``content`` 为差异文本。\ ``status`` 为保存该行原点的单字符字符串。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_status_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_status_file**\ (\ file_path\: :ref:`String<class_String>`, change_type\: :ref:`ChangeType<enum_EditorVCSInterface_ChangeType>`, area\: :ref:`TreeArea<enum_EditorVCSInterface_TreeArea>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_status_file>`

辅助函数，用于创建被编辑器用来读取文件状态的 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_popup_error:

.. rst-class:: classref-method

|void| **popup_error**\ (\ msg\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_popup_error>`

在编辑器中弹出一条错误消息，显示为来自底层 VCS。使用它来显示 VCS 特定的错误消息。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
