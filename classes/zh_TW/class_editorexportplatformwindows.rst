:github_url: hide

.. _class_EditorExportPlatformWindows:

EditorExportPlatformWindows
===========================

**繼承：** :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Windows 匯出器。

.. rst-class:: classref-introduction-group

說明
----

The Windows exporter customizes how a Windows build is handled. In the editor's "Export" window, it is created when adding a new "Windows" preset.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`為 Windows 匯出 <../tutorials/export/exporting_for_windows>`

.. rst-class:: classref-reftable-group

屬性
----

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

屬性說明
--------

.. _class_EditorExportPlatformWindows_property_application/company_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/company_name** :ref:`🔗<class_EditorExportPlatformWindows_property_application/company_name>`

出品該程式的公司。必填。見 `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/console_wrapper_icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/console_wrapper_icon** :ref:`🔗<class_EditorExportPlatformWindows_property_application/console_wrapper_icon>`

控制台封裝圖示檔。如果留空，則依次退回至 :ref:`application/icon<class_EditorExportPlatformWindows_property_application/icon>`\ 、\ :ref:`ProjectSettings.application/config/windows_native_icon<class_ProjectSettings_property_application/config/windows_native_icon>`\ 、\ :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/copyright** :ref:`🔗<class_EditorExportPlatformWindows_property_application/copyright>`

使用者可見的組合包版權宣告。選填。見 `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/d3d12_agility_sdk_multiarch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/d3d12_agility_sdk_multiarch** :ref:`🔗<class_EditorExportPlatformWindows_property_application/d3d12_agility_sdk_multiarch>`

If ``true``, and :ref:`application/export_d3d12<class_EditorExportPlatformWindows_property_application/export_d3d12>` is set, the Agility SDK DLLs will be stored in arch-specific subdirectories.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/export_angle:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_angle** :ref:`🔗<class_EditorExportPlatformWindows_property_application/export_angle>`

如果設定為\ ``1``\ ，則ANGLE 函式庫將隨匯出的應用程式一起匯出。如果設定為\ ``0``\ ，則匯出ANGLE 函式庫僅當 :ref:`ProjectSettings.rendering/gl_compatibility/driver<class_ProjectSettings_property_rendering/gl_compatibility/driver>` 設定為 ``"opengl3_angle"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/export_d3d12:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_d3d12** :ref:`🔗<class_EditorExportPlatformWindows_property_application/export_d3d12>`

If set to ``1``, the Direct3D 12 runtime libraries (Agility SDK, PIX) are exported with the exported application. If set to ``0``, Direct3D 12 libraries are exported only if :ref:`ProjectSettings.rendering/rendering_device/driver<class_ProjectSettings_property_rendering/rendering_device/driver>` is set to ``"d3d12"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/file_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/file_description** :ref:`🔗<class_EditorExportPlatformWindows_property_application/file_description>`

展示給使用者的檔案說明。必填。見 `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/file_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/file_version** :ref:`🔗<class_EditorExportPlatformWindows_property_application/file_version>`

檔的版本號。必填。見 `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/icon** :ref:`🔗<class_EditorExportPlatformWindows_property_application/icon>`

套用程式圖示檔。如果留空，則退回至 :ref:`ProjectSettings.application/config/windows_native_icon<class_ProjectSettings_property_application/config/windows_native_icon>`\ ，而後是 :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformWindows_property_application/icon_interpolation>`

用於調整套用程式圖示大小的插值方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/modify_resources:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/modify_resources** :ref:`🔗<class_EditorExportPlatformWindows_property_application/modify_resources>`

如果啟用，則會根據 ``application/*`` 中的其他值設定匯出後可執行檔的圖示和中繼資料。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/product_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/product_name** :ref:`🔗<class_EditorExportPlatformWindows_property_application/product_name>`

套用程式的名稱。必填。見 `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/product_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/product_version** :ref:`🔗<class_EditorExportPlatformWindows_property_application/product_version>`

使用者可見的套用程式版本。必填。見 `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/trademarks:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/trademarks** :ref:`🔗<class_EditorExportPlatformWindows_property_application/trademarks>`

適用於該檔案的商標及注冊商標。選填。見 `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformWindows_property_binary_format/architecture>`

Application executable architecture.

Supported architectures: ``x86_32``, ``x86_64``, and ``arm64``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_binary_format/embed_pck:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **binary_format/embed_pck** :ref:`🔗<class_EditorExportPlatformWindows_property_binary_format/embed_pck>`

如果為 ``true``\ ，則會將專案資源嵌入到可執行檔中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/custom_options:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **codesign/custom_options** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/custom_options>`

要傳給程式碼簽章工具的額外命令列參數的資料。見\ `簽章工具 <https://learn.microsoft.com/zh-cn/dotnet/framework/tools/signtool-exe>`__\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/description:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/description** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/description>`

對被簽章內容的描述。見\ `簽章工具 <https://learn.microsoft.com/zh-cn/dotnet/framework/tools/signtool-exe>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/digest_algorithm:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/digest_algorithm** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/digest_algorithm>`

建立簽章所使用的摘要演算法。見\ `簽章工具 <https://learn.microsoft.com/zh-cn/dotnet/framework/tools/signtool-exe>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/enable** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/enable>`

如果為 ``true``\ ，則啟用可執行檔簽章。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/identity** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/identity>`

用於對可執行檔簽章的 PKCS #12 憑證檔，或憑證的 SHA-1 雜湊（如果 :ref:`codesign/identity_type<class_EditorExportPlatformWindows_property_codesign/identity_type>` 為 "Use certificate store"）。見\ `簽章工具 <https://learn.microsoft.com/zh-cn/dotnet/framework/tools/signtool-exe>`__\ 。

可以使用環境變數 ``GODOT_WINDOWS_CODESIGN_IDENTITY`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/identity_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/identity_type** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/identity_type>`

要使用的身份型別。見\ `簽章工具 <https://learn.microsoft.com/zh-cn/dotnet/framework/tools/signtool-exe>`__\ 。

可以使用環境變數 ``GODOT_WINDOWS_CODESIGN_IDENTITY_TYPE`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/password:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/password** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/password>`

用於對可執行檔簽章的憑證檔的密碼。見\ `簽章工具 <https://learn.microsoft.com/zh-cn/dotnet/framework/tools/signtool-exe>`__\ 。

可以使用環境變數 ``GODOT_WINDOWS_CODESIGN_PASSWORD`` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/timestamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/timestamp** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/timestamp>`

如果為 ``true``\ ，則會在簽章中新增時間戳記。見\ `簽章工具 <https://learn.microsoft.com/zh-cn/dotnet/framework/tools/signtool-exe>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/timestamp_server_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/timestamp_server_url** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/timestamp_server_url>`

時間戳記伺服器的 URL。如果留空則使用預設伺服器。見\ `簽章工具 <https://learn.microsoft.com/zh-cn/dotnet/framework/tools/signtool-exe>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWindows_property_custom_template/debug>`

到自訂匯出範本的路徑。如果留空，則預設範本將被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWindows_property_custom_template/release>`

到自訂匯出範本的路徑。如果留空，則預設範本將被使用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformWindows_property_debug/export_console_wrapper>`

如果為 ``true``\ ，則會在匯出主可執行檔的同時匯出一個控制台封裝可執行檔，能夠在運作專案時啟用控制台輸出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformWindows_property_shader_baker/enabled>`

If ``true``, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ and Mobile renderers.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script>`

套用結束時，要在遠端主機上執行的腳本程式碼。

可以在腳本中使用以下變數：

- ``{temp_dir}`` - 遠端的暫存檔案夾路徑，用於上傳套用和腳本。

- ``{archive_name}`` - 包含上傳的套用程式的 ZIP 檔的名稱。

- ``{exe_name}`` - 套用程式可執行檔的名稱。

- ``{cmd_args}`` - 套用程式命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled>`

啟用通過 SSH/SCP 進行遠端部署。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp>`

要傳給 SCP 的額外命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh>`

要傳給 SSH 的額外命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/host>`

遠端主機 SSH 使用者名及位址，格式為 ``使用者名@地址``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/port>`

遠端主機 SSH 埠號。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script>`

運作套用時，要在遠端主機上執行的腳本程式碼。

可以在腳本中使用以下變數：

- ``{temp_dir}`` - 遠端的暫存檔案夾路徑，用於上傳套用和腳本。

- ``{archive_name}`` - 包含上傳的套用程式的 ZIP 檔的名稱。

- ``{exe_name}`` - 套用程式可執行檔的名稱。

- ``{cmd_args}`` - 套用程式命令列參數的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_texture_format/etc2_astc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/etc2_astc** :ref:`🔗<class_EditorExportPlatformWindows_property_texture_format/etc2_astc>`

If ``true``, project textures are exported in the ETC2/ASTC format.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_texture_format/s3tc_bptc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/s3tc_bptc** :ref:`🔗<class_EditorExportPlatformWindows_property_texture_format/s3tc_bptc>`

If ``true``, project textures are exported in the S3TC/BPTC format.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
