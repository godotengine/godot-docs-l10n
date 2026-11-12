:github_url: hide

.. _class_ResourceLoader:

ResourceLoader
==============

**Hérite de :** :ref:`Object<class_Object>`

Un singleton pour charger des fichiers de ressource.

.. rst-class:: classref-introduction-group

Description
-----------

A singleton used to load resource files from the filesystem.

It uses the many :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` classes registered in the engine (either built-in or from a plugin) to load files into memory and convert them to a format that can be used by the engine.

\ **Note:** You have to import the files into the engine first to load them using :ref:`load()<class_ResourceLoader_method_load>`. If you want to load :ref:`Image<class_Image>`\ s at run-time, you may use :ref:`Image.load()<class_Image_method_load>`. If you want to import audio files, you can use the snippet described in :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Note:** Non-resource files such as plain text files cannot be read using **ResourceLoader**. Use :ref:`FileAccess<class_FileAccess>` for those files instead, and be aware that non-resource files are not exported by default (see notes in the :ref:`FileAccess<class_FileAccess>` class description for instructions on exporting them).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Threaded Loading Demo <https://godotengine.org/asset-library/asset/2778>`__

- `Démo de test de système d'exploitation <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_resource_format_loader<class_ResourceLoader_method_add_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ )                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`exists<class_ResourceLoader_method_exists>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ )                                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`get_cached_ref<class_ResourceLoader_method_get_cached_ref>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_dependencies<class_ResourceLoader_method_get_dependencies>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_recognized_extensions_for_type<class_ResourceLoader_method_get_recognized_extensions_for_type>`\ (\ type\: :ref:`String<class_String>`\ )                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`get_resource_type<class_ResourceLoader_method_get_resource_type>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_resource_uid<class_ResourceLoader_method_get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`has_cached<class_ResourceLoader_method_has_cached>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`list_directory<class_ResourceLoader_method_list_directory>`\ (\ directory_path\: :ref:`String<class_String>`\ )                                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load<class_ResourceLoader_method_load>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ )                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load_threaded_get<class_ResourceLoader_method_load_threaded_get>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` | :ref:`load_threaded_get_status<class_ResourceLoader_method_load_threaded_get_status>`\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ )                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`load_threaded_request<class_ResourceLoader_method_load_threaded_request>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`remove_resource_format_loader<class_ResourceLoader_method_remove_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ )                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_abort_on_missing_resources<class_ResourceLoader_method_set_abort_on_missing_resources>`\ (\ abort\: :ref:`bool<class_bool>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ResourceLoader_ThreadLoadStatus:

.. rst-class:: classref-enumeration

enum **ThreadLoadStatus**: :ref:`🔗<enum_ResourceLoader_ThreadLoadStatus>`

.. _class_ResourceLoader_constant_THREAD_LOAD_INVALID_RESOURCE:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_INVALID_RESOURCE** = ``0``

La ressource est invalide, ou n'a pas été chargée avec :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

.. _class_ResourceLoader_constant_THREAD_LOAD_IN_PROGRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_IN_PROGRESS** = ``1``

La ressource est toujours en cours de chargement.

.. _class_ResourceLoader_constant_THREAD_LOAD_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_FAILED** = ``2``

Une erreur s'est produite lors du chargement et il a échoué.

.. _class_ResourceLoader_constant_THREAD_LOAD_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_LOADED** = ``3``

La ressource a été chargée avec succès et peut être consultée via :ref:`load_threaded_get()<class_ResourceLoader_method_load_threaded_get>`.

.. rst-class:: classref-item-separator

----

.. _enum_ResourceLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceLoader_CacheMode>`

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Ni la ressource principale (celle dont le chargement est demandé) ni ses sous-ressources ne sont récupérées depuis le cache ni y sont stockées. Les dépendances (ressources externes) sont chargées avec :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

La ressource principale (celle dont le chargement est demandé), ses sous-ressources et ses dépendances (ressources externes) sont récupérées depuis le cache si elles y sont présentes, plutôt que chargées. Celles qui ne sont pas en cache sont chargées puis stockées dans le cache. Ces mêmes règles s’appliquent récursivement à l’ensemble de l’arbre des dépendances (ressources externes).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Comme :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`, mais le cache est vérifié pour la ressource principale (celle dont le chargement est demandé) ainsi que pour chacune de ses sous-ressources. Celles déjà présentes dans le cache, à condition que les types chargés et mis en cache correspondent, voient leurs données rafraîchies depuis le stockage dans les instances déjà existantes. Sinon, elles sont recréées en tant qu’objets entièrement nouveaux.

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Comme :ref:`CACHE_MODE_IGNORE<class_ResourceLoader_constant_CACHE_MODE_IGNORE>`, mais propagé de façon récursive dans l'arbre des dépendances (ressources externes).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Comme :ref:`CACHE_MODE_REPLACE<class_ResourceLoader_constant_CACHE_MODE_REPLACE>`, mais propagé de façon récursive dans l'arbre des dépendances (ressources externes).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ResourceLoader_method_add_resource_format_loader:

.. rst-class:: classref-method

|void| **add_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceLoader_method_add_resource_format_loader>`

Registers a new :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. The ResourceLoader will use the ResourceFormatLoader as described in :ref:`load()<class_ResourceLoader_method_load>`.

This method is performed implicitly for ResourceFormatLoaders written in GDScript (see :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` for more information).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **exists**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_ResourceLoader_method_exists>`

Returns whether a recognized resource exists for the given ``path``.

An optional ``type_hint`` can be used to further specify the :ref:`Resource<class_Resource>` type that should be handled by the :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Anything that inherits from :ref:`Resource<class_Resource>` can be used as a type hint, for example :ref:`Image<class_Image>`.

\ **Note:** If you use :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`, this method will return ``true`` for the taken path even if the resource wasn't saved (i.e. exists only in resource cache).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_cached_ref:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_cached_ref**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_cached_ref>`

Returns the cached resource reference for the given ``path``.

\ **Note:** If the resource is not cached, the returned :ref:`Resource<class_Resource>` will be invalid.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_dependencies>`

Returns the dependencies for the resource at the given ``path``.

Each dependency is a string that can be divided into sections by ``::``. There can be either one section or three sections, with the second section always being empty. When there is one section, it contains the file path. When there are three sections, the first section contains the UID and the third section contains the fallback path.

::

    for dependency in ResourceLoader.get_dependencies(path):
        if dependency.contains("::"):
            print(dependency.get_slice("::", 0)) # Prints the UID.
            print(dependency.get_slice("::", 2)) # Prints the fallback path.
        else:
            print(dependency) # Prints the path.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_recognized_extensions_for_type:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions_for_type**\ (\ type\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_recognized_extensions_for_type>`

Renvoie la liste des extensions reconnues pour ce type de ressource.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_resource_type**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_type>`

Returns the resource type associated with a given resource path.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_uid>`

Returns the ID associated with a given resource path, or ``-1`` when no such ID exists.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_has_cached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cached**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_has_cached>`

Returns whether a cached resource is available for the given ``path``.

Once a resource has been loaded by the engine, it is cached in memory for faster access, and future calls to the :ref:`load()<class_ResourceLoader_method_load>` method will use the cached version. The cached resource can be overridden by using :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>` on a new resource for that same path.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_list_directory:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_directory**\ (\ directory_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_list_directory>`

Liste un répertoire, renvoyant toutes les ressources et les sous-répertoires contenus dedans. Les fichiers ressources ont leurs noms de fichiers originaux comme visibles dans l'éditeur avant l'export. Les répertoires ont ``"/"`` ajouté.

::

    # Affiche ["extra_data/", "model.gltf", "model.tscn", "model_slime.png"]
    print(ResourceLoader.list_directory("res://assets/enemies/slime"))

\ **Note :** L'ordre des fichiers et des répertoires renvoyés par cette méthode n'est pas déterministe, et peut varier entre les systèmes d'exploitation.

\ **Note :** Pour traverser normalement le système de fichiers, voir :ref:`DirAccess<class_DirAccess>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load>`

Loads a resource at the given ``path``, caching the result for further access.

The registered :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ s are queried sequentially to find the first one which can handle the file's extension, and then attempt loading. If loading fails, the remaining ResourceFormatLoaders are also attempted.

An optional ``type_hint`` can be used to further specify the :ref:`Resource<class_Resource>` type that should be handled by the :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Anything that inherits from :ref:`Resource<class_Resource>` can be used as a type hint, for example :ref:`Image<class_Image>`.

The ``cache_mode`` property defines whether and how the cache should be used or updated when loading the resource.

Returns an empty resource if no :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` could handle the file, and prints an error if no file is found at the specified path.

GDScript has a simplified :ref:`@GDScript.load()<class_@GDScript_method_load>` built-in method which can be used in most situations, leaving the use of **ResourceLoader** for more advanced scenarios.

\ **Note:** If :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` is ``true``, :ref:`@GDScript.load()<class_@GDScript_method_load>` will not be able to read converted files in an exported project. If you rely on run-time loading of files present within the PCK, set :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` to ``false``.

\ **Note:** Relative paths will be prefixed with ``"res://"`` before loading, to avoid unexpected results make sure your paths are absolute.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load_threaded_get**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get>`

Renvoie la ressource chargée par :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

Si cela est appelé avant que le thread de chargement soit fini (c.-à-d. :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` n'est pas :ref:`THREAD_LOAD_LOADED<class_ResourceLoader_constant_THREAD_LOAD_LOADED>`), le thread d'appel sera bloqué jusqu'à ce que la ressource ait fini de charger. Cependant, il est recommandé d'utiliser :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` pour savoir quand le chargement est réellement terminé.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get_status:

.. rst-class:: classref-method

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **load_threaded_get_status**\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get_status>`

Returns the status of a threaded loading operation started with :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>` for the resource at ``path``.

An array variable can optionally be passed via ``progress``, and will return a one-element array containing the ratio of completion of the threaded loading (between ``0.0`` and ``1.0``).

\ **Note:** The recommended way of using this method is to call it during different frames (e.g., in :ref:`Node._process()<class_Node_private_method__process>`, instead of a loop).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_threaded_request**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_request>`

Charge la ressource en utilisant des threads. Si ``use_sub_threads`` vaut ``true``, plusieurs threads seront utilisés pour charger la ressource, ce qui rend le chargement plus rapide, mais peut affecter le thread principal (et donc causer des ralentissements de jeu).

Le paramètre ``cache_mode`` définit si et comment le cache devrait être utilisé ou mis à jour lors du chargement de la ressource.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_remove_resource_format_loader:

.. rst-class:: classref-method

|void| **remove_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ) :ref:`🔗<class_ResourceLoader_method_remove_resource_format_loader>`

Désenregistre le :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` donné.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_set_abort_on_missing_resources:

.. rst-class:: classref-method

|void| **set_abort_on_missing_resources**\ (\ abort\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ResourceLoader_method_set_abort_on_missing_resources>`

Change le comportement pour les sous-ressources manquantes. Le comportement par défaut est d'annuler le chargement.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
