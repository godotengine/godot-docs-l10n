:github_url: hide

.. _class_RegExMatch:

RegExMatch
==========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene i risultati di una ricerca con un :ref:`RegEx<class_RegEx>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Contiene i risultati di una singola corrispondenza di un :ref:`RegEx<class_RegEx>` restituita da :ref:`RegEx.search()<class_RegEx_method_search>` e :ref:`RegEx.search_all()<class_RegEx_method_search_all>`. Può essere utilizzato per trovare la posizione e l'intervallo della corrispondenza e dei suoi gruppi di cattura, e può estrarre la sua sottostringa per te.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`names<class_RegExMatch_property_names>`     | ``{}``                  |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`strings<class_RegExMatch_property_strings>` | ``PackedStringArray()`` |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+
   | :ref:`String<class_String>`                       | :ref:`subject<class_RegExMatch_property_subject>` | ``""``                  |
   +---------------------------------------------------+---------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_end<class_RegExMatch_method_get_end>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const|       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_group_count<class_RegExMatch_method_get_group_count>`\ (\ ) |const|                                 |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_start<class_RegExMatch_method_get_start>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const|   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_string<class_RegExMatch_method_get_string>`\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RegExMatch_property_names:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **names** = ``{}`` :ref:`🔗<class_RegExMatch_property_names>`

.. rst-class:: classref-property-setget

- :ref:`Dictionary<class_Dictionary>` **get_names**\ (\ )

Un dizionario di gruppi denominati e il numero di gruppo corrispondente. Sono inclusi solo i gruppi che sono stati abbinati. Se più gruppi hanno lo stesso nome, tale nome farebbe riferimento al primo corrispondente.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_strings:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **strings** = ``PackedStringArray()`` :ref:`🔗<class_RegExMatch_property_strings>`

.. rst-class:: classref-property-setget

- :ref:`PackedStringArray<class_PackedStringArray>` **get_strings**\ (\ )

Un :ref:`Array<class_Array>` della corrispondenza e dei suoi gruppi di cattura.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_property_subject:

.. rst-class:: classref-property

:ref:`String<class_String>` **subject** = ``""`` :ref:`🔗<class_RegExMatch_property_subject>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_subject**\ (\ )

La stringa sorgente utilizzata con il modello di ricerca per trovare questo risultato corrispondente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RegExMatch_method_get_end:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_end>`

Restituisce la posizione finale della corrispondenza all'interno della stringa sorgente. La posizione finale dei gruppi di cattura può essere recuperata specificando il numero del gruppo come numero intero o il nome della stringa (se è un gruppo denominato). Il valore predefinito 0 si riferisce all'intero modello.

Restituisce -1 se il gruppo non corrisponde o non esiste.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegExMatch_method_get_group_count>`

Restituisce il numero di gruppi di cattura.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_start:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_start**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_start>`

Restituisce la posizione iniziale della corrispondenza all'interno della stringa sorgente. La posizione iniziale dei gruppi di cattura può essere recuperata specificando il numero del gruppo come numero intero o il nome della stringa (se è un gruppo denominato). Il valore predefinito 0 si riferisce all'intero pattern.

Restituisce -1 se il gruppo non corrisponde o non esiste.

.. rst-class:: classref-item-separator

----

.. _class_RegExMatch_method_get_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_string**\ (\ name\: :ref:`Variant<class_Variant>` = 0\ ) |const| :ref:`🔗<class_RegExMatch_method_get_string>`

Restituisce la sottostringa della corrispondenza dalla stringa sorgente. I gruppi di cattura possono essere recuperati specificando il numero del gruppo come numero intero o il nome della stringa (se è un gruppo denominato). Il valore predefinito 0 si riferisce all'intero modello.

Restituisce una stringa vuota se il gruppo non corrisponde o non esiste.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
