:github_url: hide

.. _class_Dictionary:

Dictionary
==========

Вбудована структура даних, яка має ключові пари.

.. rst-class:: classref-introduction-group

Опис
--------

Словники – це асоціативні контейнери, що містять значення, на які посилаються унікальні ключі. Словники зберігатимуть порядок вставки під час додавання нових записів. В інших мовах програмування цю структуру даних часто називають хеш-картою або асоціативним масивом.

Ви можете визначити словник, помістивши список пар ``ключ:значення``, розділених комами, у фігурні дужки ``{}``.

Створення словника:


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {} # Створює порожній словник.

    var dict_variable_key = "Another key name"
    var dict_variable_value = "value2"
    var another_dict = {
        "Some key name": "value1",
        dict_variable_key: dict_variable_value,
    }

    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }

    # Альтернативний синтаксис у стилі Lua.
    # Не вимагає лапок навколо ключів, але як імена ключів можна використовувати лише рядкові константи.
    # Крім того, назви ключів повинні починатися з літери або символу підкреслення.
    # Тут `some_key` — це рядковий літерал, а не змінна!
    another_dict = {
        some_key = 42,
    }

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary(); // Створює порожній словник.
    var pointsDict = new Godot.Collections.Dictionary
    {
        { "White", 50 },
        { "Yellow", 75 },
        { "Orange", 100 },
    };



Ви можете отримати доступ до значення словника, посилаючись на відповідний ключ. У наведеному вище прикладі ``points_dict["White"]`` поверне ``50``. Ви також можете написати ``points_dict.White``, що є еквівалентним. Однак вам доведеться використовувати синтаксис дужок, якщо ключ, за допомогою якого ви отримуєте доступ до словника, не є фіксованим рядком (наприклад, число або змінна).


.. tabs::

 .. code-tab:: gdscript

    @export_enum("White", "Yellow", "Orange") var my_color: String
    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
    func _ready():
     # Ми не можемо використовувати синтаксис крапки тут, оскільки `my_color` є змінною.
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



У наведеному вище коді ``points`` буде присвоєно значення, яке відповідає відповідному кольору, вибраному в ``my_color``.

Словники можуть містити більш складні дані:


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
     "First Array": [1, 2, 3, 4] # Присвоює масив ключу String.
    }

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
     { "First Array", new Godot.Collections.Array { 1, 2, 3, 4 } }
    };



Щоб додати ключ до існуючого словника, зверніться до нього як до існуючого ключа і призначте йому значення:


.. tabs::

 .. code-tab:: gdscript

    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
    points_dict["Blue"] = 150 # Додайте "Blue" як ключ і призначте йому значення 150.

 .. code-tab:: csharp

    var pointsDict = new Godot.Collections. Dictionary
    {
     { "White", 50 },
     { "Yellow", 75 },
     { "Orange", 100 },
    };
    pointsDict["Blue"] = 150; // Додайте «Blue» як ключ і призначте йому значення 150.



Нарешті, нетипізовані словники можуть містити різні типи ключів і значень в одному словнику:


.. tabs::

 .. code-tab:: gdscript

    # Це дійсний словник.
    # Щоб отримати доступ до рядка «Вкладене значення» нижче, використовуйте `my_dict.sub_dict.sub_key` або `my_dict["sub_dict"]["sub_key"]`.
    # Стилі індексації можна змішувати та поєднувати залежно від ваших потреб.
    var my_dict = {
     "String Key": 5,
     4: [1, 2, 3],
     7: "Hello",
     "sub_dict": { "sub_key": "Nested value" },
    }

 .. code-tab:: csharp

    // Це дійсний словник.
    // Щоб отримати доступ до рядка «Вкладене значення» нижче, використовуйте `((Godot.Collections.Dictionary)myDict["sub_dict"])["sub_key"]`.
    var myDict = new Godot.Collections.Dictionary {
     { "String Key", 5 },
     { 4, new Godot.Collections. Array { 1, 2, 3 } },
     { 7, "Hello" },
     { "sub_dict", new Godot.Collections.Dictionary { { "sub_key", "Nested value" } } },
    };



Ключі словника можна проітерувати за допомогою ключового слова ``for``:


.. tabs::

 .. code-tab:: gdscript

    var groceries = { "Orange": 20, "Apple": 2, "Banana": 4 }
    for fruit in groceries:
     var amount = groceries[fruit]

 .. code-tab:: csharp

    var groceries = new Godot.Collections.Dictionary { { "Orange", 20 }, { "Apple", 2 }, { "Banana", 4 } };
    foreach (var (fruit, amount) in groceries)
    {
     // `fruit` є ключем, `amount` є значенням.
    }



Щоб застосувати певний тип для ключів і значень, ви можете створити *типізований словник*. Типізовані словники можуть містити тільки ключі та значення заданих типів або ті, що успадковуються від заданих класів:


.. tabs::

 .. code-tab:: gdscript

    # Створює типізований словник із ключами String і значеннями int.
    # Спроба використання будь-якого іншого типу для ключів або значень призведе до помилки.
    var typed_dict: Dictionary[String, int] = {
     "some_key": 1,
     "some_other_key": 2,
    }

    # Створює типізований словник із ключами типу String і значеннями будь-якого типу.
    # Спроба використання будь-якого іншого типу для ключів призведе до помилки.
    var typed_dict_key_only: Dictionary[String, Variant] = {
     "some_key": 12.34,
     "some_other_key": "string",
    }

 .. code-tab:: csharp

    // Створює типізований словник із ключами типу String і значеннями типу int.
    // Спроба використання будь-якого іншого типу для ключів або значень призведе до помилки.
    var typedDict = new Godot.Collections.Dictionary<String, int> {
     {"some_key", 1},
     {"some_other_key", 2},
    };

    // Створює типізований словник з ключами типу String і значеннями будь-якого типу.
    // Спроба використання будь-якого іншого типу для ключів призведе до помилки.
    var typedDictKeyOnly = new Godot.Collections.Dictionary<String, Variant> {
     {"some_key", 12.34},
     {"some_other_key", "string"},
    };



\ **Примітка:** Словники завжди передаються за посиланням. Щоб отримати копію словника, яку можна змінювати незалежно від оригінального словника, використовуйте :ref:`duplicate()<class_Dictionary_method_duplicate>`.

\ **Примітка:** Видалення елементів під час ітерації по словниках **не** підтримується і призведе до непередбачуваної поведінки.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Основи GDScript: Логін <../tutorials/scripting/gdscript/gdscript_basics.html#dictionary>`__

- `Демонстрація 3D вокселів <https://godotengine.org/asset-library/asset/2755>`__

- `Демонстрація тестування операційної системи <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Конструктори
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

Методи
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

Оператори
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

Описи конструкторів
--------------------------------------

.. _class_Dictionary_constructor_Dictionary:

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ ) :ref:`🔗<class_Dictionary_constructor_Dictionary>`

Побудувати порожній **Dictionary**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ base\: :ref:`Dictionary<class_Dictionary>`, key_type\: :ref:`int<class_int>`, key_class_name\: :ref:`StringName<class_StringName>`, key_script\: :ref:`Variant<class_Variant>`, value_type\: :ref:`int<class_int>`, value_class_name\: :ref:`StringName<class_StringName>`, value_script\: :ref:`Variant<class_Variant>`\ )

Створює введений словник зі словника ``base``. Типізований словник може містити лише ключі та значення заданих типів або ті, що успадковуються від заданих класів, як описано в параметрах цього конструктора.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ from\: :ref:`Dictionary<class_Dictionary>`\ )

Повертає той самий словник, що й ``from``. Якщо вам потрібна копія словника, використовуйте :ref:`duplicate()<class_Dictionary_method_duplicate>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Dictionary_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_method_assign>`

Призначає елементи іншого ``dictionary`` до словника. Змінює розмір словника відповідно до ``dictionary``. Виконує перетворення типів, якщо словник набраний.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Dictionary_method_clear>`

Очистити словник, видаляючи всі записи з нього.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate>`

Повертає нову копію словника.

За замовчуванням повертається **неглибока** копія: усі вкладені ключі та значення :ref:`Array<class_Array>`, **Dictionary** та :ref:`Resource<class_Resource>` спільні з оригінальним словником. Зміна будь-якого з них в одному словнику також вплине на них в іншому.

Якщо ``deep`` має значення ``true``, повертається **глибока** копія: усі вкладені масиви та словники також дублюються (рекурсивно). Однак будь-який :ref:`Resource<class_Resource>` все ще спільний з оригінальним словником.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate_deep>`

Дублює цей словник, глибоко, подібно до :ref:`duplicate()<class_Dictionary_method_duplicate>` при передачі ``true``, з додатковим контролем над обробкою підресурсів.

\ ``deep_subresources_mode`` має бути одним зі значень з :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. За замовчуванням (рекурсивно) будуть дублюватися лише внутрішні ресурси.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_erase>`

Видалити запис словника за допомогою ключа, якщо він існує. Повертає ``true``, якщо надана ``key`` існувала в словнику, інакше ``false``.

\ **Примітка:** Не стирайте записи, в той час як ітерація над словником. Ви можете ітерувати над :ref:`keys()<class_Dictionary_method_keys>` масив замість.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_find_key:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **find_key**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_find_key>`

Знаходиться і повертає перший ключ, який пов'язаний значенням ``value``, або ``null``, якщо він не знайдений.

\ **Примітка:** ``null`` також є дійсним ключем. Якщо всередині словника, :ref:`find_key()<class_Dictionary_method_find_key>` може дати в оману результати.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Dictionary_method_get>`

Повертає відповідне значення для вказаного ``key`` у словнику. Якщо ``key`` не існує, повертає ``default``, або ``null``, якщо параметр не вдається.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_or_add:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_add**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_Dictionary_method_get_or_add>`

Отримує значення та перевіряє, чи встановлено ключ. Якщо ``key`` існує у словнику, це поводиться як :ref:`get()<class_Dictionary_method_get>`. В іншому випадку значення ``default`` вставляється у словник та повертається.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_key_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_builtin>`

Повертає вбудований тип :ref:`Variant<class_Variant>` ключів введеного словника як константу :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Якщо ключі не введено, повертає :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Дивіться також :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_key_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_class_name>`

Повертає **вбудовану** назву класу ключів введеного словника, якщо вбудований тип :ref:`Variant<class_Variant>` — :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. В іншому випадку повертає порожній :ref:`StringName<class_StringName>`. Дивіться також :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>` і :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_key_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_script>`

Повертає екземпляр :ref:`Script<class_Script>`, пов’язаний із ключами цього введеного словника, або ``null``, якщо він не існує. Дивіться також :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_value_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_builtin>`

Повертає вбудований тип :ref:`Variant<class_Variant>` значень введеного словника як константу :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Якщо значення не введено, повертає :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Дивіться також :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_value_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_class_name>`

Повертає **вбудовану** назву класу значень введеного словника, якщо вбудованим типом :ref:`Variant<class_Variant>` є :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. В іншому випадку повертає порожній :ref:`StringName<class_StringName>`. Дивіться також :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>` і :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_value_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_script>`

Повертає екземпляр :ref:`Script<class_Script>`, пов’язаний зі значеннями цього введеного словника, або ``null``, якщо він не існує. Дивіться також :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_has>`

Повертає ``true``, якщо словник містить запис із заданим ``key``.


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "Godot" : 4,
        210 : null,
    }

    print(my_dict.has("Godot")) # Виводить true
    print(my_dict.has(210))     # Виводить true
    print(my_dict.has(4))       # Виводить false

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "Godot", 4 },
        { 210, default },
    };

    GD.Print(myDict.ContainsKey("Godot")); // Виводить True
    GD.Print(myDict.ContainsKey(210));     // Виводить True
    GD.Print(myDict.ContainsKey(4));       // Виводить False



У GDScript це еквівалентно оператору ``in``:

::

    if "Godot" in { "Godot": 4 }:
        print("Ключ тут!) # Буде надруковано.

\ **Примітка:** Цей метод повертає ``true``, якщо існує ``ключ параметра``, навіть якщо його відповідне значення дорівнює ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_all**\ (\ keys\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Dictionary_method_has_all>`

Повертає ``true``, якщо словник містить усі ключі з заданого масиву ``keys``.

::

    var data = { "width": 10, "height": 20 }
    data.has_all(["height", "width"]) # Виводить true

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_hash>`

Повертає хешоване 32-бітове ціле число, що представляє вміст словника.


.. tabs::

 .. code-tab:: gdscript

    var dict1 = { "A": 10, "B": 2 }
    var dict2 = { "A": 10, "B": 2 }

    print(dict1.hash() == dict2.hash()) # Виводить true

 .. code-tab:: csharp

    var dict1 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };
    var dict2 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };

    // Godot.Collections.Dictionary не має методу Hash(). Натомість використовуйте GD.Hash().
    GD.Print(GD.Hash(dict1) == GD.Hash(dict2)); // Виводить True



\ **Примітка:** Словники з однаковими записами, але в різному порядку, не матимуть однакового хешу.

\ **Примітка:** Словники з однаковими хеш-значеннями *не* гарантовано будуть однаковими через колізії хеш-значень. Навпаки, словники з різними хеш-значеннями гарантовано будуть різними.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_empty>`

Повертає ``true``, якщо словник порожній (його розмір ``0``). Див. також :ref:`size()<class_Dictionary_method_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_read_only>`

Повертає ``true``, якщо словник доступний лише для читання. Див. :ref:`make_read_only()<class_Dictionary_method_make_read_only>`. Словники автоматично стають доступними лише для читання, якщо їх оголошено з ключовим словом ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed>`

Повертає ``true``, якщо словник введено так само, як ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_key**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_key>`

Повертає ``true``, якщо ключі словника введені так само, як і ключі ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_value**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_value>`

Повертає ``true``, якщо значення словника введено так само, як і значення ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed>`

Повертає ``true``, якщо словник введено. Введені словники можуть зберігати лише ключі/значення відповідного типу та забезпечувати безпеку типу для оператора ``[]``. Методи введеного словника все ще повертають :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_key**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_key>`

Повертає ``true``, якщо введено ключі словника.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_value**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_value>`

Повертає ``true``, якщо введено значення словника.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_keys:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **keys**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_keys>`

Повертає список ключів у словнику.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Dictionary_method_make_read_only>`

Зроблює словниковий читання, тобто відключає модифікацію вмісту словника. Не застосовуватися до невидимого вмісту, наприклад, вмісту непристойних словників.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Dictionary_method_merge>`

Додає записи зі словника ``dictionary`` до цього словника. За замовчуванням дублікати ключів не копіюються, якщо ``overwrite`` не має значення ``true``.


.. tabs::

 .. code-tab:: gdscript

    var dict = { "предмет": "шабля", "кількість": 2 }
    var other_dict = { "кількість": 15, "колір": "срібний" }

    # Перезапис існуючих ключів вимкнено за замовчуванням.
    dict.merge(other_dict)
    print(dict) # { "предмет": "шабля", "кількість": 2, "колір": "срібний" }

    # З увімкненим перезаписом існуючих ключів.
    dict.merge(other_dict, true)
    print(dict) # { "предмет": "шабля", "кількість": 15, "колір": "срібний" }

 .. code-tab:: csharp

    var dict = new Godot.Collections.Dictionary
    {
        ["предмет"] = "шабля",
        ["кількість"] = 2,
    };

    var otherDict = new Godot.Collections.Dictionary
    {
        ["кількість"] = 15,
        ["колір"] = "срібний",
    };

    // Перезапис існуючих ключів вимкнено за замовчуванням.
    dict.Merge(otherDict);
    GD.Print(dict); // { "предмет": "шабля", "кількість": 2, "колір": "срібний" }

    // З увімкненим перезаписом існуючих ключів.
    dict.Merge(otherDict, true);
    GD.Print(dict); // { "предмет": "шабля", "кількість": 15, "колір": "срібний" }



\ **Примітка: ** :ref:`merge()<class_Dictionary_method_merge>` *не* рекурсивний. Вкладені словники вважаються ключами, які можуть бути перезаписані чи ні, залежно від значення ``overwrite``, але вони ніколи не будуть об’єднані разом.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merged:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **merged**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_merged>`

Повертає копію цього словника, об’єднаного з іншим ``dictionary``. За замовчуванням дублікати ключів не копіюються, якщо ``overwrite`` не має значення ``true``. Дивіться також :ref:`merge()<class_Dictionary_method_merge>`.

Цей метод корисний для швидкого створення словників зі значеннями за замовчуванням:

::

    var base = { "фрукт": "яблуко", "овоч": "картопля" }
    var extra = { "фрукт": "апельсин", "заправка": "оцет" }
    # Виведе { "фрукт": "апельсин", "овоч": "картопля", "заправка": "оцет" }
    print(extra.merged(base))
    # Виведе { "фрукт": "яблуко", "овоч": "картопля", "заправка": "оцет" }
    print(extra.merged(base, true))

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_recursive_equal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **recursive_equal**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, recursion_count\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Dictionary_method_recursive_equal>`

Повертаємо ``true``, якщо два словники містять ті ж ключі та значення, внутрішні **Dictionary** та :ref:`Array<class_Array>` ключі та значення порівнюються з рекурсивно.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set**\ (\ key\: :ref:`Variant<class_Variant>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_set>`

Встановлює значення елемента за заданим ``key`` рівним заданому ``value``. Повертає ``true``, якщо значення встановлено успішно. Не вдається та повертає ``false``, якщо словник доступний лише для читання або якщо ``key`` та ``value`` не відповідають типам словника. Це те саме, що й використання оператора ``[]`` (``dict[key] = value``).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_size>`

Повертає кількість записів у словнику. Порожні словники (``{ }``) завжди повертають ``0``. Див. також :ref:`is_empty()<class_Dictionary_method_is_empty>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Dictionary_method_sort>`

Сортує словник у порядку зростання за ключем. Остаточний порядок залежить від порівняння "менше ніж" (``<``) між ключами.


.. tabs::

 .. code-tab:: gdscript

    var numbers = { "c": 2, "a": 0, "b": 1 }
    numbers.sort()
    print(numbers) # Друкує { "a": 0, "b": 1, "c": 2 }



Цей метод гарантує, що записи словника впорядковані послідовно, коли викликаються :ref:`keys()<class_Dictionary_method_keys>` або :ref:`values()<class_Dictionary_method_values>`, або коли словник потрібно перетворити на рядок за допомогою :ref:`@GlobalScope.str()<class_@GlobalScope_method_str>` або :ref:`JSON.stringify()<class_JSON_method_stringify>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **values**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_values>`

Повертає список значень у цьому словнику.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Dictionary_operator_neq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_neq_Dictionary>`

Повертає ``true``, якщо два словники не містять однакових ключів і значень.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_eq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_eq_Dictionary>`

Повертає ``true``, якщо два словники містять однакові ключі та значення. Порядок записів не має значення.

\ **Примітка:** У C#, за конвенцією, цей оператор порівнює **адреси**. Якщо необхідно порівнювати за значенням, скористайтеся ітерацією по обидвох словниках.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_idx_Variant:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_operator_idx_Variant>`

Повертає відповідне значення для заданого ``key`` у словнику. Якщо запис не існує, виконується помилка та повертається ``null``. Для безпечного доступу використовуйте :ref:`get()<class_Dictionary_method_get>` або :ref:`has()<class_Dictionary_method_has>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
