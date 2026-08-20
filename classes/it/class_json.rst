:github_url: hide

.. _class_JSON:

JSON
====

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe di supporto per la creazione e l'analisi dei dati JSON.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

La classe **JSON** consente di convertire tutti i tipi di dati da e a una stringa JSON. Ciò è utile per la serializzazione dei dati, ad esempio per salvarli in un file o inviarli in rete.

\ :ref:`stringify()<class_JSON_method_stringify>` serve per convertire qualsiasi tipo di dati in una stringa JSON.

\ :ref:`parse()<class_JSON_method_parse>` serve per convertire qualsiasi JSON esistente in una :ref:`Variant<class_Variant>` che può essere utilizzata all'interno di Godot. Se elaborato correttamente, usa :ref:`data<class_JSON_property_data>` per recuperare il :ref:`Variant<class_Variant>` e usa :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` per verificare se il tipo della variante è quello previsto. Gli oggetti JSON sono convertiti in un :ref:`Dictionary<class_Dictionary>`, ma i dati JSON possono essere utilizzati per archiviare :ref:`Array<class_Array>`, numeri, :ref:`String<class_String>` e persino solo un valore booleano.

::

    var data_to_send = ["a", "b", "c"]
    var json_string = JSON.stringify(data_to_send)
    # Salva i dati
    # ...
    # Ricava i dati
    var json = JSON.new()
    var error = json.parse(json_string)
    if error == OK:
        var data_received = json.data
        if typeof(data_received) == TYPE_ARRAY:
            print(data_received) # Stampa l'array
        else:
            print("Dati inaspettati")
    else:
        print("Errore di analisi JSON: ", json.get_error_message(), " in ", json_string, " alla riga ", json.get_error_line())

Alternativamente, è possibile elaborare le stringhe attraverso il metodo statico :ref:`parse_string()<class_JSON_method_parse_string>`, ma senza poter gestire gli errori.

::

    var data = JSON.parse_string(json_string) # Restituisce null se l'elaborazione non riesce.

\ **Nota:** Entrambi i metodi di elaborazione non sono completamente conformi alle specifiche JSON:

- Le virgole finali in array o oggetti sono ignorate, invece di causare un errore di elaborazione.

- I caratteri di nuova riga e tabulazione sono accettati nei letterali di stringa e sono trattati come le corrispondenti sequenze di escape ``\n`` e ``\t``.

- I numeri sono elaborati attraverso :ref:`String.to_float()<class_String_method_to_float>` che è generalmente più permissivo rispetto alle specifiche JSON.

- Alcuni errori, come le sequenze Unicode non valide, non causano un errore di elaborazione. Invece, la stringa viene ripulita e un errore viene registrato nella console.

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

Converte una variabile :ref:`Variant<class_Variant>` in testo JSON e restituisce il risultato. Utile per serializzare i dati da archiviare o inviare in rete.

\ **Nota:** La specifica JSON non definisce i tipi intero o float, ma solo un tipo *numero*. Pertanto, la conversione di una variante in testo JSON convertirà tutti i valori numerici in tipi :ref:`float<class_float>`.

\ **Nota:** Se ``full_precision`` è ``true``, quando si convertono i float in stringhe, le cifre inaffitabili sono convertite oltre alle cifre affidabili per garantire una decodifica esatta.

Il parametro ``indent`` controlla se e come qualcosa è indentato; il suo contenuto verrà utilizzato dove dovrebbe esserci un rientro nel risultato. Anche spazi come ``" "`` funzioneranno. ``\t`` e ``\n`` possono anche essere utilizzati per un rientro con tabulazione o per creare una nuova riga per ogni rientro, rispettivamente.

\ **Attenzione:** I numeri non finiti non sono supportati in JSON. Qualsiasi occorrenza di :ref:`@GDScript.INF<class_@GDScript_constant_INF>` sarà sostituita con ``1e99999``, e :ref:`@GDScript.INF<class_@GDScript_constant_INF>` negativo sarà sostituito con ``-1e99999``, ma saranno interpretati correttamente come infiniti dalla maggior parte dei parser JSON. :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` sarà sostituito con ``null`` e non sarà interpretato come NaN nei parser JSON. Se si prevedono numeri non finiti, si consiglia di passare prima i dati attraverso :ref:`from_native()<class_JSON_method_from_native>`.

\ **Esempio di risultato:**\ 

::

    ## JSON.stringify(my_dictionary)
    {"name":"my_dictionary","version":"1.0.0","entities":[{"name":"entity_0","value":"value_0"},{"name":"entity_1","value":"value_1"}]}

    ## JSON.stringify(my_dictionary, "\t")
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

    ## JSON.stringify(my_dictionary, "...")
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
