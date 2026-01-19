:github_url: hide

.. _class_JSON:

JSON
====

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вспомогательный класс для создания и анализа данных JSON.

.. rst-class:: classref-introduction-group

Описание
----------------

Класс **JSON** позволяет преобразовывать все типы данных в строку JSON и из нее. Это полезно для сериализации данных, например, для сохранения в файл или отправки по сети.

\ :ref:`stringify()<class_JSON_method_stringify>` используется для преобразования любого типа данных в строку JSON.

\ :ref:`parse()<class_JSON_method_parse>` используется для преобразования любых существующих данных JSON в :ref:`Variant<class_Variant>`, который может использоваться в Godot. В случае успешного анализа используйте :ref:`data<class_JSON_property_data>` для извлечения :ref:`Variant<class_Variant>` и используйте :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` для проверки того, соответствует ли тип Variant ожидаемому. Объекты JSON преобразуются в :ref:`Dictionary<class_Dictionary>`, но данные JSON можно использовать для хранения :ref:`Array<class_Array>`, чисел, :ref:`String<class_String>` и даже просто логического значения.

::

    var data_to_send = ["a", "b", "c"]
    var json_string = JSON.stringify(data_to_send)
    # Сохранить данные
    # ...
    # Извлечь данные
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

В качестве альтернативы можно анализировать строки с помощью статического метода :ref:`parse_string()<class_JSON_method_parse_string>`, но он не обрабатывает ошибки..

::

    var data = JSON.parse_string(json_string) # Возвращает null, если анализ не удался.

\ **Примечание:** Оба метода анализа не полностью соответствуют спецификации JSON:

- Завершающие запятые в массивах или объектах игнорируются, а не вызывают ошибку синтаксического анализатора.

- Символы новой строки и табуляции принимаются в строковых литералах и обрабатываются как соответствующие им escape-последовательности ``\n`` и ``\t``.

- Числа анализируются с помощью :ref:`String.to_float()<class_String_method_to_float>`, который, как правило, более свободен, чем спецификация JSON.

- Некоторые ошибки, такие как недопустимые последовательности Unicode, не вызывают ошибку парсера. Вместо этого строка очищается, а ошибка регистрируется в консоли.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+----------+
   | :ref:`Variant<class_Variant>` | :ref:`data<class_JSON_property_data>` | ``null`` |
   +-------------------------------+---------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
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

Описания свойств
--------------------------------

.. _class_JSON_property_data:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **data** = ``null`` :ref:`🔗<class_JSON_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_data**\ (\ )

Содержит проанализированные данные JSON в форме :ref:`Variant<class_Variant>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_JSON_method_from_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **from_native**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_from_native>`

Преобразует собственный тип движка в значение, совместимое с JSON.

По умолчанию объекты игнорируются из соображений безопасности, если только ``full_objects`` не равен ``true``.

Вы можете преобразовать собственное значение в строку JSON следующим образом:

::

    func encode_data(value, full_objects = false):
    return JSON.stringify(JSON.from_native(value, full_objects))

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_error_line**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_line>`

Возвращает ``0``, если последний вызов :ref:`parse()<class_JSON_method_parse>` был успешным, или номер строки, в которой анализ не удался.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_message:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_message**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_message>`

Возвращает пустую строку, если последний вызов :ref:`parse()<class_JSON_method_parse>` был успешным, или сообщение об ошибке, если он не удался.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_parsed_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_parsed_text**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_parsed_text>`

Верните текст, проанализированный :ref:`parse()<class_JSON_method_parse>` (требуется передача ``keep_text`` в :ref:`parse()<class_JSON_method_parse>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSON_method_parse>`

Пытается проанализировать предоставленный ``json_text``.

Возвращает :ref:`Error<enum_@GlobalScope_Error>`. Если анализ прошел успешно, возвращается :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`, а результат можно получить с помощью :ref:`data<class_JSON_property_data>`. Если не удалось, используйте :ref:`get_error_line()<class_JSON_method_get_error_line>` и :ref:`get_error_message()<class_JSON_method_get_error_message>`, чтобы определить источник сбоя.

Нестатический вариант :ref:`parse_string()<class_JSON_method_parse_string>`, если вам нужна пользовательская обработка ошибок.

Необязательный аргумент ``keep_text`` указывает парсеру сохранить копию исходного текста. Этот текст можно получить позже с помощью функции :ref:`get_parsed_text()<class_JSON_method_get_parsed_text>` и использовать при сохранении ресурса (вместо генерации нового текста из :ref:`data<class_JSON_property_data>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse_string:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **parse_string**\ (\ json_string\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_JSON_method_parse_string>`

Пытается проанализировать предоставленный ``json_string`` и возвращает проанализированные данные. Возвращает ``null``, если анализ не удался.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_stringify:

.. rst-class:: classref-method

:ref:`String<class_String>` **stringify**\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_stringify>`

Преобразует переменную типа :ref:`Variant<class_Variant>` в текст JSON и возвращает результат. Полезно для сериализации данных для хранения или передачи по сети.

\ **Примечание:** Спецификация JSON не определяет целочисленные или числа с плавающей запятой, а только тип *число*. Поэтому преобразование переменной типа Variant в текст JSON преобразует все числовые значения в тип :ref:`float<class_float>`.

\ **Примечание:** Если ``full_precision`` имеет значение ``true``, то при преобразовании чисел с плавающей запятой в строку, ненадежные цифры преобразуются в строку в дополнение к надежным цифрам для обеспечения точного декодирования.

Параметр ``indent`` управляет тем, как и когда выполняется отступ; его содержимое будет использоваться там, где в выводе должен быть отступ. Даже пробелы, такие как ``" "``, будут работать. ``\t`` и ``\n`` также можно использовать для отступа с помощью табуляции или для создания новой строки для каждого отступа соответственно.

\ **Предупреждение:** Неконечные числа не поддерживаются в JSON. Любые вхождения :ref:`@GDScript.INF<class_@GDScript_constant_INF>` будут заменены на ``1e99999``, а отрицательные :ref:`@GDScript.INF<class_@GDScript_constant_INF>` будут заменены на ``-1e99999``, но большинство парсеров JSON правильно интерпретируют их как бесконечность. :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` будет заменен на ``null`` и не будет интерпретироваться как NaN в парсерах JSON. Если вы ожидаете неконечные числа, рассмотрите возможность предварительной передачи ваших данных через :ref:`from_native()<class_JSON_method_from_native>`.

\ **Пример вывода:**\ 

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

Преобразует JSON-совместимое значение, созданное с помощью :ref:`from_native()<class_JSON_method_from_native>`, обратно в собственные типы движка.

По умолчанию объекты игнорируются из соображений безопасности, если только ``allow_objects`` не равен ``true``.

Вы можете преобразовать строку JSON обратно в собственное значение следующим образом:

::

    func decode_data(string, allow_objects = false):
        return JSON.to_native(JSON.parse_string(string), allow_objects)

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
