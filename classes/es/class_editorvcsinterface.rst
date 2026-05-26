:github_url: hide

.. _class_EditorVCSInterface:

EditorVCSInterface
==================

**Hereda:** :ref:`Object<class_Object>`

Interfaz del Sistema de Control de Versiones (VCS), que lee y escribe en el VCS local en uso.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Define la API que el editor utiliza para extraer información del VCS subyacente. La implementación de esta API se incluye en los plugins de VCS, que son plugins GDExtension que heredan de **EditorVCSInterface** y se adjuntan (bajo demanda) a la instancia singleton de **EditorVCSInterface**. En lugar de realizar la tarea por sí mismas, todas las funciones virtuales listadas a continuación llaman a las funciones internas sobrescritas en los plugins de VCS para proporcionar una experiencia plug-n-play. Se supone que un plugin de VCS personalizado hereda de **EditorVCSInterface** y sobrescribe cada una de estas funciones virtuales.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Sistemas de control de versiones <../tutorials/best_practices/version_control_systems>`

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_EditorVCSInterface_ChangeType:

.. rst-class:: classref-enumeration

enum **ChangeType**: :ref:`🔗<enum_EditorVCSInterface_ChangeType>`

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_NEW:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_NEW** = ``0``

A new file has been added.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_MODIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_MODIFIED** = ``1``

An earlier added file has been modified.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_RENAMED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_RENAMED** = ``2``

An earlier added file has been renamed.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_DELETED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_DELETED** = ``3``

An earlier added file has been deleted.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_TYPECHANGE:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_TYPECHANGE** = ``4``

An earlier added file has been typechanged.

.. _class_EditorVCSInterface_constant_CHANGE_TYPE_UNMERGED:

.. rst-class:: classref-enumeration-constant

:ref:`ChangeType<enum_EditorVCSInterface_ChangeType>` **CHANGE_TYPE_UNMERGED** = ``5``

A file is left unmerged.

.. rst-class:: classref-item-separator

----

.. _enum_EditorVCSInterface_TreeArea:

.. rst-class:: classref-enumeration

enum **TreeArea**: :ref:`🔗<enum_EditorVCSInterface_TreeArea>`

.. _class_EditorVCSInterface_constant_TREE_AREA_COMMIT:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_COMMIT** = ``0``

A commit is encountered from the commit area.

.. _class_EditorVCSInterface_constant_TREE_AREA_STAGED:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_STAGED** = ``1``

A file is encountered from the staged area.

.. _class_EditorVCSInterface_constant_TREE_AREA_UNSTAGED:

.. rst-class:: classref-enumeration-constant

:ref:`TreeArea<enum_EditorVCSInterface_TreeArea>` **TREE_AREA_UNSTAGED** = ``2``

A file is encountered from the unstaged area.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorVCSInterface_private_method__allow_amends:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_allow_amends**\ (\ ) |virtual| :ref:`🔗<class_EditorVCSInterface_private_method__allow_amends>`

Returns whether or not the plugin allows commit amends.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__checkout_branch:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_checkout_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__checkout_branch>`

Checks out a ``branch_name`` in the VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__commit:

.. rst-class:: classref-method

|void| **_commit**\ (\ msg\: :ref:`String<class_String>`, amend\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorVCSInterface_private_method__commit>`

Commits the currently staged changes and applies the commit ``msg`` to the resulting commit. If ``amend`` is ``true`` the commit will modify the most recent commit instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__create_branch:

.. rst-class:: classref-method

|void| **_create_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__create_branch>`

Crea una nueva rama llamada ``branch_name`` en el VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__create_remote:

.. rst-class:: classref-method

|void| **_create_remote**\ (\ remote_name\: :ref:`String<class_String>`, remote_url\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__create_remote>`

Crea un nuevo destino remoto con el nombre ``remote_name`` y lo dirige a ``remote_url``. Esto puede ser un remoto HTTPS o un remoto SSH.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__discard_file:

.. rst-class:: classref-method

|void| **_discard_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__discard_file>`

Descarta los cambios realizados en un archivo presente en ``file_path``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__fetch:

.. rst-class:: classref-method

|void| **_fetch**\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__fetch>`

Obtiene los nuevos cambios del ``remote``, pero no escribe los cambios en el directorio de trabajo actual. Equivalente a ``git fetch``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_branch_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **_get_branch_list**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_branch_list>`

Obtiene una instancia de un :ref:`Array<class_Array>` de :ref:`String<class_String>`\ s que contiene los nombres de las ramas disponibles en el VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_current_branch_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_current_branch_name**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_current_branch_name>`

Obtiene el nombre de la rama actual definido en el VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_diff:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_diff**\ (\ identifier\: :ref:`String<class_String>`, area\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_diff>`

Devuelve un array de elementos :ref:`Dictionary<class_Dictionary>` (véase :ref:`create_diff_file()<class_EditorVCSInterface_method_create_diff_file>`, :ref:`create_diff_hunk()<class_EditorVCSInterface_method_create_diff_hunk>`, :ref:`create_diff_line()<class_EditorVCSInterface_method_create_diff_line>`, :ref:`add_line_diffs_into_diff_hunk()<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>` y :ref:`add_diff_hunks_into_diff_file()<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`), cada uno conteniendo información sobre una diferencia. Si ``identifier`` es una ruta de archivo, devuelve una diferencia de archivo, y si es un identificador de commit, entonces devuelve una diferencia de commit.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_line_diff:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_line_diff**\ (\ file_path\: :ref:`String<class_String>`, text\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_line_diff>`

Devuelve un :ref:`Array<class_Array>` de elementos :ref:`Dictionary<class_Dictionary>` (véase :ref:`create_diff_hunk()<class_EditorVCSInterface_method_create_diff_hunk>`), cada uno conteniendo una diferencia de línea entre un archivo en ``file_path`` y el ``text`` que se pasa.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_modified_files_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_modified_files_data**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_modified_files_data>`

Devuelve un :ref:`Array<class_Array>` de elementos :ref:`Dictionary<class_Dictionary>` (véase :ref:`create_status_file()<class_EditorVCSInterface_method_create_status_file>`), cada uno conteniendo los datos de estado de cada archivo modificado en la carpeta del proyecto.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_previous_commits:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_previous_commits**\ (\ max_commits\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_previous_commits>`

Devuelve un :ref:`Array<class_Array>` de elementos :ref:`Dictionary<class_Dictionary>` (véase :ref:`create_commit()<class_EditorVCSInterface_method_create_commit>`), cada uno conteniendo los datos para un commit pasado.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_remotes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **_get_remotes**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_remotes>`

Returns an :ref:`Array<class_Array>` of :ref:`String<class_String>`\ s, each containing the name of a remote configured in the VCS.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__get_vcs_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_vcs_name**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__get_vcs_name>`

Returns the name of the underlying VCS provider.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_initialize**\ (\ project_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__initialize>`

Initializes the VCS plugin when called from the editor. Returns whether or not the plugin was successfully initialized. A VCS project is initialized at ``project_path``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__pull:

.. rst-class:: classref-method

|void| **_pull**\ (\ remote\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__pull>`

Pulls changes from the remote. This can give rise to merge conflicts.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__push:

.. rst-class:: classref-method

|void| **_push**\ (\ remote\: :ref:`String<class_String>`, force\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__push>`

Pushes changes to the ``remote``. If ``force`` is ``true``, a force push will override the change history already present on the remote.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__remove_branch:

.. rst-class:: classref-method

|void| **_remove_branch**\ (\ branch_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__remove_branch>`

Elimina una rama del VCS local.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__remove_remote:

.. rst-class:: classref-method

|void| **_remove_remote**\ (\ remote_name\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__remove_remote>`

Elimina un remoto del VCS local.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__set_credentials:

.. rst-class:: classref-method

|void| **_set_credentials**\ (\ username\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`, ssh_public_key_path\: :ref:`String<class_String>`, ssh_private_key_path\: :ref:`String<class_String>`, ssh_passphrase\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__set_credentials>`

Set user credentials in the underlying VCS. ``username`` and ``password`` are used only during HTTPS authentication unless not already mentioned in the remote URL. ``ssh_public_key_path``, ``ssh_private_key_path``, and ``ssh_passphrase`` are only used during SSH authentication.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__shut_down:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_shut_down**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__shut_down>`

Shuts down VCS plugin instance. Called when the user either closes the editor or shuts down the VCS plugin through the editor UI.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__stage_file:

.. rst-class:: classref-method

|void| **_stage_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__stage_file>`

Stages the file present at ``file_path`` to the staged area.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_private_method__unstage_file:

.. rst-class:: classref-method

|void| **_unstage_file**\ (\ file_path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorVCSInterface_private_method__unstage_file>`

Unstages the file present at ``file_path`` from the staged area to the unstaged area.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_add_diff_hunks_into_diff_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **add_diff_hunks_into_diff_file**\ (\ diff_file\: :ref:`Dictionary<class_Dictionary>`, diff_hunks\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ ) :ref:`🔗<class_EditorVCSInterface_method_add_diff_hunks_into_diff_file>`

Helper function to add an array of ``diff_hunks`` into a ``diff_file``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **add_line_diffs_into_diff_hunk**\ (\ diff_hunk\: :ref:`Dictionary<class_Dictionary>`, line_diffs\: :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\]\ ) :ref:`🔗<class_EditorVCSInterface_method_add_line_diffs_into_diff_hunk>`

Helper function to add an array of ``line_diffs`` into a ``diff_hunk``.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_commit:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_commit**\ (\ msg\: :ref:`String<class_String>`, author\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`, unix_timestamp\: :ref:`int<class_int>`, offset_minutes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_commit>`

Helper function to create a commit :ref:`Dictionary<class_Dictionary>` item. ``msg`` is the commit message of the commit. ``author`` is a single human-readable string containing all the author's details, e.g. the email and name configured in the VCS. ``id`` is the identifier of the commit, in whichever format your VCS may provide an identifier to commits. ``unix_timestamp`` is the UTC Unix timestamp of when the commit was created. ``offset_minutes`` is the timezone offset in minutes, recorded from the system timezone where the commit was created.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_file**\ (\ new_file\: :ref:`String<class_String>`, old_file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_file>`

Helper function to create a :ref:`Dictionary<class_Dictionary>` for storing old and new diff file paths.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_hunk:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_hunk**\ (\ old_start\: :ref:`int<class_int>`, new_start\: :ref:`int<class_int>`, old_lines\: :ref:`int<class_int>`, new_lines\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_hunk>`

Helper function to create a :ref:`Dictionary<class_Dictionary>` for storing diff hunk data. ``old_start`` is the starting line number in old file. ``new_start`` is the starting line number in new file. ``old_lines`` is the number of lines in the old file. ``new_lines`` is the number of lines in the new file.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_diff_line:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_diff_line**\ (\ new_line_no\: :ref:`int<class_int>`, old_line_no\: :ref:`int<class_int>`, content\: :ref:`String<class_String>`, status\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_diff_line>`

Helper function to create a :ref:`Dictionary<class_Dictionary>` for storing a line diff. ``new_line_no`` is the line number in the new file (can be ``-1`` if the line is deleted). ``old_line_no`` is the line number in the old file (can be ``-1`` if the line is added). ``content`` is the diff text. ``status`` is a single character string which stores the line origin.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_create_status_file:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **create_status_file**\ (\ file_path\: :ref:`String<class_String>`, change_type\: :ref:`ChangeType<enum_EditorVCSInterface_ChangeType>`, area\: :ref:`TreeArea<enum_EditorVCSInterface_TreeArea>`\ ) :ref:`🔗<class_EditorVCSInterface_method_create_status_file>`

Helper function to create a :ref:`Dictionary<class_Dictionary>` used by editor to read the status of a file.

.. rst-class:: classref-item-separator

----

.. _class_EditorVCSInterface_method_popup_error:

.. rst-class:: classref-method

|void| **popup_error**\ (\ msg\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorVCSInterface_method_popup_error>`

Pops up an error message in the editor which is shown as coming from the underlying VCS. Use this to show VCS specific error messages.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
