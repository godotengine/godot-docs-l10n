:github_url: hide

.. _class_CodeHighlighter:

CodeHighlighter
===============

**Hérite de :** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A syntax highlighter intended for code.

.. rst-class:: classref-introduction-group

Description
-----------

En ajustant diverses propriétés de cette ressource, vous pouvez changer la couleur des chaînes, des commentaires, des nombres et des autres motifs de texte dans un contrôle :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_regions<class_CodeHighlighter_property_color_regions>`                 | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`function_color<class_CodeHighlighter_property_function_color>`               | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`keyword_colors<class_CodeHighlighter_property_keyword_colors>`               | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`member_keyword_colors<class_CodeHighlighter_property_member_keyword_colors>` | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`member_variable_color<class_CodeHighlighter_property_member_variable_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`number_color<class_CodeHighlighter_property_number_color>`                   | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`symbol_color<class_CodeHighlighter_property_symbol_color>`                   | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_color_region<class_CodeHighlighter_method_add_color_region>`\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_keyword_color<class_CodeHighlighter_method_add_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ )                                                                                     |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_member_keyword_color<class_CodeHighlighter_method_add_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ )                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_color_regions<class_CodeHighlighter_method_clear_color_regions>`\ (\ )                                                                                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_keyword_colors<class_CodeHighlighter_method_clear_keyword_colors>`\ (\ )                                                                                                                                                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_member_keyword_colors<class_CodeHighlighter_method_clear_member_keyword_colors>`\ (\ )                                                                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_keyword_color<class_CodeHighlighter_method_get_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_member_keyword_color<class_CodeHighlighter_method_get_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const|                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_color_region<class_CodeHighlighter_method_has_color_region>`\ (\ start_key\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_keyword_color<class_CodeHighlighter_method_has_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_member_keyword_color<class_CodeHighlighter_method_has_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const|                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_color_region<class_CodeHighlighter_method_remove_color_region>`\ (\ start_key\: :ref:`String<class_String>`\ )                                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_keyword_color<class_CodeHighlighter_method_remove_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ )                                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_member_keyword_color<class_CodeHighlighter_method_remove_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ )                                                                                             |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CodeHighlighter_property_color_regions:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_regions** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_color_regions>`

.. rst-class:: classref-property-setget

- |void| **set_color_regions**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_color_regions**\ (\ )

Définit les régions de couleur. Toutes les régions existantes seront supprimées. La clé du :ref:`Dictionary<class_Dictionary>` est la clé de départ et de fin de la région, séparés par un espace. La valeur est la couleur de région.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_function_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **function_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_function_color>`

.. rst-class:: classref-property-setget

- |void| **set_function_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_function_color**\ (\ )

Définit la couleur pour les fonctions. Une fonction est une chaîne de mots non-clé suivis d'un '('.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_keyword_colors**\ (\ )

Définit les couleurs des mot-clés. Tous les mots-clés existants seront supprimés. La clé du :ref:`Dictionary<class_Dictionary>` est le mot-clé. La valeur est la couleur du mot-clé.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **member_keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_member_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_member_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_member_keyword_colors**\ (\ )

Sets the member keyword colors. All existing member keyword will be removed. The :ref:`Dictionary<class_Dictionary>` key is the member keyword. The value is the member keyword color.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_variable_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **member_variable_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_member_variable_color>`

.. rst-class:: classref-property-setget

- |void| **set_member_variable_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_member_variable_color**\ (\ )

Définit la couleur pour les variables membres. Une variable membre est une chaîne non-mot-clé, non-fonction précédée d'un '.'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_number_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **number_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_number_color>`

.. rst-class:: classref-property-setget

- |void| **set_number_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_number_color**\ (\ )

Définit la couleur pour les nombres.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_symbol_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **symbol_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_symbol_color>`

.. rst-class:: classref-property-setget

- |void| **set_symbol_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_symbol_color**\ (\ )

Définit la couleur pour les symboles.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_CodeHighlighter_method_add_color_region:

.. rst-class:: classref-method

|void| **add_color_region**\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CodeHighlighter_method_add_color_region>`

Adds a color region (such as for comments or strings) from ``start_key`` to ``end_key``. Both keys should be symbols, and ``start_key`` must not be shared with other delimiters.

If ``line_only`` is ``true`` or ``end_key`` is an empty :ref:`String<class_String>`, the region does not carry over to the next line.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_keyword_color:

.. rst-class:: classref-method

|void| **add_keyword_color**\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_keyword_color>`

Définit la couleur pour un mot-clé.

Le mot-clé ne peut contenir aucun symbole sauf '\_'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_member_keyword_color:

.. rst-class:: classref-method

|void| **add_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_member_keyword_color>`

Sets the color for a member keyword.

The member keyword cannot contain any symbols except '\_'.

It will not be highlighted if preceded by a '.'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_color_regions:

.. rst-class:: classref-method

|void| **clear_color_regions**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_color_regions>`

Supprime toutes les régions de couleur.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_keyword_colors:

.. rst-class:: classref-method

|void| **clear_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_keyword_colors>`

Supprime tout les mots-clés.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_member_keyword_colors:

.. rst-class:: classref-method

|void| **clear_member_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_member_keyword_colors>`

Removes all member keywords.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_keyword_color>`

Renvoie la couleur d'un mot-clé.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_member_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_member_keyword_color>`

Returns the color for a member keyword.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_color_region:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_color_region>`

Renvoie ``true`` si la clé de départ ``start_key`` existe, sinon ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_keyword_color>`

Renvoie ``true`` si le mot-clé ``keyword`` existe, sinon ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_member_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_member_keyword_color>`

Returns ``true`` if the member keyword exists, else ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_color_region:

.. rst-class:: classref-method

|void| **remove_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_color_region>`

Retire la région de couleur qui utilise cette clé de départ.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_keyword_color:

.. rst-class:: classref-method

|void| **remove_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_keyword_color>`

Supprime le mot-clé.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_member_keyword_color:

.. rst-class:: classref-method

|void| **remove_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_member_keyword_color>`

Removes the member keyword.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
