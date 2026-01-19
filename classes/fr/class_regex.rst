:github_url: hide

.. _class_RegEx:

RegEx
=====

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe pour chercher du texte avec des motifs en utilisant des expressions régulières.

.. rst-class:: classref-introduction-group

Description
-----------

A regular expression (or regex) is a compact language that can be used to recognize strings that follow a specific pattern, such as URLs, email addresses, complete sentences, etc. For example, a regex of ``ab[0-9]`` would find any string that is ``ab`` followed by any number from ``0`` to ``9``. For a more in-depth look, you can easily find various tutorials and detailed explanations on the Internet.

To begin, the RegEx object needs to be compiled with the search pattern using :ref:`compile()<class_RegEx_method_compile>` before it can be used. Alternatively, the static method :ref:`create_from_string()<class_RegEx_method_create_from_string>` can be used to create and compile a RegEx object in a single method call.

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")
    # Shorthand to create and compile a regex (used in the examples below):
    var regex2 = RegEx.create_from_string("\\w-(\\d+)")

The search pattern must be escaped first for GDScript before it is escaped for the expression. For example, ``compile("\\d+")`` would be read by RegEx as ``\d+``. Similarly, ``compile("\"(?:\\\\.|[^\"])*\"")`` would be read as ``"(?:\\.|[^"])*"``. In GDScript, you can also use raw string literals (r-strings). For example, ``compile(r'"(?:\\.|[^"])*"')`` would be read the same.

Using :ref:`search()<class_RegEx_method_search>`, you can find the pattern within the given text. If a pattern is found, :ref:`RegExMatch<class_RegExMatch>` is returned and you can retrieve details of the results using methods such as :ref:`RegExMatch.get_string()<class_RegExMatch_method_get_string>` and :ref:`RegExMatch.get_start()<class_RegExMatch_method_get_start>`.

::

    var regex = RegEx.create_from_string("\\w-(\\d+)")
    var result = regex.search("abc n-0123")
    if result:
        print(result.get_string()) # Prints "n-0123"

The results of capturing groups ``()`` can be retrieved by passing the group number to the various methods in :ref:`RegExMatch<class_RegExMatch>`. Group 0 is the default and will always refer to the entire pattern. In the above example, calling ``result.get_string(1)`` would give you ``0123``.

This version of RegEx also supports named capturing groups, and the names can be used to retrieve the results. If two or more groups have the same name, the name would only refer to the first one with a match.

::

    var regex = RegEx.create_from_string("d(?<digit>[0-9]+)|x(?<digit>[0-9a-f]+)")
    var result = regex.search("the number is x2f")
    if result:
        print(result.get_string("digit")) # Prints "2f"

If you need to process multiple results, :ref:`search_all()<class_RegEx_method_search_all>` generates a list of all non-overlapping results. This can be combined with a ``for`` loop for convenience.

::

    # Prints "01 03 0 3f 42"
    for result in regex.search_all("d01, d03, d0c, x3f and x42"):
        print(result.get_string("digit"))

\ **Example:** Split a string using a RegEx:

::

    var regex = RegEx.create_from_string("\\S+") # Negated whitespace character class.
    var results = []
    for result in regex.search_all("One  Two \n\tThree"):
        results.push_back(result.get_string())
    print(results) # Prints ["One", "Two", "Three"]

\ **Note:** Godot's regex implementation is based on the `PCRE2 <https://www.pcre.org/>`__ library. You can view the full pattern reference `here <https://www.pcre.org/current/doc/html/pcre2pattern.html>`__.

\ **Tip:** You can use `Regexr <https://regexr.com/>`__ to test regular expressions online.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear<class_RegEx_method_clear>`\ (\ )                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`compile<class_RegEx_method_compile>`\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ )                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RegEx<class_RegEx>`                                        | :ref:`create_from_string<class_RegEx_method_create_from_string>`\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static|                                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_group_count<class_RegEx_method_get_group_count>`\ (\ ) |const|                                                                                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_names<class_RegEx_method_get_names>`\ (\ ) |const|                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_pattern<class_RegEx_method_get_pattern>`\ (\ ) |const|                                                                                                                                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_valid<class_RegEx_method_is_valid>`\ (\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RegExMatch<class_RegExMatch>`                              | :ref:`search<class_RegEx_method_search>`\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const|                                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] | :ref:`search_all<class_RegEx_method_search_all>`\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const|                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`sub<class_RegEx_method_sub>`\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_RegEx_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_RegEx_method_clear>`

Cette méthode réinitialise l'état de l'objet, comme si il était fraîchement créé. En fait, elle désaffecte l'expression régulière de cet objet.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_compile:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **compile**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_RegEx_method_compile>`

Compile et assigne le motif de recherche à utiliser. Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si la compilation est réussie. Si la compilation échoue, renvoie :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>` et lorsque ``show_error`` vaut ``true``, les détails sont affichés à la sortie standard.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

Crée et compile un nouvel objet **RegEx**. Voir aussi :ref:`compile()<class_RegEx_method_compile>`.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_group_count>`

Renvoie le nombre de groupes de capture dans le motif compilé.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_names**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_names>`

Renvoie un tableau de noms de groupes de capture nommés dans le motif compilé. Ils sont ordonnés par ordre d'apparition.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_pattern:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_pattern**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_pattern>`

Renvoie le motif de recherche original qui a été compilé.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

Renvoie si cet objet a un motif de recherche valide assigné.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

Cherche le texte pour le motif compilé. Renvoie un conteneur :ref:`RegExMatch<class_RegExMatch>` du premier résultat correspondant si trouvé, sinon ``null``.

La région dans laquelle rechercher peut être spécifiée avec ``offset`` et ``end``. Ceci est utile lors d'une recherche d'un autre correspondance dans le même objet ``subject`` en appelant cette méthode à nouveau après un succès précédent. Notez que définir ces paramètres diffère du passage d'une chaîne raccourcie. Par exemple, l'ancre de démarrage ``^`` n'est pas affectée par ``offset``, et le caractère avant ``offset`` sera vérifié pour la limite de mot ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

Cherche le texte pour le motif compilé. Renvoie un tableau de conteneurs :ref:`RegExMatch<class_RegExMatch>` pour chaque résultat ne se superposant pas. Si aucun résultat n'est trouvé, un tableau vide est renvoyé à la place.

La région dans laquelle rechercher peut être spécifiée avec ``offset`` et ``end``. Ceci est utile lors d'une recherche d'un autre correspondance dans le même objet ``subject`` en appelant cette méthode à nouveau après un succès précédent. Notez que définir ces paramètres diffère du passage d'une chaîne raccourcie. Par exemple, l'ancre de démarrage ``^`` n'est pas affectée par ``offset``, et le caractère avant ``offset`` sera vérifié pour la limite de mot ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

Cherche le texte pour le motif compilé et le remplace par la chaîne spécifiée. les séquences d'échappement et les références arrières telles que ``$1`` et ``$name`` sont étendues et résolues. Par défaut, seule la première instance est remplacée, mais cela peut être changé pour toutes les instances (remplacement global).

La région dans laquelle rechercher peut être spécifiée avec ``offset`` et ``end``. Ceci est utile lors d'une recherche d'un autre correspondance dans le même objet ``subject`` en appelant cette méthode à nouveau après un succès précédent. Notez que définir ces paramètres diffère du passage d'une chaîne raccourcie. Par exemple, l'ancre de démarrage ``^`` n'est pas affectée par ``offset``, et le caractère avant ``offset`` sera vérifié pour la limite de mot ``\b``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
