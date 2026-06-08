:github_url: hide

.. _class_EditorExportPlatformWindows:

EditorExportPlatformWindows
===========================

**Eredita:** :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Esportatore per Windows.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

L'esportatore per Windows personalizza il modo in cui viene gestita una build Windows. Nella finestra "Esporta" dell'editor, viene creato quando si aggiunge una nuova preimpostazione "Windows".

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Esportazione per Windows <../tutorials/export/exporting_for_windows>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_EditorExportPlatformWindows_property_application/company_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/company_name** :ref:`🔗<class_EditorExportPlatformWindows_property_application/company_name>`

Azienda che ha prodotto l'applicazione. Obbligatorio. Consulta `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/console_wrapper_icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/console_wrapper_icon** :ref:`🔗<class_EditorExportPlatformWindows_property_application/console_wrapper_icon>`

File icona del wrapper della console. Se lasciato vuoto, ricadrà su :ref:`application/icon<class_EditorExportPlatformWindows_property_application/icon>`, quindi su :ref:`ProjectSettings.application/config/windows_native_icon<class_ProjectSettings_property_application/config/windows_native_icon>` e infine, :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/copyright** :ref:`🔗<class_EditorExportPlatformWindows_property_application/copyright>`

Avviso di copyright per il pacchetto visibile all'utente. Facoltativo. Consulta `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/d3d12_agility_sdk_multiarch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/d3d12_agility_sdk_multiarch** :ref:`🔗<class_EditorExportPlatformWindows_property_application/d3d12_agility_sdk_multiarch>`

Se ``true`` e :ref:`application/export_d3d12<class_EditorExportPlatformWindows_property_application/export_d3d12>` è impostato, le DLL dell'Agility SDK verranno archiviate in sottocartelle specifiche dell'architettura.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/export_angle:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_angle** :ref:`🔗<class_EditorExportPlatformWindows_property_application/export_angle>`

Se impostato su ``1``, le librerie ANGLE sono esportate con l'applicazione esportata. Se impostato su ``0``, le librerie ANGLE sono esportate solo se :ref:`ProjectSettings.rendering/gl_compatibility/driver<class_ProjectSettings_property_rendering/gl_compatibility/driver>` è impostato su ``"opengl3_angle"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/export_d3d12:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/export_d3d12** :ref:`🔗<class_EditorExportPlatformWindows_property_application/export_d3d12>`

Se impostato su ``1``, le librerie di runtime Direct3D 12 (Agility SDK, PIX) vengono esportate con l'applicazione esportata. Se impostato su ``0``, le librerie Direct3D 12 vengono esportate solo se :ref:`ProjectSettings.rendering/rendering_device/driver<class_ProjectSettings_property_rendering/rendering_device/driver>` è impostato su ``"d3d12"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/file_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/file_description** :ref:`🔗<class_EditorExportPlatformWindows_property_application/file_description>`

Descrizione del file da presentare agli utenti. Obbligatorio. Consulta `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/file_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/file_version** :ref:`🔗<class_EditorExportPlatformWindows_property_application/file_version>`

Numero di versione del file. Ricade su :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` se lasciato vuoto. Consulta `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/icon:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/icon** :ref:`🔗<class_EditorExportPlatformWindows_property_application/icon>`

File dell'icona dell'applicazione. Se lasciato vuoto, ricadrà su :ref:`ProjectSettings.application/config/windows_native_icon<class_ProjectSettings_property_application/config/windows_native_icon>`, e poi su :ref:`ProjectSettings.application/config/icon<class_ProjectSettings_property_application/config/icon>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/icon_interpolation:

.. rst-class:: classref-property

:ref:`int<class_int>` **application/icon_interpolation** :ref:`🔗<class_EditorExportPlatformWindows_property_application/icon_interpolation>`

Metodo di interpolazione utilizzato per ridimensionare l'icona dell'applicazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/modify_resources:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **application/modify_resources** :ref:`🔗<class_EditorExportPlatformWindows_property_application/modify_resources>`

Se abilitato, l'icona e i metadati dell'eseguibile esportato vengono impostati in base agli altri valori ``application/*``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/product_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/product_name** :ref:`🔗<class_EditorExportPlatformWindows_property_application/product_name>`

Nome dell'applicazione. Obbligatorio. Consulta `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/product_version:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/product_version** :ref:`🔗<class_EditorExportPlatformWindows_property_application/product_version>`

Versione dell'applicazione visibile all'utente. Ricade su :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` se lasciato vuoto. Consulta `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_application/trademarks:

.. rst-class:: classref-property

:ref:`String<class_String>` **application/trademarks** :ref:`🔗<class_EditorExportPlatformWindows_property_application/trademarks>`

Marchi e marchi registrati che si applicano al file. Facoltativo. Consulta `StringFileInfo <https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformWindows_property_binary_format/architecture>`

Architettura dell'eseguibile dell'applicazione.

Architetture supportate: ``x86_32``, ``x86_64`` e ``arm64``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_binary_format/embed_pck:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **binary_format/embed_pck** :ref:`🔗<class_EditorExportPlatformWindows_property_binary_format/embed_pck>`

Se ``true``, le risorse del progetto sono incorporate nell'eseguibile.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/custom_options:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **codesign/custom_options** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/custom_options>`

Array degli argomenti aggiuntivi della riga di comando passati allo strumento di firma del codice. Consulta lo `strumento Firma <https://learn.microsoft.com/it-it/dotnet/framework/tools/signtool-exe>`__.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/description:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/description** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/description>`

Descrizione del contenuto firmato. Consulta lo `strumento Firma <https://learn.microsoft.com/it-it/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/digest_algorithm:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/digest_algorithm** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/digest_algorithm>`

Algoritmo di digest da utilizzare per creare la firma. Consulta lo `strumento Firma <https://learn.microsoft.com/it-it/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/enable** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/enable>`

Se ``true``, la firma dell'eseguibile è abilitata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/identity:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/identity** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/identity>`

File di certificato PKCS #12 utilizzato per firmare l'eseguibile o l'hash SHA-1 del certificato (se :ref:`codesign/identity_type<class_EditorExportPlatformWindows_property_codesign/identity_type>` è impostato su "Use certificate store"). Consulta lo `strumento Firma <https://learn.microsoft.com/it-it/dotnet/framework/tools/signtool-exe>`__. 

Può essere sovrascritto con la variabile di ambiente ``GODOT_WINDOWS_CODESIGN_IDENTITY``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/identity_type:

.. rst-class:: classref-property

:ref:`int<class_int>` **codesign/identity_type** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/identity_type>`

Tipo di identità da utilizzare. Consulta lo `strumento Firma <https://learn.microsoft.com/it-it/dotnet/framework/tools/signtool-exe>`__.

Può essere sovrascritto con la variabile di ambiente ``GODOT_WINDOWS_CODESIGN_IDENTITY_TYPE``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/password:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/password** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/password>`

Password per il file del certificato utilizzato per firmare l'eseguibile. Consulta lo `strumento Firma <https://learn.microsoft.com/it-it/dotnet/framework/tools/signtool-exe>`__.

Può essere sovrascritto con la variabile di ambiente ``GODOT_WINDOWS_CODESIGN_PASSWORD``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/timestamp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **codesign/timestamp** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/timestamp>`

Se ``true``, il timestamp viene aggiunto alla firma. Consulta lo `strumento Firma <https://learn.microsoft.com/it-it/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_codesign/timestamp_server_url:

.. rst-class:: classref-property

:ref:`String<class_String>` **codesign/timestamp_server_url** :ref:`🔗<class_EditorExportPlatformWindows_property_codesign/timestamp_server_url>`

URL del server di time stamp. Se lasciato vuoto, viene utilizzato il server predefinito. Consulta lo `strumento Firma <https://learn.microsoft.com/it-it/dotnet/framework/tools/signtool-exe>`__.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformWindows_property_custom_template/debug>`

Percorso al modello di esportazione personalizzato. Se lasciato vuoto, viene utilizzato il modello predefinito.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformWindows_property_custom_template/release>`

Percorso al modello di esportazione personalizzato. Se lasciato vuoto, viene utilizzato il modello predefinito.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformWindows_property_debug/export_console_wrapper>`

Se ``true``, un eseguibile wrapper della console viene esportato insieme all'eseguibile principale, il che consente di eseguire il progetto con l'output della console abilitato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformWindows_property_shader_baker/enabled>`

Se ``true``, gli shader saranno compilati e incorporati nell'applicazione. Questa opzione è supportata solo quando si utilizzano i renderer Forward+ e Mobile.

\ **Nota:** Quando si esporta come server dedicato, lo shader baker è sempre disabilitato poiché nessun rendering viene eseguito.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/cleanup_script>`

Codice script da eseguire sull'host remoto al termine dell'app.

Nello script possono essere utilizzate le seguenti variabili:

- ``{temp_dir}`` - Percorso della cartella temporanea sul remoto, utilizzata per caricare le app e gli script.

- ``{archive_name}`` - Nome dello ZIP contenente l'applicazione caricata.

- ``{exe_name}`` - Nome dell'eseguibile dell'applicazione.

- ``{cmd_args}`` - Array dell'argomento della riga di comando per l'applicazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/enabled>`

Abilita la distribuzione remota tramite SSH/SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_scp>`

Array degli argomenti aggiuntivi della riga di comando passati allo SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/extra_args_ssh>`

Array degli argomenti aggiuntivi della riga di comando passati allo SSH.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/host>`

Nome utente e indirizzo SSH dell'host remoto, nel formato ``utente@indirizzo``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/port>`

Numero di porta SSH dell'host remoto.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformWindows_property_ssh_remote_deploy/run_script>`

Codice script da eseguire sull'host remoto all'esecuzione dell'app.

Nello script possono essere utilizzate le seguenti variabili:

- ``{temp_dir}`` - Percorso della cartella temporanea sul remoto, utilizzata per caricare le app e gli script.

- ``{archive_name}`` - Nome dello ZIP contenente l'applicazione caricata.

- ``{exe_name}`` - Nome dell'eseguibile dell'applicazione.

- ``{cmd_args}`` - Array dell'argomento della riga di comando per l'applicazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_texture_format/etc2_astc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/etc2_astc** :ref:`🔗<class_EditorExportPlatformWindows_property_texture_format/etc2_astc>`

Se ``true``, le texture del progetto saranno esportate nel formato ETC2/ASTC.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformWindows_property_texture_format/s3tc_bptc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/s3tc_bptc** :ref:`🔗<class_EditorExportPlatformWindows_property_texture_format/s3tc_bptc>`

Se ``true``, le texture del progetto saranno esportate nel formato S3TC/BPTC.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
