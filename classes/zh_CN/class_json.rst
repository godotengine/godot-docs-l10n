:github_url: hide

.. _class_JSON:

JSON
====

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于创建和解析 JSON 数据的辅助类。

.. rst-class:: classref-introduction-group

描述
----

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

属性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+----------+
   | :ref:`Variant<class_Variant>` | :ref:`data<class_JSON_property_data>` | ``null`` |
   +-------------------------------+---------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

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

属性说明
--------

.. _class_JSON_property_data:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **data** = ``null`` :ref:`🔗<class_JSON_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_data**\ (\ )

包含解析到的 JSON 数据，类型为 :ref:`Variant<class_Variant>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_JSON_method_from_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **from_native**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_from_native>`

将引擎原生类型转换为 JSON 兼容类型。

出于安全原因，默认会忽略对象，除非 ``full_objects`` 为 ``true``\ 。

将原生值转换为 JSON 字符串的方法如下：

::

    func encode_data(value, full_objects = false):
        return JSON.stringify(JSON.from_native(value, full_objects))

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_error_line**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_line>`

如果上一次调用 :ref:`parse()<class_JSON_method_parse>` 成功，则返回 ``0``\ ，否则返回解析失败的行号。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_message:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_message**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_message>`

如果上一次调用 :ref:`parse()<class_JSON_method_parse>` 成功，则返回空字符串，否则返回失败时的错误消息。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_parsed_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_parsed_text**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_parsed_text>`

返回由 :ref:`parse()<class_JSON_method_parse>` 解析的文本（要求向 :ref:`parse()<class_JSON_method_parse>` 传递 ``keep_text``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSON_method_parse>`

尝试解析提供的 ``json_text``\ 。

返回 :ref:`Error<enum_@GlobalScope_Error>`\ 。如果解析成功则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，并且可以使用 :ref:`data<class_JSON_property_data>` 检索该结果。如果不成功，请使用 :ref:`get_error_line()<class_JSON_method_get_error_line>` 和 :ref:`get_error_message()<class_JSON_method_get_error_message>` 来识别失败的原因。

如果想要自定义错误处理，可以使用的 :ref:`parse_string()<class_JSON_method_parse_string>` 的非静态版本。

可选的 ``keep_text`` 参数会让解析器保留原始文本的副本。该文本稍后可以使用 :ref:`get_parsed_text()<class_JSON_method_get_parsed_text>` 函数获取，并在保存资源时使用（而不是从 :ref:`data<class_JSON_property_data>` 生成新文本）。

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse_string:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **parse_string**\ (\ json_string\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_JSON_method_parse_string>`

试图解析提供的 ``json_string``\ ，并返回解析后的数据。如果解析失败，返回 ``null``\ 。

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

将使用 :ref:`from_native()<class_JSON_method_from_native>` 创建的 JSON 兼容值转换回引擎原生类型。

出于安全原因，默认会忽略对象，除非 ``allow_objects`` 为 ``true``\ 。

将 JSON 字符串转换回原生值的方法如下：

::

    func decode_data(string, allow_objects = false):
        return JSON.to_native(JSON.parse_string(string), allow_objects)

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
