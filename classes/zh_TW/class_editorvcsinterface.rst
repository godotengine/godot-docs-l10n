:github_url: hide

.. _class_EditorVCSInterface:

EditorVCSInterface
==================

**繼承：** :ref:`Object<class_Object>`

版本控制系統（VCS）介面，用於讀取和寫入正在使用的本地 VCS。

.. rst-class:: classref-introduction-group

說明
----

定義編輯器使用的 API，負責從底層 VCS 提取資訊。該 API 的實作包含在 VCS 外掛程式中，這些外掛程式是繼承 **EditorVCSInterface** 並被附加（按需）到 **EditorVCSInterface** 的單例實例的 GDExtension 外掛程式。以下列出的所有虛函式都不會親自執行操作，而是會去呼叫 VCS 外掛程式中內部覆蓋的函式，以提供隨插即用的體驗。自訂 VCS 外掛程式應當繼承 **EditorVCSInterface** 並覆蓋這些虛函式。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`版本控制系統 <../tutorials/best_practices/version_control_systems>`

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

列舉
----

.. _enum_EditorVCSInterface_ChangeType:

.. rst-class:: classref-enumeration

enum **ChangeType**: :ref:`🔗<enum_EditorVCSInterface_ChangeType>`

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_NEW** = ``0``

新增了新檔案。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_MODIFIED** = ``1``

先前新增的檔已被修改。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_RENAMED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_RENAMED** = ``2``

先前新增的檔已被重命名。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_DELETED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_DELETED** = ``3``

先前新增的檔已被刪除。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_TYPECHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_TYPECHANGE** = ``4``

先前新增的檔案已更改型別。

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_UNMERGED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_UNMERGED** = ``5``

檔未合併。

.. rst-class:: classref-item-separator

----

.. _enum_EditorVCSInterface_TreeArea:

.. rst-class:: classref-enumeration

enum **TreeArea**: :ref:`🔗<enum_EditorVCSInterface_TreeArea>`

.. _class_EditorVCSInterface_constant_TREE_AREA_COMMIT:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_COMMIT** = ``0``

在提交區域遇到了提交。

.. _class_EditorVCSInterface_constant_TREE_AREA_STAGED:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_STAGED** = ``1``

在暫存區域遇到了檔。

.. _class_EditorVCSInterface_constant_TREE_AREA_UNSTAGED:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_UNSTAGED** = ``2``

在未暫存區域遇到了檔。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorVCSInterface_private_method__checkout_branch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_checkout_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__checkout_branch>`

檢出 VCS 中的 ``branch_name`` 分支。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__commit:

.. rst-class:: classref-method

|void| **_commit**\ (\ msg\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__commit>`

提交目前暫存的修改，並對提交套用提交資訊 ``msg``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__create_branch:

.. rst-class:: classref-method

|void| **_create_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__create_branch>`

在 VCS 中新建名為 ``branch_name`` 的分支。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__create_remote:

.. rst-class:: classref-method

|void| **_create_remote**\ (\ remote_name\: :ref:`String<class_String>`, remote_url\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__create_remote>`

建立一個名為 ``remote_name`` 的新遠端倉庫目標，並將其指向 ``remote_url``\ 。這既可以是 HTTPS 遠端倉庫，也可以是 SSH 遠端倉庫。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__discard_file:

.. rst-class:: classref-method

|void| **_discard_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__discard_file>`

丟棄對位於 ``file_path`` 的檔進行的修改。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__fetch:

.. rst-class:: classref-method

|void| **_fetch**\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__fetch>`

從遠程倉庫 ``remote`` 中抓取新修改，但不將修改寫入目前工作目錄。相當於 ``git fetch``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_branch_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **_get_branch_list**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_branch_list>`

獲取 :ref:`String<class_String>` 字串的 :ref:`Array<class_Array>` 陣列實例，包含在 VCS 中可用的分支名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_current_branch_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_current_branch_name**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_current_branch_name>`

獲取 VCS 中定義的目前分支名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_diff:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_diff**\ (\ identifier\: :ref:`String<class_String>`, area\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_diff>`

返回 :ref:`Dictionary<class_Dictionary>` 項的陣列（參見 :ref:`create_diff_file()<class_EditorVCSInterface_method_create_diff_file>`\ 、\ :ref:`create_diff_hunk()<class_EditorVCSInterface_method_create_diff_hunk>`\ 、\ :ref:`create_diff_line()<class_EditorVCSInterface_method_create_diff_line>`\ 、\ :ref:`add_line_diffs_into_diff_hunk()<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>`\ 、和 :ref:`add_diff_hunks_into_diff_file()<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`\ ），每項都包含一個差異的資訊。如果 ``identifier`` 是檔路徑，則返回呼函式差異；如果它是提交識別字，則返回提交差異。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_line_diff:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_line_diff**\ (\ file_path\: :ref:`String<class_String>`, text\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_line_diff>`

返回 :ref:`Dictionary<class_Dictionary>` 字典項的 :ref:`Array<class_Array>` 陣列（見 :ref:`create_diff_hunk()<class_EditorVCSInterface_method_create_diff_hunk>`\ ），每一項都包含位於 ``file_path`` 的檔與傳入的 ``text`` 之間的單行差異。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_modified_files_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_modified_files_data**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_modified_files_data>`

返回 :ref:`Dictionary<class_Dictionary>` 字典項的 :ref:`Array<class_Array>` 陣列（見 :ref:`create_status_file()<class_EditorVCSInterface_method_create_status_file>`\ ），每一項都包含專案檔案夾中每個已修改的檔的狀態資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_previous_commits:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_previous_commits**\ (\ max_commits\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_previous_commits>`

返回 :ref:`Dictionary<class_Dictionary>` 字典項的 :ref:`Array<class_Array>` 陣列（見 :ref:`create_commit()<class_EditorVCSInterface_method_create_commit>`\ ），每一項都包含一個過去提交的資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_remotes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **_get_remotes**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_remotes>`

返回 :ref:`String<class_String>` 字串的 :ref:`Array<class_Array>` 陣列，每一個都包含 VCS 中配置的一個遠端倉庫的名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_vcs_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_vcs_name**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_vcs_name>`

返回底層 VCS 提供方的名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_initialize**\ (\ project_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__initialize>`

從編輯器中呼叫時初始化該 VCS 外掛程式。返回該外掛程式是否成功初始化。會在 ``project_path`` 初始化 VCS 專案。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__pull:

.. rst-class:: classref-method

|void| **_pull**\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__pull>`

從遠程倉庫拉取修改。這可能會導致合併衝突。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__push:

.. rst-class:: classref-method

|void| **_push**\ (\ remote\: :ref:`String<class_String>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__push>`

將修改推送至遠程倉庫 ``remote``\ 。如果 ``force`` 為 ``true``\ ，則會進行強制推送，覆蓋遠端倉庫中現有的修改歷史。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__remove_branch:

.. rst-class:: classref-method

|void| **_remove_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__remove_branch>`

從本地 VCS 中移除一個分支。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__remove_remote:

.. rst-class:: classref-method

|void| **_remove_remote**\ (\ remote_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__remove_remote>`

從本地 VCS 中移除一個遠端倉庫。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__set_credentials:

.. rst-class:: classref-method

|void| **_set_credentials**\ (\ username\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`, ssh_public_key_path\: :ref:`String<class_String>`, ssh_private_key_path\: :ref:`String<class_String>`, ssh_passphrase\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__set_credentials>`

在底層 VCS 中設定使用者認證資訊。使用者名 ``username`` 和密碼 ``password`` 只會在進行 HTTPS 認證且沒有在遠端倉庫 URL 中給出時使用。SSH 公開金鑰路徑 ``ssh_public_key_path``\ 、SSH 私密金鑰路徑 ``ssh_private_key_path``\ 、SSH 密碼 ``ssh_passphrase`` 只會在進行 SSH 認證時使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__shut_down:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_shut_down**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__shut_down>`

關閉 VCS 外掛程式實例。會在使用者關閉編輯器或通過編輯器 UI 關閉該 VCS 外掛程式時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__stage_file:

.. rst-class:: classref-method

|void| **_stage_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__stage_file>`

將位於 ``file_path`` 的檔案暫存到暫存區。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__unstage_file:

.. rst-class:: classref-method

|void| **_unstage_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__unstage_file>`

將位於 ``file_path`` 的檔從暫存區撤銷到未暫存區。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_add_diff_hunks_into_diff_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **add_diff_hunks_into_diff_file**\ (\ diff_file\: :ref:`Dictionary<class_Dictionary>`, diff_hunks\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ ) :ref:`🔗<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`

輔助函式，用於將一組 ``diff_hunks`` 新增到 ``diff_file``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **add_line_diffs_into_diff_hunk**\ (\ diff_hunk\: :ref:`Dictionary<class_Dictionary>`, line_diffs\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ ) :ref:`🔗<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>`

輔助函式，用於將一組 ``line_diffs`` 新增到 ``diff_hunk`` 中。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_commit:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_commit**\ (\ msg\: :ref:`String<class_String>`, author\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`, unix_timestamp\: :ref:`int<class_int>`, offset_minutes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_commit>`

輔助函式， 用於建立一個提交 :ref:`Dictionary<class_Dictionary>` 項。\ ``msg`` 是該提交的提交消息。\ ``author`` 是單個人類可讀的字串，包含所有作者的詳細資訊，例如 VCS 中配置的電子郵件和名稱。無論 VCS 可能以哪種格式為提交提供識別字，\ ``id`` 是該提交的識別字。\ ``unix_timestamp`` 是該提交被建立時的 UTC Unix 時間戳記。\ ``offset_minutes`` 是該提交建立時目前系統時區的偏移量，單位為分鐘。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_file**\ (\ new_file\: :ref:`String<class_String>`, old_file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_file>`

輔助函式，用於建立用來保存新舊檔路徑差異的 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_hunk:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_hunk**\ (\ old_start\: :ref:`int<class_int>`, new_start\: :ref:`int<class_int>`, old_lines\: :ref:`int<class_int>`, new_lines\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_hunk>`

輔助函式，用於建立用於保存差異塊資料的 :ref:`Dictionary<class_Dictionary>`\ 。\ ``old_start`` 是舊文件中的起始行號。\ ``new_start`` 是新檔案中的起始行號。\ ``old_lines`` 是舊檔案中的行數。\ ``new_lines`` 是新檔案中的行數。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_line:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_line**\ (\ new_line_no\: :ref:`int<class_int>`, old_line_no\: :ref:`int<class_int>`, content\: :ref:`String<class_String>`, status\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_line>`

輔助函式，建立用於保存行差異的 :ref:`Dictionary<class_Dictionary>`\ 。\ ``new_line_no`` 是新檔案中的行號（該行被刪除時可為 ``-1``\ ）。\ ``old_line_no`` 是舊檔案中的行號（該行為新增時可為 ``-1``\ ）。\ ``content`` 為差異文字。\ ``status`` 為保存該行原點的單字元字串。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_status_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_status_file**\ (\ file_path\: :ref:`String<class_String>`, change_type\: :ref:`ChangeType<enum_EditorVCSInterface_ChangeType>`, area\: :ref:`TreeArea<enum_EditorVCSInterface_TreeArea>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_status_file>`

輔助函式，用於建立被編輯器用來讀取檔狀態的 :ref:`Dictionary<class_Dictionary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_popup_error:

.. rst-class:: classref-method

|void| **popup_error**\ (\ msg\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_popup_error>`

在編輯器中彈出一條錯誤消息，顯示為來自底層 VCS。使用它來顯示 VCS 特定的錯誤消息。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
