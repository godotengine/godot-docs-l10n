:github_url: hide

.. _class_RegEx:

RegEx
=====

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe per la ricerca di modelli nel testo, tramite espressioni regolari.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

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

Metodi
------------

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

Descrizioni dei metodi
--------------------------------------------

.. _class_RegEx_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_RegEx_method_clear>`

Questo metodo reimposta lo stato dell'oggetto, come se fosse stato appena creato. Ovvero, annulla l'assegnazione dell'espressione regolare di questo oggetto.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_compile:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **compile**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_RegEx_method_compile>`

Compila e assegna il modello di ricerca da usare. Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se la compilazione avviene con successo. Se si verifica un errore, restituisce :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>` e, se ``show_error`` è ``true``, i dettagli vengono stampati sull'output standard.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

Crea e compila un nuovo oggetto **RegEx**. Vedi anche :ref:`compile()<class_RegEx_method_compile>`.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_group_count>`

Restituisce il numero di gruppi di cattura nel modello compilato.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_names**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_names>`

Restituisce un array di nomi di gruppi di cattura denominati nel pattern compilato. Sono elencati in ordine di apparizione.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_pattern:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_pattern**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_pattern>`

Restituisce il modello di ricerca originale compilato.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

Restituisce se a questo oggetto è assegnato un modello di ricerca valido.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

Ricerca nel testo il modello compilato. Restituisce un contenitore :ref:`RegExMatch<class_RegExMatch>` del primo risultato corrispondente se trovato, altrimenti ``null``.

La regione in cui cercare può essere specificata con ``offset`` e ``end``. Ciò è utile quando si cerca un'altra corrispondenza nello stesso soggetto (``subject``), richiamando questo metodo dopo un successo precedente. Nota che impostare questi parametri non è la stessa cosa di passare una stringa abbreviata. Ad esempio, l'ancora di inizio ``^`` non è influenzata da ``offset`` e il carattere prima di ``offset`` sarà controllato per il confine di parola ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

Ricerca nel testo il modello compilato. Restituisce un array di contenitori :ref:`RegExMatch<class_RegExMatch>` per ogni risultato non sovrapposto. Se nessun risultato è stato trovato, viene restituito un array vuoto.

La regione in cui cercare può essere specificata con ``offset`` e ``end``. Ciò è utile quando si cerca un'altra corrispondenza nello stesso soggetto (``subject``), richiamando questo metodo dopo un successo precedente. Nota che impostare questi parametri non è la stessa cosa di passare una stringa abbreviata. Ad esempio, l'ancora di inizio ``^`` non è influenzata da ``offset`` e il carattere prima di ``offset`` sarà controllato per il confine di parola ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

Ricerca nel testo il modello compilato e lo sostituisce con la stringa specificata. Escape e backreference come ``$1`` e ``$name`` vengono espansi e risolti. Per impostazione predefinita, solo la prima istanza viene sostituita, ma può essere modificata per tutte le istanze (sostituzione globale).

La regione in cui cercare può essere specificata con ``offset`` e ``end``. Ciò è utile quando si cerca un'altra corrispondenza nello stesso soggetto (``subject``), richiamando questo metodo dopo un successo precedente. Nota che impostare questi parametri non è la stessa cosa di passare una stringa abbreviata. Ad esempio, l'ancora di inizio ``^`` non è influenzata da ``offset`` e il carattere prima di ``offset`` sarà controllato per il confine di parola ``\b``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
