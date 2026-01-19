:github_url: hide

.. _class_EditorPaths:

EditorPaths
===========

**Hérite de :** :ref:`Object<class_Object>`

Editor-only singleton that returns paths to various OS-specific data folders and files.

.. rst-class:: classref-introduction-group

Description
-----------

This editor-only singleton returns OS-specific paths to various data folders and files. It can be used in editor plugins to ensure files are saved in the correct location on each operating system.

\ **Note:** This singleton is not accessible in exported projects. Attempting to access it in an exported project will result in a script error as the singleton won't be declared. To prevent script errors in exported projects, use :ref:`Engine.has_singleton()<class_Engine_method_has_singleton>` to check whether the singleton is available before using it.

\ **Note:** On the Linux/BSD platform, Godot complies with the `XDG Base Directory Specification <https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html>`__. You can override environment variables following the specification to change the editor and project data paths.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Les chemins de fichiers dans les projets Godot <../tutorials/io/data_paths>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_cache_dir<class_EditorPaths_method_get_cache_dir>`\ (\ ) |const|                       |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_config_dir<class_EditorPaths_method_get_config_dir>`\ (\ ) |const|                     |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_data_dir<class_EditorPaths_method_get_data_dir>`\ (\ ) |const|                         |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_project_settings_dir<class_EditorPaths_method_get_project_settings_dir>`\ (\ ) |const| |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_self_contained_file<class_EditorPaths_method_get_self_contained_file>`\ (\ ) |const|   |
   +-----------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_self_contained<class_EditorPaths_method_is_self_contained>`\ (\ ) |const|               |
   +-----------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorPaths_method_get_cache_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_cache_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_cache_dir>`

Returns the absolute path to the user's cache folder. This folder should be used for temporary data that can be removed safely whenever the editor is closed (such as generated resource thumbnails).

\ **Default paths per platform:**\ 

.. code:: text

    - Windows: %LOCALAPPDATA%\Godot\
    - macOS: ~/Library/Caches/Godot/
    - Linux: ~/.cache/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_config_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_config_dir>`

Returns the absolute path to the user's configuration folder. This folder should be used for *persistent* user configuration files.

\ **Default paths per platform:**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    (same as `get_data_dir()`)
    - macOS: ~/Library/Application Support/Godot/  (same as `get_data_dir()`)
    - Linux: ~/.config/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_data_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_data_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_data_dir>`

Returns the absolute path to the user's data folder. This folder should be used for *persistent* user data files such as installed export templates.

\ **Default paths per platform:**\ 

.. code:: text

    - Windows: %APPDATA%\Godot\                    (same as `get_config_dir()`)
    - macOS: ~/Library/Application Support/Godot/  (same as `get_config_dir()`)
    - Linux: ~/.local/share/godot/

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_project_settings_dir:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_project_settings_dir**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_project_settings_dir>`

Retourne le chemin relatif aux paramètres de l'éditeur pour ce projet. C'est habituellement ``"res://.godot/editor"``. Les projets ont tous un sous-répertoire unique dans le chemin de réglage où les paramètres de l'éditeur de projet sont sauvegardés.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_get_self_contained_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_self_contained_file**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_get_self_contained_file>`

Returns the absolute path to the self-contained file that makes the current Godot editor instance be considered as self-contained. Returns an empty string if the current Godot editor instance isn't self-contained. See also :ref:`is_self_contained()<class_EditorPaths_method_is_self_contained>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorPaths_method_is_self_contained:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_self_contained**\ (\ ) |const| :ref:`🔗<class_EditorPaths_method_is_self_contained>`

Returns ``true`` if the editor is marked as self-contained, ``false`` otherwise. When self-contained mode is enabled, user configuration, data and cache files are saved in an ``editor_data/`` folder next to the editor binary. This makes portable usage easier and ensures the Godot editor minimizes file writes outside its own folder. Self-contained mode is not available for exported projects.

Self-contained mode can be enabled by creating a file named ``._sc_`` or ``_sc_`` in the same folder as the editor binary or macOS .app bundle while the editor is not running. See also :ref:`get_self_contained_file()<class_EditorPaths_method_get_self_contained_file>`.

\ **Note:** On macOS, quarantine flag should be manually removed before using self-contained mode, see `Running on macOS <https://docs.godotengine.org/en/stable/tutorials/export/running_on_macos.html>`__.

\ **Note:** On macOS, placing ``_sc_`` or any other file inside .app bundle will break digital signature and make it non-portable, consider placing it in the same folder as the .app bundle instead.

\ **Note:** The Steam release of Godot uses self-contained mode by default.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
