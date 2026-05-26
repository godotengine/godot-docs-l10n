:github_url: hide

.. _class_JSON:

JSON
====

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase auxiliar para crear y analizar datos JSON.

.. rst-class:: classref-introduction-group

Descripción
----------------------

La clase **JSON** permite que todos los tipos de datos se conviertan a y desde una string JSON. Esto es útil para serializar datos, por ejemplo, para guardar en un archivo o enviar a través de la red.

\ :ref:`stringify()<class_JSON_method_stringify>` se usa para convertir cualquier tipo de dato en una string JSON.

\ :ref:`parse()<class_JSON_method_parse>` se usa para convertir cualquier dato JSON existente en un :ref:`Variant<class_Variant>` que se pueda usar dentro de Godot. Si se parsea con éxito, usa :ref:`data<class_JSON_property_data>` para recuperar el :ref:`Variant<class_Variant>`, y usa :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` para comprobar si el tipo del Variant es el que esperas. Los objetos JSON se convierten en un :ref:`Dictionary<class_Dictionary>`, pero los datos JSON se pueden usar para almacenar :ref:`Array<class_Array>`\ s, números, :ref:`String<class_String>`\ s e incluso simplemente un booleano.

::

    var data_to_send = ["a", "b", "c"]
    var json_string = JSON.stringify(data_to_send)
    # Guardar datos
    # ...
    # Recuperar datos
    var json = JSON.new()
    var error = json.parse(json_string)
    if error == OK:
        var data_received = json.data
        if typeof(data_received) == TYPE_ARRAY:
            print(data_received) # Imprime el array.
        else:
            print("Datos inesperados")
    else:
        print("Error de análisis JSON: ", json.get_error_message(), " en ", json_string, " en la línea ", json.get_error_line())

Alternativamente, puedes parsear cadenas usando el método estático :ref:`parse_string()<class_JSON_method_parse_string>`, pero no maneja errores.

::

    var data = JSON.parse_string(json_string) # Devuelve null si el análisis falló.

\ **Nota:** Ambos métodos de análisis no cumplen completamente con la especificación JSON:

- Las comas finales en arrays u objetos se ignoran, en lugar de causar un error de análisis.

- Se aceptan caracteres de nueva línea y tabulación en literales de string, y se tratan como sus secuencias de escape correspondientes ``\n`` y ``\t``.

- Los números se parsean usando :ref:`String.to_float()<class_String_method_to_float>`, que es generalmente más laxo que la especificación JSON.

- Ciertos errores, como secuencias Unicode inválidas, no causan un error de análisis. En su lugar, la string se limpia y se registra un error en la consola.

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

Convierte una variable :ref:`Variant<class_Variant>` a texto JSON y devuelve el resultado. Útil para serializar datos para almacenar o enviar a través de la red.

\ **Nota:** La especificación JSON no define tipos enteros o floats, sino solo un tipo *número*. Por lo tanto, convertir una Variant a texto JSON convertirá todos los valores numéricos a tipos :ref:`float<class_float>`.

\ **Nota:** Si ``full_precision`` es ``true``, al convertir floats a string, los dígitos no fiables se convierten a string además de los dígitos fiables para garantizar una decodificación exacta.

El parámetro ``indent`` controla si y cómo se indenta algo; su contenido se utilizará donde deba haber una indentación en la salida. Incluso espacios como ``"   "`` funcionarán. ``\t`` y ``\n`` también pueden usarse para una indentación de tabulación, o para hacer un salto de línea para cada indentación respectivamente.

\ **Advertencia:** Los números no finitos no son compatibles con JSON. Cualquier ocurrencia de :ref:`@GDScript.INF<class_@GDScript_constant_INF>` será reemplazada por ``1e99999``, y :ref:`@GDScript.INF<class_@GDScript_constant_INF>` negativo será reemplazado por ``-1e99999``, pero la mayoría de los analizadores JSON los interpretarán correctamente como infinito. :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` será reemplazado por ``null``, y no se interpretará como NaN en los analizadores JSON. Si esperas números no finitos, considera pasar tus datos por :ref:`from_native()<class_JSON_method_from_native>` primero.

\ **Ejemplo de salida:**\ 

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
