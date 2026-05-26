:github_url: hide

.. _class_Dictionary:

Dictionary
==========

A built-in data structure that holds key-value pairs.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Dictionaries are associative containers that contain values referenced by unique keys. Dictionaries will preserve the insertion order when adding new entries. In other programming languages, this data structure is often referred to as a hash map or an associative array.

You can define a dictionary by placing a comma-separated list of ``key: value`` pairs inside curly braces ``{}``.

Creating a dictionary:


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {} # Creates an empty dictionary.

    var dict_variable_key = "Another key name"
    var dict_variable_value = "value2"
    var another_dict = {
        "Some key name": "value1",
        dict_variable_key: dict_variable_value,
    }

    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }

    # Alternative Lua-style syntax.
    # Doesn't require quotes around keys, but only string constants can be used as key names.
    # Additionally, key names must start with a letter or an underscore.
    # Here, `some_key` is a string literal, not a variable!
    another_dict = {
        some_key = 42,
    }

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary(); // Creates an empty dictionary.
    var pointsDict = new Godot.Collections.Dictionary
    {
        { "White", 50 },
        { "Yellow", 75 },
        { "Orange", 100 },
    };



You can access a dictionary's value by referencing its corresponding key. In the above example, ``points_dict["White"]`` will return ``50``. You can also write ``points_dict.White``, which is equivalent. However, you'll have to use the bracket syntax if the key you're accessing the dictionary with isn't a fixed string (such as a number or variable).


.. tabs::

 .. code-tab:: gdscript

    @export_enum("White", "Yellow", "Orange") var my_color: String
    var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
    func _ready():
        # We can't use dot syntax here as `my_color` is a variable.
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



In the above code, ``points`` will be assigned the value that is paired with the appropriate color selected in ``my_color``.

Dictionaries can contain more complex data:


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "First Array": [1, 2, 3, 4] # Assigns an Array to a String key.
    }

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "First Array", new Godot.Collections.Array { 1, 2, 3, 4 } }
    };



To add a key to an existing dictionary, access it like an existing key and assign to it:


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



Finally, untyped dictionaries can contain different types of keys and values in the same dictionary:


.. tabs::

 .. code-tab:: gdscript

    # This is a valid dictionary.
    # To access the string "Nested value" below, use `my_dict.sub_dict.sub_key` or `my_dict["sub_dict"]["sub_key"]`.
    # Indexing styles can be mixed and matched depending on your needs.
    var my_dict = {
        "String Key": 5,
        4: [1, 2, 3],
        7: "Hello",
        "sub_dict": { "sub_key": "Nested value" },
    }

 .. code-tab:: csharp

    // This is a valid dictionary.
    // To access the string "Nested value" below, use `((Godot.Collections.Dictionary)myDict["sub_dict"])["sub_key"]`.
    var myDict = new Godot.Collections.Dictionary {
        { "String Key", 5 },
        { 4, new Godot.Collections.Array { 1, 2, 3 } },
        { 7, "Hello" },
        { "sub_dict", new Godot.Collections.Dictionary { { "sub_key", "Nested value" } } },
    };



The keys of a dictionary can be iterated with the ``for`` keyword:


.. tabs::

 .. code-tab:: gdscript

    var groceries = { "Orange": 20, "Apple": 2, "Banana": 4 }
    for fruit in groceries:
        var amount = groceries[fruit]

 .. code-tab:: csharp

    var groceries = new Godot.Collections.Dictionary { { "Orange", 20 }, { "Apple", 2 }, { "Banana", 4 } };
    foreach (var (fruit, amount) in groceries)
    {
        // `fruit` is the key, `amount` is the value.
    }



To enforce a certain type for keys and values, you can create a *typed dictionary*. Typed dictionaries can only contain keys and values of the given types, or that inherit from the given classes:


.. tabs::

 .. code-tab:: gdscript

    # Creates a typed dictionary with String keys and int values.
    # Attempting to use any other type for keys or values will result in an error.
    var typed_dict: Dictionary[String, int] = {
        "some_key": 1,
        "some_other_key": 2,
    }

    # Creates a typed dictionary with String keys and values of any type.
    # Attempting to use any other type for keys will result in an error.
    var typed_dict_key_only: Dictionary[String, Variant] = {
        "some_key": 12.34,
        "some_other_key": "string",
    }

 .. code-tab:: csharp

    // Creates a typed dictionary with String keys and int values.
    // Attempting to use any other type for keys or values will result in an error.
    var typedDict = new Godot.Collections.Dictionary<String, int> {
        {"some_key", 1},
        {"some_other_key", 2},
    };

    // Creates a typed dictionary with String keys and values of any type.
    // Attempting to use any other type for keys will result in an error.
    var typedDictKeyOnly = new Godot.Collections.Dictionary<String, Variant> {
        {"some_key", 12.34},
        {"some_other_key", "string"},
    };



\ **Note:** Dictionaries are always passed by reference. To get a copy of a dictionary which can be modified independently of the original dictionary, use :ref:`duplicate()<class_Dictionary_method_duplicate>`.

\ **Note:** Erasing elements while iterating over dictionaries is **not** supported and will result in unpredictable behavior.

\ **Note:** In a boolean context, a dictionary will evaluate to ``false`` if it's empty (``{}``). Otherwise, a dictionary will always evaluate to ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Bases de GDScript: Diccionario <../tutorials/scripting/gdscript/gdscript_basics.html#dictionary>`__

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Demo de Prueba de Sistema Operativo <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Constructores
--------------------------

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

Métodos
--------------

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

Operadores
--------------------

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

Descripciones de Constructores
------------------------------------------------------------

.. _class_Dictionary_constructor_Dictionary:

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ ) :ref:`🔗<class_Dictionary_constructor_Dictionary>`

Construye un **Dictionary** vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ base\: :ref:`Dictionary<class_Dictionary>`, key_type\: :ref:`int<class_int>`, key_class_name\: :ref:`StringName<class_StringName>`, key_script\: :ref:`Variant<class_Variant>`, value_type\: :ref:`int<class_int>`, value_class_name\: :ref:`StringName<class_StringName>`, value_script\: :ref:`Variant<class_Variant>`\ )

Crea un diccionario tipado desde el diccionario ``base``. Un diccionario tipado solo puede contener claves y valores de los tipos dados, o que hereden de las clases dadas, como se describe en los parámetros de este constructor.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ from\: :ref:`Dictionary<class_Dictionary>`\ )

Devuelve el mismo diccionario que ``from``. Si necesitas una copia del diccionario, usa :ref:`duplicate()<class_Dictionary_method_duplicate>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Dictionary_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_method_assign>`

Asigna elementos de otro ``dictionary`` al diccionario. Cambia el tamaño del diccionario para que coincida con ``dictionary``. Realiza conversiones de tipo si el diccionario está tipado.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Dictionary_method_clear>`

Limpia el diccionario, eliminando todas las entradas del mismo.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate>`

Devuelve una nueva copia del diccionario.

De forma predeterminada, se devuelve una copia **superficial**: todas las claves y valores anidados de :ref:`Array<class_Array>`, **Dictionary** y :ref:`Resource<class_Resource>` se comparten con el diccionario original. Modificar cualquiera de ellos en un diccionario también los afectará en el otro.

Si ``deep`` es ``true``, se devuelve una copia **profunda**: todos los arrays y diccionarios anidados también se duplican (recursivamente). Sin embargo, cualquier :ref:`Resource<class_Resource>` se sigue compartiendo con el diccionario original.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate_deep>`

Duplica este diccionario, profundamente, como :ref:`duplicate()<class_Dictionary_method_duplicate>` cuando se pasa ``true``, con control adicional sobre cómo se manejan los subrecursos.

\ ``deep_subresources_mode`` debe ser uno de los valores de :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. De forma predeterminada, solo los recursos internos se duplicarán (recursivamente).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_erase>`

Elimina la entrada del diccionario por clave, si existe. Devuelve ``true`` si la ``key`` dada existía en el diccionario, de lo contrario ``false``.

\ **Nota:** No borres entradas mientras iteras sobre el diccionario. En su lugar, puedes iterar sobre el array :ref:`keys()<class_Dictionary_method_keys>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_find_key:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **find_key**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_find_key>`

Encuentra y devuelve la primera clave cuyo valor asociado es igual a ``value``, o ``null`` si no se encuentra.

\ **Nota:** ``null`` también es una clave válida. Si está dentro del diccionario, :ref:`find_key()<class_Dictionary_method_find_key>` puede dar resultados engañosos.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Dictionary_method_get>`

Returns the corresponding value for the given ``key`` in the dictionary. If the ``key`` does not exist, returns ``default``, or ``null`` if the parameter is omitted.

\ **Note:** If the ``default`` argument is computationally expensive or has unwanted side effects, consider using the :ref:`has()<class_Dictionary_method_has>` method instead:

::

    # Always calls `expensive_function()`.
    dict.get("key", expensive_function())
    # Calls `expensive_function()` only if the key does not exist.
    dict.get("key") if dict.has("key") else expensive_function()

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_or_add:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_add**\ (\ key\: :ref:`Variant<class_Variant>`, default\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_Dictionary_method_get_or_add>`

Obtiene un valor y se asegura de que la clave está establecida. Si la ``key`` existe en el diccionario, esto se comporta como :ref:`get()<class_Dictionary_method_get>`. De lo contrario, el valor ``default`` se inserta en el diccionario y se devuelve.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_key_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_builtin>`

Devuelve el tipo :ref:`Variant<class_Variant>` incorporado de las claves del diccionario tipado como una constante :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Si las claves no están tipadas, devuelve :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Véase también :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_key_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_class_name>`

Devuelve el nombre de la clase **incorporada** de las claves del diccionario tipado, si el tipo :ref:`Variant<class_Variant>` incorporado es :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. De lo contrario, devuelve un :ref:`StringName<class_StringName>` vacío. Véase también :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>` y :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_key_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_script>`

Devuelve la instancia de :ref:`Script<class_Script>` asociada con las claves de este diccionario tipado, o ``null`` si no existe. Véase también :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_value_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_builtin>`

Devuelve el tipo :ref:`Variant<class_Variant>` incorporado de los valores del diccionario tipado como una constante :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Si los valores no están tipados, devuelve :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Véase también :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_value_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_class_name>`

Devuelve el nombre de la clase **incorporada** de los valores del diccionario tipado, si el tipo :ref:`Variant<class_Variant>` incorporado es :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. De lo contrario, devuelve un :ref:`StringName<class_StringName>` vacío. Véase también :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>` y :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_value_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_script>`

Devuelve la instancia de :ref:`Script<class_Script>` asociada con los valores de este diccionario tipado, o ``null`` si no existe. Véase también :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_has>`

Returns ``true`` if the dictionary contains an entry with the given ``key``.


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "Godot" : 4,
        210 : null,
    }

    print(my_dict.has("Godot")) # Prints true
    print(my_dict.has(210))     # Prints true
    print(my_dict.has(4))       # Prints false

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "Godot", 4 },
        { 210, default },
    };

    GD.Print(myDict.ContainsKey("Godot")); // Prints True
    GD.Print(myDict.ContainsKey(210));     // Prints True
    GD.Print(myDict.ContainsKey(4));       // Prints False



In GDScript, this is equivalent to the ``in`` operator:

::

    if "Godot" in { "Godot": 4 }:
        print("The key is here!") # Will be printed.

\ **Note:** This method returns ``true`` as long as the ``key`` exists, even if its corresponding value is ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_all**\ (\ keys\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Dictionary_method_has_all>`

Returns ``true`` if the dictionary contains all keys in the given ``keys`` array.

::

    var data = { "width": 10, "height": 20 }
    data.has_all(["height", "width"]) # Returns true

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_hash>`

Returns a hashed 32-bit integer value representing the dictionary contents.


.. tabs::

 .. code-tab:: gdscript

    var dict1 = { "A": 10, "B": 2 }
    var dict2 = { "A": 10, "B": 2 }

    print(dict1.hash() == dict2.hash()) # Prints true

 .. code-tab:: csharp

    var dict1 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };
    var dict2 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };

    // Godot.Collections.Dictionary has no Hash() method. Use GD.Hash() instead.
    GD.Print(GD.Hash(dict1) == GD.Hash(dict2)); // Prints True



\ **Note:** Dictionaries with the same entries but in a different order will not have the same hash.

\ **Note:** Dictionaries with equal hash values are *not* guaranteed to be the same, because of hash collisions. On the contrary, dictionaries with different hash values are guaranteed to be different.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_empty>`

Devuelve ``true`` si el diccionario está vacío (su tamaño es ``0``). Véase también :ref:`size()<class_Dictionary_method_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_read_only>`

Devuelve ``true`` si el diccionario es de solo lectura. Véase :ref:`make_read_only()<class_Dictionary_method_make_read_only>`. Los diccionarios son automáticamente de solo lectura si se declaran con la palabra clave ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed>`

Devuelve ``true`` si el diccionario tiene el mismo tipo que ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_key**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_key>`

Devuelve ``true`` si los tipos de las claves del diccionario son los mismos que los tipos de las claves de ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_value**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_value>`

Devuelve ``true`` si los tipos de los valores del diccionario son los mismos que los tipos de los valores de ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed>`

Devuelve ``true`` si el diccionario está tipado. Los diccionarios tipados solo pueden almacenar claves/valores de su tipo asociado y proporcionan seguridad de tipo para el operador ``[]``. Los métodos del diccionario tipado aún devuelven :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_key**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_key>`

Devuelve ``true`` si las claves del diccionario están tipadas.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_value**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_value>`

Devuelve ``true`` si los valores del diccionario están tipados.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_keys:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **keys**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_keys>`

Devuelve la lista de claves del diccionario.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Dictionary_method_make_read_only>`

Hace que el diccionario sea de solo lectura, es decir, deshabilita la modificación del contenido del diccionario. No se aplica al contenido anidado, por ejemplo, al contenido de los diccionarios anidados.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Dictionary_method_merge>`

Adds entries from ``dictionary`` to this dictionary. By default, duplicate keys are not copied over, unless ``overwrite`` is ``true``.


.. tabs::

 .. code-tab:: gdscript

    var dict = { "item": "sword", "quantity": 2 }
    var other_dict = { "quantity": 15, "color": "silver" }

    # Overwriting of existing keys is disabled by default.
    dict.merge(other_dict)
    print(dict)  # { "item": "sword", "quantity": 2, "color": "silver" }

    # With overwriting of existing keys enabled.
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

    // Overwriting of existing keys is disabled by default.
    dict.Merge(otherDict);
    GD.Print(dict); // { "item": "sword", "quantity": 2, "color": "silver" }

    // With overwriting of existing keys enabled.
    dict.Merge(otherDict, true);
    GD.Print(dict); // { "item": "sword", "quantity": 15, "color": "silver" }



\ **Note:** :ref:`merge()<class_Dictionary_method_merge>` is *not* recursive. Nested dictionaries are considered as keys that can be overwritten or not depending on the value of ``overwrite``, but they will never be merged together.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merged:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **merged**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_merged>`

Returns a copy of this dictionary merged with the other ``dictionary``. By default, duplicate keys are not copied over, unless ``overwrite`` is ``true``. See also :ref:`merge()<class_Dictionary_method_merge>`.

This method is useful for quickly making dictionaries with default values:

::

    var base = { "fruit": "apple", "vegetable": "potato" }
    var extra = { "fruit": "orange", "dressing": "vinegar" }
    # Prints { "fruit": "orange", "vegetable": "potato", "dressing": "vinegar" }
    print(extra.merged(base))
    # Prints { "fruit": "apple", "vegetable": "potato", "dressing": "vinegar" }
    print(extra.merged(base, true))

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_recursive_equal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **recursive_equal**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, recursion_count\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Dictionary_method_recursive_equal>`

Returns ``true`` if the two dictionaries contain the same keys and values, inner **Dictionary** and :ref:`Array<class_Array>` keys and values are compared recursively.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set**\ (\ key\: :ref:`Variant<class_Variant>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_set>`

Establece el valor del elemento en la clave ``key`` dada al valor ``value`` dado. Devuelve ``true`` si el valor se establece con éxito. Falla y devuelve ``false`` si el diccionario es de solo lectura, o si ``key`` y ``value`` no coinciden con los tipos del diccionario. Esto es lo mismo que usar el operador ``[]`` (``dict[key] = value``).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_size>`

Devuelve el número de entradas en el diccionario. Los diccionarios vacíos (``{ }``) siempre devuelven ``0``. Véase también :ref:`is_empty()<class_Dictionary_method_is_empty>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Dictionary_method_sort>`

Sorts the dictionary in ascending order, by key. The final order is dependent on the "less than" (``<``) comparison between keys.


.. tabs::

 .. code-tab:: gdscript

    var numbers = { "c": 2, "a": 0, "b": 1 }
    numbers.sort()
    print(numbers) # Prints { "a": 0, "b": 1, "c": 2 }



This method ensures that the dictionary's entries are ordered consistently when :ref:`keys()<class_Dictionary_method_keys>` or :ref:`values()<class_Dictionary_method_values>` are called, or when the dictionary needs to be converted to a string through :ref:`@GlobalScope.str()<class_@GlobalScope_method_str>` or :ref:`JSON.stringify()<class_JSON_method_stringify>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **values**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_values>`

Devuelve la lista de valores en este diccionario.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Dictionary_operator_neq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_neq_Dictionary>`

Returns ``true`` if the two dictionaries do not contain the same keys and values.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_eq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_eq_Dictionary>`

Devuelve ``true`` si los dos diccionarios contienen las mismas claves y valores. El orden de las entradas no importa.

\ **Nota:** En C#, por convención, este operador compara por **referencia**. Si necesitas comparar por valor, itera sobre ambos diccionarios.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_idx_Variant:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_operator_idx_Variant>`

Devuelve el valor correspondiente para la ``key`` dada en el diccionario. Si la entrada no existe, falla y devuelve ``null``. Para un acceso seguro, usa :ref:`get()<class_Dictionary_method_get>` o :ref:`has()<class_Dictionary_method_has>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
