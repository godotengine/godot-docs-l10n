:github_url: hide

.. meta::
	:keywords: directory, path, folder

.. _class_DirAccess:

DirAccess
=========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit des méthodes de gestion de répertoires et de leur contenu.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe est utilisée pour gérer des répertoires et leur contenu, même en dehors du dossier du projet.

\ **DirAccess** ne peut pas être instantané directement. Au lieu de cela, il est créé avec une méthode statique qui prend un chemin pour lequel il sera ouvert.

La plupart des méthodes ont une alternative statique qui peut être utilisée sans créer de **DirAccess**. Les méthodes statiques ne supportent que les chemins absolus (y compris ``res://`` et ``user://``).

::

    # Standard
    var repertoire = DirAccess.open("user://niveaux")
    repertoire.make_dir("monde1")
    # Statique
    DirAccess.make_dir_absolute("user://niveaux/monde1")

\ **Note :** L'accès aux répertoires du projet («res://») une fois exporté peut se comporter de façon inattendue puisque certains fichiers sont convertis en formats spécifiques au moteur et leurs fichiers sources originaux peuvent ne pas être présents dans le paquetage PCK attendu. À cause de cela, pour accéder aux ressources dans un projet exporté, il est recommandé d'utiliser :ref:`ResourceLoader<class_ResourceLoader>` au lieu de :ref:`FileAccess<class_FileAccess>`.

Voici un exemple sur la façon d'itérer à travers les fichiers d'un répertoire :


.. tabs::

 .. code-tab:: gdscript

    func contenu_repertoire(chemin):
        var repertoire = DirAccess.open(chemin)
        if repertoire:
            repertoire.list_dir_begin()
            var nom_fichier = repertoire.get_next()
            while nom_fichier!= "":
                if repertoire.current_is_dir():
                    print("Répertoire trouvé : " + nom_fichier)
                else:
                    print("Fichier trouvé : " + nom_fichier)
                nom_fichier = dir.get_next()
        else:
            print("Une erreur s'est produite lors de l'accès au chemin.")

 .. code-tab:: csharp

    public void ContenuRepertoire(string chemin)
    {
        using var repertoire = DirAccess.Open(chemin);
        if (repertoire != null)
        {
            repertoire.ListDirBegin();
            string nomFichier = repertoire.GetNext();
            while (nomFichier != "")
            {
                if (repertoire.CurrentIsDir())
                {
                    GD.Print($"Répertoire trouvé : {nomFichier}");
                }
                else
                {
                    GD.Print($"Fichier trouvé : {nomFichier}");
                }
                fileName = repertoire.GetNext();
            }
        }
        else
        {
            GD.Print("Une erreur s'est produite lors de l'accès au chemin.");
        }
    }



Gardez à l'esprit que les noms de fichiers peuvent changer ou être remappés après l'export. Si vous voulez voir la liste réelle des fichiers de ressources comme elle apparaît dans l'éditeur, utilisez :ref:`ResourceLoader.list_directory()<class_ResourceLoader_method_list_directory>` à la place.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Le système de fichiers <../tutorials/scripting/filesystem>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_hidden<class_DirAccess_property_include_hidden>`             |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`include_navigational<class_DirAccess_property_include_navigational>` |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`change_dir<class_DirAccess_method_change_dir>`\ (\ to_dir\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy<class_DirAccess_method_copy>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ )                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`copy_absolute<class_DirAccess_method_copy_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`create_link<class_DirAccess_method_create_link>`\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ )                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`create_temp<class_DirAccess_method_create_temp>`\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static|                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`current_is_dir<class_DirAccess_method_current_is_dir>`\ (\ ) |const|                                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists<class_DirAccess_method_dir_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`dir_exists_absolute<class_DirAccess_method_dir_exists_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_exists<class_DirAccess_method_file_exists>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_current_dir<class_DirAccess_method_get_current_dir>`\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const|                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_current_drive<class_DirAccess_method_get_current_drive>`\ (\ )                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories<class_DirAccess_method_get_directories>`\ (\ )                                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_directories_at<class_DirAccess_method_get_directories_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_drive_count<class_DirAccess_method_get_drive_count>`\ (\ ) |static|                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_label<class_DirAccess_method_get_drive_label>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_drive_name<class_DirAccess_method_get_drive_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |static|                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files<class_DirAccess_method_get_files>`\ (\ )                                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_files_at<class_DirAccess_method_get_files_at>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_filesystem_type<class_DirAccess_method_get_filesystem_type>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_next<class_DirAccess_method_get_next>`\ (\ )                                                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`get_open_error<class_DirAccess_method_get_open_error>`\ (\ ) |static|                                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_space_left<class_DirAccess_method_get_space_left>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_bundle<class_DirAccess_method_is_bundle>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_case_sensitive<class_DirAccess_method_is_case_sensitive>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_equivalent<class_DirAccess_method_is_equivalent>`\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const|                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_link<class_DirAccess_method_is_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`list_dir_begin<class_DirAccess_method_list_dir_begin>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`list_dir_end<class_DirAccess_method_list_dir_end>`\ (\ )                                                                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir<class_DirAccess_method_make_dir>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_absolute<class_DirAccess_method_make_dir_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                     |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive<class_DirAccess_method_make_dir_recursive>`\ (\ path\: :ref:`String<class_String>`\ )                                                                            |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`make_dir_recursive_absolute<class_DirAccess_method_make_dir_recursive_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DirAccess<class_DirAccess>`                 | :ref:`open<class_DirAccess_method_open>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                                               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`read_link<class_DirAccess_method_read_link>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove<class_DirAccess_method_remove>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`remove_absolute<class_DirAccess_method_remove_absolute>`\ (\ path\: :ref:`String<class_String>`\ ) |static|                                                                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename<class_DirAccess_method_rename>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ )                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`rename_absolute<class_DirAccess_method_rename_absolute>`\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static|                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_DirAccess_property_include_hidden:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_hidden** :ref:`🔗<class_DirAccess_property_include_hidden>`

.. rst-class:: classref-property-setget

- |void| **set_include_hidden**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_hidden**\ (\ )

Si ``true``, les fichiers cachés sont inclus lors de la navigation dans le répertoire.

Affecte :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>`, :ref:`get_directories()<class_DirAccess_method_get_directories>` et :ref:`get_files()<class_DirAccess_method_get_files>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_property_include_navigational:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **include_navigational** :ref:`🔗<class_DirAccess_property_include_navigational>`

.. rst-class:: classref-property-setget

- |void| **set_include_navigational**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_include_navigational**\ (\ )

Si ``true``, ``.`` et ``..`` sont inclus lors de la navigation dans le répertoire.

Affecte :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` et :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_DirAccess_method_change_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_dir**\ (\ to_dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_change_dir>`

Change le dossier actuellement ouvert en celui donné en argument. L'argument peut être relatif au répertoire actuel (par exemple ``nouveau_dossier`` ou ``./nouveau_dossier``), ou être un chemin absolu (par exemple ``/tmp/nouveau_dossier`` ou ``res://un_dossier/nouveau_dossier``).

Renvoie une des constantes de code :ref:`Error<enum_@GlobalScope_Error>` (et :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en cas de succès).

\ **Note :** Le nouveau répertoire doit être dans la même portée, par exemple lorsque vous avez ouvert un dossier à l'intérieur de ``res://``, vous ne pouvez pas le modifier en le répertoire ``user://``. Si vous avez besoin d'ouvrir un répertoire dans une autre portée d'accès, utilisez :ref:`open()<class_DirAccess_method_open>` pour créer une nouvelle instance.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_DirAccess_method_copy>`

Copie le fichier à l'emplacement ``from`` vers la destination ``to``. Ces deux arguments devraient contenir des chemins vers des fichiers, soit relatifs soit absolus. Si le fichier de destination existe et qu'il n'est pas protégé pour l'accès, il sera écrasé.

Si ``chmod_flags`` est différent de ``-1``, les permissions Unix pour le chemin de destination seront définies à la valeur fournie, si disponible sur le système d'exploitation actuel.

Renvoie une des constantes de code :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en cas de réussite).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_copy_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **copy_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`, chmod_flags\: :ref:`int<class_int>` = -1\ ) |static| :ref:`🔗<class_DirAccess_method_copy_absolute>`

Version statique de :ref:`copy()<class_DirAccess_method_copy>`. Supporte seulement les chemins absolus.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_link:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_link**\ (\ source\: :ref:`String<class_String>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_create_link>`

Crée un lien symbolique entre des fichiers ou des dossiers.

\ **Note :** Sur Windows, cette méthode ne fonctionne que si l'application s'exécute avec des privilèges élevés ou que le Mode Développeur est activé.

\ **Note :** Cette méthode est implémentée sur macOS, Linux et Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_create_temp:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **create_temp**\ (\ prefix\: :ref:`String<class_String>` = "", keep\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_DirAccess_method_create_temp>`

Crée un répertoire temporaire. Ce répertoire sera libéré lorsque le **DirAccess** renvoyé est libéré.

Si ``prefix`` n'est pas vide, il sera préfixé au nom du répertoire, séparé par un ``-``.

Si ``keep`` vaut ``true``, le répertoire n'est pas supprimé lorsque le **DirAccess** renvoyé est libéré.

Renvoie ``null`` si l'ouverture du répertoire a échoué. Vous pouvez utiliser :ref:`get_open_error()<class_DirAccess_method_get_open_error>` pour vérifier l'erreur qui s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_current_is_dir:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **current_is_dir**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_current_is_dir>`

Renvoie si l'élément actuellement traité lors du dernier appel à :ref:`get_next()<class_DirAccess_method_get_next>` est un dossier (le dossier actuel ``.`` et le dossier parent ``..`` comptent aussi des dossiers ordinaires pour cette méthode).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_dir_exists>`

Renvoie si le répertoire cible existe. L'argument peut être relatif au répertoire courant, ou être un chemin absolu.

\ **Note :** Le :ref:`bool<class_bool>` renvoyé dans l'éditeur et après l'export lorsqu'utilisé sur un chemin dans le répertoire ``res://`` peut être différent. Certains fichiers sont convertis en formats spécifiques au moteur lorsqu'ils sont exportés, pouvant potentiellement modifier la structure du répertoire.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_dir_exists_absolute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **dir_exists_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_dir_exists_absolute>`

Version statique de :ref:`dir_exists()<class_DirAccess_method_dir_exists>`. Supporte seulement les chemins absolus.

\ **Note :** Le :ref:`bool<class_bool>` renvoyé dans l'éditeur et après l'export lorsqu'utilisé sur un chemin dans le répertoire ``res://`` peut être différent. Certains fichiers sont convertis en formats spécifiques au moteur lorsqu'ils sont exportés, pouvant potentiellement modifier la structure du répertoire.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_file_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **file_exists**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_file_exists>`

Renvoie si le fichier cible existe. L'argument peut être relatif au répertoire courant, ou être un chemin absolu.

Pour un équivalent statique, utilisez :ref:`FileAccess.file_exists()<class_FileAccess_method_file_exists>`.

\ **Note :** De nombreux types de ressources sont importés (par ex. textures ou fichiers sonores), et leur ressource source ne sera pas incluse dans le jeu exporté, car seule la version importée est utilisée. Voir :ref:`ResourceLoader.exists()<class_ResourceLoader_method_exists>` pour une approche alternative qui prend en compte la ré-association des ressources.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_dir**\ (\ include_drive\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_DirAccess_method_get_current_dir>`

Renvoie le chemin absolu vers le dossier actuellement ouvert (par ex. : ``res://folder`` ou ``C:\tmp\folder``).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_current_drive:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_drive**\ (\ ) :ref:`🔗<class_DirAccess_method_get_current_drive>`

Renvoie l'index de disque du répertoire actuellement ouvert. Voir :ref:`get_drive_name()<class_DirAccess_method_get_drive_name>` pour convertir l'index renvoyé en le nom du lecteur.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories**\ (\ ) :ref:`🔗<class_DirAccess_method_get_directories>`

Renvoie un :ref:`PackedStringArray<class_PackedStringArray>` contenant des noms de fichiers du contenu du répertoire, à l'exception des fichiers. Le tableau est trié par ordre alphabétique.

Affectée par :ref:`include_hidden<class_DirAccess_property_include_hidden>` et :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Note :** Les répertoires renvoyés dans l'éditeur et après l'export dans le répertoire ``res://`` peuvent différer puisque certains fichiers sont convertis en formats spécifiques aux moteurs lorsqu'ils sont exportés.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_directories_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_directories_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_directories_at>`

Renvoie un :ref:`PackedStringArray<class_PackedStringArray>` contenant des noms de fichiers du contenu du répertoire, à l'exception des fichiers, au chemin ``path`` donné. Le tableau est trié par ordre alphabétique.

Utilisez :ref:`get_directories()<class_DirAccess_method_get_directories>` si vous voulez plus de contrôle sur ce qui est inclus

\ **Note :** Les répertoires renvoyés dans l'éditeur et après l'export dans le répertoire ``res://`` peuvent différer puisque certains fichiers sont convertis en formats spécifiques aux moteurs lorsqu'ils sont exportés.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_drive_count**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_count>`

Sur Windows, renvoie le nombre de disque (partitions) montés sur le système de fichiers actuel.

Sur macOS et Android, renvoie le nombre de volumes montés.

Sur Linux, renvoie le nombre de volumes montés, ainsi que les favoris GTK 3.

Pour les autres plates-formes, la méthode renvoie 0.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_label**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_label>`

On Windows, returns the label of the drive (partition) passed as an argument.

On other platforms, or if the requested drive does not exist, returns an empty String.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_drive_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_drive_name**\ (\ idx\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_drive_name>`

On Windows, returns the name of the drive (partition) passed as an argument (e.g. ``C:``).

On macOS, returns the path to the mounted volume passed as an argument.

On Linux, returns the path to the mounted volume or GTK 3 bookmark passed as an argument.

On Android (API level 30+), returns the path to the mounted volume as an argument.

On other platforms, or if the requested drive does not exist, returns an empty String.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files**\ (\ ) :ref:`🔗<class_DirAccess_method_get_files>`

Renvoie un :ref:`PackedStringArray<class_PackedStringArray>` contenant des noms de fichiers du contenu du répertoire, à l'exception des dossiers. Le tableau est trié par ordre alphabétique.

Affectée par :ref:`include_hidden<class_DirAccess_property_include_hidden>`.

\ **Note :** Lorsqu'utilisée sur un chemin ``res://`` dans un projet exporté, seuls les fichiers effectivement inclus dans le PCK au niveau du dossier donné sont renvoyés. En pratique, cela signifie que, puisque les ressources importées sont stockées dans un dossier ``.godot/`` racine, seuls les chemins vers des fichiers ``*.gd`` et ``*.import`` sont renvoyés (plus quelques fichiers tels que ``project.godot`` ou ``project.binary`` et l'icône du projet). Dans un projet exporté, la liste des fichiers renvoyés varie aussi selon si :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_files_at:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_at**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_get_files_at>`

Renvoie un :ref:`PackedStringArray<class_PackedStringArray>` contenant des noms de fichiers du contenu du répertoire, à l'exception des dossiers, au chemin ``path`` donné. Le tableau est trié par ordre alphabétique.

Utilisé :ref:`get_files()<class_DirAccess_method_get_files>` si vous voulez plus de contrôle sur ce qui est inclus.

\ **Note :** Lorsqu'utilisée sur un chemin ``res://`` dans un projet exporté, seuls les fichiers effectivement inclus dans le PCK au niveau du dossier donné sont renvoyés. En pratique, cela signifie que, puisque les ressources importées sont stockées dans un dossier ``.godot/`` racine, seuls les chemins vers des fichiers ``*.gd`` et ``*.import`` sont renvoyés (plus quelques fichiers tels que ``project.godot`` ou ``project.binary`` et l'icône du projet). Dans un projet exporté, la liste des fichiers renvoyés varie aussi selon :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_filesystem_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filesystem_type**\ (\ ) |const| :ref:`🔗<class_DirAccess_method_get_filesystem_type>`

Renvoie le nom du système de fichiers du disque du répertoire courant. Les valeurs renvoyées sont des chaînes en majuscules comme ``NTFS``, ``FAT32``, ``EXFAT``, ``APFS``, ``EXT4``, ``BTRFS`` etc...

\ **Note :** Cette méthode est implémentée sur MacOS, Linux, Windows et le système de fichiers PCK virtuels.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_next:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_next**\ (\ ) :ref:`🔗<class_DirAccess_method_get_next>`

Retourne l'élément suivant (un fichier ou un dossier) dans le dossier actuel.

Le nom du fichier ou du dossier est renvoyé (et non pas son chemin complet). Une fois que le flux a été entièrement traité, la méthode renvoie une :ref:`String<class_String>` vide et ferme automatiquement le flux (dans ce cas, l'appel à :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>` n'était pas obligatoire).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_open_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_open_error**\ (\ ) |static| :ref:`🔗<class_DirAccess_method_get_open_error>`

Renvoie le résultat du dernier appel à :ref:`open()<class_DirAccess_method_open>` sur le thread courant.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_get_space_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_space_left**\ (\ ) :ref:`🔗<class_DirAccess_method_get_space_left>`

Renvoie l'espace disponible sur le disque du dossier actuel, en bytes. Renvoie ``0`` si la méthode spécifique à la plateforme pour demander l'espace disponible échoue.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_bundle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bundle**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_bundle>`

Renvoie ``true`` si la dossier est un bundle macOS.

\ **Note :** Cette méthode n'est implémentée que sur macOS.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_case_sensitive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_case_sensitive**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_case_sensitive>`

Renvoie ``true`` si le système de fichiers ou répertoire utilisent des noms de fichiers sensibles à la casse.

\ **Note :** Cette méthode est implémentée sur macOS, Linux (pour les systèmes de fichiers EXT4 et F2FS seulement) et Windows. Sur d'autres plateformes, elle renvoie toujours ``true``.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_equivalent:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equivalent**\ (\ path_a\: :ref:`String<class_String>`, path_b\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_DirAccess_method_is_equivalent>`

Renvoie ``true`` si les chemins ``path_a`` et ``path_b`` se résolvent en le même objet du système de fichiers. Renvoie ``false`` sinon, même si les fichiers sont identiques à bit par bit (par exemple, des copies identiques du fichier qui ne sont pas des liens symboliques).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_is_link:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_is_link>`

Returns ``true`` if the file or directory is a symbolic link, directory junction, or other reparse point.

\ **Note:** This method is implemented on macOS, Linux, and Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_begin:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **list_dir_begin**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_begin>`

Initialise le flux utilisé pour lister tous les fichiers et dossiers avec la fonction :ref:`get_next()<class_DirAccess_method_get_next>`, fermant le flux actuellement ouvert si nécessaire. Une fois le flux traité, il devrait généralement être fermé avec :ref:`list_dir_end()<class_DirAccess_method_list_dir_end>`.

Affecté par :ref:`include_hidden<class_DirAccess_property_include_hidden>` et :ref:`include_navigational<class_DirAccess_property_include_navigational>`.

\ **Note :** L'ordre des fichiers et des répertoires renvoyés par cette méthode n'est pas déterministe, et peut varier entre les systèmes d'exploitation. Si vous voulez une liste de tous les fichiers ou dossiers triés par ordre alphabétique, utilisez :ref:`get_files()<class_DirAccess_method_get_files>` ou :ref:`get_directories()<class_DirAccess_method_get_directories>`.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_list_dir_end:

.. rst-class:: classref-method

|void| **list_dir_end**\ (\ ) :ref:`🔗<class_DirAccess_method_list_dir_end>`

Ferme le flux ouvert actuel avec :ref:`list_dir_begin()<class_DirAccess_method_list_dir_begin>` (qu'il ait été entièrement traité avec :ref:`get_next()<class_DirAccess_method_get_next>` n'a pas d'importance).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir>`

Crée un dossier. L'argument peut être relatif au dossier actuel, ou un chemin absolu. Le dossier cible doit être placé dans un dossier déjà existant (pour créer le chemin complet de manière récursive, voir :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`).

Renvoie une des constantes de code :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en cas de succès).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_absolute>`

Version statique de :ref:`make_dir()<class_DirAccess_method_make_dir>`. Supporte seulement les chemins absolus.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_make_dir_recursive>`

Crée un dossier cible et ainsi que tous les dossiers intermédiaires nécessaires sur le chemin, en appelant :ref:`make_dir()<class_DirAccess_method_make_dir>` de façon récursive. L'argument peut être un chemin relatif au dossier actuel, ou un chemin absolu.

Renvoie une des constantes de code :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en cas de succès).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_make_dir_recursive_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **make_dir_recursive_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_make_dir_recursive_absolute>`

Version statique de :ref:`make_dir_recursive()<class_DirAccess_method_make_dir_recursive>`. Supporte seulement les chemins absolus.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_open:

.. rst-class:: classref-method

:ref:`DirAccess<class_DirAccess>` **open**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_open>`

Crée un nouvel objet **DirAccess** et ouvre un dossier existant dans le système de fichiers. Le chemin ``path`` peut être dans l'arborescence du projet (``res://dossier``), dans le dossier utilisateur (``user://dossier``) ou un chemin absolu dans le système de fichiers de l'utilisateur (par ex. ``/tmp/dossier`` ou ``C:\tmp\dossier``).

Renvoie ``null`` si l'ouverture du dossier a échoué. Vous pouvez utiliser :ref:`get_open_error()<class_DirAccess_method_get_open_error>` pour vérifier l'erreur qui s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_read_link:

.. rst-class:: classref-method

:ref:`String<class_String>` **read_link**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_read_link>`

Renvoie la cible du lien symbolique.

\ **Note :** Cette méthode est implémentée sur macOS, Linux et Windows.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_remove>`

Supprime définitivement le fichier cible ou un répertoire vide. L'argument peut être relatif au dossier actuel, ou un chemin absolu. Si le répertoire cible n'est pas vide, l'opération échouera.

Si vous ne voulez pas supprimer définitivement le fichier ou le dossier, utilisez plutôt :ref:`OS.move_to_trash()<class_OS_method_move_to_trash>`.

Renvoie une des constantes de code :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en cas de succès).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_remove_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **remove_absolute**\ (\ path\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_remove_absolute>`

Version statique de :ref:`remove()<class_DirAccess_method_remove>`. Supporte seulement les chemins absolus.

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DirAccess_method_rename>`

Renomme (déplace) le fichier ou le dossier ``from`` vers la destination ``to``. Les deux arguments devraient être des chemins vers des fichiers ou des dossiers, soit relatifs soit absolus. Si le fichier ou le dossier de destination existe et que son accès n'est pas protégé, il sera écrasé.

Renvoie une des constantes de code :ref:`Error<enum_@GlobalScope_Error>` (:ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en cas de succès).

.. rst-class:: classref-item-separator

----

.. _class_DirAccess_method_rename_absolute:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rename_absolute**\ (\ from\: :ref:`String<class_String>`, to\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_DirAccess_method_rename_absolute>`

Version statique de :ref:`rename()<class_DirAccess_method_rename>`. Supporte seulement les chemins absolus.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
