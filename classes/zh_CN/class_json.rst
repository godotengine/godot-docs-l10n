:github_url: hide

.. _class_JSON:

JSON
====

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于创建和解析 JSON 数据的辅助类。

.. rst-class:: classref-introduction-group

描述
----

**JSON** 类允许所有数据类型与 JSON 字符串相互转换。可用于将数据序列化，例如保存到文件或通过网络发送。

\ :ref:`stringify()<class_JSON_method_stringify>` 用于将任何数据类型转换为 JSON 字符串。

\ :ref:`parse()<class_JSON_method_parse>` 用于将任何现有的 JSON 数据转换为可以在 Godot 中使用的 :ref:`Variant<class_Variant>`\ 。如果解析成功，使用 :ref:`data<class_JSON_property_data>` 检索 :ref:`Variant<class_Variant>`\ ，并使用 :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` 检查 Variant 的类型是否符合你的预期。JSON 对象被转换为 :ref:`Dictionary<class_Dictionary>`\ ，但 JSON 数据可用于存储 :ref:`Array<class_Array>`\ 、数字、\ :ref:`String<class_String>`\ ，甚至只是一个布尔值。

::

    var data_to_send = ["a", "b", "c"]
    var json_string = JSON.stringify(data_to_send)
    # 保存数据
    # ...
    # 检索数据
    var json = JSON.new()
    var error = json.parse(json_string)
    if error == OK:
        var data_received = json.data
        if typeof(data_received) == TYPE_ARRAY:
            print(data_received) # 输出该数组。
        else:
            print("意外数据")
    else:
        print("JSON 解析错误：", json.get_error_message(), " 位于 ", json_string, " 行号 ", json.get_error_line())

你也可以使用静态的 :ref:`parse_string()<class_JSON_method_parse_string>` 方法解析字符串，但该方法不会处理错误。

::

    var data = JSON.parse_string(json_string) # 如果解析失败则返回 null。

\ **注意：**\ 两种解析方式都不完全符合 JSON 规范：

- 数组或对象中的尾随逗号将被忽略，而不是引起解析器错误。

- 换行符和制表符在字符串文字中被接受，并被视为它们相应的转义序列 ``\n`` 和 ``\t``\ 。

- 使用 :ref:`String.to_float()<class_String_method_to_float>` 解析数字，这通常比 JSON 规范更宽松。

- 某些错误不会导致解析器错误，例如 Unicode 序列无效，但是该字符串会被清理并将错误记录到控制台。

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

将 :ref:`Variant<class_Variant>` 变量转换为 JSON 文本并返回结果。可用于将数据进行序列化保存或通过网络发送。

\ **注意：**\ JSON 规范没有定义整数和浮点数类型，只有一个\ *数字*\ 类型。因此，将 Variant 转换为 JSON 文本会将所有数字值转换为 :ref:`float<class_float>` 类型。

\ **注意：**\ 如果 ``full_precision`` 为 ``true``\ ，则在字符串化浮点数时，除可靠数字外，还将对不可靠数字进行字符串化，以保证准确解码。

\ ``indent`` 参数控制是否缩进以及如何缩进，输出时应该有缩进的地方会用到它的值。甚至可以使用空格 ``" "`` 缩进。\ ``\t`` 和 ``\n`` 可用于制表符缩进，或分别为每个缩进换行。

\ **警告：**\ JSON 不支持非有限数。任何出现的 :ref:`@GDScript.INF<class_@GDScript_constant_INF>` 都将被替换为 ``1e99999``\ ，负数 :ref:`@GDScript.INF<class_@GDScript_constant_INF>` 将被替换为 ``-1e99999``\ ，但大多数 JSON 解析器会将其正确解析为无穷大。\ :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` 将被替换为 ``null``\ ，并且 JSON 解析器不会将其解析为 NaN。如果你需要处理非有限数，请考虑先使用 :ref:`from_native()<class_JSON_method_from_native>` 方法处理你的数据。

\ **示例输出：**\ 

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
