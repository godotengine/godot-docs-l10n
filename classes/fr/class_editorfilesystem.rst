:github_url: hide

.. _class_EditorFileSystem:

EditorFileSystem
================

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Le système de fichier des ressources, tel que le voit l'éditeur.

.. rst-class:: classref-introduction-group

Description
-----------

Cet objet contient des informations sur toutes les ressources du système de fichiers, leurs types, etc.

\ **Note :** Cette classe ne devrait pas être instanciée directement. Accédez plutôt à l'instance unique avec :ref:`EditorInterface.get_resource_filesystem()<class_EditorInterface_method_get_resource_filesystem>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_type<class_EditorFileSystem_method_get_file_type>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                  |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_filesystem<class_EditorFileSystem_method_get_filesystem>`\ (\ )                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_filesystem_path<class_EditorFileSystem_method_get_filesystem_path>`\ (\ path\: :ref:`String<class_String>`\ )              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`get_scanning_progress<class_EditorFileSystem_method_get_scanning_progress>`\ (\ ) |const|                                      |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_scanning<class_EditorFileSystem_method_is_scanning>`\ (\ ) |const|                                                          |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`reimport_files<class_EditorFileSystem_method_reimport_files>`\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`scan<class_EditorFileSystem_method_scan>`\ (\ )                                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`scan_sources<class_EditorFileSystem_method_scan_sources>`\ (\ )                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`update_file<class_EditorFileSystem_method_update_file>`\ (\ path\: :ref:`String<class_String>`\ )                              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_EditorFileSystem_signal_filesystem_changed:

.. rst-class:: classref-signal

**filesystem_changed**\ (\ ) :ref:`🔗<class_EditorFileSystem_signal_filesystem_changed>`

Émis si le système de fichiers a changé.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reimported:

.. rst-class:: classref-signal

**resources_reimported**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reimported>`

Émis si une ressource est réimportée.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reimporting:

.. rst-class:: classref-signal

**resources_reimporting**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reimporting>`

Emitted before a resource is reimported.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_resources_reload:

.. rst-class:: classref-signal

**resources_reload**\ (\ resources\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_signal_resources_reload>`

Émis si au moins une ressource est rechargée lors de l’analyse du système de fichiers.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_script_classes_updated:

.. rst-class:: classref-signal

**script_classes_updated**\ (\ ) :ref:`🔗<class_EditorFileSystem_signal_script_classes_updated>`

Emitted when the list of global script classes gets updated.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_signal_sources_changed:

.. rst-class:: classref-signal

**sources_changed**\ (\ exist\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFileSystem_signal_sources_changed>`

Émis si la source de n'importe quel fichier a changé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorFileSystem_method_get_file_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_type**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystem_method_get_file_type>`

Renvoie le type de ressource du fichier, spécifié par le chemin complet. Ceci renvoie une chaîne comme ``"Resource"`` or ``"GDScript"``, mais *pas* l'extension du fichier comme ``".gd"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_filesystem:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_filesystem**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_get_filesystem>`

Obtient l'objet de répertoire racine.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_filesystem_path:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_filesystem_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileSystem_method_get_filesystem_path>`

Retourne une vue dans le système de fichiers à ``path``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_get_scanning_progress:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_scanning_progress**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_get_scanning_progress>`

Renvoie la progression de l'analyse de 0 à 1 si le système de fichiers est en train d'être scanné.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_is_scanning:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scanning**\ (\ ) |const| :ref:`🔗<class_EditorFileSystem_method_is_scanning>`

Renvoie ``true`` si le système de fichier a été scanné.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_reimport_files:

.. rst-class:: classref-method

|void| **reimport_files**\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileSystem_method_reimport_files>`

Reimports a set of files. Call this if these files or their ``.import`` files were directly edited by script or an external program.

If the file type changed or the file was newly created, use :ref:`update_file()<class_EditorFileSystem_method_update_file>` or :ref:`scan()<class_EditorFileSystem_method_scan>`.

\ **Note:** This function blocks until the import is finished. However, the main loop iteration, including timers and :ref:`Node._process()<class_Node_private_method__process>`, will occur during the import process due to progress bar updates. Avoid calls to :ref:`reimport_files()<class_EditorFileSystem_method_reimport_files>` or :ref:`scan()<class_EditorFileSystem_method_scan>` while an import is in progress.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_scan:

.. rst-class:: classref-method

|void| **scan**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_scan>`

Analysez le système de fichiers pour les modifications.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_scan_sources:

.. rst-class:: classref-method

|void| **scan_sources**\ (\ ) :ref:`🔗<class_EditorFileSystem_method_scan_sources>`

Vérifie si la source de n'importe quelle ressources importée a changé.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystem_method_update_file:

.. rst-class:: classref-method

|void| **update_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileSystem_method_update_file>`

Add a file in an existing directory, or schedule file information to be updated on editor restart. Can be used to update text files saved by an external program.

This will not import the file. To reimport, call :ref:`reimport_files()<class_EditorFileSystem_method_reimport_files>` or :ref:`scan()<class_EditorFileSystem_method_scan>` methods.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
