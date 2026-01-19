:github_url: hide

.. _class_Dictionary:

Dictionary
==========

Встроенная структура данных, содержащая пары ключ-значение.

.. rst-class:: classref-introduction-group

Описание
----------------

Dictionaries (Словари) — это ассоциативные контейнеры, содержащие значения, на которые ссылаются уникальные ключи. Словари сохраняют порядок добавления новых записей. В других языках программирования эта структура данных часто называется "hash map" или ассоциативным массивом.

Вы можете определить словарь, поместив список пар ``ключ: значение``, разделенных запятыми, в фигурные скобки ``{}``.

Создание словаря:


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {} # Создает пустой словарь.

    var dict_variable_key = "Another key name"
    var dict_variable_value = "value2"
    var another_dict = {
        "Some key name": "value1",
        dict_variable_key: dict_variable_value,
    }

    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }

    # Альтернативный синтаксис в стиле Lua.
    # Не требует заключения ключей в кавычки, но в качестве имен ключей можно использовать только строковые константы.
    # Кроме того, имена ключей должны начинаться с буквы или символа подчеркивания.
    # Здесь `some_key` — это строковый литерал, а не переменная!
    another_dict = {
        some_key = 42,
    }

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary(); // Создает пустой словарь.
    var pointsDict = new Godot.Collections.Dictionary
    {
        { "White", 50 },
        { "Yellow", 75 },
        { "Orange", 100 },
    };



Доступ к значению словаря можно получить, указав соответствующий ключ. В приведенном выше примере ``points_dict["White"]`` вернет ``50``. Вы также можете написать ``points_dict.White``, что эквивалентно. Однако вам придется использовать синтаксис скобок, если ключ, с помощью которого вы обращаетесь к словарю, не является фиксированной строкой (например, числом или переменной).


.. tabs::

 .. code-tab:: gdscript

    @export_enum("White", "Yellow", "Orange") var my_color: String
    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
    func _ready():
        # Здесь мы не можем использовать точечный синтаксис, поскольку `my_color` — это переменная.
        var points = points_dict[my_color]

 .. code-tab:: csharp

    [Export(PropertyHint.Enum, "White,Yellow,Orange")]
    public string MyColor { get; set; }
    private Godot.Collections.Dictionary _pointsDict = new Godot.Collections.Dictionary
    {
        { "White", 50 },
        { "Yellow", 75 },
        { "Orange", 100 },
    };

    public override void _Ready()
    {
        int points = (int)_pointsDict[MyColor];
    }



В приведенном выше коде ``points`` будет присвоено значение, которое сочетается с соответствующим цветом, выбранным в ``my_color``.

Словари могут содержать более сложные данные:


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "First Array": [1, 2, 3, 4] # Назначает Массив Строковому ключу (String key).
    }

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "First Array", new Godot.Collections.Array { 1, 2, 3, 4 } }
    };



Чтобы добавить ключ в существующий словарь, получите к нему доступ как к существующему ключу и назначьте ему:


.. tabs::

 .. code-tab:: gdscript

    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
    points_dict["Blue"] = 150 # Add "Blue" as a key and assign 150 as its value.

 .. code-tab:: csharp

    var pointsDict = new Godot.Collections.Dictionary
    {
        { "White", 50 },
        { "Yellow", 75 },
        { "Orange", 100 },
    };
    pointsDict["Blue"] = 150; // Add "Blue" as a key and assign 150 as its value.



Наконец, нетипизированные словари могут содержать различные типы ключей и значений в одном и том же словаре:


.. tabs::

 .. code-tab:: gdscript

    # Это действительный словарь.
    # Чтобы получить доступ к строке "Nested value" (Вложенное значение) ниже, используйте `my_dict.sub_dict.sub_key` или`my_dict["sub_dict"]["sub_key"]`.
    # Стили индексации можно комбинировать и подбирать в зависимости от ваших потребностей.
    var my_dict = {
        "String Key": 5,
        4: [1, 2, 3],
        7: "Hello",
        "sub_dict": { "sub_key": "Nested value" },
    }

 .. code-tab:: csharp

    // Это действительный словарь.
    // Чтобы получить доступ к строке "Nested value" ниже, используйте `((Godot.Collections.Dictionary)myDict["sub_dict"])["sub_key"]`.
    var myDict = new Godot.Collections.Dictionary {
        { "String Key", 5 },
        { 4, new Godot.Collections.Array { 1, 2, 3 } },
        { 7, "Hello" },
        { "sub_dict", new Godot.Collections.Dictionary { { "sub_key", "Nested value" } } },
    };



Ключи словаря можно перебирать с помощью ключевого слова ``for``:


.. tabs::

 .. code-tab:: gdscript

    var groceries = { "Orange": 20, "Apple": 2, "Banana": 4 }
    for fruit in groceries:
        var amount = groceries[fruit]

 .. code-tab:: csharp

    var groceries = new Godot.Collections.Dictionary { { "Orange", 20 }, { "Apple", 2 }, { "Banana", 4 } };
    foreach (var (fruit, amount) in groceries)
    {
        // `fruit` - ключ, `amount` - значение.
    }



Чтобы обеспечить определённый тип ключей и значений, можно создать *typed dictionary*. Типизированные словари могут содержать только ключи и значения заданных типов или наследуемые от заданных классов:


.. tabs::

 .. code-tab:: gdscript

    # Создает типизированный словарь со строковыми ключами и целочисленными значениями.
    # Попытка использовать любой другой тип для ключей или значений приведет к ошибке.
    var typed_dict: Dictionary[String, int] = {
        "some_key": 1,
        "some_other_key": 2,
    }

    # Создает типизированный словарь со строковыми ключами и значениями любого типа.
    # Попытка использовать любой другой тип ключей приведет к ошибке.
    var typed_dict_key_only: Dictionary[String, Variant] = {
        "some_key": 12.34,
        "some_other_key": "string",
    }

 .. code-tab:: csharp

    // Создает типизированный словарь со строковыми ключами и целочисленными значениями.
    // Попытка использовать любой другой тип для ключей или значений приведет к ошибке.
    var typedDict = new Godot.Collections.Dictionary<String, int> {
        {"some_key", 1},
        {"some_other_key", 2},
    };

    // Создает типизированный словарь со строковыми ключами и значениями любого типа.
    // Попытка использовать любой другой тип ключей приведет к ошибке.
    var typedDictKeyOnly = new Godot.Collections.Dictionary<String, Variant> {
        {"some_key", 12.34},
        {"some_other_key", "string"},
    };



\ **Примечание:** Словари всегда передаются по ссылке. Чтобы получить копию словаря, которую можно изменять независимо от исходного, используйте :ref:`duplicate()<class_Dictionary_method_duplicate>`.

\ **Примечание:** Удаление элементов при итерации по словарям **не** поддерживается и приведет к непредсказуемому поведению.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Основы GDScript: Словарь <../tutorials/scripting/gdscript/gdscript_basics.html#dictionary>`__

- `Демоверсия 3D вокселей <https://godotengine.org/asset-library/asset/2755>`__

- `Демонстрация тестирования операционной системы <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`Dictionary<class_Dictionary_constructor_Dictionary>`\ (\ )                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`Dictionary<class_Dictionary_constructor_Dictionary>`\ (\ base\: :ref:`Dictionary<class_Dictionary>`, key_type\: :ref:`int<class_int>`, key_class_name\: :ref:`StringName<class_StringName>`, key_script\: :ref:`Variant<class_Variant>`, value_type\: :ref:`int<class_int>`, value_class_name\: :ref:`StringName<class_StringName>`, value_script\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`Dictionary<class_Dictionary_constructor_Dictionary>`\ (\ from\: :ref:`Dictionary<class_Dictionary>`\ )                                                                                                                                                                                                                                                                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`assign<class_Dictionary_method_assign>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ )                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear<class_Dictionary_method_clear>`\ (\ )                                                                                                                        |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`duplicate<class_Dictionary_method_duplicate>`\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const|                                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`duplicate_deep<class_Dictionary_method_duplicate_deep>`\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const|                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`erase<class_Dictionary_method_erase>`\ (\ key\: :ref:`Variant<class_Variant>`\ )                                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`find_key<class_Dictionary_method_find_key>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const|                                                                   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get<class_Dictionary_method_get>`\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const|                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_or_add<class_Dictionary_method_get_or_add>`\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ )                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_typed_key_builtin<class_Dictionary_method_get_typed_key_builtin>`\ (\ ) |const|                                                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_typed_key_class_name<class_Dictionary_method_get_typed_key_class_name>`\ (\ ) |const|                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_typed_key_script<class_Dictionary_method_get_typed_key_script>`\ (\ ) |const|                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_typed_value_builtin<class_Dictionary_method_get_typed_value_builtin>`\ (\ ) |const|                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_typed_value_class_name<class_Dictionary_method_get_typed_value_class_name>`\ (\ ) |const|                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_typed_value_script<class_Dictionary_method_get_typed_value_script>`\ (\ ) |const|                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has<class_Dictionary_method_has>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has_all<class_Dictionary_method_has_all>`\ (\ keys\: :ref:`Array<class_Array>`\ ) |const|                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_Dictionary_method_hash>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_Dictionary_method_is_empty>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_read_only<class_Dictionary_method_is_read_only>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_same_typed<class_Dictionary_method_is_same_typed>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const|                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_same_typed_key<class_Dictionary_method_is_same_typed_key>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const|                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_same_typed_value<class_Dictionary_method_is_same_typed_value>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const|                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_typed<class_Dictionary_method_is_typed>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_typed_key<class_Dictionary_method_is_typed_key>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_typed_value<class_Dictionary_method_is_typed_value>`\ (\ ) |const|                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`keys<class_Dictionary_method_keys>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`make_read_only<class_Dictionary_method_make_read_only>`\ (\ )                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`merge<class_Dictionary_method_merge>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ )                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`merged<class_Dictionary_method_merged>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) |const|               |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`recursive_equal<class_Dictionary_method_recursive_equal>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, recursion_count\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`set<class_Dictionary_method_set>`\ (\ key\: :ref:`Variant<class_Variant>`, value\: :ref:`Variant<class_Variant>`\ )                                                |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`size<class_Dictionary_method_size>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`sort<class_Dictionary_method_sort>`\ (\ )                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`values<class_Dictionary_method_values>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Dictionary_operator_neq_Dictionary>`\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Dictionary_operator_eq_Dictionary>`\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ )  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`operator []<class_Dictionary_operator_idx_Variant>`\ (\ key\: :ref:`Variant<class_Variant>`\ )            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Dictionary_constructor_Dictionary:

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ ) :ref:`🔗<class_Dictionary_constructor_Dictionary>`

Создает пустой **Dictionary**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ base\: :ref:`Dictionary<class_Dictionary>`, key_type\: :ref:`int<class_int>`, key_class_name\: :ref:`StringName<class_StringName>`, key_script\: :ref:`Variant<class_Variant>`, value_type\: :ref:`int<class_int>`, value_class_name\: :ref:`StringName<class_StringName>`, value_script\: :ref:`Variant<class_Variant>`\ )

Создает типизированный словарь из словаря ``base``. Типизированный словарь может содержать только ключи и значения указанных типов или наследуемые от указанных классов, как описано параметрами этого конструктора.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ from\: :ref:`Dictionary<class_Dictionary>`\ )

Возвращает тот же словарь, что и ``from``. Если вам нужна копия словаря, используйте :ref:`duplicate()<class_Dictionary_method_duplicate>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Dictionary_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_method_assign>`

Назначает элементы другого ``dictionary`` в словарь. Изменяет размер словаря для соответствия ``dictionary``. Выполняет преобразования типов, если словарь типизирован.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Dictionary_method_clear>`

Очищает словарь, удаляя из него все записи.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate>`

Возвращает новую копию словаря.

По умолчанию возвращается **поверхностная** копия: все вложенные ключи и значения :ref:`Array<class_Array>`, **Dictionary** и :ref:`Resource<class_Resource>` используются совместно с исходным словарем. Изменение любого из них в одном словаре также повлияет на них в другом.

Если ``deep`` равен ``true``, возвращается **глубокая** копия: все вложенные массивы и словари также дублируются (рекурсивно). Однако любой :ref:`Resource<class_Resource>` по-прежнему используется совместно с исходным словарем.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate_deep>`

Дублирует этот словарь, глубоко, как :ref:`duplicate()<class_Dictionary_method_duplicate>` при передаче ``true``, с дополнительным контролем над обработкой подресурсов.

\ ``deep_subresources_mode`` должен быть одним из значений из :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. По умолчанию дублируются только внутренние ресурсы (рекурсивно).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_erase>`

Удаляет запись словаря по ключу, если она существует. Возвращает ``true``, если заданный ``key`` существовал в словаре, в противном случае ``false``.

\ **Примечание:** Не удаляйте записи при итерации по словарю. Вместо этого вы можете итерировать по массиву :ref:`keys()<class_Dictionary_method_keys>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_find_key:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **find_key**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_find_key>`

Находит и возвращает первый ключ, связанное значение которого равно ``value`` или ``null``, если он не найден.

\ **Примечание:** ``null`` также является допустимым ключом. Если внутри словаря, :ref:`find_key()<class_Dictionary_method_find_key>` может дать вводящие в заблуждение результаты.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Dictionary_method_get>`

Возвращает соответствующее значение для указанного ``key`` в словаре. Если ``key`` не существует, возвращает ``default`` или ``null``, если параметр пропущен.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_or_add:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_add**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_Dictionary_method_get_or_add>`

Получает значение и обеспечивает установку ключа. Если ``key`` существует в словаре, это ведет себя как :ref:`get()<class_Dictionary_method_get>`. В противном случае значение ``default`` вставляется в словарь и возвращается.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_key_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_builtin>`

Возвращает встроенный тип :ref:`Variant<class_Variant>` ключей типизированного словаря как константу :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Если ключи не типизированы, возвращает :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. См. также :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_key_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_class_name>`

Возвращает **встроенное** имя класса ключей типизированного словаря, если встроенный тип :ref:`Variant<class_Variant>` — :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. В противном случае возвращает пустой :ref:`StringName<class_StringName>`. См. также :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>` и :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_key_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_script>`

Возвращает экземпляр :ref:`Script<class_Script>`, связанный с ключами этого типизированного словаря, или ``null``, если он не существует. См. также :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_value_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_builtin>`

Возвращает встроенный тип :ref:`Variant<class_Variant>` значений типизированного словаря как константу :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Если значения не типизированы, возвращает :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. См. также :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_value_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_class_name>`

Возвращает **встроенное** имя класса значений типизированного словаря, если встроенный тип :ref:`Variant<class_Variant>` — :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. В противном случае возвращает пустой :ref:`StringName<class_StringName>`. См. также :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>` и :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_value_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_script>`

Возвращает экземпляр :ref:`Script<class_Script>`, связанный со значениями этого типизированного словаря, или ``null``, если он не существует. См. также :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_has>`

Возвращает ``true``, если словарь содержит запись с заданным ``key``.


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "Godot" : 4,
        210 : null,
    }

    print(my_dict.has("Godot")) # Выводит true
    print(my_dict.has(210))     # Выводит true
    print(my_dict.has(4))       # Выводит false

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "Godot", 4 },
        { 210, default },
    };

    GD.Print(myDict.ContainsKey("Godot")); // Выводит True
    GD.Print(myDict.ContainsKey(210));     // Выводит True
    GD.Print(myDict.ContainsKey(4));       // Выводит False



В GDScript это эквивалентно оператору ``in``:

::

    if "Godot" in { "Godot": 4 }:
        print("Ключ здесь!") # Будет напечатано.

\ **Примечание:** Этот метод возвращает ``true`` до тех пор, пока существует ``key``, даже если его соответствующее значение равно ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_all**\ (\ keys\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Dictionary_method_has_all>`

Возвращает ``true``, если словарь содержит все ключи в заданном массиве ``keys``.

::

    var data = { "width": 10, "height": 20 }
    data.has_all(["height", "width"]) # Возвращает true

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_hash>`

Возвращает хешированное 32-битное целое значение, представляющее содержимое словаря.


.. tabs::

 .. code-tab:: gdscript

    var dict1 = { "A": 10, "B": 2 }
    var dict2 = { "A": 10, "B": 2 }

    print(dict1.hash() == dict2.hash()) # Выводит true

 .. code-tab:: csharp

    var dict1 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };
    var dict2 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };

    // В Godot.Collections.Dictionary нет метода Hash(). Вместо него используйте GD.Hash().
    GD.Print(GD.Hash(dict1) == GD.Hash(dict2)); // Выводит True



\ **Примечание:** Словари с одинаковыми записями, но в разном порядке, будут иметь разные хэши.

\ **Примечание:** Словари с одинаковыми значениями хэшей *не* гарантированно будут одинаковыми из-за коллизий хэшей. Напротив, словари с разными значениями хэшей гарантированно будут разными.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_empty>`

Возвращает ``true``, если словарь пуст (его размер ``0``). См. также :ref:`size()<class_Dictionary_method_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_read_only>`

Возвращает ``true``, если словарь доступен только для чтения. См. :ref:`make_read_only()<class_Dictionary_method_make_read_only>`. Словари автоматически доступны только для чтения, если объявлены с ключевым словом ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed>`

Возвращает ``true``, если словарь имеет тот же тип, что и ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_key**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_key>`

Возвращает ``true``, если ключи словаря введены так же, как ключи ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_value**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_value>`

Возвращает ``true``, если значения словаря типизированы так же, как значения ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed>`

Возвращает ``true``, если словарь типизирован. Типизированные словари могут хранить только ключи/значения своего связанного типа и обеспечивают безопасность типов для оператора ``[]``. Методы типизированного словаря по-прежнему возвращают :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_key**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_key>`

Возвращает ``true``, если введены ключи словаря.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_value**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_value>`

Возвращает ``true``, если значения словаря типизированы.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_keys:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **keys**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_keys>`

Возвращает список ключей в словаре.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Dictionary_method_make_read_only>`

Делает словарь доступным только для чтения, т. е. отключает возможность изменения содержимого словаря. Не применяется к вложенному содержимому, например, содержимому вложенных словарей.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Dictionary_method_merge>`

Добавляет записи из ``dictionary`` в этот словарь. По умолчанию дублирующиеся ключи не копируются, если только ``overwrite`` не равен ``true``.


.. tabs::

 .. code-tab:: gdscript

    var dict = { "item": "sword", "quantity": 2 }
    var other_dict = { "quantity": 15, "color": "silver" }

    # Перезапись существующих ключей по умолчанию отключена.
    dict.merge(other_dict)
    print(dict)  # { "item": "sword", "quantity": 2, "color": "silver" }

    # С возможностью перезаписи существующих ключей.
    dict.merge(other_dict, true)
    print(dict)  # { "item": "sword", "quantity": 15, "color": "silver" }

 .. code-tab:: csharp

    var dict = new Godot.Collections.Dictionary
    {
        ["item"] = "sword",
        ["quantity"] = 2,
    };

    var otherDict = new Godot.Collections.Dictionary
    {
        ["quantity"] = 15,
        ["color"] = "silver",
    };

    // Перезапись существующих ключей по умолчанию отключена.
    dict.Merge(otherDict);
    GD.Print(dict); // { "item": "sword", "quantity": 2, "color": "silver" }

    // С возможностью перезаписи существующих ключей.
    dict.Merge(otherDict, true);
    GD.Print(dict); // { "item": "sword", "quantity": 15, "color": "silver" }



\ **Примечание:** :ref:`merge()<class_Dictionary_method_merge>` *не* рекурсивен. Вложенные словари рассматриваются как ключи, которые могут быть перезаписаны или нет в зависимости от значения ``overwrite``, но они никогда не будут объединены вместе.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merged:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **merged**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_merged>`

Возвращает копию этого словаря, объединенную с другим ``dictionary``. По умолчанию дублирующиеся ключи не копируются, если только ``overwrite`` не равна ``true``. См. также :ref:`merge()<class_Dictionary_method_merge>`. 

Этот метод полезен для быстрого создания словарей со значениями по умолчанию:

::

    var base = { "fruit": "apple", "vegetable": "potato" }
    var extra = { "fruit": "orange", "dressing": "vinegar" }
    # Выводит { "fruit": "orange", "vegetable": "potato", "dressing": "vinegar" }
    print(extra.merged(base))
    # Выводит { "fruit": "apple", "vegetable": "potato", "dressing": "vinegar" }
    print(extra.merged(base, true))

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_recursive_equal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **recursive_equal**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, recursion_count\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Dictionary_method_recursive_equal>`

Возвращает ``true``, если два словаря содержат одинаковые ключи и значения, внутренние ключи и значения **Dictionary** и :ref:`Array<class_Array>` сравниваются рекурсивно.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set**\ (\ key\: :ref:`Variant<class_Variant>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_set>`

Устанавливает значение элемента по заданному ключу ``key`` равным заданному значению ``value``. Возвращает ``true``, если значение установлено успешно. В случае ошибки возвращает ``false``, если словарь доступен только для чтения или если ``key`` и ``value`` не соответствуют типам словаря. Это аналогично использованию оператора ``[]`` (``dict[key] = value``).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_size>`

Возвращает количество записей в словаре. Пустые словари (``{ }``) всегда возвращают ``0``. См. также :ref:`is_empty()<class_Dictionary_method_is_empty>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Dictionary_method_sort>`

Сортирует словарь в порядке возрастания по ключу. Окончательный порядок зависит от сравнения «меньше чем» (``<``) между ключами.


.. tabs::

 .. code-tab:: gdscript

    var numbers = { "c": 2, "a": 0, "b": 1 }
    numbers.sort()
    print(numbers) # Выводит { "a": 0, "b": 1, "c": 2 }



Этот метод гарантирует, что записи словаря будут упорядочены последовательно, когда вызываются :ref:`keys()<class_Dictionary_method_keys>` или :ref:`values()<class_Dictionary_method_values>`, или когда словарь необходимо преобразовать в строку с помощью :ref:`@GlobalScope.str()<class_@GlobalScope_method_str>` или :ref:`JSON.stringify()<class_JSON_method_stringify>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **values**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_values>`

Возвращает список значений в этом словаре.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Dictionary_operator_neq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_neq_Dictionary>`

Возвращает ``true``, если два словаря не содержат одинаковые ключи и значения.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_eq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_eq_Dictionary>`

Возвращает ``true``, если два словаря содержат одинаковые ключи и значения. Порядок записей не имеет значения.

\ **Примечание:** В C# по соглашению этот оператор сравнивает по **ссылке**. Если вам нужно сравнить по значению, выполните итерацию по обоим словарям.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_idx_Variant:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_operator_idx_Variant>`

Возвращает соответствующее значение для указанного ``key`` в словаре. Если запись не существует, происходит сбой и возвращается ``null``. Для безопасного доступа используйте :ref:`get()<class_Dictionary_method_get>` или :ref:`has()<class_Dictionary_method_has>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
