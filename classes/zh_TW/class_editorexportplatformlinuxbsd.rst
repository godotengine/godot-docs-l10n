:github_url: hide

.. _class_EditorExportPlatformLinuxBSD:

EditorExportPlatformLinuxBSD
============================

**繼承：** :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Linux/BSD 匯出器。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`為 Linux 匯出 <../tutorials/export/exporting_for_linux>`

.. rst-class:: classref-reftable-group

屬性
----

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
   | :ref:`int<class_int>`       | :ref:`debug/export_debug_symbols<class_EditorExportPlatformLinuxBSD_property_debug/export_debug_symbols>`             |
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

屬性說明
--------

.. _class_EditorExportPlatformLinuxBSD_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_binary_format/architecture>`

程式可執行檔架構。

支援的架構有：\ ``x86_32``\ 、\ ``x86_64``\ 、\ ``arm64``\ 、\ ``arm32``\ 、\ ``rv64``\ 、\ ``ppc64``\ 、\ ``loongarch64``\ 。

官方匯出範本中僅包含 ``x86_32``\ 、\ ``x86_64``\ 、\ ``arm32``\ 、\ ``arm64`` 的二進位檔案。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **binary_format/embed_pck** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck>`

如果為 ``true``\ ，則會將專案資源嵌入到可執行檔中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_custom_template/debug>`

到自訂匯出範本的路徑。如果留空，則預設範本將被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_custom_template/release>`

到自訂匯出範本的路徑。如果留空，則預設範本將被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper>`

如果為 ``true``\ ，則會在匯出主可執行檔的同時匯出一個控制台封裝，能夠在運作專案時啟用控制台輸出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_debug/export_debug_symbols:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_debug_symbols** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_debug/export_debug_symbols>`

If ``true``, a debug symbol file (\ ``.debugsymbols``) is exported alongside the main executable.

\ **Note:** This requires a separate debug symbols file. This file must have the same name as the export template binary and an additional ``.debugsymbols`` extension, and must be present in the same directory as the export template binary, or in a ZIP archive with a ``.debugsymbols.zip`` extension.

\ **Note:** If debug symbols are embedded in the export template binary, they will remain embedded in the exported project binary regardless of this option, so it should be disabled in that case.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled>`

如果為 ``true``\ ，則著色器將被編譯並嵌入到應用程式中。此選項僅當使用 Forward+ 或 Mobile 渲染器時才受支援。

\ **注意：**\ 匯出為專用伺服器時，由於不執行渲染，著色器烘焙器將始終被停用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script>`

套用結束時，要在遠端主機上執行的腳本程式碼。

可以在腳本中使用以下變數：

- ``{temp_dir}`` - 遠端的暫存檔案夾路徑，用於上傳套用和腳本。

- ``{archive_name}`` - 包含上傳的套用程式的 ZIP 檔的名稱。

- ``{exe_name}`` - 套用程式可執行檔的名稱。

- ``{cmd_args}`` - 套用程式命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled>`

啟用通過 SSH/SCP 進行遠端部署。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp>`

要傳給 SCP 的額外命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh>`

要傳給 SSH 的額外命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host>`

遠端主機 SSH 使用者名及位址，格式為 ``使用者名@地址``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port>`

遠端主機 SSH 埠號。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script>`

運作套用時，要在遠端主機上執行的腳本程式碼。

可以在腳本中使用以下變數：

- ``{temp_dir}`` - 遠端的暫存檔案夾路徑，用於上傳套用和腳本。

- ``{archive_name}`` - 包含上傳的套用程式的 ZIP 檔的名稱。

- ``{exe_name}`` - 套用程式可執行檔的名稱。

- ``{cmd_args}`` - 套用程式命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/etc2_astc** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc>`

如果為 ``true``\ ，則專案中的紋理在匯出時使用 ETC2/ASTC 格式。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/s3tc_bptc** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc>`

如果為 ``true``\ ，則專案中的紋理在匯出時使用 S3TC/BPTC 格式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
