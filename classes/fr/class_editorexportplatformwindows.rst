:github_url: hide

.. _class_EditorExportPlatformWindows:

EditorExportPlatformWindows
===========================

**Hérite de :** :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Exportateur pour Windows.

.. rst-class:: classref-introduction-group

Description
-----------

The Windows exporter customizes how a Windows build is handled. In the editor's "Export" window, it is created when adding a new "Windows" preset.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Exportation pour Windows <../tutorials/export/exporting_for_windows>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_EditorExportPlatformWindows_property_application/company_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/company_name** :ref:`🔗<class_EditorExportPlatformWindows_property_application/company_name>`

Company that produced the application. Required. See `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/console_wrapper_icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/console_wrapper_icon** :ref:`🔗<class_EditorExportPlatformWindows_property_application/console_wrapper_icon>`

Console wrapper icon file. If left empty, it will fallback to :ref:`application/icon<class_EditorExportPlatformWindows_property_application/icon>`, then to :ref:`ProjectSettings.application/config/windows_native_icon<class_ProjectSettings_property_application/config/windows_native_icon>`, and lastly, :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/copyright** :ref:`🔗<class_EditorExportPlatformWindows_property_application/copyright>`

Copyright notice for the bundle visible to the user. Optional. See `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

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

If set to ``1``, ANGLE libraries are exported with the exported application. If set to ``0``, ANGLE libraries are exported only if :ref:`ProjectSettings.rendering/gl_compatibility/driver<class_ProjectSettings_property_rendering/gl_compatibility/driver>` is set to ``"opengl3_angle"``.

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

File description to be presented to users. Required. See `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/file_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/file_version** :ref:`🔗<class_EditorExportPlatformWindows_property_application/file_version>`

Version number of the file. Falls back to :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` if left empty. See `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/icon** :ref:`🔗<class_EditorExportPlatformWindows_property_application/icon>`

Application icon file. If left empty, it will fallback to :ref:`ProjectSettings.application/config/windows_native_icon<class_ProjectSettings_property_application/config/windows_native_icon>`, and then to :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformWindows_property_application/icon_interpolation>`

Méthode d'interpolation utilisée pour redimensionner l'icône de l'application.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/modify_resources:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/modify_resources** :ref:`🔗<class_EditorExportPlatformWindows_property_application/modify_resources>`

If enabled, icon and metadata of the exported executable is set according to the other ``application/*`` values.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/product_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/product_name** :ref:`🔗<class_EditorExportPlatformWindows_property_application/product_name>`

Nom de l'application. Requis. Voir `StringFileInfo <https://learn.microsoft.com/fr-fr/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/product_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/product_version** :ref:`🔗<class_EditorExportPlatformWindows_property_application/product_version>`

Version d'application visible par l'utilisateur. Revient à :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` si laissé vide. Voir `StringFileInfo <https://learn.microsoft.com/fr-fr/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/trademarks:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/trademarks** :ref:`🔗<class_EditorExportPlatformWindows_property_application/trademarks>`

Marques et marques déposées qui s'appliquent au fichier. Facultatif. Voir `StringFileInfo <https://learn.microsoft.com/fr-fr/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformWindows_property_binary_format/architecture>`

Architecture de l'exécutable de l'application.

Architectures supportées : ``x86_32``, ``x86_64``, et ``arm64``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_binary_format/embed_pck:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **binary_format/embed_pck** :ref:`🔗<class_EditorExportPlatformWindows_property_binary_format/embed_pck>`

If ``true``, project resources are embedded into the executable.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/custom_options:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **codesign/custom_options** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/custom_options>`

Array of the additional command line arguments passed to the code signing tool. See `Sign Tool <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/description:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/description** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/description>`

Description of the signed content. See `Sign Tool <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/digest_algorithm:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/digest_algorithm** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/digest_algorithm>`

Digest algorithm to use for creating signature. See `Sign Tool <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/enable** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/enable>`

If ``true``, executable signing is enabled.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/identity** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/identity>`

PKCS #12 certificate file used to sign executable or certificate SHA-1 hash (if :ref:`codesign/identity_type<class_EditorExportPlatformWindows_property_codesign/identity_type>` is set to "Use certificate store"). See `Sign Tool <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

Can be overridden with the environment variable ``GODOT_WINDOWS_CODESIGN_IDENTITY``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/identity_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/identity_type** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/identity_type>`

Type of identity to use. See `Sign Tool <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

Can be overridden with the environment variable ``GODOT_WINDOWS_CODESIGN_IDENTITY_TYPE``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/password:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/password** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/password>`

Password for the certificate file used to sign executable. See `Sign Tool <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

Can be overridden with the environment variable ``GODOT_WINDOWS_CODESIGN_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/timestamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/timestamp** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/timestamp>`

If ``true``, time-stamp is added to the signature. See `Sign Tool <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/timestamp_server_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/timestamp_server_url** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/timestamp_server_url>`

URL of the time stamp server. If left empty, the default server is used. See `Sign Tool <https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWindows_property_custom_template/debug>`

Chemin vers le modèle d'export personnalisé. Si laissé vide, le modèle par défaut est utilisé.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWindows_property_custom_template/release>`

Chemin vers le modèle d'export personnalisé. Si laissé vide, le modèle par défaut est utilisé.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformWindows_property_debug/export_console_wrapper>`

If ``true``, a console wrapper executable is exported alongside the main executable, which allows running the project with enabled console output.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformWindows_property_shader_baker/enabled>`

Si ``true``, les shaders seront compilées et intégrées dans l'application. Cette option n'est prise en charge que lors de l'utilisation des rendus Forward+ et Mobile.

\ **Note:** Lors de l'exportation en tant que serveur dédié, le compilateur de shaders est toujours désactivé car aucun rendu n'est effectué.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script>`

Script code to execute on the remote host when app is finished.

The following variables can be used in the script:

- ``{temp_dir}`` - Path of temporary folder on the remote, used to upload app and scripts to.

- ``{archive_name}`` - Name of the ZIP containing uploaded application.

- ``{exe_name}`` - Name of application executable.

- ``{cmd_args}`` - Array of the command line argument for the application.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled>`

Enables remote deploy using SSH/SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp>`

Array of the additional command line arguments passed to the SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh>`

Array of the additional command line arguments passed to the SSH.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/host>`

Remote host SSH user name and address, in ``user@address`` format.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/port>`

Remote host SSH port number.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script>`

Script code to execute on the remote host when running the app.

The following variables can be used in the script:

- ``{temp_dir}`` - Path of temporary folder on the remote, used to upload app and scripts to.

- ``{archive_name}`` - Name of the ZIP containing uploaded application.

- ``{exe_name}`` - Name of application executable.

- ``{cmd_args}`` - Array of the command line argument for the application.

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

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
