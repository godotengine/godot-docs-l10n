:github_url: hide

.. _class_Dictionary:

Dictionary
==========

Une structure de données intégrée qui contient des paires clé-valeur.

.. rst-class:: classref-introduction-group

Description
-----------

Les dictionnaires sont des conteneurs associatifs qui contient des valeurs référencées par des clés uniques. Les dictionnaires préservent l'ordre d'insertion lors de l'ajout d'éléments. Dans d'autres langages de programmation, cette structure de données est souvent appelée table de hachage ou tableau associatif.

Vous pouvez définir un dictionnaire avec une liste de paires au format ``clé : valeur`` séparées par des virgules entre des accolades ``{}``.

Créer un dictionnaire :


.. tabs::

 .. code-tab:: gdscript

    var mon_dict = {} # Crée un dictionnaire vide.

    var dict_variable_cle = "Une autre clé"
    var dict_variable_valeur = "valeur2"
    var autre_dict = {
        "Une clé": "valeur1",
        dict_variable_cle : dict_variable_valeur,
    }

    var dict_points = {"Blanc": 50, "Jaune": 75, "Orange": 100}

    # Syntaxe alternative façon Lua.
    # Ne nécessite pas de guillemets autour des clés, mais seules les chaines de caractères constantes peuvent être utilisées comme nom pour les clés.
    # De plus, les noms des clés doivent commencer par une lettre ou un tiret du bas ("_").
    # Ici, `une_cle` est une chaine de caractère, pas une variable !
    another_dict = {
        une_cle = 42,
    }

 .. code-tab:: csharp

    var monDict = new Godot.Collections.Dictionary(); // Crée un dictionnaire vide.
    var dictPoints= new Godot.Collections.Dictionary
    {
        {"Blanc", 50},
        {"Jaune", 75},
        {"Orange", 100}
    };



Vous pouvez accéder aux valeurs d'un dictionnaire en utilisant la clé associée. Dans l'exemple suivant, ``dict_points["Blanc"]`` renverra ``50``. Vous pouvez aussi écrire ``dict_points.Blanc``, qui est équivalent. Par contre, vous devez utiliser la syntaxe avec les accolades si la clé n'est pas une chaine de caractère constante (comme un nombre ou une variable).


.. tabs::

 .. code-tab:: gdscript

    export(string, "Blanc", "Jaune", "Orange") var ma_couleur: String
    var dict_points = {"Blanc": 50, "Jaune": 75, "Orange": 100}
    func _ready():
        # On ne peut pas utiliser la syntaxe en point puisque `ma_couleur` est une variable.
        var points = dict_points[ma_couleur]

 .. code-tab:: csharp

    [Export(PropertyHint.Enum, "Blanc,Jaune,Orange")]
    public string MaCouleur { get; set; }
    private Godot.Collections.Dictionary _dictPoints= new Godot.Collections.Dictionary
    {
        {"Blanc", 50},
        {"Jaune", 75},
        {"Orange", 100}
    };

    public override void _Ready()
    {
        int points = (int)_dictPoints[MaCouleur];
    }



Dans l'exemple au-dessus, ``points`` sera assigné à une valeur associée à la couleur choisie dans ``ma_couleur``.

Les dictionnaires peuvent contenir des données plus complexes :


.. tabs::

 .. code-tab:: gdscript

    var mon_dict = {
        "Premier tableau": [1, 2, 3, 4] # Assigne un Array (Tableau) à un clé String.
    }

 .. code-tab:: csharp

    var monDict= new Godot.Collections.Dictionary
    {
        {"Premier tableau", new Godot.Collections.Array{1, 2, 3, 4}}
    };



Pour ajouter une clé à un dictionnaire déjà existant, accédez-y comme si c'était une clé existante et associez lui une valeur :


.. tabs::

 .. code-tab:: gdscript

    var dict_points = {"Blanc": 50, "Jaune": 75, "Orange": 100}
    points_dict["Bleu"] = 150 # Ajoute "Bleu" comme clé et assigne 150 pour sa valeur.

 .. code-tab:: csharp

    var dictPoints = new Godot.Collections.Dictionary
    {
        {"Blanc", 50},
        {"Jaune", 75},
        {"Orange", 100}
    };
    pointsDict["Blue"] = 150; // Ajoute "Bleu" comme clé et assigne 150 pour sa valeur.



Enfin, les dictionnaires non typés peuvent utiliser différents types de clés et de valeurs dans le même dictionnaire :


.. tabs::

 .. code-tab:: gdscript

    # Ceci est un dictionnaire valide.
    # Pour accéder à "Sous valeur" en-dessous, utilisez `mon_dict.sous_dict.sous_cle` ou `mon_dict["sous_dict"]["sous_cle"]`.
    # Les styles d'accès peuvent être mélangés suivant les besoins.
    var mon_dict = {
        "Clé String": 5,
        4: [1, 2, 3],
        7: "Hello",
        "sous_dict": {"sous_cle": "Sous valeur"},
    }

 .. code-tab:: csharp

    // Ceci est un dictionnaire valide.
    // Pour accéder à "Sous valeur" en-dessous, utilisez`((Godot.Collections.Dictionary)monDict["sous_dict"])["sous_cle"]`.
    var monDict = new Godot.Collections.Dictionary {
        {"Clé String", 5},
        {4, new Godot.Collections.Array{1,2,3}},
        {7, "Hello"},
        {"sous_dict", new Godot.Collections.Dictionary{{"sous_cle", "Sous valeur"}}}
    };



Les clés d'un dictionnaire peuvent être itérées dessus avec le mot-clé ``for``\  :


.. tabs::

 .. code-tab:: gdscript

    var courses = {"Orange": 20, "Pomme": 2, "Banane": 4}
    for fruit in courses :
        var quantite = courses[fruit]

 .. code-tab:: csharp

    var courses = new Godot.Collections.Dictionary{{"Orange", 20}, {"Pomme", 2}, {"Banane", 4}};
    foreach (var (fruit, quantite) in courses)
    {
        // `fruit` est la clé, `quantite` est la valeur.
    }



Pour imposer un certain type pour les clés et les valeurs, vous pouvez créer un *dictionnaire typé*. Les dictionnaires typés ne peuvent contenir que des clés et des valeurs des types donnés, ou qui héritent des classes données :


.. tabs::

 .. code-tab:: gdscript

    # Crée un dictionnaire typé avec des clés de type String et des valeurs de type int.
    # Essayer d'utiliser un autre type pour les clés ou les valeurs résultera en une erreur.
    var dict_type: Dictionary[String, int] = {
        "une_cle": 1,
        "une_autre_cle": 2,
    }

    # Crée un dictionnaire typé avec des clés de type String et des valeurs de n'importe quel type.
    # Essayer d'utiliser un autre type pour les clés résultera en une erreur.
    var dict_type_cle_seulement: Dictionary[String, Variant] = {
        "une_cle": 12.34,
        "une_autre_cle": "string",
    }

 .. code-tab:: csharp

    // Crée un dictionnaire typé avec des clés de type String et des valeurs de type int.
    // Essayer d'utiliser un autre type pour les clés ou les valeurs résultera en une erreur.
    var dictType = new Godot.Collections.Dictionary<String, int> {
        {"une_cle", 1},
        {"une_autre_cle", 2},
    };

    // Crée un dictionnaire typé avec des clés de type String et des valeurs de n'importe quel type.
    // Essayer d'utiliser un autre type pour les clés résultera en une erreur.
    var dictTypeCleSeulement = new Godot.Collections.Dictionary<String, Variant> {
        {"une_cle", 12.34},
        {"une_autre_cle", "string"},
    };



\ **Note :** Les dictionnaires sont toujours passés par référence. Pour obtenir une copie d'un dictionnaire qui peut être modifié de manière indépendante de l'original, utilisez :ref:`duplicate()<class_Dictionary_method_duplicate>`.

\ **Note :** Effacer des éléments lors de l'itération d'un dictionnaire n'est **pas** supporté et va résulter en un comportement imprévisible.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Les bases de GDScript : Les dictionnaires <../tutorials/scripting/gdscript/gdscript_basics.html#dictionary>`__

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Démo de test de système d'exploitation <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`Dictionary<class_Dictionary_constructor_Dictionary>`\ (\ )                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`Dictionary<class_Dictionary_constructor_Dictionary>`\ (\ base\: :ref:`Dictionary<class_Dictionary>`, key_type\: :ref:`int<class_int>`, key_class_name\: :ref:`StringName<class_StringName>`, key_script\: :ref:`Variant<class_Variant>`, value_type\: :ref:`int<class_int>`, value_class_name\: :ref:`StringName<class_StringName>`, value_script\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`Dictionary<class_Dictionary_constructor_Dictionary>`\ (\ from\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                                                                                                                                                                                                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`assign<class_Dictionary_method_assign>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ )                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear<class_Dictionary_method_clear>`\ (\ )                                                                                                                        |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`duplicate<class_Dictionary_method_duplicate>`\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const|                                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`duplicate_deep<class_Dictionary_method_duplicate_deep>`\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const|                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`erase<class_Dictionary_method_erase>`\ (\ key\: :ref:`Variant<class_Variant>`\ )                                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`find_key<class_Dictionary_method_find_key>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const|                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get<class_Dictionary_method_get>`\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const|                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_or_add<class_Dictionary_method_get_or_add>`\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ )                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_typed_key_builtin<class_Dictionary_method_get_typed_key_builtin>`\ (\ ) |const|                                                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_typed_key_class_name<class_Dictionary_method_get_typed_key_class_name>`\ (\ ) |const|                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_typed_key_script<class_Dictionary_method_get_typed_key_script>`\ (\ ) |const|                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_typed_value_builtin<class_Dictionary_method_get_typed_value_builtin>`\ (\ ) |const|                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_typed_value_class_name<class_Dictionary_method_get_typed_value_class_name>`\ (\ ) |const|                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_typed_value_script<class_Dictionary_method_get_typed_value_script>`\ (\ ) |const|                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has<class_Dictionary_method_has>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has_all<class_Dictionary_method_has_all>`\ (\ keys\: :ref:`Array<class_Array>`\ ) |const|                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_Dictionary_method_hash>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_Dictionary_method_is_empty>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_read_only<class_Dictionary_method_is_read_only>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_same_typed<class_Dictionary_method_is_same_typed>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const|                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_same_typed_key<class_Dictionary_method_is_same_typed_key>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const|                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_same_typed_value<class_Dictionary_method_is_same_typed_value>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const|                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_typed<class_Dictionary_method_is_typed>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_typed_key<class_Dictionary_method_is_typed_key>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_typed_value<class_Dictionary_method_is_typed_value>`\ (\ ) |const|                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`keys<class_Dictionary_method_keys>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`make_read_only<class_Dictionary_method_make_read_only>`\ (\ )                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`merge<class_Dictionary_method_merge>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ )                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`merged<class_Dictionary_method_merged>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) |const|               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`recursive_equal<class_Dictionary_method_recursive_equal>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, recursion_count\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`set<class_Dictionary_method_set>`\ (\ key\: :ref:`Variant<class_Variant>`, value\: :ref:`Variant<class_Variant>`\ )                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`size<class_Dictionary_method_size>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`sort<class_Dictionary_method_sort>`\ (\ )                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`values<class_Dictionary_method_values>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Dictionary_operator_neq_Dictionary>`\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Dictionary_operator_eq_Dictionary>`\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ )  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`operator []<class_Dictionary_operator_idx_Variant>`\ (\ key\: :ref:`Variant<class_Variant>`\ )            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Dictionary_constructor_Dictionary:

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ ) :ref:`🔗<class_Dictionary_constructor_Dictionary>`

Construit un **Dictionary** vide.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ base\: :ref:`Dictionary<class_Dictionary>`, key_type\: :ref:`int<class_int>`, key_class_name\: :ref:`StringName<class_StringName>`, key_script\: :ref:`Variant<class_Variant>`, value_type\: :ref:`int<class_int>`, value_class_name\: :ref:`StringName<class_StringName>`, value_script\: :ref:`Variant<class_Variant>`\ )

Crée un dictionnaire typé depuis le dictionnaire ``base``. Un dictionnaire typé ne peut contenir que des clés et des valeurs des types donnés, ou qui héritent des classes données, telles que décrits par les paramètres du constructeur.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ from\: :ref:`Dictionary<class_Dictionary>`\ )

Renvoie le même dictionnaire que ``from``. Si vous avez besoin d'une copie du dictionnaire, utilisez :ref:`duplicate()<class_Dictionary_method_duplicate>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Dictionary_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_method_assign>`

Assigne des éléments d'un autre dictionnaire ``dictionary`` dans le dictionnaire. Redimensionne le dictionnaire pour faire correspondre à ``dictionary``. Effectue des conversions de type si le dictionnaire est typé.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Dictionary_method_clear>`

Vide le dictionnaire, en supprimant toutes les entrées de celui-ci.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate>`

Renvoie une nouvelle copie du dictionnaire.

Par défaut, une copie **superficielle** (shallow copy) est renvoyée : toutes les clés :ref:`Array<class_Array>`, **Dictionary** et :ref:`Resource<class_Resource>` imbriquées sont partagés avec le dictionnaire original. Modifier l'un dans un dictionnaire va aussi modifier l'autre.

Si ``deep`` vaut ``true``, une copie **profonde** (deep copy) est renvoyée : tous les tableaux et les dictionnaires imbriqués sont également dupliqués (récursivement). Les :ref:`Resource<class_Resource>`\ s sont cependant toujours partagées avec le dictionnaire original.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate_deep>`

Duplicates this dictionary, deeply, like :ref:`duplicate()<class_Dictionary_method_duplicate>` when passing ``true``, with extra control over how subresources are handled.

\ ``deep_subresources_mode`` must be one of the values from :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. By default, only internal resources will be duplicated (recursively).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_erase>`

Retire l'entrée du dictionnaire par sa clé, si elle existe. Renvoie ``true`` si la clé ``key`` donnée existait dans le dictionnaire, sinon ``false``.

\ **Note :** N'effacez pas d'entrées lors de l'itération sur le dictionnaire. Vous pouvez itérer sur le tableau :ref:`keys()<class_Dictionary_method_keys>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_find_key:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **find_key**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_find_key>`

Trouve et renvoie la première clé dont la valeur associée est égale à ``value``, ou ``null`` si elle n'est pas trouvée.

\ **Note :** ``null`` est également une clé valide. Si elle est dans le dictionnaire, :ref:`find_key()<class_Dictionary_method_find_key>` peut donner des résultats trompeurs.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Dictionary_method_get>`

Renvoie la valeur correspondante de la clé ``key`` donnée dans le dictionnaire. Si la clé ``key`` n'existe pas, renvoie ``default`` ou ``null`` si le paramètre est omis.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_or_add:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_add**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_Dictionary_method_get_or_add>`

Obtient une valeur et assure que la clé est définie. Si la ``key`` existe dans le dictionnaire, cela se comporte comme :ref:`get()<class_Dictionary_method_get>`. Sinon, la valeur ``default`` est insérée dans le dictionnaire et renvoyée.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_key_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_builtin>`

Renvoie le type :ref:`Variant<class_Variant>` intégré des clés du dictionnaire de type en tant que constante :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Si les clés ne sont pas typées, renvoie :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Voir aussi :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_key_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_class_name>`

Renvoie le nom de classe **intégrée** des clés du dictionnaire typé, si le type :ref:`Variant<class_Variant>` intégré est :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. Sinon, renvoie un :ref:`StringName<class_StringName>` vide. Voir aussi :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>` et :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_key_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_script>`

Renvoie l'instance :ref:`Script<class_Script>` associée aux clés de ce dictionnaire, ou ``null`` si elle n'existe pas. Voir aussi :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_value_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_builtin>`

Renvoie le type :ref:`Variant<class_Variant>` intégré des valeurs du dictionnaire typé en tant que constante :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Si les valeurs ne sont pas typées, renvoie :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Voir aussi :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_value_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_class_name>`

Renvoie le nom de classe **intégrée** des valeurs du dictionnaire typé, si le type :ref:`Variant<class_Variant>` intégré est :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. Sinon, renvoie un :ref:`StringName<class_StringName>` vide. Voir aussi :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>` et :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_value_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_script>`

Renvoie l'instance :ref:`Script<class_Script>` associée aux valeurs de ce dictionnaire, ou ``null`` si elle n'existe pas. Voir aussi :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_has>`

Renvoie ``true`` si le dictionnaire contient une entrée avec la clé ``key`` donnée.


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "Godot" : 4,
        210 : null,
    }

    print(my_dict.has("Godot")) # Affiche true
    print(my_dict.has(210))     # Affiche true
    print(my_dict.has(4))       # Affiche false

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "Godot", 4 },
        { 210, default },
    };

    GD.Print(myDict.ContainsKey("Godot")); // Affiche True
    GD.Print(myDict.ContainsKey(210));     // Affiche True
    GD.Print(myDict.ContainsKey(4));       // Affiche False



En GDScript, cela équivaut à l'opérateur ``in``\  :

::

    if "Godot" in {"Godot": 4}:
        print("La clé est ici !") # Sera affiché.

\ **Note:** Cette méthode renvoie ``true`` tant que la ``key`` existe, même si sa valeur correspondante est ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_all**\ (\ keys\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Dictionary_method_has_all>`

Renvoie ``true`` si le dictionnaire contient toutes les clés du tableau ``keys`` donné.

::

    var donnees = {"largeur" : 10, "hauteur" : 20}
    donnees.has_all(["hauteur", "largeur"]) # Renvoie true

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_hash>`

Renvoie une valeur d'entier de 32 bits hachée représentant le contenu du dictionnaire.


.. tabs::

 .. code-tab:: gdscript

    var dict1 = { "A": 10, "B": 2 }
    var dict2 = { "A": 10, "B": 2 }

    print(dict1.hash() == dict2.hash()) # Affiche true

 .. code-tab:: csharp

    var dict1 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };
    var dict2 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };

    // Godot.Collections.Dictionary n'a pas de méthode Hash(). Utilisez GD.Hash() à la place.
    GD.Print(GD.Hash(dict1) == GD.Hash(dict2)); // Affiche True



\ **Note :** Les dictionnaires avec les mêmes entrées mais dans un ordre différent n'auront pas le même hachage.

\ **Note :** Les dictionnaires avec des valeurs de hachage égales ne sont *pas* garantis d'être le même, en raison des collisions de hachage. Au contraire, les dictionnaires avec différentes valeurs de hachage sont garantis d'être différents.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_empty>`

Renvoie ``true`` si le dictionnaire est vide (sa taille est de ``0``). Voir aussi :ref:`size()<class_Dictionary_method_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_read_only>`

Renvoie ``true`` si le dictionnaire est en lecture seule. Voir :ref:`make_read_only()<class_Dictionary_method_make_read_only>`. Les dictionnaires sont automatiquement en lecture seule s'ils sont déclarés avec le mot-clé ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed>`

Renvoie ``true`` si le dictionnaire est typé de la même manière que le dictionnaire ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_key**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_key>`

Renvoie ``true`` si les clés du dictionnaire sont typées de la même manière que les clés du dictionnaire ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_value**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_value>`

Renvoie ``true`` si les valeurs du dictionnaire sont typées de la même manière que les valeurs du dictionnaire ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed>`

Renvoie ``true`` si le dictionnaire est typé. Les dictionnaires typés ne peuvent stocker que des clés et des valeurs du type associé et fournissent une sûreté du typage pour l'opérateur ``[]``. Les méthodes des dictionnaires typés renvoient toujours des :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_key**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_key>`

Renvoie ``true`` si les clés du dictionnaire sont typées.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_value**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_value>`

Renvoie ``true`` si les valeurs du dictionnaire sont typées.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_keys:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **keys**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_keys>`

Renvoie la liste des clés du dictionnaire.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Dictionary_method_make_read_only>`

Oblige le dictionnaire à être en lecture seule, c'est-à-dire désactive la modification du contenu du dictionnaire. Ne s'applique pas au contenu imbriqué, par exemple le contenu de dictionnaires imbriqués.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Dictionary_method_merge>`

Ajoute des entrées du dictionanaire ``dictionary`` à ce dictionnaire. Par défaut, les clés en double ne sont pas copiés, sauf si ``overwrite`` vaut ``true``.


.. tabs::

 .. code-tab:: gdscript

    var dict = { "objet": "epee", "quantite": 2 }
    var autre_dict = { "quantite": 15, "couleur": "argent" }

    # L'écrasement des clés existantes est désactivé par défaut.
    dict.merge(autre_dict)
    print(dict)  # { "objet": "epee", "quantite": 2, "couleur": "argent" }

    # Avec l'écrasement des clés activé.
    dict.merge(autre_dict, true)
    print(dict)  # { "objet": "epee", "quantite": 15, "couleur": "argent" }

 .. code-tab:: csharp

    var dict = new Godot.Collections.Dictionary
    {
        ["objet"] = "epee",
        ["quantite"] = 2,
    };

    var autreDict = new Godot.Collections.Dictionary
    {
        ["quantite"] = 15,
        ["couleur"] = "argent",
    };

    // L'écrasement des clés existantes est désactivé par défaut.
    dict.Merge(autreDict);
    GD.Print(dict); // { "objet": "epee", "quantite": 2, "couleur": "argent" }

    // Avec l'écrasement des clés activé.
    dict.Merge(autreDict, true);
    GD.Print(dict); // { "objet": "epee", "quantite": 15, "couleur": "argent" }



\ **Note :** :ref:`merge()<class_Dictionary_method_merge>` n'est *pas* récursive. Les dictionnaires imbriqués sont considérés comme des clés qui peuvent être remplacées ou non selon la valeur de ``overwrite``, mais ils ne seront jamais fusionnés ensemble.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merged:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **merged**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_merged>`

Renvoie une copie de ce dictionnaire fusionné avec l'autre dictionnaire ``dictionary``. Par défaut, les clés en double ne sont pas copiées, sauf si ``overwrite`` vaut ``true``. Voir aussi :ref:`merge()<class_Dictionary_method_merge>`.

Cette méthode est utile pour créer rapidement des dictionnaires avec des valeurs par défaut :

::

    var base = { "fruit": "pomme", "legume": "patate" }
    var extra = { "fruit": "orange", "assaisonnement": "vinaigre" }
    # Affiche { "fruit": "orange", "legume": "patate", "assaisonnement": "vinaigre" }
    print(extra.merged(base))
    # Affiche { "fruit": "pomme", "legume": "patate", "assaisonnement": "vinaigre" }
    print(extra.merged(base, true))

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_recursive_equal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **recursive_equal**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, recursion_count\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Dictionary_method_recursive_equal>`

Renvoie ``true`` si les deux dictionnaires contiennent les mêmes clés et valeurs, les clés des **Dictionary** et :ref:`Array<class_Array>` intérieurs sont comparées récursivement.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set**\ (\ key\: :ref:`Variant<class_Variant>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_set>`

Définit la valeur de l'élément à la clé ``key`` donnée à la valeur ``value`` donnée. Renvoie ``true`` si la valeur a été définie avec succès. Échoue et renvoie ``false`` si le dictionnaire est en lecture-seule, ou si ``key`` et ``value`` ne correspondent pas aux types du dictionnaire. Ceci est identique à l'utilisation de l'opérateur ``[]`` (``dict[key] = value``).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_size>`

Renvoie le nombre d'entrées dans le dictionnaire. Les dictionnaires vides (``{ }``) renvoient toujours ``0``. Voir aussi :ref:`is_empty()<class_Dictionary_method_is_empty>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Dictionary_method_sort>`

Trie le dictionnaire en ordre ascendant, par clé. L'ordre final dépend de la comparaison "inférieur à" (``<``) entre les clés..


.. tabs::

 .. code-tab:: gdscript

    var nombres = { "c": 2, "a": 0, "b": 1 }
    nombres.sort()
    print(nombres) # Affiche { "a": 0, "b": 1, "c": 2 }



Cette méthode garantit que les entrées du dictionnaire sont triées de manière consistante lorsque :ref:`keys()<class_Dictionary_method_keys>` ou :ref:`values()<class_Dictionary_method_values>` sont appelées, ou lorsque le dictionnaire doit être converti en une chaîne par :ref:`@GlobalScope.str()<class_@GlobalScope_method_str>` ou :ref:`JSON.stringify()<class_JSON_method_stringify>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **values**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_values>`

Renvoie la liste des valeurs dans ce dictionnaire.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Dictionary_operator_neq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_neq_Dictionary>`

Renvoie ``true`` si les deux dictionnaires ne contiennent pas les mêmes clés et valeurs.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_eq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_eq_Dictionary>`

Renvoie ``true`` si les deux dictionnaires contiennent les mêmes clés et valeurs. L'ordre des entrées n'a aucune importance.

\ **Note :** En C#, par convention, cet opérateur compare par **référence**. Si vous devez comparer par valeur, itérez sur les deux dictionnaires.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_idx_Variant:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_operator_idx_Variant>`

Renvoie la valeur correspondante à la clé ``key`` donnée dans le dictionnaire. Si l'entrée n'existe pas, échoue et renvoie ``null``. Pour un accès sécurisé, utilisez :ref:`get()<class_Dictionary_method_get>` ou :ref:`has()<class_Dictionary_method_has>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
