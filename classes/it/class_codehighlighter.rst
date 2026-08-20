:github_url: hide

.. _class_CodeHighlighter:

CodeHighlighter
===============

**Eredita:** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un evidenziatore di sintassi destinato al codice.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Modificando varie proprietà di questa risorsa, è possibile cambiare i colori di stringhe, commenti, numeri e altri motivi di testo all'interno di un controllo di tipo :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CodeHighlighter_property_color_regions:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_regions** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_color_regions>`

.. rst-class:: classref-property-setget

- |void| **set_color_regions**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_color_regions**\ (\ )

Imposta le regioni di colore. Tutte le regioni esistenti saranno rimosse. La chiave del :ref:`Dictionary<class_Dictionary>` è la chiave di inizio e fine della regione, separate da uno spazio. Il valore è il colore della regione.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_function_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **function_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_function_color>`

.. rst-class:: classref-property-setget

- |void| **set_function_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_function_color**\ (\ )

Imposta il colore per le funzioni. Una funzione è una stringa non parola chiave seguita da '('.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_keyword_colors**\ (\ )

Imposta i colori delle parole chiave. Tutte le parole chiave esistenti saranno rimosse. La chiave del :ref:`Dictionary<class_Dictionary>` è la parola chiave. Il valore è il colore della parola chiave.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **member_keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_member_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_member_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_member_keyword_colors**\ (\ )

Imposta i colori delle parole chiave dei membri. Tutte le parole chiave dei membri esistenti saranno rimosse. La chiave del :ref:`Dictionary<class_Dictionary>` è la parola chiave dei membri. Il valore è il colore della parola chiave dei membri.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_variable_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **member_variable_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_member_variable_color>`

.. rst-class:: classref-property-setget

- |void| **set_member_variable_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_member_variable_color**\ (\ )

Imposta il colore per le variabili membro. Una variabile membro è una stringa non parola chiave, non funzione preceduta da un '.'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_number_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **number_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_number_color>`

.. rst-class:: classref-property-setget

- |void| **set_number_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_number_color**\ (\ )

Imposta il colore per i numeri.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_symbol_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **symbol_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_symbol_color>`

.. rst-class:: classref-property-setget

- |void| **set_symbol_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_symbol_color**\ (\ )

Imposta il colore per i simboli.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CodeHighlighter_method_add_color_region:

.. rst-class:: classref-method

|void| **add_color_region**\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CodeHighlighter_method_add_color_region>`

Aggiunge una regione di colore (ad esempio per commenti o stringhe) da ``start_key`` a ``end_key``. Entrambe le chiavi devono essere simboli e ``start_key`` non deve essere condiviso con altri delimitatori.

Se ``line_only`` è ``true`` o ``end_key`` è una :ref:`String<class_String>` vuota, la regione non viene trasferita alla riga successiva.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_keyword_color:

.. rst-class:: classref-method

|void| **add_keyword_color**\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_keyword_color>`

Imposta il colore per una parola chiave.

La parola chiave non può contenere simboli eccetto '\_'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_member_keyword_color:

.. rst-class:: classref-method

|void| **add_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_member_keyword_color>`

Imposta il colore per una parola chiave di un membro.

La parola chiave di un membro non può contenere simboli eccetto '\_'.

Non verrà evidenziata se preceduta da '.'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_color_regions:

.. rst-class:: classref-method

|void| **clear_color_regions**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_color_regions>`

Rimuove tutte le regioni di colore.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_keyword_colors:

.. rst-class:: classref-method

|void| **clear_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_keyword_colors>`

Rimuove tutte le parole chiave.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_member_keyword_colors:

.. rst-class:: classref-method

|void| **clear_member_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_member_keyword_colors>`

Rimuove tutte le parole chiave dei membri.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_keyword_color>`

Restituisce il colore per una parola chiave.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_member_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_member_keyword_color>`

Restituisce il colore per una parola chiave di un membro.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_color_region:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_color_region>`

Restituisce ``true`` se la chiave iniziale esiste, altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_keyword_color>`

Restituisce ``true`` se la parola chiave esiste, altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_member_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_member_keyword_color>`

Restituisce ``true`` se la parola chiave di un membro esiste, altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_color_region:

.. rst-class:: classref-method

|void| **remove_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_color_region>`

Rimuove la regione di colore che utilizza quella chiave iniziale.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_keyword_color:

.. rst-class:: classref-method

|void| **remove_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_keyword_color>`

Rimuove la parola chiave.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_member_keyword_color:

.. rst-class:: classref-method

|void| **remove_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_member_keyword_color>`

Rimuove la parola chiave di un membro.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
