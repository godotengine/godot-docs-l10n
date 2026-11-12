:github_url: hide

.. _class_ClassDB:

ClassDB
=======

**Hérite de :** :ref:`Object<class_Object>`

Un dépôt d'informations de classes.

.. rst-class:: classref-introduction-group

Description
-----------

Fournit un accès aux métadonnées enregistrées pour chaque classe disponible du moteur.

\ **Remarque :** Les classes définies dans des scripts avec ``class_name`` ne font pas partie de **ClassDB**, elles ne renverront donc pas de données de réflexion telles qu'une méthode ou une liste de propriétés. Cependant, les classes définies par :ref:`GDExtension<class_GDExtension>` *font partie* de **ClassDB**, elle renverront donc des données de réflexion.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_ClassDB_method_can_instantiate>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_call_static<class_ClassDB_method_class_call_static>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_exists<class_ClassDB_method_class_exists>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`APIType<enum_ClassDB_APIType>`                             | :ref:`class_get_api_type<class_ClassDB_method_class_get_api_type>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_enum_constants<class_ClassDB_method_class_get_enum_constants>`\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_enum_list<class_ClassDB_method_class_get_enum_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`class_get_integer_constant<class_ClassDB_method_class_get_integer_constant>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_integer_constant_enum<class_ClassDB_method_class_get_integer_constant_enum>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`class_get_integer_constant_list<class_ClassDB_method_class_get_integer_constant_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`class_get_method_argument_count<class_ClassDB_method_class_get_method_argument_count>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_method_list<class_ClassDB_method_class_get_method_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_get_property<class_ClassDB_method_class_get_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                  |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`class_get_property_default_value<class_ClassDB_method_class_get_property_default_value>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_property_getter<class_ClassDB_method_class_get_property_getter>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ )                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_property_list<class_ClassDB_method_class_get_property_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`class_get_property_setter<class_ClassDB_method_class_get_property_setter>`\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ )                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`class_get_signal<class_ClassDB_method_class_get_signal>`\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`class_get_signal_list<class_ClassDB_method_class_get_signal_list>`\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_enum<class_ClassDB_method_class_has_enum>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_integer_constant<class_ClassDB_method_class_has_integer_constant>`\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const|                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_method<class_ClassDB_method_class_has_method>`\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`class_has_signal<class_ClassDB_method_class_has_signal>`\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`class_set_property<class_ClassDB_method_class_set_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const|                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_class_list<class_ClassDB_method_get_class_list>`\ (\ ) |const|                                                                                                                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_inheriters_from_class<class_ClassDB_method_get_inheriters_from_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_parent_class<class_ClassDB_method_get_parent_class>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`instantiate<class_ClassDB_method_instantiate>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_enabled<class_ClassDB_method_is_class_enabled>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_enum_bitfield<class_ClassDB_method_is_class_enum_bitfield>`\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const|                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_class_exposed<class_ClassDB_method_is_class_exposed>`\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_parent_class<class_ClassDB_method_is_parent_class>`\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ClassDB_APIType:

.. rst-class:: classref-enumeration

enum **APIType**: :ref:`🔗<enum_ClassDB_APIType>`

.. _class_ClassDB_constant_API_CORE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_CORE** = ``0``

Type de classe Native Core (code principal natif).

.. _class_ClassDB_constant_API_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR** = ``1``

Type de classe Native Editor (code de l'éditeur natif).

.. _class_ClassDB_constant_API_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EXTENSION** = ``2``

Type de classe GDExtension.

.. _class_ClassDB_constant_API_EDITOR_EXTENSION:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_EDITOR_EXTENSION** = ``3``

Type de classe GDExtension Editor (GDExtension pour l'éditeur).

.. _class_ClassDB_constant_API_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`APIType<enum_ClassDB_APIType>` **API_NONE** = ``4``

Type de classe inconnu.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ClassDB_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_can_instantiate>`

Renvoie ``true`` si des objets peuvent être instanciés à partir de la classe ``class`` spécifiée, sinon renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_call_static:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_call_static**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_ClassDB_method_class_call_static>`

Appelle une méthode statique sur une classe.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_exists**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_exists>`

Renvoie si la classe ``class`` spécifiée est disponible ou non.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_api_type:

.. rst-class:: classref-method

:ref:`APIType<enum_ClassDB_APIType>` **class_get_api_type**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_api_type>`

Renvoie le type d'API de la classe ``class`` spécifiée.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_constants:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_constants**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_constants>`

Renvoie un tableau avec toutes les clés dans l’énumération ``enum`` de la classe ``class`` ou de ses parents.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_enum_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_enum_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_enum_list>`

Renvoie un tableau avec toutes les énumérations de la classe ``class`` ou de ses parents.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant>`

Renvoie la valeur de la constante entière ``name`` de la classe ``class`` ou ses parents. Renvoie toujours 0 si la constante n'a pas été trouvée.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_enum:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_integer_constant_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_enum>`

Renvoie à quelle énumération la constante entière nommée ``name`` dans ``class`` ou un de ses parents appartient.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_integer_constant_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **class_get_integer_constant_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_integer_constant_list>`

Renvoie un tableau avec le nom de toutes les constantes entières de la classe ``class`` ou de ses parents.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **class_get_method_argument_count**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_argument_count>`

Renvoie un tableau avec tous les arguments de la méthode ``method`` de la classe ``class`` ou ses parents si ``no_inheritance`` vaut ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_method_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_method_list>`

Renvoie un tableau avec toutes les méthodes de la classe ``class`` ou ses parents si ``no_inheritance`` vaut ``false``. Chaque élément du tableau est un :ref:`Dictionary<class_Dictionary>` avec les clés suivantes : ``args``, ``default_args``, ``flags``, ``id``, ``name`` et ``return: (class_name, hint, hint_string, name, type, usage)``.

\ **Note :** Dans les version exportés de release, les informations de débogage ne sont pas disponibles, les dictionnaires renvoyés ne contiendront donc que le nom des méthodes.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property>`

Renvoie la valeur de la propriété ``property`` de l'objet ``object`` ou de ses parents.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **class_get_property_default_value**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_default_value>`

Renvoie la valeur par défaut de la propriété ``property`` de la classe ``class`` ou de ses parents.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_getter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_getter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_getter>`

Renvoie le nom de méthode getter de la propriété ``property`` de la classe ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_property_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_property_list>`

Renvoie un tableau avec toutes les propriétés de la classe ``class`` ou son ascendance si ``no_inheritance`` vaut ``false``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_property_setter:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **class_get_property_setter**\ (\ class\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ClassDB_method_class_get_property_setter>`

Renvoie le nom de méthode setter de la propriété ``property`` de la classe ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **class_get_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal>`

Renvoie les données du signal ``signal`` de la classe ``class`` ou de ses parents. La valeur renvoyée est un :ref:`Dictionary<class_Dictionary>` avec les clés suivantes : ``args``, ``default_args``, ``flags``, ``id``, ``name`` et ``return: (class_name, hint, hint_string, name, type, usage)``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_get_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **class_get_signal_list**\ (\ class\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_get_signal_list>`

Renvoie un tableau avec tous les signaux de la classe ``class`` ou ses parents si ``no_inheritance`` vaut ``false``. Chaque élément du tableau est un :ref:`Dictionary<class_Dictionary>` comme décrit dans :ref:`class_get_signal()<class_ClassDB_method_class_get_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_enum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_enum**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_enum>`

Renvoie si la classe ``class`` ou ses parents ont une énumération nommée ``name`` ou non.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_integer_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_integer_constant**\ (\ class\: :ref:`StringName<class_StringName>`, name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_integer_constant>`

Renvoie si la classe ``class`` ou ses parents a une constante entière appelée ``name`` ou non.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_method**\ (\ class\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_method>`

Renvoie si la classe ``class`` (ou un de ses parents si ``no_inheritance`` vaut ``false``) a une méthode nommée ``method`` ou non.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_has_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **class_has_signal**\ (\ class\: :ref:`StringName<class_StringName>`, signal\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_has_signal>`

Renvoie si ``class`` ou ses parents ont un signal nommé ``signal`` ou non.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_class_set_property:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **class_set_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_ClassDB_method_class_set_property>`

Définit la valeur de la propriété ``property`` de l'objet ``object`` à ``value``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_class_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_class_list**\ (\ ) |const| :ref:`🔗<class_ClassDB_method_get_class_list>`

Renvoie les noms de toutes les classes du moteur disponibles.

\ **Note :** Les classes définies dans des scripts avec ``class_name`` ne sont pas incluses dans cette liste. Utilisez à la place :ref:`ProjectSettings.get_global_class_list()<class_ProjectSettings_method_get_global_class_list>` pour obtenir une liste de classes définies dans des scripts.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_inheriters_from_class:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_inheriters_from_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_inheriters_from_class>`

Renvoie le nom de toutes les classes du moteur qui héritent directement ou indirectement de ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_get_parent_class:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_get_parent_class>`

Renvoie la classe parente de ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_instantiate:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **instantiate**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_instantiate>`

Crée une instance de ``class``.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enabled**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enabled>`

Renvoie si cette ``class`` est active ou non.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_enum_bitfield:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_enum_bitfield**\ (\ class\: :ref:`StringName<class_StringName>`, enum\: :ref:`StringName<class_StringName>`, no_inheritance\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_enum_bitfield>`

Renvoie si ``class`` (ou un de ses parents si ``no_inheritance`` vaut ``false``) a une énumération nommée ``enum`` qui est un champ de bits.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_class_exposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_exposed**\ (\ class\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_class_exposed>`

Returns whether this ``class`` is exposed or not.

Godot uses internal and platform specific classes at run time. **ClassDB** is able to work with those and lists them like any other class. This method can be used to filter them out if your use-case requires it.

.. rst-class:: classref-item-separator

----

.. _class_ClassDB_method_is_parent_class:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_parent_class**\ (\ class\: :ref:`StringName<class_StringName>`, inherits\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ClassDB_method_is_parent_class>`

Renvoie si ``class`` hérite de la classe ``inherits`` ou non.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
