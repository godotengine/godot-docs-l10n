:github_url: hide

.. _class_Array:

Array
=====

Une structure de données intégrée qui contient une suite d'éléments.

.. rst-class:: classref-introduction-group

Description
-----------

An array data structure that can contain a sequence of elements of any :ref:`Variant<class_Variant>` type by default. Values can optionally be constrained to a specific type by creating a *typed array*. Elements are accessed by a numerical index starting at ``0``. Negative indices are used to count from the back (``-1`` is the last element, ``-2`` is the second to last, etc.).


.. tabs::

 .. code-tab:: gdscript

    var array = ["First", 2, 3, "Last"]
    print(array[0])  # Prints "First"
    print(array[2])  # Prints 3
    print(array[-1]) # Prints "Last"

    array[1] = "Second"
    print(array[1])  # Prints "Second"
    print(array[-3]) # Prints "Second"

    # This typed array can only contain integers.
    # Attempting to add any other type will result in an error.
    var typed_array: Array[int] = [1, 2, 3]

 .. code-tab:: csharp

    Godot.Collections.Array array = ["First", 2, 3, "Last"];
    GD.Print(array[0]); // Prints "First"
    GD.Print(array[2]); // Prints 3
    GD.Print(array[^1]); // Prints "Last"

    array[1] = "Second";
    GD.Print(array[1]); // Prints "Second"
    GD.Print(array[^3]); // Prints "Second"

    // This typed array can only contain integers.
    // Attempting to add any other type will result in an error.
    Godot.Collections.Array<int> typedArray = [1, 2, 3];



\ **Note:** Arrays are always passed by **reference**. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_Array_method_duplicate>`.

\ **Note:** Erasing elements while iterating over arrays is **not** supported and will result in unpredictable behavior.

\ **Note:** In a boolean context, an array will evaluate to ``false`` if it's empty (``[]``). Otherwise, an array will always evaluate to ``true``.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. :ref:`PackedInt64Array<class_PackedInt64Array>` versus ``Array[int]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ )                                                                                                                                                           |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ base\: :ref:`Array<class_Array>`, type\: :ref:`int<class_int>`, class_name\: :ref:`StringName<class_StringName>`, script\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                                                                                                                         |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ )                                                                                                   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                                                                                   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )                                                                                                   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                                                                                                 |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>` | :ref:`Array<class_Array_constructor_Array>`\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )                                                                                               |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`all<class_Array_method_all>`\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const|                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`any<class_Array_method_any>`\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const|                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`append<class_Array_method_append>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`append_array<class_Array_method_append_array>`\ (\ array\: :ref:`Array<class_Array>`\ )                                                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`assign<class_Array_method_assign>`\ (\ array\: :ref:`Array<class_Array>`\ )                                                                                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`back<class_Array_method_back>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`bsearch<class_Array_method_bsearch>`\ (\ value\: :ref:`Variant<class_Variant>`, before\: :ref:`bool<class_bool>` = true\ ) |const|                                                                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`bsearch_custom<class_Array_method_bsearch_custom>`\ (\ value\: :ref:`Variant<class_Variant>`, func\: :ref:`Callable<class_Callable>`, before\: :ref:`bool<class_bool>` = true\ ) |const|          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear<class_Array_method_clear>`\ (\ )                                                                                                                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`count<class_Array_method_count>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`duplicate<class_Array_method_duplicate>`\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`duplicate_deep<class_Array_method_duplicate_deep>`\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const|                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`erase<class_Array_method_erase>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`fill<class_Array_method_fill>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`filter<class_Array_method_filter>`\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const|                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`find<class_Array_method_find>`\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = 0\ ) |const|                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`find_custom<class_Array_method_find_custom>`\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = 0\ ) |const|                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`front<class_Array_method_front>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get<class_Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                         |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_typed_builtin<class_Array_method_get_typed_builtin>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_typed_class_name<class_Array_method_get_typed_class_name>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_typed_script<class_Array_method_get_typed_script>`\ (\ ) |const|                                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has<class_Array_method_has>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_Array_method_hash>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`insert<class_Array_method_insert>`\ (\ position\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_empty<class_Array_method_is_empty>`\ (\ ) |const|                                                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_read_only<class_Array_method_is_read_only>`\ (\ ) |const|                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_same_typed<class_Array_method_is_same_typed>`\ (\ array\: :ref:`Array<class_Array>`\ ) |const|                                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_typed<class_Array_method_is_typed>`\ (\ ) |const|                                                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`make_read_only<class_Array_method_make_read_only>`\ (\ )                                                                                                                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`map<class_Array_method_map>`\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const|                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`max<class_Array_method_max>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`min<class_Array_method_min>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`pick_random<class_Array_method_pick_random>`\ (\ ) |const|                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`pop_at<class_Array_method_pop_at>`\ (\ position\: :ref:`int<class_int>`\ )                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`pop_back<class_Array_method_pop_back>`\ (\ )                                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`pop_front<class_Array_method_pop_front>`\ (\ )                                                                                                                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`push_back<class_Array_method_push_back>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`push_front<class_Array_method_push_front>`\ (\ value\: :ref:`Variant<class_Variant>`\ )                                                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`reduce<class_Array_method_reduce>`\ (\ method\: :ref:`Callable<class_Callable>`, accum\: :ref:`Variant<class_Variant>` = null\ ) |const|                                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`remove_at<class_Array_method_remove_at>`\ (\ position\: :ref:`int<class_int>`\ )                                                                                                                  |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`resize<class_Array_method_resize>`\ (\ size\: :ref:`int<class_int>`\ )                                                                                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`reverse<class_Array_method_reverse>`\ (\ )                                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`rfind<class_Array_method_rfind>`\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = -1\ ) |const|                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`rfind_custom<class_Array_method_rfind_custom>`\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = -1\ ) |const|                                                         |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set<class_Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`shuffle<class_Array_method_shuffle>`\ (\ )                                                                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`size<class_Array_method_size>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`slice<class_Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647, step\: :ref:`int<class_int>` = 1, deep\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`sort<class_Array_method_sort>`\ (\ )                                                                                                                                                              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`sort_custom<class_Array_method_sort_custom>`\ (\ func\: :ref:`Callable<class_Callable>`\ )                                                                                                        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Array_operator_neq_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )  |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`operator +<class_Array_operator_sum_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )   |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator \<<class_Array_operator_lt_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )   |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator \<=<class_Array_operator_lte_Array>`\ (\ right\: :ref:`Array<class_Array>`\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Array_operator_eq_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )   |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ><class_Array_operator_gt_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )    |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator >=<class_Array_operator_gte_Array>`\ (\ right\: :ref:`Array<class_Array>`\ )  |
   +-------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`operator []<class_Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )        |
   +-------------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Array_constructor_Array:

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ ) :ref:`🔗<class_Array_constructor_Array>`

Construit un **Array** vide.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ base\: :ref:`Array<class_Array>`, type\: :ref:`int<class_int>`, class_name\: :ref:`StringName<class_StringName>`, script\: :ref:`Variant<class_Variant>`\ )

Crée un tableau typé depuis le tableau ``base``. Un tableau typé ne peut contenir que des éléments du type donné, ou qui héritent de la classe donnée, comme décrit par les paramètres du constructeur :

- ``type`` est le type intégré :ref:`Variant<class_Variant>`, en tant qu'une des constantes :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` .

- ``class_name`` est le nom de la classe intégrée (voir :ref:`Object.get_class()<class_Object_method_get_class>`).

- ``script`` est le script associé. Il doit être une instance :ref:`Script<class_Script>` ou ``null``.

Si ``type`` n'est pas :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`, ``class_name`` doit être une chaîne :ref:`StringName<class_StringName>` vide et ``script`` doit être ``null``.

::

    class_name Epee
    extends Node

    class Stats:
        pass

    func _ready():
        var a = Array([], TYPE_INT, "", null)               # Array[int]
        var b = Array([], TYPE_OBJECT, "Node", null)        # Array[Node]
        var c = Array([], TYPE_OBJECT, "Node", Epee)       # Array[Epee]
        var d = Array([], TYPE_OBJECT, "RefCounted", Stats) # Array[Stats]

Les éléments du tableau ``base`` sont convertis si nécessaire. Si cela n'est pas possible ou que ``base`` est déjà typé, ce constructeur échoue et renvoie un **Array** vide.

En GDScript, ce constructeur n'est généralement pas nécessaire, car il est possible de créer un tableau typé par le typage statique :

::

    var nombres: Array[float] = []
    var enfants: Array[Node] = [$Node, $Sprite2D, $RigidBody3D]

    var entiers: Array[int] = [0.2, 4.5, -2.0]
    print(entiers) # Affiche [0, 4, -2]

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Renvoie le même tableau que ``from``. Si vous avez besoin d'une copie du tableau, utilisez :ref:`duplicate()<class_Array_method_duplicate>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedByteArray<class_PackedByteArray>`\ )

Construit un tableau à partir d'un :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ )

Construit un tableau à partir d'un :ref:`PackedColorArray<class_PackedColorArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )

Construit un tableau à partir d'un :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )

Construit un tableau à partir d'un :ref:`PackedFloat64Array<class_PackedFloat64Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )

Construit un tableau à partir d'un :ref:`PackedInt32Array<class_PackedInt32Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )

Construit un tableau à partir d'un :ref:`PackedInt64Array<class_PackedInt64Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )

Construit un tableau à partir d'un :ref:`PackedStringArray<class_PackedStringArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )

Construit un tableau à partir d'un :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )

Construit un tableau à partir d'un :ref:`PackedVector3Array<class_PackedVector3Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )

Construit un tableau à partir d'un :ref:`PackedVector4Array<class_PackedVector4Array>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Array_method_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **all**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_all>`

Appelle le :ref:`Callable<class_Callable>` donné sur chaque élément du tableau et renvoie ``true`` si le :ref:`Callable<class_Callable>` renvoie ``true`` pour *tous* les éléments du tableau. Si le :ref:`Callable<class_Callable>` renvoie ``false`` pour un élément du tableau ou plus, cette méthode renvoie ``false``.

La méthode ``method`` devrait prendre un paramètre :ref:`Variant<class_Variant>` (l'élément de tableau courant) et renvoyer un booléen :ref:`bool<class_bool>`.


.. tabs::

 .. code-tab:: gdscript

    func superieur_a_5(nombre):
        return nombre > 5

    func _ready():
        print([6, 10, 6].all(superieur_a_5)) # Affiche true (3/3 éléments sont évalués à true).
        print([4, 10, 4].all(superieur_a_5)) # Affiche false (1/3 éléments sont évalués à true).
        print([4, 4, 4].all(superieur_a_5))  # Affiche false (0/3 éléments sont évalués à true).
        print([].all(superieur_a_5))         # Affiche true (0/0 éléments sont évalués à true).

        # Même chose que la première ligne du dessus, mais avec une fonction lambda.
        print([6, 10, 6].all(func(element): return element > 5)) # Affiche true

 .. code-tab:: csharp

    private static bool SuperieurA5(int nombre)
    {
        return nombre > 5;
    }

    public override void _Ready()
    {
        // Affiche True (3/3 éléments sont évalués à true).
        GD.Print(new Godot.Collections.Array<int> { 6, 10, 6 }.All(SuperieurA5));
        // Affiche False (1/3 éléments sont évalués à true).
        GD.Print(new Godot.Collections.Array<int> { 4, 10, 4 }.All(SuperieurA5));
        // Affiche False (0/3 éléments sont évalués à true).
        GD.Print(new Godot.Collections.Array<int> { 4, 4, 4 }.All(SuperieurA5));
        // Affiche True (0/0 éléments sont évalués à true).
        GD.Print(new Godot.Collections.Array<int> { }.All(SuperieurA5));

        // Même chose que la première ligne du dessus, mais avec une fonction lambda.
        GD.Print(new Godot.Collections.Array<int> { 6, 10, 6 }.All(element => element > 5)); // Affiche True
    }



Voir aussi :ref:`any()<class_Array_method_any>`, :ref:`filter()<class_Array_method_filter>`, :ref:`map()<class_Array_method_map>` et :ref:`reduce()<class_Array_method_reduce>`.

\ **Note :** Au lieu de se baser sur la taille du tableau renvoyé par :ref:`filter()<class_Array_method_filter>`, cette méthode renverra le résultat le plus tôt possible pour améliorer les performances (en particulier avec de grands tableaux).

\ **Note :** Pour un tableau vide, cette méthode renvoie `toujours <https://en.wikipedia.org/wiki/Vacuous_truth>`__ ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_any:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **any**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_any>`

Appelle le :ref:`Callable<class_Callable>` donné sur chaque élément du tableau et renvoie ``true`` si le :ref:`Callable<class_Callable>` renvoie ``true`` pour *un ou plusieurs* éléments dans le tableau. Si le :ref:`Callable<class_Callable>` renvoie ``false`` pour tous les éléments du tableau, cette méthode renvoie ``false``.

La méthode ``method`` devrait prendre un paramètre :ref:`Variant<class_Variant>` (l'élément de tableau courant) et renvoyer un :ref:`bool<class_bool>`.

::

    func superieur_a_5(nombre):
        return number > 5

    func _ready():
        print([6, 10, 6].any(superieur_a_5)) # Affiche true (3 éléments sont évalués à true).
        print([4, 10, 4].any(superieur_a_5)) # Affiche true (1 élément est évalué à true).
        print([4, 4, 4].any(superieur_a_5))  # Affiche false (0 éléments sont évalués à true).
        print([].any(superieur_a_5))         # Affiche false (0 éléments sont évalués à true).

        # Comme la première ligne au dessus, mais en utilisant une fonction lambda.
        print([6, 10, 6].any(func(nombre): return nombre > 5)) # Affiche true

Voir aussi :ref:`all()<class_Array_method_all>`, :ref:`filter()<class_Array_method_filter>`, :ref:`map()<class_Array_method_map>` et :ref:`reduce()<class_Array_method_reduce>`.

\ **Note :** Au lieu de se baser sur la taille du tableau renvoyé par :ref:`filter()<class_Array_method_filter>`, cette méthode renverra le résultat le plus tôt possible pour améliorer les performances (en particulier avec de grands tableaux).

\ **Note :** Pour un tableau vide, cette méthode renvoie toujours ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_append:

.. rst-class:: classref-method

|void| **append**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_append>`

Ajoute une valeur ``value`` à la fin du tableau (alias de :ref:`push_back()<class_Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_method_append_array>`

Ajoute un autre tableau ``array`` à la fin de ce tableau.

::

    var numbers = [1, 2, 3]
    var extra = [4, 5, 6]
    numbers.append_array(extra)
    print(numbers) # Affiche [1, 2, 3, 4, 5, 6].

.. rst-class:: classref-item-separator

----

.. _class_Array_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_method_assign>`

Attribue des éléments d'un autre tableau ``array`` dans le tableau. Redimensionne le tableau pour correspondre à ``array``. Effectue les conversions de type si le tableau est typé.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_back:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **back**\ (\ ) |const| :ref:`🔗<class_Array_method_back>`

Renvoie le dernier élément du tableau. Si le tableau est vide, affiche une erreur et renvoie ``null``. Voir aussi :ref:`front()<class_Array_method_front>`.

\ **Note :** Différemment de l'opérateur ``[]`` (``array[-1]``), une erreur est générée sans arrêter l'exécution du projet.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Variant<class_Variant>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Array_method_bsearch>`

Renvoie l'index de la valeur ``value`` dans le tableau trié. Si elle ne peut pas être trouvée, renvoie où ``value`` doit être insérée pour garder le tableau trié. L'algorithme utilisé est `la recherche dichotomique <https://fr.wikipedia.org/wiki/Recherche_dichotomique>`__.

Si ``before`` vaut ``true`` (comme par défaut), l'index renvoyé arrive avant tous les éléments existants égaux à ``value`` dans le tableau.

::

    var nombres = [2, 4, 8, 10]
    var idx = nombres.bsearch(7)

    nombres.insert(idx, 7)
    print(nombres) # Affiche [2, 4, 7, 8, 10]

    var fruits = ["Pomme", "Citron", "Citron", "Orange"]
    print(fruits.bsearch("Citron", true) # Affiche 1, pointe vers le premier "Citron".
    print(fruits.bsearch("Citron", false) # Affiche 3, pointe vers "Orange".

\ **Note :** Appeler :ref:`bsearch()<class_Array_method_bsearch>` sur un tableau *non trié* résultera en un comportement inattendu. Utilisez :ref:`sort()<class_Array_method_sort>` avant d'appeler cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_bsearch_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch_custom**\ (\ value\: :ref:`Variant<class_Variant>`, func\: :ref:`Callable<class_Callable>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Array_method_bsearch_custom>`

Renvoie l'index de la valeur ``value`` dans le tableau trié. Si elle ne peut pas être trouvée, renvoie où ``value`` doit être insérée pour garder le tableau trié (en utilisant ``func`` pour les comparaisons). L'algorithme utilisé est `la recherche dichotomique <https://fr.wikipedia.org/wiki/Recherche_dichotomique>`__.

Semblable à :ref:`sort_custom()<class_Array_method_sort_custom>`, ``func`` est appelé autant de fois que nécessaire, recevant un élément du tableau et ``value`` comme arguments. La fonction doit renvoyer ``true`` si l'élément du tableau devrait être *derrière* ``value``, sinon elle devrait renvoyer ``false``.

Si ``before`` vaut ``true`` (comme par défaut), l'index renvoyé arrive avant tous les éléments existants égaux à ``value`` dans le tableau.

::

    func trier_par_quantite(a, b):
        if a[1] < b[1]:
            return true
        return false

    func _ready():
        var mes_objets = [["Tomate", 2], ["Kiwi", 5], ["Riz", 9]]

        var pomme = ["Pomme", 5]
        # "Pomme" est inséré avant "Kiwi".
        mes_objets.insert(mes_objets .bsearch_custom(pomme , trier_par_quantite, true), pomme)

        var banane = ["Banane", 5]
        # "Banane" est inséré après "Kiwi".
        mes_objets .insert(mes_objets .bsearch_custom(banane, trier_par_quantite, false), banane)

        # Affiche [["Tomate", 2], ["Pomme", 5], ["Kiwi", 5], ["Banane", 5], ["Riz", 9]]
        print(mes_objets )

\ **Note :** Appeler :ref:`bsearch_custom()<class_Array_method_bsearch_custom>` sur un tableau *non trié* résultera en un comportement inattendu. Utilisez :ref:`sort_custom()<class_Array_method_sort_custom>` avec ``func`` avant d'appeler cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Array_method_clear>`

Retire tous les éléments du tableau. C'est équivalent à utiliser :ref:`resize()<class_Array_method_resize>` avec une taille de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Array_method_count>`

Renvoie le nombre de fois qu'un élément est dans le tableau.

Pour compter combien d'éléments dans un tableau satisfont une condition, voir :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_duplicate:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Array_method_duplicate>`

Renvoie une nouvelle copie du tableau.

Par défaut, une copie **superficielle** est renvoyée : tous les éléments **Array**, :ref:`Dictionary<class_Dictionary>` et :ref:`Resource<class_Resource>` imbriqués sont partagés avec le tableau original. Modifier l'un d'eux dans un tableau les affectera également dans l'autre.

Si ``deep`` vaut ``true``, une copie **profonde** est renvoyée : tous les tableaux et dictionnaires imbriqués sont également dupliqués (récursivement). Cependant, toute :ref:`Resource<class_Resource>` est toujours partagée avec le tableau original.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Array_method_duplicate_deep>`

Duplicates this array, deeply, like :ref:`duplicate()<class_Array_method_duplicate>` when passing ``true``, with extra control over how subresources are handled.

\ ``deep_subresources_mode`` must be one of the values from :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. By default, only internal resources will be duplicated (recursively).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_erase:

.. rst-class:: classref-method

|void| **erase**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_erase>`

Trouve et supprime la première occurrence de la valeur ``value`` du tableau. Si ``value`` n'existe pas dans le tableau, rien ne se passe. Pour supprimer un élément par index, utilisez :ref:`remove_at()<class_Array_method_remove_at>` à la place.

\ **Note :** Cette méthode déplace l'index de chaque élément après la valeur ``value`` supprimée en arrière, ce qui peut avoir un coût de performance notable, en particulier sur les tableaux plus grands.

\ **Note :** Effacer des éléments lors de l'itération d'un tableau n'est **pas** supporté et va résulter en un comportement imprévisible.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_fill>`

Assigne la valeur ``value`` à tous les éléments du tableau.

Cette méthode est souvent combinée avec :ref:`resize()<class_Array_method_resize>` pour créer un tableau d'une taille donnée avec tous ses éléments initialisés :


.. tabs::

 .. code-tab:: gdscript

    var array = []
    array.resize(5)
    array.fill(2)
    print(array) # Affiche [2, 2, 2, 2, 2]

 .. code-tab:: csharp

    Godot.Collections.Array array = [];
    array.Resize(5);
    array.Fill(2);
    GD.Print(array); // Affiche [2, 2, 2, 2, 2]



\ **Note:** Si ``value`` est un :ref:`Variant<class_Variant>` passé par référence (dérivé de :ref:`Object<class_Object>`, **Array**, :ref:`Dictionary<class_Dictionary>`, etc...), le tableau sera rempli de référence à la même valeur ``value``, qui ne seront pas des dupliqués.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_filter:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **filter**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_filter>`

Appelle le :ref:`Callable<class_Callable>` donné sur chaque élément dans le tableau et renvoie un nouveau tableau **Array** filtré.

La méthode ``method`` reçoit l'un des éléments du tableau comme argument, et devrait renvoyer ``true`` pour ajouter l'élément au tableau filtré, ou ``false`` pour l'exclure.

::

    func est_pair(nombre):
        return nombre % 2 == 0

    func _ready():
        print([1, 4, 5, 8].filter(est_pair)) # Affiche [4, 8]

        # Comme la première ligne au dessus, mais en utilisant une fonction lambda.
        print([1, 4, 5, 8].filter(func(nombre): return nombre % 2 == 0))

Voir aussi :ref:`any()<class_Array_method_any>`, :ref:`all()<class_Array_method_all>`, :ref:`map()<class_Array_method_map>` et :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Array_method_find>`

Renvoie l'index de la **première** occurrence de l'objet ``what`` dans ce tableau, ou ``-1`` s'il n'y en a pas. Le début de la recherche peut être spécifié avec ``from``, continuant vers la fin du tableau.

\ **Note :** Si vous voulez juste savoir si le tableau contient ``what``, utilisez :ref:`has()<class_Array_method_has>` (``Contains`` en C#). En GDScript, vous pouvez aussi utiliser l'opérateur ``in``.

\ **Note :** Pour des raisons de performance, la recherche est affectée par le type de variant :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` de ``what``. Par exemple, ``7`` (un entier :ref:`int<class_int>`) et ``7.0`` (un flottant :ref:`float<class_float>`) ne sont pas considérés égaux pour cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_find_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_custom**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Array_method_find_custom>`

Returns the index of the **first** element in the array that causes ``method`` to return ``true``, or ``-1`` if there are none. The search's start can be specified with ``from``, continuing to the end of the array.

\ ``method`` is a callable that takes an element of the array, and returns a :ref:`bool<class_bool>`.

\ **Note:** If you just want to know whether the array contains *anything* that satisfies ``method``, use :ref:`any()<class_Array_method_any>`.


.. tabs::

 .. code-tab:: gdscript

    func is_even(number):
        return number % 2 == 0

    func _ready():
        print([1, 3, 4, 7].find_custom(is_even.bind())) # Prints 2

    # Another example using `bind()` to pass an additional parameter:
    func is_specific_number(number, expected):
        return number == expected

    func _ready():
        print([1, 3, 4, 7].find_custom(is_specific_number.bind(4))) # Prints 2



.. rst-class:: classref-item-separator

----

.. _class_Array_method_front:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **front**\ (\ ) |const| :ref:`🔗<class_Array_method_front>`

Renvoie le premier élément du tableau. Si le tableau est vide, échoue et renvoie ``null``. Voir aussi :ref:`back()<class_Array_method_back>`.

\ **Note :** Contrairement à l'opérateur ``[]`` (``array[0]``), une erreur est générée sans arrêter l'exécution du projet.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Array_method_get>`

Renvoie l'élément à l'index ``index`` du tableau. Si ``index`` est hors des limites ou négatif, cette méthode échoue et renvoie ``null``.

Cette méthode est similaire (mais pas identique) à l'opérateur ``[]``. Plus particulièrement, lorsque cette méthode échoue, elle ne met pas en pause l'exécution de projet si elle est exécutée depuis l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_builtin**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_builtin>`

Renvoie le type intégré :ref:`Variant<class_Variant>` du tableau typé en tant que constante :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Si le tableau n'est pas typé , renvoie :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Voir aussi :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_class_name**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_class_name>`

Renvoie le nom de classe **intégré** du tableau typé, si le type intégré :ref:`Variant<class_Variant>` est :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. Sinon, renvoie un :ref:`StringName<class_StringName>` vide. Voir aussi :ref:`is_typed()<class_Array_method_is_typed>` et :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_script**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_script>`

Renvoie l'instance :ref:`Script<class_Script>` associée à ce tableau typé, ou ``null`` si elle n'existe pas. Voir aussi :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Array_method_has>`

Renvoie ``true`` si le tableau contient la valeur ``value`` donnée.


.. tabs::

 .. code-tab:: gdscript

    print(["dedans", 7].has("dedans"))  # Affiche true
    print(["dedans", 7].has("dehors")) # Affiche false
    print(["dedans", 7].has(7))         # Affiche true
    print(["dedans", 7].has("7"))       # Affiche false

 .. code-tab:: csharp

    Godot.Collections.Array tab = ["dedans", 7];
    // Par convention C#, cette méthode est renommée en `Contains`.
    GD.Print(arr.Contains("dedans"));  // Affiche True
    GD.Print(arr.Contains("dehors")); // Affiche False
    GD.Print(arr.Contains(7));         // Affiche True
    GD.Print(arr.Contains("7"));       // Affiche False



En GDScript, c'est équivalent à l'opérateur ``in``\  :

::

    if 4 in [2, 4, 6, 8]:
        print("4 est là!") # Sera affiché.

\ **Note :** Pour des raisons de performances, la recherche est affectée par le type de variant :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` de ``value``. Par exemple, ``7`` (un entier :ref:`int<class_int>`) et ``7.0`` (un flottant :ref:`float<class_float>`) ne sont pas considérés comme égaux pour cette méthode.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Array_method_hash>`

Renvoie un entier 32 bits haché représentant le tableau et son contenu.

\ **Note :** Les tableaux avec des valeurs de hachage égales ne sont *pas* garantis d'être les même, à cause des collisions de hachage. Au contraire, les tableaux avec différentes valeurs de hachage sont garantis d'être différents.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ position\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_insert>`

Insère un nouvel élément (``value``) à un index donné (``position``) dans le tableau. ``position`` devrait être entre ``0`` et la taille (:ref:`size()<class_Array_method_size>`) du tableau. Si négatif, ``position`` est considéré comme relatif à la fin du tableau.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors du succès, ou l'une des autres constantes :ref:`Error<enum_@GlobalScope_Error>` si cette méthode échoue.

\ **Note :** L'index de chaque élément après ``position`` doit être déplacé vers l'avant, ce qui peut avoir un coût de performance notable, en particulier sur les tableaux plus grands.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Array_method_is_empty>`

Renvoie ``true`` si le tableau est vide (``[]``. Voir aussi :ref:`size()<class_Array_method_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Array_method_is_read_only>`

Renvoie ``true`` si le tableau est en lecture seule. Voir :ref:`make_read_only()<class_Array_method_make_read_only>`.

En GDScript, les tableaux sont automatiquement en lecture seule s'ils sont déclarés avec le mot-clé ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ array\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Array_method_is_same_typed>`

Renvoie ``true`` si ce tableau est typé de la même manière que le tableau ``array`` donné. Voir aussi :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Array_method_is_typed>`

Renvoie ``true`` si le tableau est typé. Les tableaux typés peuvent contenir uniquement des éléments d'un type spécifique, tel que défini par le constructeur du tableau typé. Les méthodes d'un tableau typé sont toujours censées renvoyer un :ref:`Variant<class_Variant>` générique.

En GDScript, il est possible de définir un tableau typé avec le typage statique :

::

    var nombres: Array[float] = [0.2, 4.2, -2.0]
    print(nombres.is_typed()) # Affiche true

.. rst-class:: classref-item-separator

----

.. _class_Array_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Array_method_make_read_only>`

Rend le tableau en lecture seule. Les éléments du tableau ne peuvent être remplacés par des valeurs différentes, et leur ordre ne peut pas changer. Ne s'applique pas aux éléments imbriqués, comme les dictionnaires.

En GDScript, les tableaux sont automatiquement en lecture seule s'ils sont déclarés avec le mot-clé ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_map:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **map**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_map>`

Appelle le :ref:`Callable<class_Callable>` donné pour chaque élément dans le tableau et renvoie un nouveau tableau rempli de valeurs renvoyées par la méthode ``method``\ 

La méthode ``method`` devrait prendre un paramètre :ref:`Variant<class_Variant>` (l'élément de tableau courant) et peut renvoyer n'importe quel :ref:`Variant<class_Variant>`.

::

    func doubler(nombre):
        return nombre * 2

    func _ready():
        print([1, 2, 3].map(doubler)) # Affiche [2, 4, 6]

        # La même qu'au dessus, mais en utilisant une fonction lambda.
        print([1, 2, 3].map(func(element): return element * 2))

Voir aussi :ref:`filter()<class_Array_method_filter>`, :ref:`reduce()<class_Array_method_reduce>`, :ref:`any()<class_Array_method_any>` et :ref:`all()<class_Array_method_all>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_max:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **max**\ (\ ) |const| :ref:`🔗<class_Array_method_max>`

Renvoie la valeur maximale contenue dans le tableau, si tous les éléments peuvent être comparés. Sinon, renvoie ``null``. Voir aussi :ref:`min()<class_Array_method_min>`.

Pour trouver la valeur maximale en utilisant un comparateur personnalisé, vous pouvez utiliser :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_min:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **min**\ (\ ) |const| :ref:`🔗<class_Array_method_min>`

Renvoie la valeur minimale contenue dans le tableau si tous les éléments peuvent être comparés entre eux. Si les éléments ne peuvent pas être comparés, renvoie ``null``. Voir aussi :ref:`max()<class_Array_method_max>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pick_random:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pick_random**\ (\ ) |const| :ref:`🔗<class_Array_method_pick_random>`

Renvoie un élément aléatoire du tableau. Génère une erreur et renvoie ``null`` si le tableau est vide.


.. tabs::

 .. code-tab:: gdscript

    # Peut afficher 1, 2, 3.25, ou "Salut".
    print([1, 2, 3.25, "Salut"].pick_random())

 .. code-tab:: csharp

    Godot.Collections.Array tableau = [1, 2, 3.25f, "Salut"];
    GD.Print(tableau.PickRandom()); // Peut afficher 1, 2, 3.25, ou "Salut".



\ **Note :** Comme beaucoup de fonctions similaires dans le moteur (comme :ref:`@GlobalScope.randi()<class_@GlobalScope_method_randi>` ou :ref:`shuffle()<class_Array_method_shuffle>`), cette méthode utilise une graine aléatoire commune et globale. Pour obtenir un résultat prévisible de cette méthode, voir :ref:`@GlobalScope.seed()<class_@GlobalScope_method_seed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_at:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_at**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_pop_at>`

Retire et renvoie l'élément du tableau à l'index ``position``. Si la ``position`` est négative, elle est considérée par rapport à la fin du tableau. Renvoie ``null`` si le tableau est vide. Si ``position`` est hors des limites, un message d'erreur est également généré.

\ **Note :** Cette méthode déplace l'index de chaque élément après ``position`` vers l'arrière, ce qui peut avoir un coût de performance notable, en particulier sur les tableaux plus grands.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_back:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_back**\ (\ ) :ref:`🔗<class_Array_method_pop_back>`

Retire et renvoie le dernier élément du tableau. Renvoie ``null`` si le tableau est vide, sans affiche de message d'erreur. Voir aussi :ref:`pop_front()<class_Array_method_pop_front>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_front:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_front**\ (\ ) :ref:`🔗<class_Array_method_pop_front>`

Retire et renvoie le premier élément du tableau. Renvoie ``null`` si le tableau est vide, sans générer d'erreur. Voir aussi :ref:`pop_back()<class_Array_method_pop_back>`.

\ **Note :** Cette méthode déplace l'index de chaque autre élément en arrière, ce qui peut avoir un coût de performance notable, en particulier sur les tableaux plus grands.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_push_back:

.. rst-class:: classref-method

|void| **push_back**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_push_back>`

Ajout un élément à la fin du tableau. Voir aussi :ref:`push_front()<class_Array_method_push_front>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_push_front:

.. rst-class:: classref-method

|void| **push_front**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_push_front>`

Ajoute un élément au début du tableau. Voir aussi :ref:`push_back()<class_Array_method_push_back>`.

\ **Note :** Cette méthode déplace l'index de chaque autre élément vers l'avant, ce qui peut avoir un coût de performance notable, en particulier sur les tableaux plus grands.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_reduce:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **reduce**\ (\ method\: :ref:`Callable<class_Callable>`, accum\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Array_method_reduce>`

Appelle l'appelable :ref:`Callable<class_Callable>` pour chaque élément du tableau, accumule le résultat dans l'accumulateur ``accum``, puis le renvoie.

La méthode ``method`` prend deux arguments : la valeur actuelle de ``accum`` et l'élément du tableau actuel. Si ``accum`` est ``null`` (comme par défaut), l'itération va commencer au second élément, avec le premier élément utilisé comme valeur initiale de ``accum``.

::

    func somme(accum, nombre):
        return accum + nombre

    func _ready():
        print([1, 2, 3].reduce(somme, 0))  # Affiche 6
        print([1, 2, 3].reduce(somme, 10)) # Affiche 16

        # Comme au dessus, mais avec une fonction lambda.
        print([1, 2, 3].reduce(func(accum, nombre): return accum + nombre, 10))

Si :ref:`max()<class_Array_method_max>` n'est pas désirable, cette méthode peut aussi être utilisé pour implémenter un comparateur personnalisé :

::

    func _ready():
        var arr = [Vector2i(5, 0), Vector2i(3, 4), Vector2i(1, 2)]

        var vecteur_le_plus_long = arr.reduce(func(max, vec): return vec if est_plus_long(vec, max) else max)
        print(vecteur_le_plus_long) # Affiche (3, 4)

    func est_plus_long(a, b):
        return a.length() > b.length()

Cette méthode peut aussi être utilisée pour compter combien d'éléments dans un tableau satisfont une condition donné, comme avec :ref:`count()<class_Array_method_count>`\  :

::

    func est_pair(nombre):
        return nombre % 2 == 0

    func _ready():
        var arr = [1, 2, 3, 4, 5]
        # Si l'élément actuel est pair, incrémente le compte, sinon laisse le compte inchangé.
        var compte_pair = arr.reduce(func(compte, prochain): return compte + 1 if est_pair(prochain) else compte, 0)
        print(compte_pair ) # Affiche 2

Voir aussi :ref:`map()<class_Array_method_map>`, :ref:`filter()<class_Array_method_filter>`, :ref:`any()<class_Array_method_any>`, et :ref:`all()<class_Array_method_all>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_remove_at>`

Retire l'élément du tableau à l'index donné (``position``). Si l'index est hors des limites, cette méthode échoue. Si l'index est négatif, ``position`` est considéré comme relatif par rapport à la fin du tableau.

Si vous devez renvoyer l'élément enlevé, utilisez :ref:`pop_at()<class_Array_method_pop_at>`. Pour supprimer un élément par valeur, utilisez plutôt :ref:`erase()<class_Array_method_erase>`.

\ **Note :** Cette méthode déplace l'index de chaque élément après ``position`` en arrière, ce qui peut avoir un coût en performance notable, en particulier sur les grands tableaux.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_resize>`

Définit le nombre d'éléments du tableau à la taille ``size``. Si ``size`` est plus petite que la taille actuelle du tableau, les éléments à la fin sont enlevés. Si ``size`` est plus grande, de nouveaux éléments par défaut (généralement ``null``) sont ajoutés, selon le type du tableau.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors du succès, ou l'une des constantes :ref:`Error<enum_@GlobalScope_Error>` suivantes si cette méthode échoue : :ref:`@GlobalScope.ERR_LOCKED<class_@GlobalScope_constant_ERR_LOCKED>` si le tableau est en lecture seule, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si la taille est négative, ou :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` si les allocations échouent. Utilisez :ref:`size()<class_Array_method_size>` pour trouver la taille réelle du tableau après le redimensionnement.

\ **Note :** Appeler cette méthode une fois et attribuer les nouvelles valeurs est plus rapide que d'appeler :ref:`append()<class_Array_method_append>` pour chaque nouvel élément.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_Array_method_reverse>`

Inverse l'ordre des éléments du tableau.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Array_method_rfind>`

Renvoie l'index de la **dernière** occurrence de l'objet\ ``what`` dans ce tableau, ou ``-1`` s'il n'y en a pas. Le début de la recherche peut être spécifié avec ``from``, continuant vers le début du tableau. Cette méthode est l'inverse de :ref:`find()<class_Array_method_find>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_rfind_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind_custom**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Array_method_rfind_custom>`

Renvoie l'index du **dernier** élément du tableau qui provoque ``method`` de renvoyer ``true``, ou ``-1`` s'il n'y en a pas. Le début de la recherche peut être spécifié avec ``from``, continuant vers le début du tableau. Cette méthode est l'inverse de :ref:`find_custom()<class_Array_method_find_custom>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_set>`

Définit la valeur de l'élément à la position ``index`` donné à la valeur ``value`` donnée. Cela ne changera pas la taille du tableau, ça ne change que la valeur à un index déjà dans le tableau. Cela revient à utiliser l'opérateur ``[]`` (``array[index] = value ``).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_shuffle:

.. rst-class:: classref-method

|void| **shuffle**\ (\ ) :ref:`🔗<class_Array_method_shuffle>`

Mélange tous les éléments du tableau dans un ordre aléatoire.

\ **Note :** Comme beaucoup de fonctions similaires dans le moteur (comme :ref:`@GlobalScope.randi()<class_@GlobalScope_method_randi>` ou :ref:`pick_random()<class_Array_method_pick_random>`), cette méthode utilise une graine aléatoire commune et globale. Pour obtenir un résultat prévisible de cette méthode, voir :ref:`@GlobalScope.seed()<class_@GlobalScope_method_seed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Array_method_size>`

Renvoie le nombre d'éléments dans le tableau. Les tableaux vides (``[]``) renvoient toujours ``0``. Voir aussi :ref:`is_empty()<class_Array_method_is_empty>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_slice:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647, step\: :ref:`int<class_int>` = 1, deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Array_method_slice>`

Renvoie un nouveau tableau **Array** contenant les éléments de ce tableau, de l'index ``begin`` (inclusif) à ``end`` (exclusif), tous les ``step`` éléments.

Si ``begin`` ou ``end`` sont négatifs, leur valeur est relative par rapport à la fin du tableau.

Si ``step`` est négatif, cette méthode itère à travers le tableau en marche arrière, renvoyant une tranche triée en inverse. Pour que cela fonctionne, ``begin`` doit être supérieur à ``end``.

Si ``deep`` vaut ``true``, tous les éléments **Array** et :ref:`Dictionary<class_Dictionary>` imbriqués de la tranche sont dupliqués de l'original, récursivement. Voir aussi :ref:`duplicate()<class_Array_method_duplicate>`.

::

    var lettres = ["A", "B", "C", "D", "E", "F"]

    print(letters.slice(0, 2) # Affiche ["A", "B"]
    print(letters.slice(2, -2)) # Affiche ["C", "D"]
    print(letters.slice(-2, 6)) # Affiche ["E", "F"]

    print(letters.slice(0, 6, 2)   # Affiche ["A", "C", "E"]
    print(letters.slice(4, 1, -1)) # Affiche ["E", "D", "C"]

.. rst-class:: classref-item-separator

----

.. _class_Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Array_method_sort>`

Trie le tableau dans l'ordre ascendant. L'ordre final dépend de la comparaison "inférieur à" (``<``) entre les éléments.


.. tabs::

 .. code-tab:: gdscript

    var nombres = [10, 5, 2.5, 8]
    nombres .sort()
    # Affiche [2.5, 5, 8, 10]

 .. code-tab:: csharp

    Godot.Collections.Array nombres = [10, 5, 2.5, 8];
    nombres.Sort();
    GD.Print(nombres); // Affiche [2.5, 5, 8, 10]



\ **Note :** L'algorithme de tri utilisé n'est pas `stable <https://fr.wikipedia.org/wiki/Algorithme_de_tri#Tri_stable>`__. Cela signifie que les éléments équivalents (tels que ``2`` et ``2.0``) peuvent avoir leur ordre modifié lors de l'appel de :ref:`sort()<class_Array_method_sort>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_sort_custom:

.. rst-class:: classref-method

|void| **sort_custom**\ (\ func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Array_method_sort_custom>`

Trie le tableau en utilisant un appelable :ref:`Callable<class_Callable>` personnalisé.

\ ``func`` est appelé autant de fois que nécessaire, recevant deux éléments de tableau comme arguments. La fonction devrait renvoyer ``true`` si le premier élément doit être déplacé *avant* le deuxième, sinon elle devrait renvoyer ``false``.

::

    func tri_ascendant(a, b):
        if a[1] < b[1]:
            return true
        return false

    func _ready():
        var mes_objets = [["Tomate", 5], ["Pomme", 9], ["Riz", 4]]
        mes_objets.sort_custom(tri_ascendant)
        print(mes_objets) # Affiche [["Riz", 4], ["Tomate", 5], ["Pomme", 9]]

        # Tri descendant, mais avec une fonction lambda.
        mes_objets.sort_custom(func(a, b): return a[1] > b[1])
        print(mes_objets) # Affiche [["Pomme", 9], ["Tomate", 5], ["Riz", 4]]

Il peut être aussi nécessaire d'utiliser cette méthode pour trier des chaînes de caractères dans l'ordre naturel, avec :ref:`String.naturalnocasecmp_to()<class_String_method_naturalnocasecmp_to>`, comme dans l’exemple suivant :

::

    var fichiers = ["nouveauficher1", "nouveauficher2", "nouveauficher10", "nouveauficher11"]
    fichiers.sort_custom(func(a, b): return a.naturalnocasecmp_to(b) < 0)
    print(files) # Affiche ["nouveauficher1", "nouveauficher2", "nouveauficher10", "nouveauficher11"]

\ **Note :** En C#, cette méthode n'est pas supportée.

\ **Note :** L'algorithme de tri utilisé n'est pas `stable <https://fr.wikipedia.org/wiki/Algorithme_de_tri#Tri_stable>`__. Cela signifie que les valeurs considérées comme égales peuvent avoir changé leur ordre en appelant cette méthode.

\ **Note :** Vous ne devriez pas randomiser la valeur de retour de ``func``, car l'algorithme de tri par tas s'attend à un résultat consistant. Randomiser la valeur de retour va résulter en un comportement inattendu.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Array_operator_neq_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_neq_Array>`

Renvoie ``true`` si la taille du tableau ou ses éléments sont différent de ceux du tableau ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_sum_Array:

.. rst-class:: classref-operator

:ref:`Array<class_Array>` **operator +**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_sum_Array>`

Ajoute le tableau ``right`` à l'opérande de gauche, créant un nouvel **Array**. Ceci est également connu comme une concaténation de tableau.


.. tabs::

 .. code-tab:: gdscript

    var tableau1 = ["Un", 2]
    var tableau2 = [3, "Quatre"]
    print(tableau1 + tableau2) # Affiche ["Un", 2, 3, "Quatre"]

 .. code-tab:: csharp

    // Notez que la concaténation n'est pas possible avec le type Array natif de C#.
    Godot.Collections.Array tableau1 = ["Un", 2];
    Godot.Collections.Array tableau2 = [3, "Quatre"];
    GD.Print(tableau1 + tableau2 ); // Affiche ["Un", 2, 3, "Quatre"]



\ **Note:** Pour les tableaux existants, :ref:`append_array()<class_Array_method_append_array>` est beaucoup plus efficace que la concaténation et l'affectation avec l'opérateur ``+=``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_lt_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_lt_Array>`

Compare les éléments des deux tableaux dans l'ordre, à partir de l'index ``0`` et se terminant sur le dernier index en commun entre les deux tableaux. Pour chaque paire d'éléments, renvoie ``true`` si l'élément de ce tableau est inférieur à celui de ``right``, ``false`` si cet élément est supérieur. Sinon, continue avec la paire suivante.

Si tous les éléments cherchés sont égaux, renvoie ``true`` si la taille de ce tableau est inférieure à celle de ``right``, sinon renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_lte_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_lte_Array>`

Compare les éléments des deux tableaux dans l'ordre, à partir de l'index ``0`` et se terminant sur le dernier index en commun entre les deux tableaux. Pour chaque paire d'éléments, renvoie ``true`` si l'élément de ce tableau est inférieur à celui de ``right``, ``false`` si cet élément est supérieur. Sinon, continue avec la paire suivante.

Si tous les éléments cherchés sont égaux, renvoie ``true`` si la taille de ce tableau est inférieure ou égale à celle de ``right``, sinon renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_eq_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_eq_Array>`

Compare l'opérande gauche **Array** contre l'opérande droite **Array** ``right``. Renvoie ``true`` si les dimensions et le contenu des tableaux sont égaux, ``false`` sinon.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_gt_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_gt_Array>`

Compare les éléments des deux tableaux dans l'ordre, à partir de l'index ``0`` et se terminant sur le dernier index en commun entre les deux tableaux. Pour chaque paire d'éléments, renvoie ``true`` si l'élément de ce tableau est supérieur à celui de ``right``, ``false`` si cet élément est inférieur. Sinon, continue avec la paire suivante.

Si tous les éléments cherchés sont égaux, renvoie ``true`` si la taille de ce tableau est inférieure à celle de ``right``, sinon renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_gte_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_gte_Array>`

Compare les éléments des deux tableaux dans l'ordre, à partir de l'index ``0`` et se terminant sur le dernier index en commun entre les deux tableaux. Pour chaque paire d'éléments, renvoie ``true`` si l'élément de ce tableau est supérieur à celui de ``right``, ``false`` si cet élément est inférieur. Sinon, continue avec la paire suivante.

Si tous les éléments cherchés sont égaux, renvoie ``true`` si la taille de ce tableau est supérieure ou égale à celle de ``right``, sinon renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_operator_idx_int>`

Renvoie l'élément :ref:`Variant<class_Variant>` à la position ``index`` spécifiée. Les tableaux commencent à l'index 0. Si ``index`` est supérieur ou égal à ``0``, l'élément est récupéré à partir du début du tableau. Si ``index`` est une valeur négative, l'élément est récupéré à partir de la fin. L'accès à un tableau hors des limites causera une erreur d'exécution, mettant en pose l'exécution du projet s'il est exécuté depuis l'éditeur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
