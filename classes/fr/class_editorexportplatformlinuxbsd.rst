:github_url: hide

.. _class_EditorExportPlatformLinuxBSD:

EditorExportPlatformLinuxBSD
============================

**Hérite de :** :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>` **<** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Exportateur pour Linux/BSD.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Exportation pour Linux <../tutorials/export/exporting_for_linux>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_EditorExportPlatformLinuxBSD_property_binary_format/architecture:

.. rst-class:: classref-property

:ref:`String<class_String>` **binary_format/architecture** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_binary_format/architecture>`

Application executable architecture.

Supported architectures: ``x86_32``, ``x86_64``, ``arm64``, ``arm32``, ``rv64``, ``ppc64``, and ``loongarch64``.

Official export templates include ``x86_32``, ``x86_64``, ``arm32``, and ``arm64`` binaries only.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **binary_format/embed_pck** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_binary_format/embed_pck>`

If ``true``, project resources are embedded into the executable.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_custom_template/debug:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/debug** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_custom_template/debug>`

Chemin vers le modèle d'export personnalisé. Si laissé vide, le modèle par défaut est utilisé.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_custom_template/release:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_template/release** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_custom_template/release>`

Chemin vers le modèle d'export personnalisé. Si laissé vide, le modèle par défaut est utilisé.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper:

.. rst-class:: classref-property

:ref:`int<class_int>` **debug/export_console_wrapper** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_debug/export_console_wrapper>`

If ``true``, a console wrapper is exported alongside the main executable, which allows running the project with enabled console output.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shader_baker/enabled** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_shader_baker/enabled>`

Si ``true``, les shaders seront compilées et intégrées dans l'application. Cette option n'est prise en charge que lors de l'utilisation des rendus Forward+ ou Mobile.

\ **Note :** Lors de l'exportation en tant que serveur dédié, le compilateur de shader est toujours désactivé car aucun rendu n'est effectué.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/cleanup_script** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/cleanup_script>`

Script code to execute on the remote host when app is finished.

The following variables can be used in the script:

- ``{temp_dir}`` - Path of temporary folder on the remote, used to upload app and scripts to.

- ``{archive_name}`` - Name of the ZIP containing uploaded application.

- ``{exe_name}`` - Name of application executable.

- ``{cmd_args}`` - Array of the command line argument for the application.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ssh_remote_deploy/enabled** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/enabled>`

Enables remote deploy using SSH/SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_scp** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_scp>`

Array of the additional command line arguments passed to the SCP.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/extra_args_ssh** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/extra_args_ssh>`

Array of the additional command line arguments passed to the SSH.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/host** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/host>`

Remote host SSH user name and address, in ``user@address`` format.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/port** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/port>`

Remote host SSH port number.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script:

.. rst-class:: classref-property

:ref:`String<class_String>` **ssh_remote_deploy/run_script** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_ssh_remote_deploy/run_script>`

Script code to execute on the remote host when running the app.

The following variables can be used in the script:

- ``{temp_dir}`` - Path of temporary folder on the remote, used to upload app and scripts to.

- ``{archive_name}`` - Name of the ZIP containing uploaded application.

- ``{exe_name}`` - Name of application executable.

- ``{cmd_args}`` - Array of the command line argument for the application.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/etc2_astc** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_texture_format/etc2_astc>`

If ``true``, project textures are exported in the ETC2/ASTC format.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **texture_format/s3tc_bptc** :ref:`🔗<class_EditorExportPlatformLinuxBSD_property_texture_format/s3tc_bptc>`

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
