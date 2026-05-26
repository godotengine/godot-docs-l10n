:github_url: hide

.. _class_Dictionary:

Dictionary
==========

Una struttura dati incorporata che contiene coppie chiave-valore.

.. rst-class:: classref-introduction-group

Descrizione
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

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Basi di GDScript: I dizionari <../tutorials/scripting/gdscript/gdscript_basics.html#dictionary>`__

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Demo di test di sistema operativo <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Costruttori
----------------------

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

Metodi
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

Operatori
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

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Dictionary_constructor_Dictionary:

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ ) :ref:`🔗<class_Dictionary_constructor_Dictionary>`

Costruisce un **Dictionary** vuoto.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ base\: :ref:`Dictionary<class_Dictionary>`, key_type\: :ref:`int<class_int>`, key_class_name\: :ref:`StringName<class_StringName>`, key_script\: :ref:`Variant<class_Variant>`, value_type\: :ref:`int<class_int>`, value_class_name\: :ref:`StringName<class_StringName>`, value_script\: :ref:`Variant<class_Variant>`\ )

Crea un dizionario tipizzato dal dizionario ``base``. Un dizionario tipizzato può contenere solo chiavi e valori dei tipi specificati, o che ereditano dalle classi specificate, come descritto dai parametri di questo costruttore.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Dictionary<class_Dictionary>` **Dictionary**\ (\ from\: :ref:`Dictionary<class_Dictionary>`\ )

Restituisce lo stesso dizionario di ``from``. Se hai bisogno di una copia del dizionario, usa :ref:`duplicate()<class_Dictionary_method_duplicate>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Dictionary_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_method_assign>`

Assegna elementi di un altro ``dictionary`` in questo dizionario. Ridimensiona il dizionario per corrispondere a ``dictionary``. Esegue le conversioni di tipo se il dizionario è tipizzato.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Dictionary_method_clear>`

Pulisce il dizionario, rimuovendo tutte le voci da esso.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate>`

Restituisce una nuova copia del dizionario.

Normalmente, viene restituita una copia **superficiale**: tutti gli elementi annidati di tipo :ref:`Array<class_Array>`, **Dictionary** e :ref:`Resource<class_Resource>` sono condivisi con il dizionario originale. Modificarli in un dizionario li influenzerà anche nell'altro.

Se ``deep`` è ``true``, viene restituita una copia **profonda**: anche tutti gli array e i dizionari annidati sono duplicati (ricorsivamente). Tuttavia, qualsiasi oggetto :ref:`Resource<class_Resource>` rimane condiviso con il dizionario originale.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Dictionary_method_duplicate_deep>`

Duplicates this dictionary, deeply, like :ref:`duplicate()<class_Dictionary_method_duplicate>` when passing ``true``, with extra control over how subresources are handled.

\ ``deep_subresources_mode`` must be one of the values from :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. By default, only internal resources will be duplicated (recursively).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_erase>`

Rimuove la voce del dizionario per chiave, se esiste. Restituisce ``true`` se la ``key`` specificata esisteva nel dizionario, altrimenti ``false``.

\ **Nota:** Non rimuovere le voci durante l'iterazione sul dizionario. Puoi iterare sull'array di :ref:`keys()<class_Dictionary_method_keys>` invece.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_find_key:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **find_key**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_find_key>`

Trova e restituisce la prima chiave il cui valore associato è uguale a ``value``, o ``null`` se non viene trovato.

\ **Nota:** Anche ``null`` è una chiave valida. Se è all'interno del dizionario, :ref:`find_key()<class_Dictionary_method_find_key>` potrebbe dare risultati ingannevoli.

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

Ottiene un valore e assicura che la chiave sia impostata. Se la chiave ``key`` esiste nel dizionario, si comporta come :ref:`get()<class_Dictionary_method_get>`. Altrimenti, il valore ``default`` viene inserito nel dizionario e restituito.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_key_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_builtin>`

Restituisce il tipo di :ref:`Variant<class_Variant>` integrato delle chiavi del dizionario tipizzato come constante di :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Se le chiavi non sono tipizzate, restituisce :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Vedi anche :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_key_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_class_name>`

Restituisce il nome della classe **integrata** delle chiavi del dizionario tipizzato, se il tipo di :ref:`Variant<class_Variant>` incorporato è :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. Altrimenti, restituisce un :ref:`StringName<class_StringName>` vuoto. Vedi anche :ref:`is_typed_key()<class_Dictionary_method_is_typed_key>` e :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_key_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_key_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_key_script>`

Restituisce l'istanza di :ref:`Script<class_Script>` associata alle chiavi di questo dizionario tipizzato, o ``null`` se non esiste. Vedi anche :ref:`is_typed()<class_Dictionary_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_value_builtin**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_builtin>`

Restituisce il tipo di :ref:`Variant<class_Variant>` integrato dei valori del dizionario tipizzato come constante di :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Se i valori non sono tipizzati, restituisce :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Vedi anche :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_value_class_name**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_class_name>`

Restituisce il nome della classe **integrata** dei valori del dizionario tipizzato, se il tipo di :ref:`Variant<class_Variant>` integrato è :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. Altrimenti, restituisce un :ref:`StringName<class_StringName>` vuoto. Vedi anche :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>` e :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_get_typed_value_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_value_script**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_get_typed_value_script>`

Restituisce l'istanza di :ref:`Script<class_Script>` associata ai valori di questo dizionario tipizzato, o ``null`` se non esiste. Vedi anche :ref:`is_typed_value()<class_Dictionary_method_is_typed_value>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Dictionary_method_has>`

Restituisce ``true`` se il dizionario contiene una voce con la ``key`` specificata.


.. tabs::

 .. code-tab:: gdscript

    var my_dict = {
        "Godot" : 4,
        210 : null,
    }

    print(my_dict.has("Godot")) # Stampa true
    print(my_dict.has(210))     # Stampa true
    print(my_dict.has(4))       # Stampa false

 .. code-tab:: csharp

    var myDict = new Godot.Collections.Dictionary
    {
        { "Godot", 4 },
        { 210, default },
    };

    GD.Print(myDict.ContainsKey("Godot")); // Stampa True
    GD.Print(myDict.ContainsKey(210));     // Stampa True
    GD.Print(myDict.ContainsKey(4));       // Stampa False



In GDScript, questo è equivalente all'operatore ``in``:

::

    if "Godot" in { "Godot": 4 }:
        print("La chiave è qui!") # Verrà stampato.

\ **Nota:** Questo metodo restituisce ``true`` finché esiste la chiave ``key``, anche se il suo valore corrispondente è ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_has_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_all**\ (\ keys\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Dictionary_method_has_all>`

Restituisce ``true`` se il dizionario contiene tutte le chiavi nell'array ``keys`` specificato.

::

    var data = { "larghezza" : 10, "altezza" : 20 }
    data.has_all(["altezza", "larghezza"]) # Restituisce true

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_hash>`

Restituisce un valore intero di hash a 32 bit che rappresenta il contenuto del dizionario.


.. tabs::

 .. code-tab:: gdscript

    var dict1 = { "A": 10, "B": 2 }
    var dict2 = { "A": 10, "B": 2 }

    print(dict1.hash() == dict2.hash()) # Stampa true

 .. code-tab:: csharp

    var dict1 = new Godot.Collections.Dictionary{ {"A", 10 }, { "B", 2 } };
    var dict2 = new Godot.Collections.Dictionary{ {"A", 10 }, { "B", 2 } };

    // Godot.Collections.Dictionary non ha un metodo Hash(). Usa invece GD.Hash().
    GD.Print(GD.Hash(dict1) == GD.Hash(dict2)); // Stampa true



\ **Nota:** I dizionari con le stesse voci ma in un ordine diverso non avranno lo stesso hash.

\ **Nota:** I dizionari con valori uguali di hash *non* sono garantiti di essere uguali, a causa delle collisioni di hash. Al contrario, i dizionari con valori diversi di hash sono sicuramente diversi.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_empty>`

Restituisce ``true`` se il dizionario è vuoto (la sua dimensione è ``0``). Vedi anche :ref:`size()<class_Dictionary_method_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_read_only>`

Restituisce ``true`` se il dizionario è di sola lettura. Vedi :ref:`make_read_only()<class_Dictionary_method_make_read_only>`. I dizionari sono automaticamente di sola lettura se dichiarati con la parola chiave ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed>`

Restituisce ``true`` se il dizionario è tipizzato nello stesso modo di ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_key**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_key>`

Restituisce ``true`` se le chiavi del dizionario sono tipizzate nello stesso modo delle chiavi di ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_same_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed_value**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |const| :ref:`🔗<class_Dictionary_method_is_same_typed_value>`

Restituisce ``true`` se i valori del dizionario sono tipizzati nello stesso modo dei valori di ``dictionary``.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed>`

Restituisce ``true`` se il dizionario è tipizzato. I dizionari tipizzati possono memorizzare solo chiavi/valori del tipo associato e fornire sicurezza di tipo per l'operatore ``[]``. I metodi del dizionario tipizzato restituiscono comunque :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_key**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_key>`

Restituisce ``true`` se le chiavi del dizionario sono tipizzate.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_is_typed_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed_value**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_is_typed_value>`

Restituisce ``true`` se i valori del dizionario sono tipizzati.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_keys:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **keys**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_keys>`

Restituisce la lista delle chiavi nel dizionario.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Dictionary_method_make_read_only>`

Rende il dizionario di sola lettura, ovvero disabilita la modifica del contenuto del dizionario. Non si applica al contenuto innestato, ad esempio il contenuto dei dizionari innestati.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Dictionary_method_merge>`

Aggiunge voci da ``dictionary`` a questo dizionario. Per impostazione predefinita, le chiavi duplicate non vengono copiate, a meno che ``overwrite`` non sia ``true``.


.. tabs::

 .. code-tab:: gdscript

    var dict = { "item": "sword", "quantity": 2 }
    var other_dict = { "quantity": 15, "color": "silver" }

    # La sovrascrittura delle chiavi esistenti è disabilitata per impostazione predefinita.
    dict.merge(other_dict)
    print(dict)  # { "item": "sword", "quantity": 2, "color": "silver" }

    # Con la sovrascrittura delle chiavi esistenti abilitata.
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

    // La sovrascrittura delle chiavi esistenti è disabilitata per impostazione predefinita.
    dict.Merge(otherDict);
    GD.Print(dict); // { "item": "sword", "quantity": 2, "color": "silver" }

    // Con la sovrascrittura delle chiavi esistenti abilitata.
    dict.Merge(otherDict, true);
    GD.Print(dict); // { "item": "sword", "quantity": 15, "color": "silver" }



\ **Nota:** :ref:`merge()<class_Dictionary_method_merge>` non è *ricorsivo*. I dizionari annidati sono considerati chiavi che possono essere sovrascritte o meno a seconda del valore di ``overwrite``, ma non verranno mai uniti insieme.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_merged:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **merged**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, overwrite\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Dictionary_method_merged>`

Restituisce una copia di questo dizionario unita all'altro ``dictionary``. Per impostazione predefinita, le chiavi duplicate non vengono copiate, a meno che ``overwrite`` non sia ``true``. Vedi anche :ref:`merge()<class_Dictionary_method_merge>`.

Questo metodo è utile per creare rapidamente dizionari con valori predefiniti:

::

    var base = { "fruit": "apple", "vegetable": "potato" }
    var extra = { "fruit": "orange", "dressing": "vinegar" }
    # Stampa { "fruit": "orange", "vegetable": "potato", "dressing": "vinegar" }
    print(extra.merged(base))
    # Stampa { "fruit": "apple", "vegetable": "potato", "dressing": "vinegar" }
    print(extra.merged(base, true))

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_recursive_equal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **recursive_equal**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`, recursion_count\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Dictionary_method_recursive_equal>`

Restituisce ``true`` se i due dizionari contengono le stesse chiavi e valori, le chiavi e i valori interni di tipo **Dictionary** e :ref:`Array<class_Array>` sono confrontati ricorsivamente.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_set:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set**\ (\ key\: :ref:`Variant<class_Variant>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_method_set>`

Sets the value of the element at the given ``key`` to the given ``value``. Returns ``true`` if the value is set successfully. Fails and returns ``false`` if the dictionary is read-only, or if ``key`` and ``value`` don't match the dictionary's types. This is the same as using the ``[]`` operator (``dict[key] = value``).

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_size>`

Restituisce il numero di voci nel dizionario. I dizionari vuoti (``{ }``) restituiscono sempre ``0``. Vedi anche :ref:`is_empty()<class_Dictionary_method_is_empty>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Dictionary_method_sort>`

Ordina il dizionario in ordine crescente, per chiave. L'ordine finale dipende dal confronto "minore di" (``<``) tra le chiavi.


.. tabs::

 .. code-tab:: gdscript

    var numbers = { "c": 2, "a": 0, "b": 1 }
    numbers.sort()
    print(numbers) # Stampa { "a": 0, "b": 1, "c": 2 }



Questo metodo garantisce che le voci del dizionario siano ordinate consistentemente quando vengono chiamati :ref:`keys()<class_Dictionary_method_keys>` o :ref:`values()<class_Dictionary_method_values>`, oppure quando c'è bisogno di convertire il dizionario in una stringa attraverso :ref:`@GlobalScope.str()<class_@GlobalScope_method_str>` o :ref:`JSON.stringify()<class_JSON_method_stringify>`.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_method_values:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **values**\ (\ ) |const| :ref:`🔗<class_Dictionary_method_values>`

Restituisce la lista dei valori in questo dizionario.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Dictionary_operator_neq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_neq_Dictionary>`

Restituisce ``true`` se i due dizionari non contengono le stesse chiavi e valori.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_eq_Dictionary:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_Dictionary_operator_eq_Dictionary>`

Restituisce ``true`` se i due dizionari contengono le stesse chiavi e valori. L'ordine delle voci non ha importanza.

\ **Nota:** In C#, per convenzione, questo operatore confronta per **riferimento**. Se devi confrontare per valore, itera su entrambi i dizionari.

.. rst-class:: classref-item-separator

----

.. _class_Dictionary_operator_idx_Variant:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ key\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Dictionary_operator_idx_Variant>`

Restituisce il valore corrispondente per la chiave ``key`` nel dizionario. Se la voce non esiste, fallisce e restituisce ``null``. Per un accesso sicuro, usa :ref:`get()<class_Dictionary_method_get>` o :ref:`has()<class_Dictionary_method_has>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
