:github_url: hide

.. _class_JSON:

JSON
====

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Помічник класу створення та оформлення даних JSON.

.. rst-class:: classref-introduction-group

Опис
--------

Клас **JSON** дозволяє конвертувати всі типи даних у рядок JSON і з нього. Це корисно для серіалізації даних, напр. щоб зберегти у файл або надіслати через мережу. 

\ :ref:`stringify()<class_JSON_method_stringify>` використовується для перетворення будь-якого типу даних у рядок JSON. 

\ :ref:`parse()<class_JSON_method_parse>` використовується для перетворення будь-яких наявних даних JSON у :ref:`Variant<class_Variant>`, який можна використовувати в Godot. У разі успішного аналізу скористайтеся :ref:`data<class_JSON_property_data>`, щоб отримати :ref:`Variant<class_Variant>`, і використовуйте :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>`, щоб перевірити, чи відповідає тип Варіанта тому, що ви очікуєте. Об’єкти JSON перетворюються на :ref:`Dictionary<class_Dictionary>`, але дані JSON можна використовувати для зберігання :ref:`Array<class_Array>`, чисел, :ref:`String<class_String>` і навіть просто логічних значень. 

::
 
    var data_to_send = ["a", "b", "c"] 
    var json_string = JSON.stringify(data_to_send) 
    # Збереження даних 
    # ... 
    # Отримати дані 
    var json = JSON.new() 
    var error = json.parse(json_string) 
    if error == OK: 
        var data_received = json.data 
        if typeof(data_received) == TYPE_ARRAY: 
            print(data_received) # Друкує масив. 
        else: 
            print("Неочікувані дані") 
    else: 
        print("Помилка аналізу JSON: ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())  

Крім того, ви можете аналізувати рядки за допомогою статичного методу :ref:`parse_string()<class_JSON_method_parse_string>`, але він не обробляє помилки. 

::
 
    var data = JSON.parse_string(json_string) # Повертає null, якщо розбір не вдався.  

\ **Примітка:** Обидва методи аналізу не повністю відповідають специфікації JSON: 

— Кінцеві коми в масивах або об’єктах ігноруються, замість того, щоб викликати помилку аналізатора. 

- Нові символи рядка та табуляції приймаються в рядкових літералах і обробляються як їхні відповідні керуючі послідовності ``\n`` і ``\t``. 

- Числа аналізуються за допомогою :ref:`String.to_float()<class_String_method_to_float>`, який зазвичай більш м’який, ніж специфікація JSON. 

- Певні помилки, такі як недійсні послідовності Unicode, не викликають помилки синтаксичного аналізатора. Натомість рядок очищається, а помилка реєструється на консолі.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+----------+
   | :ref:`Variant<class_Variant>` | :ref:`data<class_JSON_property_data>` | ``null`` |
   +-------------------------------+---------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
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

Описи властивостей
------------------------------------

.. _class_JSON_property_data:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **data** = ``null`` :ref:`🔗<class_JSON_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_data**\ (\ )

Містить дані парсованих JSON у формі :ref:`Variant<class_Variant>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_JSON_method_from_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **from_native**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_from_native>`

Перетворює нативний тип механізму на JSON-сумісне значення. 

За умовчанням об’єкти ігноруються з міркувань безпеки, якщо ``full_objects`` не має значення ``true``. 

Ви можете перетворити нативне значення на рядок JSON так: 

::
 
    func encode_data(значення, full_objects = false): 
        return JSON.stringify(JSON.from_native(value, full_objects)) 

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_error_line**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_line>`

Повертає ``0``, якщо останній виклик методу :ref:`parse()<class_JSON_method_parse>` був успішним, або номер рядка, де розбір завершився невдачею.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_message:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_message**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_message>`

Повертає порожній рядок, якщо останній виклик до :ref:`parse()<class_JSON_method_parse>` був успішним, або повідомлення про помилку, якщо це не вдалося.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_parsed_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_parsed_text**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_parsed_text>`

Повертає текст, проаналізований методом :ref:`parse()<class_JSON_method_parse>` (потрібно передати ``keep_text`` до методу :ref:`parse()<class_JSON_method_parse>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSON_method_parse>`

Надані аптемпти для оформлення ``json_text``.

Повернутися до :ref:`Error<enum_@GlobalScope_Error>`. Якщо парс був успішним, він повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` і результат можна отримати за допомогою :ref:`data<class_JSON_property_data>`. Якщо неуспішне використання :ref:`get_error_line()<class_JSON_method_get_error_line>` та :ref:`get_error_message()<class_JSON_method_get_error_message>` для визначення джерела провалу.

Нестатичний варіант :ref:`parse_string()<class_JSON_method_parse_string>`, якщо ви хочете користуватись користувацькими помилками.

Додатковий аргумент ``Keep_text`` вказує на те, щоб зберегти копію оригінального тексту. Цей текст можна отримати пізніше, використовуючи функцію :ref:`get_parsed_text()<class_JSON_method_get_parsed_text>` і використовується при збереженні ресурсу (замість створення нового тексту з :ref:`data<class_JSON_property_data>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse_string:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **parse_string**\ (\ json_string\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_JSON_method_parse_string>`

Приєднатися до парсеризації ``json_string``, наданого та повертає дані паросвідченого. Повертаємо ``null``, якщо не вдалося парсер.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_stringify:

.. rst-class:: classref-method

:ref:`String<class_String>` **stringify**\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_stringify>`

Перетворює змінну :ref:`Variant<class_Variant>` на текст JSON та повертає результат. Корисно для серіалізації даних для зберігання або надсилання через мережу.

\ **Примітка:** Специфікація JSON не визначає цілочисельні або числові типи з плаваючою комою, а лише числовий тип *number*. Тому перетворення Variant на текст JSON перетворить усі числові значення на типи :ref:`float<class_float>`.

\ **Примітка:** Якщо ``full_precision`` має значення ``true``, під час перетворення чисел з плаваючою комою в рядок перетворюються ненадійні цифри на додаток до надійних, щоб гарантувати точне декодування.

Параметр ``indent`` контролює, чи буде щось відступне і як; його вміст буде використано там, де має бути відступ у виводі. Навіть пробіли, такі як ``" "``, працюватимуть. ``\t`` та ``\n`` також можна використовувати для відступу табуляції або для створення нового рядка для кожного відступу відповідно.

\ **Попередження:** Нескінченні числа не підтримуються в JSON. Будь-які входження :ref:`@GDScript.INF<class_@GDScript_constant_INF>` будуть замінені на ``1e99999``, а від'ємне значення :ref:`@GDScript.INF<class_@GDScript_constant_INF>` буде замінено на ``-1e99999``, але більшість JSON-парсерів правильно інтерпретуватимуть їх як нескінченність. :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` буде замінено на ``null`` і не буде інтерпретовано як NaN в JSON-парсерах. Якщо ви очікуєте нескінченні числа, спочатку передайте свої дані через :ref:`from_native()<class_JSON_method_from_native>`.

\ **Приклад виводу:**\ 

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

Перетворює JSON-сумісне значення, створене за допомогою :ref:`from_native()<class_JSON_method_from_native>`, назад у рідні типи механізмів. 

За замовчуванням об’єкти ігноруються з міркувань безпеки, якщо ``allow_objects`` не має значення ``true``. 

Ви можете перетворити рядок JSON назад на нативне значення так: 

::
 
    func decode_data(рядок, allow_objects = false): 
        return JSON.to_native(JSON.parse_string(string), allow_objects) 

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
