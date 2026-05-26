:github_url: hide

.. _class_Dictionary:

Dictionary
==========

包含键值对的内置数据结构。

.. rst-class:: classref-introduction-group

描述
----

字典是关系容器，包含的值（Value）由唯一的键（Key）引用。添加新条目时，字典会保持插入顺序。在其他编程语言中，这种数据结构有时也称为哈希表或关联数组。

在大括号 ``{}`` 中放置用逗号分隔的一对对 ``键: 值`` 列表就可以定义字典。

字典的创建：


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {} # 创建空字典。

    var dict_variable_key = "Another key name"
    var dict_variable_value = "value2"
    var another_dict = {
        "Some key name": "value1",
        dict_variable_key: dict_variable_value,
    }

    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }

    # 备选 Lua 分隔语法。
    # 不需要在键周围加引号，但键名只能为字符串常量。
    # 另外，键名必须以字母或下划线开头。
    # 此处的 `some_key` 是字符串字面量，不是变量！
    another_dict = {
        some_key = 42,
    }

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary(); // 创建空字典。
    var pointsDict = new Godot.Collections.Dictionary
    {
        { "White", 50 },
        { "Yellow", 75 },
        { "Orange", 100 },
    };



你可以通过键来访问字典中对应的值。上面的例子中，\ ``points_dict["White"]`` 会返回 ``50``\ 。你也可以写 ``points_dict.White``\ ，和前面的写法是等价的。不过如果用来访问字典的键不是固定字符串的话（例如数字或者变量），那么就只能使用方括号语法。


.. tabs::

 .. code-tab:: gdscript

    @export_enum("White", "Yellow", "Orange") var my_color: String
    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
    func _ready():
        # 不能使用点语法，因为 `my_color` 是变量。
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



在上面的代码中，\ ``points`` 会被赋值为与 ``my_color`` 中选中的颜色相对应的值。

字典可以包含更复杂的数据：


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "First Array": [1, 2, 3, 4] # 将 Array 赋给 String 键。
    }

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "First Array", new Godot.Collections.Array { 1, 2, 3, 4 } }
    };



要往已有字典中添加键，请像已有键一样进行访问并赋值：


.. tabs::

 .. code-tab:: gdscript

    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
    points_dict["Blue"] = 150 # 将 "Blue" 添加为键，并将 150 赋为它的值。

 .. code-tab:: csharp

    var pointsDict = new Godot.Collections.Dictionary
    {
        { "White", 50 },
        { "Yellow", 75 },
        { "Orange", 100 },
    };
    pointsDict["Blue"] = 150; // 将 "Blue" 添加为键，并将 150 赋为它的值。



最后，对于非类型化的字典而言，同一个字典里可以包含不同类型的键和值：


.. tabs::

 .. code-tab:: gdscript

    # 这是有效的字典。
    # 要访问下面的 "Nested value"，请使用 `my_dict.sub_dict.sub_key` 或 `my_dict["sub_dict"]["sub_key"]`。
    # 索引风格可以按需混合使用。
    var my_dict = {
        "String Key": 5,
        4: [1, 2, 3],
        7: "Hello",
        "sub_dict": { "sub_key": "Nested value" },
    }

 .. code-tab:: csharp

    // 这是有效的字典。
    // 要访问下面的 "Nested value"，请使用 `((Godot.Collections.Dictionary)myDict["sub_dict"])["sub_key"]`。
    var myDict = new Godot.Collections.Dictionary {
        { "String Key", 5 },
        { 4, new Godot.Collections.Array { 1, 2, 3 } },
        { 7, "Hello" },
        { "sub_dict", new Godot.Collections.Dictionary { { "sub_key", "Nested value" } } },
    };



字典中的键可以用 ``for`` 关键字进行遍历：


.. tabs::

 .. code-tab:: gdscript

    var groceries = { "Orange": 20, "Apple": 2, "Banana": 4 }
    for fruit in groceries:
        var amount = groceries[fruit]

 .. code-tab:: csharp

    var groceries = new Godot.Collections.Dictionary { { "Orange", 20 }, { "Apple", 2 }, { "Banana", 4 } };
    foreach (var (fruit, amount) in groceries)
    {
        // `fruit` 为键，`amount` 为值。
    }



创建\ *类型化字典*\ 可以强制键和值所使用的类型。类型化字典只能够包含给定类型的键和值，也可以是继承自给定类的类型。


.. tabs::

 .. code-tab:: gdscript

    # 创建类型化字典，使用 String 键和 int 值。
    # 尝试使用其他类型的键或值会报错。
    var typed_dict: Dictionary[String, int] = {
        "some_key": 1,
        "some_other_key": 2,
    }

    # 创建类型化字典，使用 String 键和任意类型的值。
    # 尝试使用其他类型的键会报错。
    var typed_dict_key_only: Dictionary[String, Variant] = {
        "some_key": 12.34,
        "some_other_key": "string",
    }

 .. code-tab:: csharp

    // 创建类型化字典，使用 String 键和 int 值。
    // 尝试使用其他类型的键或值会报错。
    var typedDict = new Godot.Collections.Dictionary<String, int> {
        {"some_key", 1},
        {"some_other_key", 2},
    };

    // 创建类型化字典，使用 String 键和任意类型的值。
    // 尝试使用其他类型的键会报错。
    var typedDictKeyOnly = new Godot.Collections.Dictionary<String, Variant> {
        {"some_key", 12.34},
        {"some_other_key", "string"},
    };



\ **注意：**\ 字典始终按引用传递。要获取字典的副本，能独立于原字典进行修改，请使用 :ref:`duplicate()<class_Dictionary_method_duplicate>`\ 。

\ **注意：**\ **不支持**\ 在遍历字典时清除元素，可能造成无法预知的行为。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `GDScript 基础：字典 <../tutorials/scripting/gdscript/gdscript_basics.html#dictionary>`__

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

- `操作系统测试演示 <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

构造函数
--------

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

方法
----

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

运算符
------

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

构造函数说明
------------

.. _class_Dictionary_constructor_Dictionary:

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ ) :ref:`🔗<class_Dictionary_constructor_Dictionary>`

构造空的 **Dictionary**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ base\: :ref:`Dictionary<class_Dictionary>`, key_type\: :ref:`int<class_int>`, key_class_name\: :ref:`StringName<class_StringName>`, key_script\: :ref:`Variant<class_Variant>`, value_type\: :ref:`int<class_int>`, value_class_name\: :ref:`StringName<class_StringName>`, value_script\: :ref:`Variant<class_Variant>`\ )

根据 ``base`` 字典创建类型化字典。类型化字典只能包含给定类型的键和值，也可以是继承自给定的类，由该构造函数的参数描述。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ from\: :ref:`Dictionary<class_Dictionary>`\ )

返回与 ``from`` 相同的字典。如果你需要该字典的副本，请使用 :ref:`duplicate()<class_Dictionary_method_duplicate>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Dictionary_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_method_assign>`

将其他 ``dictionary`` 中的元素赋值给该字典中。字典的大小会调整到与 ``dictionary`` 一致。如果为类型化字典则会执行类型转换。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Dictionary_method_clear>`

清空该字典，移除其中的所有条目。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate>`

返回字典的新副本。

默认情况下返回的是\ **浅拷贝**\ ：嵌套的 :ref:`Array<class_Array>`\ 、\ **Dictionary** 和 :ref:`Resource<class_Resource>` 键和值与原字典共享。对这些键和值的修改会影响另一个字典。

如果 ``deep`` 为 ``true`` 则会返回\ **深拷贝**\ ：嵌套的数组和字典也会进行（递归的）复制。不过 :ref:`Resource<class_Resource>` 仍然是和原字典共享的。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate_deep>`

深度复制该字典，类似于传递 ``true`` 时的 :ref:`duplicate()<class_Dictionary_method_duplicate>` 方法，但可以额外控制子资源的处理方式。

\ ``deep_subresources_mode`` 必须是 :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` 中的某个值。默认只会（递归）复制内部资源。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_erase>`

如果字典中存在与键对应的条目，则将其移除。如果给定的键 ``key`` 在字典中存在，则返回 ``true`` ，否则返回 ``false`` 。

\ **注意：**\ 请勿在遍历字典时擦除条目。你可以改为遍历 :ref:`keys()<class_Dictionary_method_keys>` 数组。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_find_key:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **find_key**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_find_key>`

找到并返回关联值等于 ``value`` 的第一个键，如果没有找到，则返回 ``null``\ 。

\ **注意：**\ ``null`` 也是有效的键。如果字典中包含这个键，则 :ref:`find_key()<class_Dictionary_method_find_key>` 可能会给出误导性的结果。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Dictionary_method_get>`

返回该字典中与给定的键 ``key`` 对应的值。如果 ``key`` 不存在，则返回 ``default``\ ，如果省略了该参数则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_or_add:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_add**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_Dictionary_method_get_or_add>`

获取一个值并确保设置了键。如果 ``key`` 存在于字典中，则其行为类似于 :ref:`get()<class_Dictionary_method_get>`\ 。否则，\ ``default`` 值将被插入到字典中并返回。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_key_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_builtin>`

将类型化字典中键的内置 :ref:`Variant<class_Variant>` 类型以 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 常量的形式返回。如果键不是类型化的，则返回 :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`\ 。另见 :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_key_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_class_name>`

如果类型化字典的键的内置 :ref:`Variant<class_Variant>` 类型为 :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>` 则返回其\ **内置**\ 类名。否则返回空 :ref:`StringName<class_StringName>`\ 。另见 :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>` 和 :ref:`Object.get_class()<class_Object_method_get_class>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_key_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_script>`

返回与类型化字典的键相关联的 :ref:`Script<class_Script>` 实例，如果不存在则返回 ``null``\ 。另见 :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_value_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_builtin>`

将类型化字典中值的内置 :ref:`Variant<class_Variant>` 类型以 :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` 常量的形式返回。如果值不是类型化的，则返回 :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`\ 。另见 :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_value_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_class_name>`

如果类型化字典的值的内置 :ref:`Variant<class_Variant>` 类型为 :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>` 则返回其\ **内置**\ 类名。否则返回空 :ref:`StringName<class_StringName>`\ 。另见 :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>` 和 :ref:`Object.get_class()<class_Object_method_get_class>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_value_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_script>`

返回与类型化字典的值相关联的 :ref:`Script<class_Script>` 实例，如果不存在则返回 ``null``\ 。另见 :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_has>`

如果该字典包含给定的键 ``key``\ ，则返回 ``true``\ 。


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "Godot" : 4,
        210 : null,
    }

    print(my_dict.has("Godot")) # 输出 true
    print(my_dict.has(210))     # 输出 true
    print(my_dict.has(4))       # 输出 false

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "Godot", 4 },
        { 210, default },
    };

    GD.Print(myDict.ContainsKey("Godot")); // 输出 True
    GD.Print(myDict.ContainsKey(210));     // 输出 True
    GD.Print(myDict.ContainsKey(4));       // 输出 False



在 GDScript 中等价于 ``in`` 运算符：

::

    if "Godot" in { "Godot": 4 }:
        print("这个键存在！") # 会进行输出。

\ **注意：**\ 只要键 ``key`` 存在，该方法就会返回 ``true``\ ，即便这个键对应的值为 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_all**\ (\ keys\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Dictionary_method_has_all>`

如果该字典包含给定数组 ``keys`` 中的所有键，则返回 ``true``\ 。

::

    var data = { "width": 10, "height": 20 }
    data.has_all(["height", "width"]) # 返回 true

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_hash>`

返回代表该字典内容的 32 位整数哈希值。


.. tabs::

 .. code-tab:: gdscript

    var dict1 = { "A": 10, "B": 2 }
    var dict2 = { "A": 10, "B": 2 }

    print(dict1.hash() == dict2.hash()) # 输出 true

 .. code-tab:: csharp

    var dict1 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };
    var dict2 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };

    // Godot.Collections.Dictionary 没有 Hash() 方法。请改用 GD.Hash()。
    GD.Print(GD.Hash(dict1) == GD.Hash(dict2)); // 输出 True



\ **注意：**\ 如果两个字典条目相同，但顺序不同，则哈希值也不同。

\ **注意：**\ 哈希值相同的字典\ *不保证*\ 相同，因为可能存在哈希碰撞。相对地，哈希值不同的字典保证不同。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_empty>`

如果该字典为空（大小为 ``0``\ ），则返回 ``true``\ 。另见 :ref:`size()<class_Dictionary_method_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_read_only>`

如果该字典是只读的，则返回 ``true`` 。见 :ref:`make_read_only()<class_Dictionary_method_make_read_only>`\ 。用 ``const`` 关键字声明的字典自动只读。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed>`

如果该字典与 ``dictionary`` 的类型相同，则返回 ``true`` 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_key**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_key>`

如果该字典的键与 ``dictionary`` 的键的类型相同，则返回 ``true`` 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_value**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_value>`

如果该字典的值与 ``dictionary`` 的值的类型相同，则返回 ``true`` 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed>`

如果该字典为类型化字典则返回 ``true``\ 。类型化字典只能存储关联类型的键和值，能够为 ``[]`` 运算符提供类型安全。类型化字典的方法返回的仍然是 :ref:`Variant<class_Variant>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_key**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_key>`

如果字典的键有类型约束，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_value**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_value>`

如果字典的值有类型约束，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_keys:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **keys**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_keys>`

返回该字典中的键列表。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Dictionary_method_make_read_only>`

使该字典只读，即禁用字典内容的修改。不适用于嵌套内容，例如内嵌字典的内容。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Dictionary_method_merge>`

将 ``dictionary`` 中的条目添加到该字典中。默认情况下，不会复制重复的键，除非 ``overwrite`` 为 ``true``\ 。


.. tabs::

 .. code-tab:: gdscript

    var dict = { "item": "sword", "quantity": 2 }
    var other_dict = { "quantity": 15, "color": "silver" }

    # 默认情况下禁用覆盖已有键。
    dict.merge(other_dict)
    print(dict)  # { "item": "sword", "quantity": 2, "color": "silver" }

    # 启用覆盖已有键。
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

    // 默认情况下禁用覆盖已有键。
    dict.Merge(otherDict);
    GD.Print(dict); // { "item": "sword", "quantity": 2, "color": "silver" }

    // 启用覆盖已有键。
    dict.Merge(otherDict, true);
    GD.Print(dict); // { "item": "sword", "quantity": 15, "color": "silver" }



\ **注意：**\ :ref:`merge()<class_Dictionary_method_merge>` *不*\ 是递归的。嵌套的字典是否可被视为键可以被覆盖，具体取决于 ``overwrite`` 的值，但它们永远不会被合并在一起。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merged:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **merged**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_merged>`

返回该字典与 ``dictionary`` 合并后的副本。默认情况下不会复制重复的键，除非 ``overwrite`` 为 ``true``\ 。另见 :ref:`merge()<class_Dictionary_method_merge>`\ 。

该方法可以使用默认值快速制作字典：

::

    var base = { "fruit": "apple", "vegetable": "potato" }
    var extra = { "fruit": "orange", "dressing": "vinegar" }
    # 输出 { "fruit": "orange", "vegetable": "potato", "dressing": "vinegar" }
    print(extra.merged(base))
    # 输出 { "fruit": "apple", "vegetable": "potato", "dressing": "vinegar" }
    print(extra.merged(base, true))

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_recursive_equal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **recursive_equal**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, recursion_count\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Dictionary_method_recursive_equal>`

如果两个字典包含相同的键和值，则返回 ``true``\ ，内部的 **Dictionary** 和 :ref:`Array<class_Array>` 的键和值将进行递归比较。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set**\ (\ key\: :ref:`Variant<class_Variant>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_set>`

将给定 ``key`` 对应元素的值设置为指定的 ``value``\ 。若设置成功则返回 ``true``\ 。若字典为只读，或 ``key`` 与 ``value`` 的类型与字典类型不匹配，则操作失败并返回 ``false``\ 。此方法等同于使用 ``[]`` 运算符（即 ``dict[key] = value``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_size>`

返回该字典中条目的数量。空字典（\ ``{ }``\ ）始终返回 ``0``\ 。另见 :ref:`is_empty()<class_Dictionary_method_is_empty>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Dictionary_method_sort>`

将字典中的键按升序排列。最终的顺序取决于键与键之间的“小于”比较（\ ``<``\ ）。


.. tabs::

 .. code-tab:: gdscript

    var numbers = { "c": 2, "a": 0, "b": 1 }
    numbers.sort()
    print(numbers) # Prints { "a": 0, "b": 1, "c": 2 }



该方法能够确保字典中条目顺序的一致性，适用于调用 :ref:`keys()<class_Dictionary_method_keys>` 或 :ref:`values()<class_Dictionary_method_values>` 的情况，以及通过 :ref:`@GlobalScope.str()<class_@GlobalScope_method_str>` 或 :ref:`JSON.stringify()<class_JSON_method_stringify>` 将字典转换为字符串的情况。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **values**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_values>`

返回该字典中的值列表。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Dictionary_operator_neq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_neq_Dictionary>`

如果两个字典包含的键、值不同，则返回 ``true`` 。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_eq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_eq_Dictionary>`

如果两个字典包含的键、值心相同，则返回 ``true`` 。条目顺序并不重要。

\ **注意：**\ 在 C# 中，按照惯例，这个运算符进行的是按\ **引用**\ 比较。如果你需要按值比较，请遍历这两个字典。

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_idx_Variant:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_operator_idx_Variant>`

返回该字典中与给定的键 ``key`` 对应的值。如果条目不存在，失败并返回 ``null``\ 。为了更安全的访问，请使用 :ref:`get()<class_Dictionary_method_get>` 或 :ref:`has()<class_Dictionary_method_has>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
