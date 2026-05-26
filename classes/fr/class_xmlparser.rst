:github_url: hide

.. _class_XMLParser:

XMLParser
=========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit une interface de bas niveau pour créer des parsers pour des fichiers XML.

.. rst-class:: classref-introduction-group

Description
-----------

Fournit une interface de bas niveau pour créer des parsers pour `XML <https://en.wikipedia.org/wiki/XML>`__. Cette classe peut servir de base pour faire des parsers XML personnalisés.

Pour parser du XML, vous devez ouvrir un fichier avec la méthode :ref:`open()<class_XMLParser_method_open>` ou un buffer avec la méthode :ref:`open_buffer()<class_XMLParser_method_open_buffer>`. Ensuite, la méthode :ref:`read()<class_XMLParser_method_read>` doit être appelée pour parser les prochains nœuds. La plupart des méthodes prennent en considération le noeud actuellement parsé.

Voici un exemple d'utilisation de **XMLParser** pour parser un fichier SVG (qui est basé sur XML), affichant chaque élément et ses attributs en tant que dictionnaire :


.. tabs::

 .. code-tab:: gdscript

    var parser = XMLParser.new()
    parser.open("chemin/vers/fichier.svg")
    while parser.read() != ERR_FILE_EOF:
        if parser.get_node_type() == XMLParser.NODE_ELEMENT:
            var nom_noeud = parser.get_node_name()
            var dict_attributs = {}
            for idx in range(parser.get_attribute_count()):
                dict_attributs[parser.get_attribute_name(idx)] = parser.get_attribute_value(idx)
            print("L'élément ", nom_noeud, " a les attributs suivants : ", dict_attributs)

 .. code-tab:: csharp

    var parser = new XmlParser();
    parser.Open("path/to/file.svg");
    while (parser.Read() != Error.FileEof)
    {
        if (parser.GetNodeType() == XmlParser.NodeType.Element)
        {
            var nomNoeud = parser.GetNodeName();
            var dictAttributs = new Godot.Collections.Dictionary();
            for (int idx = 0; idx < parser.GetAttributeCount(); idx++)
            {
                dictAttributs[parser.GetAttributeName(idx)] = parser.GetAttributeValue(idx);
            }
            GD.Print($"L'élément {nomNoeud} a les attributs suivants : {dictAttributs}");
        }
    }



.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_attribute_count<class_XMLParser_method_get_attribute_count>`\ (\ ) |const|                                                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_attribute_name<class_XMLParser_method_get_attribute_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_attribute_value<class_XMLParser_method_get_attribute_value>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                              |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_current_line<class_XMLParser_method_get_current_line>`\ (\ ) |const|                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_named_attribute_value<class_XMLParser_method_get_named_attribute_value>`\ (\ name\: :ref:`String<class_String>`\ ) |const|           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_named_attribute_value_safe<class_XMLParser_method_get_named_attribute_value_safe>`\ (\ name\: :ref:`String<class_String>`\ ) |const| |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_node_data<class_XMLParser_method_get_node_data>`\ (\ ) |const|                                                                       |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_node_name<class_XMLParser_method_get_node_name>`\ (\ ) |const|                                                                       |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_node_offset<class_XMLParser_method_get_node_offset>`\ (\ ) |const|                                                                   |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodeType<enum_XMLParser_NodeType>` | :ref:`get_node_type<class_XMLParser_method_get_node_type>`\ (\ )                                                                               |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`has_attribute<class_XMLParser_method_has_attribute>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                   |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`is_empty<class_XMLParser_method_is_empty>`\ (\ ) |const|                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`open<class_XMLParser_method_open>`\ (\ file\: :ref:`String<class_String>`\ )                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`open_buffer<class_XMLParser_method_open_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`read<class_XMLParser_method_read>`\ (\ )                                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`seek<class_XMLParser_method_seek>`\ (\ position\: :ref:`int<class_int>`\ )                                                               |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`skip_section<class_XMLParser_method_skip_section>`\ (\ )                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_XMLParser_NodeType:

.. rst-class:: classref-enumeration

enum **NodeType**: :ref:`🔗<enum_XMLParser_NodeType>`

.. _class_XMLParser_constant_NODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_NONE** = ``0``

Il n'y a aucun nœud (aucun fichier ou buffer ouvert).

.. _class_XMLParser_constant_NODE_ELEMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT** = ``1``

Un type de nœud d'élément, également connu sous le nom de balise, par ex. ``<title>``.

.. _class_XMLParser_constant_NODE_ELEMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT_END** = ``2``

Une fin de type de nœud d'élément, par ex. ``</title>``.

.. _class_XMLParser_constant_NODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_TEXT** = ``3``

Un type de nœud de texte, c'est-à-dire un texte qui n'est pas à l'intérieur d'un élément. Cela inclut les espacements.

.. _class_XMLParser_constant_NODE_COMMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_COMMENT** = ``4``

Un type de nœud de commentaire, par ex. ``<!--Un commentaire-->``.

.. _class_XMLParser_constant_NODE_CDATA:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_CDATA** = ``5``

Un type de nœud pour les sections CDATA (Character Data, litt. données de caractère), par ex. ``<![CDATA[CDATA section]]>``.

.. _class_XMLParser_constant_NODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_UNKNOWN** = ``6``

Un type de nœud inconnu.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_XMLParser_method_get_attribute_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_attribute_count**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_count>`

Renvoie le nombre d'attributs dans l'élément actuellement parsé.

\ **Note :** Si cette méthode est utilisée alors que le nœud actuellement parsé n'est pas :ref:`NODE_ELEMENT<class_XMLParser_constant_NODE_ELEMENT>` ou :ref:`NODE_ELEMENT_END<class_XMLParser_constant_NODE_ELEMENT_END>`, ce compte ne sera pas mis à jour et reflétera toujours le dernier élément.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_name>`

Renvoie le nom d'un attribut de l'élément actuellement parsé, spécifié par l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_value**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_value>`

Renvoie la valeur d'un attribut de l'élément actuellement parsé, spécifié par l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_current_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_line**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_current_line>`

Renvoie la ligne courante dans le fichier parsé, en comptant à partir de 0.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value>`

Renvoie la valeur d'un attribut de l'élément actuellement parsé, spécifié par son nom ``name``. Cette méthode va générer une erreur si l'élément n'a pas de tel attribut.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value_safe:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value_safe**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value_safe>`

Renvoie la valeur d'un attribut de l'élément actuellement parsé, spécifié par son nom ``name``. Cette méthode renverra une chaîne vide si l'élément n'a pas de tel attribut.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_data:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_data**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_data>`

Renvoie le contenu d'un nœud de texte. Cette méthode générera une erreur si le nœud parsé actuel est d'un autre type.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_name**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_name>`

Renvoie le nom d'un noeud. Cette méthode générera une erreur si le nœud actuellement parsé est un noeud de texte.

\ **Note :** Le contenu d'un nœud :ref:`NODE_CDATA<class_XMLParser_constant_NODE_CDATA>` et la chaîne de commentaires d'un nœud :ref:`NODE_COMMENT<class_XMLParser_constant_NODE_COMMENT>` sont également considérés comme des noms.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_offset**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_offset>`

Renvoie le décalage en octet du nœud actuellement parsé depuis le début du fichier ou du buffer. Ceci est généralement équivalent au nombre de caractères avant la position de lecture.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_type:

.. rst-class:: classref-method

:ref:`NodeType<enum_XMLParser_NodeType>` **get_node_type**\ (\ ) :ref:`🔗<class_XMLParser_method_get_node_type>`

Renvoie le type du nœud actuel. Comparez avec les constantes :ref:`NodeType<enum_XMLParser_NodeType>`.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_has_attribute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_attribute**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_has_attribute>`

Renvoie ``true`` si l'élément actuellement parsé a un attribut ayant pour nom ``name``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_is_empty>`

Renvoie ``true`` si l’élément actuellement traité est vide, par exemple ``<element />``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XMLParser_method_open>`

Ouvre un fichier XML ``file`` pour le parsage. Cette méthode renvoie un code d'erreur.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_XMLParser_method_open_buffer>`

Ouvre un ``buffer`` XML brut pour être parsé. Cette méthode renvoie un code d'erreur.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_read:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **read**\ (\ ) :ref:`🔗<class_XMLParser_method_read>`

Parse le prochain noeud dans le fichier. Cette méthode renvoie un code d'erreur.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_seek:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XMLParser_method_seek>`

Déplace le curseur du buffer vers un certain décalage (depuis le début) et lit le nœud suivant à cet endroit. Cette méthode renvoie un code d'erreur.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_skip_section:

.. rst-class:: classref-method

|void| **skip_section**\ (\ ) :ref:`🔗<class_XMLParser_method_skip_section>`

Saute la section actuelle. Si le nœud actuellement parsé contient d'autres nœuds internes, ils seront ignorés et le curseur ira à la fin de l'élément courant.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
