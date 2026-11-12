:github_url: hide

.. _class_JSON:

JSON
====

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe di supporto per la creazione e l'analisi dei dati JSON.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

The **JSON** class enables all data types to be converted to and from a JSON string. This is useful for serializing data, e.g. to save to a file or send over the network.

\ :ref:`stringify()<class_JSON_method_stringify>` is used to convert any data type into a JSON string.

\ :ref:`parse()<class_JSON_method_parse>` is used to convert any existing JSON data into a :ref:`Variant<class_Variant>` that can be used within Godot. If successfully parsed, use :ref:`data<class_JSON_property_data>` to retrieve the :ref:`Variant<class_Variant>`, and use :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` to check if the Variant's type is what you expect. JSON Objects are converted into a :ref:`Dictionary<class_Dictionary>`, but JSON data can be used to store :ref:`Array<class_Array>`\ s, numbers, :ref:`String<class_String>`\ s and even just a boolean.

::

    var data_to_send = ["a", "b", "c"]
    var json_string = JSON.stringify(data_to_send)
    # Save data
    # ...
    # Retrieve data
    var json = JSON.new()
    var error = json.parse(json_string)
    if error == OK:
        var data_received = json.data
        if typeof(data_received) == TYPE_ARRAY:
            print(data_received) # Prints the array.
        else:
            print("Unexpected data")
    else:
        print("JSON Parse Error: ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())

Alternatively, you can parse strings using the static :ref:`parse_string()<class_JSON_method_parse_string>` method, but it doesn't handle errors.

::

    var data = JSON.parse_string(json_string) # Returns null if parsing failed.

\ **Note:** Both parse methods do not fully comply with the JSON specification:

- Trailing commas in arrays or objects are ignored, instead of causing a parser error.

- New line and tab characters are accepted in string literals, and are treated like their corresponding escape sequences ``\n`` and ``\t``.

- Numbers are parsed using :ref:`String.to_float()<class_String_method_to_float>` which is generally more lax than the JSON specification.

- Certain errors, such as invalid Unicode sequences, do not cause a parser error. Instead, the string is cleaned up and an error is logged to the console.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+----------+
   | :ref:`Variant<class_Variant>` | :ref:`data<class_JSON_property_data>` | ``null`` |
   +-------------------------------+---------------------------------------+----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`from_native<class_JSON_method_from_native>`\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_error_line<class_JSON_method_get_error_line>`\ (\ ) |const|                                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_error_message<class_JSON_method_get_error_message>`\ (\ ) |const|                                                                                                                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_parsed_text<class_JSON_method_get_parsed_text>`\ (\ ) |const|                                                                                                                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse<class_JSON_method_parse>`\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ )                                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`parse_string<class_JSON_method_parse_string>`\ (\ json_string\: :ref:`String<class_String>`\ ) |static|                                                                                                                               |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`stringify<class_JSON_method_stringify>`\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`to_native<class_JSON_method_to_native>`\ (\ json\: :ref:`Variant<class_Variant>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_JSON_property_data:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **data** = ``null`` :ref:`🔗<class_JSON_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_data**\ (\ )

Contiene i dati JSON elaborati sotto forma di :ref:`Variant<class_Variant>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_JSON_method_from_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **from_native**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_from_native>`

Converte un tipo nativo del motore in un valore conforme a JSON.

Come predefinito, gli oggetti vengono ignorati per motivi di sicurezza, a meno che ``full_objects`` non sia ``true``.

È possibile convertire un valore nativo in una stringa JSON in questo modo:

::

    func encode_data(value, full_objects = false):
        return JSON.stringify(JSON.from_native(value, full_objects))

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_error_line**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_line>`

Restituisce ``0`` se l'ultima chiamata a :ref:`parse()<class_JSON_method_parse>` ha avuto successo, oppure il numero di riga in cui l'elaborazione è fallita.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_message:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_message**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_message>`

Restituisce una stringa vuota se l'ultima chiamata a :ref:`parse()<class_JSON_method_parse>` ha avuto successo, oppure il messaggio di errore se è fallita.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_parsed_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_parsed_text**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_parsed_text>`

Restituisce il testo elaborato da :ref:`parse()<class_JSON_method_parse>` (richiede di passare ``keep_text`` a :ref:`parse()<class_JSON_method_parse>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSON_method_parse>`

Tenta di analizzare il testo in JSON (``json_text``) fornito.

Restituisce una delle costanti di :ref:`Error<enum_@GlobalScope_Error>`. Se l'elaborazione ha avuto successo, restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` e il risultato può essere recuperato tramite :ref:`data<class_JSON_property_data>`. In caso contrario, utilizza :ref:`get_error_line()<class_JSON_method_get_error_line>` e :ref:`get_error_message()<class_JSON_method_get_error_message>` per identificare l'origine dell'errore.

Variazione non statica di :ref:`parse_string()<class_JSON_method_parse_string>`, se si desidera una gestione personalizzata degli errori.

L'argomento facoltativo ``keep_text`` indica al parser di conservare una copia del testo originale. Questo testo può essere ottenuto in seguito tramite la funzione :ref:`get_parsed_text()<class_JSON_method_get_parsed_text>` e viene utilizzato quando si salva la risorsa (invece di generare nuovo testo da :ref:`data<class_JSON_property_data>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse_string:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **parse_string**\ (\ json_string\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_JSON_method_parse_string>`

Tenta di elaborare la stringa ``json_string`` e restituisce i dati elaborati. Restituisce ``null`` se l'elaborazione non riesce.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_stringify:

.. rst-class:: classref-method

:ref:`String<class_String>` **stringify**\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_stringify>`

Converts a :ref:`Variant<class_Variant>` var to JSON text and returns the result. Useful for serializing data to store or send over the network.

If ``sort_keys`` is ``true``, the keys of any :ref:`Dictionary<class_Dictionary>`\ s are sorted alphabetically when converting to JSON. If ``full_precision`` is ``true``, when stringifying floats, the unreliable digits are stringified in addition to the reliable digits to guarantee exact decoding.

\ **Note:** The JSON specification does not define integer or float types, but only a *number* type. Therefore, converting a Variant to JSON text will convert all numerical values to :ref:`float<class_float>` types.

The ``indent`` parameter controls if and how something is indented; its contents will be used where there should be an indent in the output. Even spaces like ``"   "`` will work. ``\t`` and ``\n`` can also be used for a tab indent, or to make a newline for each indent respectively. If set to an empty string, the JSON will be on a single line with no spacing, which allows for smaller file sizes.

\ **Warning:** Non-finite numbers are not supported in JSON. Any occurrences of :ref:`@GDScript.INF<class_@GDScript_constant_INF>` will be replaced with ``1e99999``, and negative :ref:`@GDScript.INF<class_@GDScript_constant_INF>` will be replaced with ``-1e99999``, but they will be interpreted correctly as infinity by most JSON parsers. :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` will be replaced with ``null``, and it will not be interpreted as NaN in JSON parsers. If you expect non-finite numbers, consider passing your data through :ref:`from_native()<class_JSON_method_from_native>` first.

\ **Example output:**\ 

::

    ## JSON.stringify(my_dictionary, "", false)
    {"name":"my_dictionary","version":"1.0.0","entities":[{"name":"entity_0","value":"value_0"},{"name":"entity_1","value":"value_1"}]}

    ## JSON.stringify(my_dictionary, "\t", false)
    {
        "name": "my_dictionary",
        "version": "1.0.0",
        "entities": [
            {
                "name": "entity_0",
                "value": "value_0"
            },
            {
                "name": "entity_1",
                "value": "value_1"
            }
        ]
    }

    ## JSON.stringify(my_dictionary, "...", false)
    {
    ..."name": "my_dictionary",
    ..."version": "1.0.0",
    ..."entities": [
    ......{
    ........."name": "entity_0",
    ........."value": "value_0"
    ......},
    ......{
    ........."name": "entity_1",
    ........."value": "value_1"
    ......}
    ...]
    }

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_to_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **to_native**\ (\ json\: :ref:`Variant<class_Variant>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_to_native>`

Converte un valore conforme a JSON in che è stato creato con :ref:`from_native()<class_JSON_method_from_native>` in tipi nativi del motore.

Come predefinito, gli oggetti vengono ignorati per motivi di sicurezza, a meno che ``allow_objects`` non sia ``true``.

È possibile convertire una stringa JSON in un valore nativo in questo modo:

::

    func decode_data(string, allow_objects = false):
        return JSON.to_native(JSON.parse_string(string), allow_objects)

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
