:github_url: hide

.. _class_ResourceFormatLoader:

ResourceFormatLoader
====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Charge un type de ressource spécifique depuis un fichier.

.. rst-class:: classref-introduction-group

Description
-----------

Godot loads resources in the editor or in exported games using ResourceFormatLoaders. They are queried automatically via the :ref:`ResourceLoader<class_ResourceLoader>` singleton, or when a resource with internal dependencies is loaded. Each file type may load as a different resource type, so multiple ResourceFormatLoaders are registered in the engine.

Extending this class allows you to define your own loader. Be sure to respect the documented return types and values. You should give it a global class name with ``class_name`` for it to be registered. Like built-in ResourceFormatLoaders, it will be called automatically when loading resources of its handled type(s). You may also implement a :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Note:** You can also extend :ref:`EditorImportPlugin<class_EditorImportPlugin>` if the resource type you need exists but Godot is unable to load its format. Choosing one way over another depends on if the format is suitable or not for the final exported game. For example, it's better to import ``.png`` textures as ``.ctex`` (:ref:`CompressedTexture2D<class_CompressedTexture2D>`) first, so they can be loaded with better efficiency on the graphics card.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_exists<class_ResourceFormatLoader_private_method__exists>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_classes_used<class_ResourceFormatLoader_private_method__get_classes_used>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_dependencies<class_ResourceFormatLoader_private_method__get_dependencies>`\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatLoader_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_script_class<class_ResourceFormatLoader_private_method__get_resource_script_class>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_type<class_ResourceFormatLoader_private_method__get_resource_type>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_resource_uid<class_ResourceFormatLoader_private_method__get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_type<class_ResourceFormatLoader_private_method__handles_type>`\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_load<class_ResourceFormatLoader_private_method__load>`\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatLoader_private_method__recognize_path>`\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_rename_dependencies<class_ResourceFormatLoader_private_method__rename_dependencies>`\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const|                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ResourceFormatLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceFormatLoader_CacheMode>`

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Ni la ressource principale (celle dont le chargement est demandé) ni ses sous-ressources ne sont récupérées depuis le cache ni y sont stockées. Les dépendances (ressources externes) sont chargées avec :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

La ressource principale (celle dont le chargement est demandé), ses sous-ressources et ses dépendances (ressources externes) sont récupérées depuis le cache si elles y sont présentes, plutôt que chargées. Celles qui ne sont pas en cache sont chargées puis stockées dans le cache. Ces mêmes règles s’appliquent récursivement à l’ensemble de l’arbre des dépendances (ressources externes).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Comme :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`, mais le cache est vérifié pour la ressource principale (celle dont le chargement est demandé) ainsi que pour chacune de ses sous-ressources. Celles déjà présentes dans le cache, à condition que les types chargés et mis en cache correspondent, voient leurs données rafraîchies depuis le stockage dans les instances déjà existantes. Sinon, elles sont recréées en tant qu’objets entièrement nouveaux.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Comme :ref:`CACHE_MODE_IGNORE<class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE>`, mais propagé de façon récursive dans l'arbre des dépendances (ressources externes).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Comme :ref:`CACHE_MODE_REPLACE<class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE>`, mais propagé de façon récursive dans l'arbre des dépendances (ressources externes).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ResourceFormatLoader_private_method__exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_exists**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__exists>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_classes_used:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_classes_used**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_classes_used>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_dependencies**\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_dependencies>`

Should return the dependencies for the resource at the given ``path``. Each dependency is a string composed of one to three sections separated by ``::``, with trailing empty sections omitted:

- The first section should contain the UID if the resource has one. Otherwise, it should contain the file path.

- The second section should contain the class name of the dependency if ``add_types`` is ``true``. Otherwise, it should be empty.

- The third section should contain the fallback path if the resource has a UID. Otherwise, it should be empty.

::

    func _get_dependencies(path, add_types):
        return [
            "uid://fqgvuwrkuixh::Script::res://script.gd",
            "uid://fqgvuwrkuixh::::res://script.gd",
            "res://script.gd::Script",
            "res://script.gd",
        ]

\ **Note:** Custom resource types defined by scripts aren't known by the :ref:`ClassDB<class_ClassDB>`, so ``"Resource"`` can be used for the class name.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_recognized_extensions>`

Obtient la liste des extensions des fichiers que ce chargeur peut lire.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_script_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_script_class**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_script_class>`

Renvoie le nom de classe de script associé à la :ref:`Resource<class_Resource>` au chemin ``path`` donné. Si la ressource n'a pas de script ou que le script n'est pas une classe nommée, elle devrait renvoyer ``""``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_type>`

Obtient le nom de classe de la ressource associée au chemin donné. Si le chargeur ne peut pas la gérer, il devrait renvoyer ``""``.

\ **Note :** Les types de ressources personnalisées définis par des scripts ne sont pas connus par la :ref:`ClassDB<class_ClassDB>`, donc vous pouvez simplement renvoyer ``"Resource"`` pour eux.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_uid>`

Doit renvoyer l'identifiant unique pour la ressource associée au chemin donné. Si cette méthode n'est pas redéfinie, un fichier ``.uid`` est généré avec le fichier de ressources, contenant l'identifiant unique.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__handles_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_type**\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__handles_type>`

Indique quelle classe de ressource ce chargeur peut charger.

\ **Note :** Les types de ressources personnalisées définis par des scripts ne sont pas connus par la :ref:`ClassDB<class_ClassDB>`, donc vous pouvez simplement gérer ``"Resource"`` pour eux.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__load:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_load**\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__load>`

Charge une ressource lorsque le moteur juge ce chargeur compatible. Si la ressource chargée est le résultat d'un import, ``original_path`` ciblera le fichier source. Renvoie un objet :ref:`Resource<class_Resource>` lors du succès, ou une constante :ref:`Error<enum_@GlobalScope_Error>` en cas d'échec.

La propriété ``cache_mode`` définit si et comment le cache devrait être utilisé ou mis à jour lors du chargement de la ressource. Voir :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__recognize_path>`

Indique si ce chargeur doit ou non charger une ressource depuis son chemin de ressource pour un type donné.

Si cette méthode n’est pas implémentée, le comportement par défaut vérifie si l’extension du chemin fait partie de celles renvoyées par :ref:`_get_recognized_extensions()<class_ResourceFormatLoader_private_method__get_recognized_extensions>`, et si le type fait partie de ceux renvoyés par :ref:`_get_resource_type()<class_ResourceFormatLoader_private_method__get_resource_type>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__rename_dependencies:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rename_dependencies**\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__rename_dependencies>`

Si elle implémentée, renomme les dépendances dans la ressource donnée et l'enregistre. ``renames`` est un dictionnaire ``{ String => String }`` qui associe les anciens chemins de dépendance avec les nouveaux chemins.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors du succès, ou une constante :ref:`Error<enum_@GlobalScope_Error>` en cas d'échec.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
