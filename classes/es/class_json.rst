:github_url: hide

.. _class_JSON:

JSON
====

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase auxiliar para crear y analizar datos JSON.

.. rst-class:: classref-introduction-group

Descripción
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

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+----------+
   | :ref:`Variant<class_Variant>` | :ref:`data<class_JSON_property_data>` | ``null`` |
   +-------------------------------+---------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_JSON_property_data:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **data** = ``null`` :ref:`🔗<class_JSON_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_data**\ (\ )

Contiene los datos JSON analizados en formato :ref:`Variant<class_Variant>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_JSON_method_from_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **from_native**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_from_native>`

Convierte un tipo de motor nativo en un valor compatible con JSON.

Por defecto, los objetos se ignoran por razones de seguridad, a menos que ``full_objects`` sea ``true``.

Puedes convertir un valor nativo en una cadena JSON de esta manera:

::

    func encode_data(value, full_objects = false):
        return JSON.stringify(JSON.from_native(value, full_objects))

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_error_line**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_line>`

Devuelve ``0`` si la última llamada a :ref:`parse()<class_JSON_method_parse>` fue exitosa, o el número de línea donde falló el análisis.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_message:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_message**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_message>`

Devuelve una string vacía si la última llamada a :ref:`parse()<class_JSON_method_parse>` fue exitosa, o el mensaje de error si falló.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_parsed_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_parsed_text**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_parsed_text>`

Devuelve el texto analizado por :ref:`parse()<class_JSON_method_parse>` (requiere pasar ``keep_text`` a :ref:`parse()<class_JSON_method_parse>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSON_method_parse>`

Intenta analizar el ``json_text`` proporcionado.

Devuelve un :ref:`Error<enum_@GlobalScope_Error>`. Si el análisis fue exitoso, devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` y el resultado se puede recuperar usando :ref:`data<class_JSON_property_data>`. Si no tiene éxito, usa :ref:`get_error_line()<class_JSON_method_get_error_line>` y :ref:`get_error_message()<class_JSON_method_get_error_message>` para identificar la causa del fallo.

Variante no estática de :ref:`parse_string()<class_JSON_method_parse_string>`, si quieres un manejo de errores personalizado.

El argumento opcional ``keep_text`` instruye al analizador a mantener una copia del texto original. Este texto se puede obtener más tarde usando la función :ref:`get_parsed_text()<class_JSON_method_get_parsed_text>` y se usa al guardar el recurso (en lugar de generar nuevo texto a partir de :ref:`data<class_JSON_property_data>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse_string:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **parse_string**\ (\ json_string\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_JSON_method_parse_string>`

Intenta analizar la ``json_string`` proporcionada y devuelve los datos analizados. Devuelve ``null`` si el análisis falla.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_stringify:

.. rst-class:: classref-method

:ref:`String<class_String>` **stringify**\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_stringify>`

Converts a :ref:`Variant<class_Variant>` var to JSON text and returns the result. Useful for serializing data to store or send over the network.

\ **Note:** The JSON specification does not define integer or float types, but only a *number* type. Therefore, converting a Variant to JSON text will convert all numerical values to :ref:`float<class_float>` types.

\ **Note:** If ``full_precision`` is ``true``, when stringifying floats, the unreliable digits are stringified in addition to the reliable digits to guarantee exact decoding.

The ``indent`` parameter controls if and how something is indented; its contents will be used where there should be an indent in the output. Even spaces like ``"   "`` will work. ``\t`` and ``\n`` can also be used for a tab indent, or to make a newline for each indent respectively.

\ **Warning:** Non-finite numbers are not supported in JSON. Any occurrences of :ref:`@GDScript.INF<class_@GDScript_constant_INF>` will be replaced with ``1e99999``, and negative :ref:`@GDScript.INF<class_@GDScript_constant_INF>` will be replaced with ``-1e99999``, but they will be interpreted correctly as infinity by most JSON parsers. :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` will be replaced with ``null``, and it will not be interpreted as NaN in JSON parsers. If you expect non-finite numbers, consider passing your data through :ref:`from_native()<class_JSON_method_from_native>` first.

\ **Example output:**\ 

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

Convierte un valor compatible con JSON que se creó con :ref:`from_native()<class_JSON_method_from_native>` de nuevo a los tipos de motor nativos.

Por defecto, los objetos se ignoran por razones de seguridad, a menos que ``allow_objects`` sea ``true``.

Puedes convertir un string JSON de nuevo a un valor nativo así:

::

    func decode_data(string, allow_objects = false):
        return JSON.to_native(JSON.parse_string(string), allow_objects)

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
