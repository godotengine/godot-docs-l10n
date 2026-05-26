:github_url: hide

.. _class_Script:

Script
======

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`CSharpScript<class_CSharpScript>`, :ref:`GDScript<class_GDScript>`, :ref:`ScriptExtension<class_ScriptExtension>`

Une classe stockée en tant que ressource.

.. rst-class:: classref-introduction-group

Description
-----------

Une classe stockée en tant que ressource. Un script prolonge la fonctionnalité de tous les objets qui l'instancient.

Il s'agit de la classe de base pour tous les scripts et ne devrait pas être utilisée directement. Essayer de créer un nouveau script avec cette classe entraînera une erreur.

La méthode ``new`` d'une sous-classe de script crée une nouvelle instance. :ref:`Object.set_script()<class_Object_method_set_script>` étend un objet existant, si la classe de cet objet correspond à l'une des classes de base du script.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur le scripting <../tutorials/scripting/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`source_code<class_Script_property_source_code>` |
   +-----------------------------+-------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_instantiate<class_Script_method_can_instantiate>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Script<class_Script>`                                      | :ref:`get_base_script<class_Script_method_get_base_script>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_global_name<class_Script_method_get_global_name>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_instance_base_type<class_Script_method_get_instance_base_type>`\ (\ ) |const|                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_property_default_value<class_Script_method_get_property_default_value>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_rpc_config<class_Script_method_get_rpc_config>`\ (\ ) |const|                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_script_constant_map<class_Script_method_get_script_constant_map>`\ (\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_method_list<class_Script_method_get_script_method_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_property_list<class_Script_method_get_script_property_list>`\ (\ )                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_script_signal_list<class_Script_method_get_script_signal_list>`\ (\ )                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_script_method<class_Script_method_has_script_method>`\ (\ method_name\: :ref:`StringName<class_StringName>`\ ) |const|        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_script_signal<class_Script_method_has_script_signal>`\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const|        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_source_code<class_Script_method_has_source_code>`\ (\ ) |const|                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`instance_has<class_Script_method_instance_has>`\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const|                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_abstract<class_Script_method_is_abstract>`\ (\ ) |const|                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_tool<class_Script_method_is_tool>`\ (\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`reload<class_Script_method_reload>`\ (\ keep_state\: :ref:`bool<class_bool>` = false\ )                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Script_property_source_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_code** :ref:`🔗<class_Script_property_source_code>`

.. rst-class:: classref-property-setget

- |void| **set_source_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_source_code**\ (\ )

Le code source du script ou une chaîne vide si le code source n'est pas disponible. Lorsque défini, ne recharge pas automatiquement l'implémentation de classe.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Script_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_Script_method_can_instantiate>`

Renvoie ``true`` si le script peut être instancié.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_base_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_base_script**\ (\ ) |const| :ref:`🔗<class_Script_method_get_base_script>`

Renvoie le script directement hérité par ce script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_global_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_global_name**\ (\ ) |const| :ref:`🔗<class_Script_method_get_global_name>`

Renvoie le nom de classe associé au script, s'il y en a un. Renvoie une chaîne vide sinon.

Pour donner au script un nom global, vous pouvez utiliser le mot-clé ``class_name`` en GDScript et l'attribut ``[GlobalClass]`` en C#.


.. tabs::

 .. code-tab:: gdscript

    class_name MonNoeud
    extends Node

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class MonNoeud : Node
    {
    }



.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_instance_base_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_instance_base_type**\ (\ ) |const| :ref:`🔗<class_Script_method_get_instance_base_type>`

Renvoie le type de base du script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_property_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_property_default_value**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Script_method_get_property_default_value>`

Renvoie la valeur par défaut de la propriété spécifiée.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_rpc_config**\ (\ ) |const| :ref:`🔗<class_Script_method_get_rpc_config>`

Renvoie un :ref:`Dictionary<class_Dictionary>` associant les noms de méthodes à leur configuration RPC définies par ce script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_constant_map:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_script_constant_map**\ (\ ) :ref:`🔗<class_Script_method_get_script_constant_map>`

Renvoie un dictionnaire contenant le nom et valeur des constantes.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_method_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_method_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_method_list>`

Renvoie la liste des méthodes dans ce **Script**.

\ **Note :** Les dictionnaires renvoyés par cette méthode sont formatés de façon identique à ceux renvoyés par :ref:`Object.get_method_list()<class_Object_method_get_method_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_property_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_property_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_property_list>`

Renvoie la liste des propriétés dans ce **Script**.

\ **Note :** Les dictionnaires renvoyés par cette méthode sont formatés de façon identique à ceux renvoyés par :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_get_script_signal_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_script_signal_list**\ (\ ) :ref:`🔗<class_Script_method_get_script_signal_list>`

Returns the list of signals defined in this **Script**.

\ **Note:** The dictionaries returned by this method are formatted identically to those returned by :ref:`Object.get_signal_list()<class_Object_method_get_signal_list>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_script_method:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_script_method**\ (\ method_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Script_method_has_script_method>`

Returns ``true`` if the script, or a base class, defines a method with the given name.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_script_signal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_script_signal**\ (\ signal_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Script_method_has_script_signal>`

Renvoie ``true`` si le script, ou sa classe parente, définit un signal avec le nom donné.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_has_source_code:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_source_code**\ (\ ) |const| :ref:`🔗<class_Script_method_has_source_code>`

Renvoie ``true`` si le script contient du code source non vide.

\ **Note :** Si un script n'a pas de code source, cela ne signifie pas qu'il est invalide ou inutilisable. Par exemple, un :ref:`GDScript<class_GDScript>` qui a été exporté avec la tokenisation binaire n'a pas de code source, mais se comporte toujours comme prévu et pourrait être instancié. Cela peut être vérifié avec :ref:`can_instantiate()<class_Script_method_can_instantiate>`.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_instance_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **instance_has**\ (\ base_object\: :ref:`Object<class_Object>`\ ) |const| :ref:`🔗<class_Script_method_instance_has>`

**Obsolète :** Compare this script with :ref:`Object.get_script()<class_Object_method_get_script>` instead.

Renvoie ``true`` si ``base_object`` est une instance de ce script.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_abstract:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_abstract**\ (\ ) |const| :ref:`🔗<class_Script_method_is_abstract>`

Renvoie ``true`` si le script est un script abstrait. Un script abstrait n'a pas de constructeur et ne peut pas être instancié.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_is_tool:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tool**\ (\ ) |const| :ref:`🔗<class_Script_method_is_tool>`

Renvoie ``true`` si le script est un script outil. Un script d'outil peut être exécuté dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Script_method_reload:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload**\ (\ keep_state\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Script_method_reload>`

Recharge l'implémentation de classe du script. Renvoie un code d'erreur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
