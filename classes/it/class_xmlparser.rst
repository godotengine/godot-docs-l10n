:github_url: hide

.. _class_XMLParser:

XMLParser
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce un'interfaccia di basso livello per la creazione di parser per i file XML.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Fornisce un'interfaccia di basso livello per creare parser per file `XML <https://en.wikipedia.org/wiki/XML>`__. Questa classe può servire come base per creare parser XML personalizzati.

Per analizzare XML, devi aprire un file con il metodo :ref:`open()<class_XMLParser_method_open>` o un buffer con il metodo :ref:`open_buffer()<class_XMLParser_method_open_buffer>`. Successivamente, il metodo :ref:`read()<class_XMLParser_method_read>` deve essere chiamato per analizzare i nodi successivi. La maggior parte dei metodi prende in considerazione il nodo attualmente analizzato.

Ecco un esempio di utilizzo di **XMLParser** per analizzare un file SVG (basato su XML), stampando ogni elemento e i suoi attributi come un dizionario:


.. tabs::

 .. code-tab:: gdscript

    var parser = XMLParser.new()
    parser.open("path/to/file.svg")
    while parser.read() != ERR_FILE_EOF:
        if parser.get_node_type() == XMLParser.NODE_ELEMENT:
            var node_name = parser.get_node_name()
            var attributes_dict = {}
            for idx in range(parser.get_attribute_count()):
                attributes_dict[parser.get_attribute_name(idx)] = parser.get_attribute_value(idx)
            print("The ", node_name, " element has the following attributes: ", attributes_dict)

 .. code-tab:: csharp

    var parser = new XmlParser();
    parser.Open("path/to/file.svg");
    while (parser.Read() != Error.FileEof)
    {
        if (parser.GetNodeType() == XmlParser.NodeType.Element)
        {
            var nodeName = parser.GetNodeName();
            var attributesDict = new Godot.Collections.Dictionary();
            for (int idx = 0; idx < parser.GetAttributeCount(); idx++)
            {
                attributesDict[parser.GetAttributeName(idx)] = parser.GetAttributeValue(idx);
            }
            GD.Print($"The {nodeName} element has the following attributes: {attributesDict}");
        }
    }



.. rst-class:: classref-reftable-group

Metodi
------------

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

Enumerazioni
------------------------

.. _enum_XMLParser_NodeType:

.. rst-class:: classref-enumeration

enum **NodeType**: :ref:`🔗<enum_XMLParser_NodeType>`

.. _class_XMLParser_constant_NODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_NONE** = ``0``

Non c'è alcun nodo (nessun file o buffer aperto).

.. _class_XMLParser_constant_NODE_ELEMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT** = ``1``

Un tipo di nodo elemento, noto anche come un tag, ad esempio ``<title>``.

.. _class_XMLParser_constant_NODE_ELEMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT_END** = ``2``

Un tipo di fine del nodo elemento, ad esempio ``</title>``.

.. _class_XMLParser_constant_NODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_TEXT** = ``3``

Un tipo di nodo di testo, ossia testo che non è all'interno di un elemento. Questo include lo spazio vuoto.

.. _class_XMLParser_constant_NODE_COMMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_COMMENT** = ``4``

Un tipo di nodo commento, ad esempio ``<!--A comment-->``.

.. _class_XMLParser_constant_NODE_CDATA:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_CDATA** = ``5``

Un tipo di nodo per le sezioni CDATA (Character Data), ad esempio ``<![CDATA[CDATA section]]>``.

.. _class_XMLParser_constant_NODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_UNKNOWN** = ``6``

Un tipo di nodo sconosciuto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XMLParser_method_get_attribute_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_attribute_count**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_count>`

Restituisce il numero di attributi nell'elemento attualmente analizzato.

\ **Nota:** Se questo metodo è usato mentre il nodo attualmente analizzato non è :ref:`NODE_ELEMENT<class_XMLParser_constant_NODE_ELEMENT>` o :ref:`NODE_ELEMENT_END<class_XMLParser_constant_NODE_ELEMENT_END>`, questo conteggio non sarà aggiornato e rifletterà ancora l'ultimo elemento.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_name>`

Restituisce il nome di un attributo dell'elemento attualmente analizzato, specificato dall'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_value**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_value>`

Restituisce il valore di un attributo dell'elemento attualmente analizzato, specificato dall'indice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_current_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_line**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_current_line>`

Restituisce la riga attuale nel file analizzato, contando da 0.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value>`

Restituisce il valore di un attributo dell'elemento attualmente analizzato, specificato dal suo nome ``name``. Questo metodo genererà un errore se l'elemento non ha il tale attributo.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value_safe:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value_safe**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value_safe>`

Restituisce il valore di un attributo dell'elemento attualmente analizzato, specificato dal suo nome ``name``. Questo metodo restituirà una stringa vuota se l'elemento non ha il tale attributo.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_data:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_data**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_data>`

Restituisce il contenuto di un nodo di testo. Questo metodo genererà un errore se il nodo attualmente analizzato è di qualsiasi altro tipo.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_name**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_name>`

Restituisce il nome di un nodo. Questo metodo genera un errore se il nodo attualmente analizzato è un nodo di testo.

\ **Nota:** Il contenuto di un nodo :ref:`NODE_CDATA<class_XMLParser_constant_NODE_CDATA>` e la stringa di commento di un nodo :ref:`NODE_COMMENT<class_XMLParser_constant_NODE_COMMENT>` sono anche loro considerati come nomi.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_offset**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_offset>`

Restituisce l'offset di byte del nodo attualmente analizzato dall'inizio del file o del buffer. Questo è di solito equivalente al numero di caratteri prima della posizione di lettura.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_type:

.. rst-class:: classref-method

:ref:`NodeType<enum_XMLParser_NodeType>` **get_node_type**\ (\ ) :ref:`🔗<class_XMLParser_method_get_node_type>`

Restituisce il tipo del nodo attuale. Confrontalo con le costanti :ref:`NodeType<enum_XMLParser_NodeType>`.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_has_attribute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_attribute**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_has_attribute>`

Restituisce ``true`` se l'elemento attualmente analizzato ha un attributo con il nome ``name``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_is_empty>`

Restituisce ``true`` se l'elemento attualmente analizzato è vuoto, ad esempio ``<element />``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XMLParser_method_open>`

Apre un ``file`` XML per l'analisi. Questo metodo restituisce un codice d'errore.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_XMLParser_method_open_buffer>`

Apre un ``buffer`` grezzo XML per l'analisi. Questo metodo restituisce un codice d'errore.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_read:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **read**\ (\ ) :ref:`🔗<class_XMLParser_method_read>`

Analizza il prossimo nodo nel file. Questo metodo restituisce un codice d'errore.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_seek:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XMLParser_method_seek>`

Sposta il cursore del buffer in un determinato offset (dall'inizio) e legge il nodo successivo. Questo metodo restituisce un codice d'errore.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_skip_section:

.. rst-class:: classref-method

|void| **skip_section**\ (\ ) :ref:`🔗<class_XMLParser_method_skip_section>`

Salta la sezione attuale. Se il nodo attualmente analizzato contiene nodi più interni, saranno ignorati e il cursore andrà alla chiusura dell'elemento attuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
