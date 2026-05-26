:github_url: hide

.. _class_Array:

Array
=====

Una estructura de datos incorporada que contiene una secuencia de elementos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una estructura de datos de tipo arreglo que puede contener una secuencia de elementos de cualquier tipo :ref:`Variant<class_Variant>` de forma predeterminada. Opcionalmente, los valores pueden restringirse a un tipo específico creando un *arreglo tipado*. Se accede a los elementos mediante un índice numérico que comienza en ``0``. Los índices negativos se utilizan para contar desde el final (``-1`` es el último elemento, ``-2`` es el penúltimo, etc.).


.. tabs::

 .. code-tab:: gdscript

    var array = ["Primero", 2, 3, "Ultimo"]
    print(array[0]) # Imprime "Primero"
    print(array[2]) # Imprime 3
    print(array[-1]) # Imprime "Ultimo"

    array[1] = "Segundo"
    print(array[1]) # Imprime "Segundo"
    print(array[-3]) # Imprime "Segundo"

    # Este arreglo tipado solo puede contener enteros.
    # Intentar agregar un valor de otro tipo provocará un error.
    var typed_array: Array[int] = [1, 2, 3]

 .. code-tab:: csharp

    Godot.Collections.Array array = ["Primero", 2, 3, "Ultimo"];
    GD.Print(array[0]); // Imprime "Primero"
    GD.Print(array[2]); // Imprime 3
    GD.Print(array[^1]); // Imprime "Ultimo"

    array[1] = "Segundo";
    GD.Print(array[1]); // Imprime "Segundo"
    GD.Print(array[^3]); // Imprime "Segundo"

    // Este arreglo tipado solo puede contener enteros.
    // Intentar agregar un valor de otro tipo provocará un error.
    Godot.Collections.Array<int> typedArray = [1, 2, 3];



\ **Nota:** Los arreglos siempre se pasan por **referencia**. Para obtener una copia de un arreglo que pueda modificarse independientemente del original, use :ref:`duplicate()<class_Array_method_duplicate>`.

\ **Nota:** **No** está soportado eliminar elementos mientras se itera sobre arreglos, y hacerlo dará como resultado un comportamiento impredecible.

\ **Diferencias entre arreglos empaquetados, tipados y no tipados:** Los arreglos empaquetados suelen ser más rápidos de iterar y modificar que un arreglo tipado del mismo tipo (por ejemplo, :ref:`PackedInt64Array<class_PackedInt64Array>` frente a ``Array[int]``). Además, los arreglos empaquetados consumen menos memoria. Como desventaja, son menos flexibles, ya que no ofrecen tantos métodos de conveniencia como :ref:`map()<class_Array_method_map>`. A su vez, los arreglos tipados son más rápidos de iterar y modificar que los arreglos no tipados.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-reftable-group

Constructores
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

Métodos
--------------

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

Operadores
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

Descripciones de Constructores
------------------------------------------------------------

.. _class_Array_constructor_Array:

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ ) :ref:`🔗<class_Array_constructor_Array>`

Construye un **Array** vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ base\: :ref:`Array<class_Array>`, type\: :ref:`int<class_int>`, class_name\: :ref:`StringName<class_StringName>`, script\: :ref:`Variant<class_Variant>`\ )

Crea un arreglo tipado a partir del arreglo ``base``. Un arreglo tipado solo puede contener elementos del tipo indicado, o que hereden de la clase especificada, según lo descrito por los parámetros de este constructor:

- ``type`` es el tipo incorporado de :ref:`Variant<class_Variant>`, como una de las constantes de :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`.

- ``class_name`` es el nombre de la clase incorporada (ver :ref:`Object.get_class()<class_Object_method_get_class>`).

- ``script`` es el script asociado. Debe ser una instancia de :ref:`Script<class_Script>` o ``null``.

Si ``type`` no es :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`, ``class_name`` debe ser un :ref:`StringName<class_StringName>` vacío y ``script`` debe ser ``null``.

::

    class_name Sword
    extends Node

    class Stats:
        pass

    func _ready():
        var a = Array([], TYPE_INT, "", null)               # Array[int]
        var b = Array([], TYPE_OBJECT, "Node", null)        # Array[Node]
        var c = Array([], TYPE_OBJECT, "Node", Sword)       # Array[Sword]
        var d = Array([], TYPE_OBJECT, "RefCounted", Stats) # Array[Stats]

Los elementos del arreglo ``base`` se convierten cuando es necesario. Si esto no es posible o si ``base`` ya es tipado, este constructor falla y devuelve un **Array** vacío.

En GDScript, este constructor normalmente no es necesario, ya que es posible crear un arreglo tipado mediante tipado estático:

::

    var numbers: Array[float] = []
    var children: Array[Node] = [$Node, $Sprite2D, $RigidBody3D]

    var integers: Array[int] = [0.2, 4.5, -2.0]
    print(integers) # Imprime [0, 4, -2]

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Devuelve la misma matriz que ``from``. Si necesitas una copia de la matriz, utiliza :ref:`duplicate()<class_Array_method_duplicate>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedByteArray<class_PackedByteArray>`\ )

Construye un array a partir de un :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ )

Construye un array a partir de un :ref:`PackedColorArray<class_PackedColorArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )

Construye un array a partir de un :ref:`PackedInt64Array<class_PackedInt64Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )

Construye un array a partir de un :ref:`PackedInt64Array<class_PackedInt64Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )

Construye un array a partir de un :ref:`PackedInt64Array<class_PackedInt64Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )

Construye un array a partir de un :ref:`PackedInt64Array<class_PackedInt64Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )

Construye un array a partir de un :ref:`PackedStringArray<class_PackedStringArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )

Construye un array a partir de un :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )

Construye un array a partir de un :ref:`PackedVector3Array<class_PackedVector3Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )

Construye un array a partir de un :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Array_method_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **all**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_all>`

Llama al :ref:`Callable<class_Callable>` dado para cada elemento del arreglo y devuelve ``true`` si el :ref:`Callable<class_Callable>` devuelve ``true`` para *todos* los elementos del arreglo. Si el :ref:`Callable<class_Callable>` devuelve ``false`` para uno o más elementos, este método devuelve ``false``.

El parámetro ``method`` debe recibir un parámetro :ref:`Variant<class_Variant>` (el elemento actual del arreglo) y devolver un :ref:`bool<class_bool>`.


.. tabs::

 .. code-tab:: gdscript

    func greater_than_5(number):
        return number > 5

    func _ready():
        print([6, 10, 6].all(greater_than_5)) # Imprime true (3/3 elementos evalúan a true).
        print([4, 10, 4].all(greater_than_5)) # Imprime false (1/3 elementos evalúan a true).
        print([4, 4, 4].all(greater_than_5))  # Imprime false (0/3 elementos evalúan a true).
        print([].all(greater_than_5))         # Imprime true (0/0 elementos evalúan a true).

        # Igual que la primera línea de arriba, pero usando una función lambda.
        print([6, 10, 6].all(func(element): return element > 5)) # Imprime true

 .. code-tab:: csharp

    private static bool GreaterThan5(int number)
    {
        return number > 5;
    }

    public override void _Ready()
    {
        // Imprime True (3/3 elementos evalúan a true).
        GD.Print(new Godot.Collections.Array<int> { 6, 10, 6 }.All(GreaterThan5));
        // Imprime False (1/3 elementos evalúan a true).
        GD.Print(new Godot.Collections.Array<int> { 4, 10, 4 }.All(GreaterThan5));
        // Imprime False (0/3 elementos evalúan a true).
        GD.Print(new Godot.Collections.Array<int> { 4, 4, 4 }.All(GreaterThan5));
        // Imprime True (0/0 elementos evalúan a true).
        GD.Print(new Godot.Collections.Array<int> { }.All(GreaterThan5));

        // Igual que la primera línea de arriba, pero usando una función lambda.
        GD.Print(new Godot.Collections.Array<int> { 6, 10, 6 }.All(element => element > 5)); // Imprime True
    }



Véase también :ref:`any()<class_Array_method_any>`, :ref:`filter()<class_Array_method_filter>`, :ref:`map()<class_Array_method_map>` y :ref:`reduce()<class_Array_method_reduce>`.

\ **Nota:** A diferencia de depender del tamaño de un arreglo devuelto por :ref:`filter()<class_Array_method_filter>`, este método devuelve el resultado lo antes posible para mejorar el rendimiento (especialmente con arreglos grandes).

\ **Nota:** Para un arreglo vacío, este método `siempre <https://es.wikipedia.org/wiki/Vacuous_truth>`__ devuelve ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_any:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **any**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_any>`

Llama al :ref:`Callable<class_Callable>` dado para cada elemento del arreglo y devuelve ``true`` si el :ref:`Callable<class_Callable>` devuelve ``true`` para *uno o más* elementos del arreglo. Si el :ref:`Callable<class_Callable>` devuelve ``false`` para todos los elementos, este método devuelve ``false``.

El parámetro ``method`` debe recibir un parámetro :ref:`Variant<class_Variant>` (el elemento actual del arreglo) y devolver un :ref:`bool<class_bool>`.

::

    func greater_than_5(number):
        return number > 5

    func _ready():
        print([6, 10, 6].any(greater_than_5)) # Imprime true (3 elementos evalúan a true).
        print([4, 10, 4].any(greater_than_5)) # Imprime true (1 elemento evalúa a true).
        print([4, 4, 4].any(greater_than_5))  # Imprime false (0 elementos evalúan a true).
        print([].any(greater_than_5))         # Imprime false (0 elementos evalúan a true).

        # Igual que la primera línea de arriba, pero usando una función lambda.
        print([6, 10, 6].any(func(number): return number > 5)) # Imprime true

Véase también :ref:`all()<class_Array_method_all>`, :ref:`filter()<class_Array_method_filter>`, :ref:`map()<class_Array_method_map>` y :ref:`reduce()<class_Array_method_reduce>`.

\ **Nota:** A diferencia de depender del tamaño de un arreglo devuelto por :ref:`filter()<class_Array_method_filter>`, este método devuelve el resultado lo antes posible para mejorar el rendimiento (especialmente con arreglos grandes).

\ **Nota:** Para un arreglo vacío, este método siempre devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_append:

.. rst-class:: classref-method

|void| **append**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_append>`

Concatena ``value`` al final del array (alias de :ref:`push_back()<class_Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_method_append_array>`

Añade otro ``array`` al final de este array.

::

    var numbers = [1, 2, 3]
    var extra = [4, 5, 6]
    numbers.append_array(extra)
    print(numbers) # Imprime [1, 2, 3, 4, 5, 6].

.. rst-class:: classref-item-separator

----

.. _class_Array_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_method_assign>`

Asigna los elementos de otro ``array`` en el array. Cambia el tamaño del array para que coincida con ``array``. Realiza conversiones de tipo si el array está tipado.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_back:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **back**\ (\ ) |const| :ref:`🔗<class_Array_method_back>`

Devuelve el último elemento del array. Si el array está vacío, falla y devuelve ``null``. Véase también :ref:`front()<class_Array_method_front>`.

\ **Nota:** A diferencia del ``[]`` operador (``array[-1]``), se genera un error sin detener la ejecución del proyecto.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Variant<class_Variant>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Array_method_bsearch>`

Devuelve el índice de ``value`` en el arreglo ordenado. Si no se encuentra, devuelve la posición en la que se debería insertar ``value`` para mantener el arreglo ordenado. El algoritmo utilizado es la `búsqueda binaria <https://es.wikipedia.org/wiki/B%C3%Basqueda_binaria>`__.

Si el parámetro ``before`` es ``true`` (como por defecto), el índice devuelto estará antes de todos los elementos existentes iguales a ``value`` en el arreglo.

::

    var numbers = [2, 4, 8, 10]
    var idx = numbers.bsearch(7)

    numbers.insert(idx, 7)
    print(numbers) # Imprime [2, 4, 7, 8, 10]

    var fruits = ["Limón", "Manzana", "Manzana", "Naranja"]
    print(fruits.bsearch("Manzana", true)) # Imprime 1, apunta al primer "Manzana".
    print(fruits.bsearch("Manzana", false)) # Imprime 3, apunta a "Naranja".

\ **Nota:** Llamar a :ref:`bsearch()<class_Array_method_bsearch>` sobre un arreglo *no ordenado* dará lugar a un comportamiento inesperado. Utilice :ref:`sort()<class_Array_method_sort>` antes de llamar a este método.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_bsearch_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch_custom**\ (\ value\: :ref:`Variant<class_Variant>`, func\: :ref:`Callable<class_Callable>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Array_method_bsearch_custom>`

Devuelve el índice de ``value`` en el arreglo ordenado. Si no se encuentra, devuelve la posición en la que se debería insertar ``value`` para mantener el arreglo ordenado (utilizando ``func`` para las comparaciones). El algoritmo utilizado es la `búsqueda binaria <https://es.wikipedia.org/wiki/B%C3%Basqueda_binaria>`__.

De manera similar a :ref:`sort_custom()<class_Array_method_sort_custom>`, ``func`` se llama tantas veces como sea necesario, recibiendo un elemento del arreglo y ``value`` como argumentos. La función debe devolver ``true`` si el elemento del arreglo debe colocarse *detrás* de ``value``, de lo contrario debe devolver ``false``.

Si ``before`` es ``true`` (como por defecto), el índice devuelto estará antes de todos los elementos existentes iguales a ``value`` en el arreglo.

::

    func sort_by_amount(a, b):
        if a[1] < b[1]:
            return true
        return false

    func _ready():
        var my_items = [["Tomato", 2], ["Kiwi", 5], ["Rice", 9]]

        var apple = ["Apple", 5]
        # "Apple" se inserta antes de "Kiwi".
        my_items.insert(my_items.bsearch_custom(apple, sort_by_amount, true), apple)

        var banana = ["Banana", 5]
        # "Banana" se inserta después de "Kiwi".
        my_items.insert(my_items.bsearch_custom(banana, sort_by_amount, false), banana)

        # Imprime [["Tomato", 2], ["Apple", 5], ["Kiwi", 5], ["Banana", 5], ["Rice", 9]]
        print(my_items)

\ **Nota:** Llamar a :ref:`bsearch_custom()<class_Array_method_bsearch_custom>` sobre un arreglo *no ordenado* dará lugar a un comportamiento inesperado. Use :ref:`sort_custom()<class_Array_method_sort_custom>` con ``func`` antes de llamar a este método.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Array_method_clear>`

Elimina todos los elementos del array. Esto es equivalente a usar :ref:`resize()<class_Array_method_resize>` con un tamaño de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Array_method_count>`

Devuelve el número de veces que un elemento está en el array.

Para contar cuántos elementos de un array satisfacen una condición, véase :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_duplicate:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Array_method_duplicate>`

Devuelve una copia nueva del array.

Por defecto, una copia **superficial**: todos los elementos anidados **Array**, :ref:`Dictionary<class_Dictionary>`, y :ref:`Resource<class_Resource>` son compartidos con el array original. Modificar cualquiera de estos en un array también los afectará en el otro.

Si ``deep`` es ``true``, se devuelve una copia **profunda**: Todos los arrays y dictionaries son también duplicados (recursivamente). Sin embargo, Cualquier :ref:`Resource<class_Resource>` es todavía compartido con el array original.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Array_method_duplicate_deep>`

Duplica este array profundamente, como :ref:`duplicate()<class_Array_method_duplicate>` al pasar ``true``, con control adicional sobre cómo se manejan los subrecursos.

\ ``deep_subresources_mode`` debe ser uno de los valores de :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. Por defecto, solo se duplicarán los recursos internos (recursivamente).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_erase:

.. rst-class:: classref-method

|void| **erase**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_erase>`

Encuentra y elimina la primera aparición de ``value`` del array. Si ``value`` no existe en el array, no ocurre nada. Para eliminar un elemento por índice, usa :ref:`remove_at()<class_Array_method_remove_at>` en su lugar.

\ **Nota:** Este método desplaza hacia atrás el índice de cada elemento después del ``value`` eliminado, lo que puede tener un coste de rendimiento notable, especialmente en arrays grandes.

\ **Nota:** Eliminar elementos mientras se itera sobre arrays **no** está soportado y resultará en un comportamiento impredecible.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_fill>`

Asigna el ``value`` dado a todos los elementos del arreglo.

Este método se puede combinar a menudo con :ref:`resize()<class_Array_method_resize>` para crear un arreglo de un tamaño determinado y con elementos inicializados:


.. tabs::

 .. code-tab:: gdscript

    var array = []
    array.resize(5)
    array.fill(2)
    print(array) # Imprime [2, 2, 2, 2, 2]

 .. code-tab:: csharp

    Godot.Collections.Array array = [];
    array.Resize(5);
    array.Fill(2);
    GD.Print(array); // Imprime [2, 2, 2, 2, 2]



\ **Nota:** Si ``value`` es un :ref:`Variant<class_Variant>` pasado por referencia (derivado de :ref:`Object<class_Object>`, **Array**, :ref:`Dictionary<class_Dictionary>`, etc.), el arreglo se llenará con referencias al mismo ``value``, las cuales no son duplicados.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_filter:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **filter**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_filter>`

Llama al :ref:`Callable<class_Callable>` dado para cada elemento del arreglo y devuelve un nuevo **Array** filtrado.

El parámetro ``method`` recibe como argumento uno de los elementos del arreglo y debe devolver ``true`` para agregar el elemento al arreglo filtrado, o ``false`` para excluirlo.

::

    func is_even(number):
        return number % 2 == 0

    func _ready():
        print([1, 4, 5, 8].filter(is_even)) # Imprime [4, 8]

        # Igual que arriba, pero usando una función lambda.
        print([1, 4, 5, 8].filter(func(number): return number % 2 == 0))

Véase también :ref:`any()<class_Array_method_any>`, :ref:`all()<class_Array_method_all>`, :ref:`map()<class_Array_method_map>` y :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Array_method_find>`

Devuelve el índice de la **primera** aparición de ``what`` en este arreglo, o ``-1`` si no existe ninguna. El inicio de la búsqueda puede especificarse con ``from``, continuando hasta el final del arreglo.

\ **Nota:** Si solo desea comprobar si el arreglo contiene ``what``, utilice :ref:`has()<class_Array_method_has>` (``Contains`` en C#). En GDScript, también puede usar el operador ``in``.

\ **Nota:** Por razones de rendimiento, la búsqueda está influenciada por el :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` de ``what``. Por ejemplo, ``7`` (:ref:`int<class_int>`) y ``7.0`` (:ref:`float<class_float>`) no se consideran iguales para este método.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_find_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_custom**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Array_method_find_custom>`

Devuelve el índice del **primer** elemento del arreglo que hace que ``method`` devuelva ``true``, o ``-1`` si no existe ninguno. El inicio de la búsqueda puede especificarse con ``from``, continuando hasta el final del arreglo.

\ ``method`` es un callable que recibe un elemento del arreglo y devuelve un :ref:`bool<class_bool>`.

\ **Nota:** Si solo desea comprobar si el arreglo contiene *algún* elemento que satisfaga ``method``, utilice :ref:`any()<class_Array_method_any>`.


.. tabs::

 .. code-tab:: gdscript

    func is_even(number):
        return number % 2 == 0

    func _ready():
        print([1, 3, 4, 7].find_custom(is_even.bind())) # Imprime 2



.. rst-class:: classref-item-separator

----

.. _class_Array_method_front:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **front**\ (\ ) |const| :ref:`🔗<class_Array_method_front>`

Devuelve el primer elemento del Arreglo. Imprime un error y retorna ``null`` si el array está vacío. Véase también :ref:`back()<class_Array_method_back>`.

\ **Note:** Llamar esta función ``[]`` no es lo mismo que poner ``array[0]``. Si el array está vacío, acceder por el índice detendrá el la ejecución del proyecto si se ejecuta desde el Editor.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Array_method_get>`

Devuelve el elemento en el ``index`` dado en el array. Si ``index`` está fuera de los límites o es negativo, este método falla y devuelve ``null``.

Este método es similar (pero no idéntico) al operador ``[]``. Lo más notable es que, cuando este método falla, no pausa la ejecución del proyecto si se ejecuta desde el editor.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_builtin**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_builtin>`

Devuelve el tipo :ref:`Variant<class_Variant>` incorporado del array tipado como una constante :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Si el array no está tipado, devuelve :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Véase también :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_class_name**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_class_name>`

Devuelve el nombre de la clase **incorporada** del array tipado, si el tipo :ref:`Variant<class_Variant>` incorporado es :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. De lo contrario, devuelve un :ref:`StringName<class_StringName>` vacío. Véase también :ref:`is_typed()<class_Array_method_is_typed>` y :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_script**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_script>`

Devuelve la instancia de :ref:`Script<class_Script>` asociada con este array tipado, o ``null`` si no existe. Véase también :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Array_method_has>`

Devuelve ``true`` si el array contiene el ``value`` dado.


.. tabs::

 .. code-tab:: gdscript

    print(["inside", 7].has("inside"))  # Imprime true
    print(["inside", 7].has("outside")) # Imprime false
    print(["inside", 7].has(7))         # Imprime true
    print(["inside", 7].has("7"))       # Imprime false

 .. code-tab:: csharp

    Godot.Collections.Array arr = ["inside", 7];
    // Por convención de C#, este método se renombra a `Contains`.
    GD.Print(arr.Contains("inside"));  // Imprime True
    GD.Print(arr.Contains("outside")); // Imprime False
    GD.Print(arr.Contains(7));         // Imprime True
    GD.Print(arr.Contains("7"));       // Imprime False



En GDScript, esto es equivalente al operador ``in``:

::

    if 4 in [2, 4, 6, 8]:
        print("¡4 está aquí!") # Se imprimirá.

\ **Nota:** Por razones de rendimiento, la búsqueda se ve afectada por el :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>` del ``value``. Por ejemplo, ``7`` (:ref:`int<class_int>`) y ``7.0`` (:ref:`float<class_float>`) no se consideran iguales para este método.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Array_method_hash>`

Devuelve un valor entero hash de 32 bits que representa el array y su contenido.

\ **Nota:** *No* se garantiza que los arrays con valores hash iguales sean idénticos, como resultado de las colisiones hash. Por el contrario, se garantiza que los arrays con valores hash diferentes sean distintos.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ position\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_insert>`

Inserta un nuevo elemento (``value``) en un índice dado (``position``) en el array. ``position`` debe estar entre ``0`` y el :ref:`size()<class_Array_method_size>` del array. Si es negativo, ``position`` se considera relativo al final del array.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o una de las otras constantes :ref:`Error<enum_@GlobalScope_Error>` si este método falla.

\ **Nota:** El índice de cada elemento después de ``position`` necesita ser desplazado hacia adelante, lo que puede tener un costo de rendimiento notable, especialmente en arrays más grandes.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Array_method_is_empty>`

Devuelve ``true`` si el array está vacío (``[]``). Véase también :ref:`size()<class_Array_method_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Array_method_is_read_only>`

Devuelve ``true`` si el array es de solo lectura. Véase :ref:`make_read_only()<class_Array_method_make_read_only>`.

En GDScript, los arrays son automáticamente de solo lectura si se declaran con la palabra clave ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ array\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Array_method_is_same_typed>`

Devuelve ``true`` si este array tiene el mismo tipo que el ``array`` dado. Véase también :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Array_method_is_typed>`

Devuelve ``true`` si el array está tipado. Los arrays tipados solo pueden contener elementos de un tipo específico, tal como lo define el constructor de array tipado. Se espera que los métodos de un array tipado devuelvan un :ref:`Variant<class_Variant>` genérico.

En GDScript, es posible definir un array tipado con tipado estático:

::

    var numbers: Array[float] = [0.2, 4.2, -2.0]
    print(numbers.is_typed()) # Imprime true

.. rst-class:: classref-item-separator

----

.. _class_Array_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Array_method_make_read_only>`

Hace que el array sea de solo lectura. Los elementos del array no pueden ser sobrescritos con diferentes valores, y su orden no puede cambiar. No se aplica a los elementos anidados, como los diccionarios.

En GDScript, los arrays son automáticamente de solo lectura si se declaran con la palabra clave ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_map:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **map**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_map>`

Llama al :ref:`Callable<class_Callable>` dado para cada elemento del arreglo y devuelve un nuevo arreglo con los valores devueltos por ``method``.

El ``method`` debe recibir un parámetro :ref:`Variant<class_Variant>` (el elemento actual del arreglo) y puede devolver cualquier :ref:`Variant<class_Variant>`.

::

    func double(number):
        return number * 2

    func _ready():
        print([1, 2, 3].map(double)) # Imprime [2, 4, 6]

        # Igual que arriba, pero usando una función lambda.
        print([1, 2, 3].map(func(element): return element * 2))

Véase también :ref:`filter()<class_Array_method_filter>`, :ref:`reduce()<class_Array_method_reduce>`, :ref:`any()<class_Array_method_any>` y :ref:`all()<class_Array_method_all>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_max:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **max**\ (\ ) |const| :ref:`🔗<class_Array_method_max>`

Devuelve el valor máximo contenido en el array, si todos los elementos se pueden comparar. De lo contrario, devuelve ``null``. Véase también :ref:`min()<class_Array_method_min>`.

Para encontrar el valor máximo utilizando un comparador personalizado, puedes usar :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_min:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **min**\ (\ ) |const| :ref:`🔗<class_Array_method_min>`

Devuelve el valor mínimo contenido en el array, si todos los elementos se pueden comparar. De lo contrario, devuelve ``null``. Véase también :ref:`max()<class_Array_method_max>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pick_random:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pick_random**\ (\ ) |const| :ref:`🔗<class_Array_method_pick_random>`

Devuelve un elemento aleatorio del arreglo. Genera un error y devuelve ``null`` si el arreglo está vacío.


.. tabs::

 .. code-tab:: gdscript

    # Puede imprimir 1, 2, 3.25 o "Hi".
    print([1, 2, 3.25, "Hi"].pick_random())

 .. code-tab:: csharp

    Godot.Collections.Array array = [1, 2, 3.25f, "Hi"];
    GD.Print(array.PickRandom()); // Puede imprimir 1, 2, 3.25 o "Hi".



\ **Nota:** Al igual que muchas funciones similares en el motor (como :ref:`@GlobalScope.randi()<class_@GlobalScope_method_randi>` o :ref:`shuffle()<class_Array_method_shuffle>`), este método utiliza una semilla aleatoria global común. Para obtener un resultado predecible con este método, véase :ref:`@GlobalScope.seed()<class_@GlobalScope_method_seed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_at:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_at**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_pop_at>`

Elimina y devuelve el elemento del array en el índice ``position``. Si es negativo, ``position`` se considera relativo al final del array. Devuelve ``null`` si el array está vacío. Si ``position`` está fuera de los límites, también se genera un mensaje de error.

\ **Nota:** Este método desplaza hacia atrás el índice de cada elemento después de ``position``, lo que puede tener un costo de rendimiento notable, especialmente en arrays grandes.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_back:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_back**\ (\ ) :ref:`🔗<class_Array_method_pop_back>`

Elimina y devuelve el ultimo elemento del array. Devuelve ``null`` si el array esta vacío, sin generar un error. Véase también :ref:`pop_front()<class_Array_method_pop_front>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_front:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_front**\ (\ ) :ref:`🔗<class_Array_method_pop_front>`

Elimina y devuelve el primer elemento del array. Devuelve ``null`` si el array está vacío, sin mostrar un mensaje de error. Véase también :ref:`pop_back()<class_Array_method_pop_back>`.

\ **Note:** En arrays largos, este método es mucho más lento que :ref:`pop_back()<class_Array_method_pop_back>` debido a que tiene que re-indexar todos los elementos del array cada vez que es llamado. Mientras más largo el array, más lento será :ref:`pop_front()<class_Array_method_pop_front>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_push_back:

.. rst-class:: classref-method

|void| **push_back**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_push_back>`

Agrega un elemento al final del array (alias de :ref:`push_back()<class_Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_push_front:

.. rst-class:: classref-method

|void| **push_front**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_push_front>`

Adds an element at the beginning of the array. See also :ref:`push_back()<class_Array_method_push_back>`.

\ **Note:** This method shifts every other element's index forward, which may have a noticeable performance cost, especially on larger arrays.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_reduce:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **reduce**\ (\ method\: :ref:`Callable<class_Callable>`, accum\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Array_method_reduce>`

Llama al :ref:`Callable<class_Callable>` dado para cada elemento del arreglo, acumula el resultado en ``accum`` y luego lo devuelve.

El ``method`` recibe dos argumentos: el valor actual de ``accum`` y el elemento actual del arreglo. Si ``accum`` es ``null`` (como por defecto), la iteración comenzará desde el segundo elemento, utilizando el primero como valor inicial de ``accum``.

::

    func sum(accum, number):
        return accum + number

    func _ready():
        print([1, 2, 3].reduce(sum, 0))  # Imprime 6
        print([1, 2, 3].reduce(sum, 10)) # Imprime 16

        # Igual que arriba, pero usando una función lambda.
        print([1, 2, 3].reduce(func(accum, number): return accum + number, 10))

Si :ref:`max()<class_Array_method_max>` no es adecuado, este método también puede utilizarse para implementar un comparador personalizado:

::

    func _ready():
        var arr = [Vector2i(5, 0), Vector2i(3, 4), Vector2i(1, 2)]

        var longest_vec = arr.reduce(func(max, vec): return vec if is_length_greater(vec, max) else max)
        print(longest_vec) # Imprime (3, 4)

    func is_length_greater(a, b):
        return a.length() > b.length()

Este método también puede utilizarse para contar cuántos elementos de un arreglo cumplen cierta condición, de forma similar a :ref:`count()<class_Array_method_count>`:

::

    func is_even(number):
        return number % 2 == 0

    func _ready():
        var arr = [1, 2, 3, 4, 5]
        # Si el elemento actual es par, incrementa el contador; de lo contrario, lo deja igual.
        var even_count = arr.reduce(func(count, next): return count + 1 if is_even(next) else count, 0)
        print(even_count) # Imprime 2

Véase también :ref:`map()<class_Array_method_map>`, :ref:`filter()<class_Array_method_filter>`, :ref:`any()<class_Array_method_any>` y :ref:`all()<class_Array_method_all>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_remove_at>`

Elimina el elemento del array en el índice dado (``position``). Si el índice está fuera de los límites, este método falla. Si el índice es negativo, ``position`` se considera relativo al final del array.

Si necesitas devolver el elemento eliminado, usa :ref:`pop_at()<class_Array_method_pop_at>`. Para eliminar un elemento por valor, usa :ref:`erase()<class_Array_method_erase>` en su lugar.

\ **Nota:** Este método desplaza hacia atrás el índice de cada elemento después de ``position``, lo que puede tener un coste de rendimiento notable, especialmente en arrays grandes.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_resize>`

Establece el número de elementos del array a ``size``. Si ``size`` es menor que el tamaño actual del array, se eliminan los elementos al final. Si ``size`` es mayor, se añaden nuevos elementos predeterminados (usualmente ``null``), dependiendo del tipo del array.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o una de las siguientes constantes :ref:`Error<enum_@GlobalScope_Error>` si este método falla: :ref:`@GlobalScope.ERR_LOCKED<class_@GlobalScope_constant_ERR_LOCKED>` si el array es de solo lectura, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si el tamaño es negativo, o :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` si fallan las asignaciones. Usa :ref:`size()<class_Array_method_size>` para encontrar el tamaño real del array después de redimensionar.

\ **Nota:** Llamar a este método una vez y asignar los nuevos valores es más rápido que llamar a :ref:`append()<class_Array_method_append>` para cada nuevo elemento.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_Array_method_reverse>`

Invierte el orden de todos los elementos del array.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Array_method_rfind>`

Devuelve el índice de la **última** aparición de ``what`` en este arreglo, o ``-1`` si no existe ninguna. El inicio de la búsqueda puede especificarse con ``from``, continuando hacia el comienzo del arreglo. Este método es el inverso de :ref:`find()<class_Array_method_find>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_rfind_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind_custom**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Array_method_rfind_custom>`

Devuelve el índice del **último** elemento que produce que ``method`` devuelva ``true``, o ``-1`` si no existe ninguno. El inicio de la búsqueda puede especificarse con ``from``, continuando hacia el comienzo del arreglo. Este método es el inverso de :ref:`find_custom()<class_Array_method_find_custom>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_set>`

Asigna el ``value`` al elemento en el ``index`` indicado. Esto no cambia el tamaño del arreglo; únicamente modifica el valor en un índice que ya existe. Es equivalente a usar el operador ``[]`` (``array[index] = value``).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_shuffle:

.. rst-class:: classref-method

|void| **shuffle**\ (\ ) :ref:`🔗<class_Array_method_shuffle>`

Reordena todos los elementos del arreglo en un orden aleatorio.

\ **Nota:** Al igual que muchas funciones similares en el motor (como :ref:`@GlobalScope.randi()<class_@GlobalScope_method_randi>` o :ref:`pick_random()<class_Array_method_pick_random>`), este método utiliza una semilla aleatoria global compartida. Para obtener un resultado predecible con este método, véase :ref:`@GlobalScope.seed()<class_@GlobalScope_method_seed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Array_method_size>`

Devuelve el número de elementos en el array. Si el array está vacío (``[]``), devuelve ``0``. Ver también :ref:`is_empty()<class_Array_method_is_empty>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_slice:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647, step\: :ref:`int<class_int>` = 1, deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Array_method_slice>`

Devuelve un nuevo **Array** que contiene los elementos de este arreglo, desde el índice ``begin`` (inclusive) hasta ``end`` (exclusivo), saltando tanto elementos como se indique en ``step``.

Si ``begin`` o ``end`` son negativos, su valor se interpreta relativo al final del arreglo.

Si ``step`` es negativo, este método recorre el arreglo en orden inverso, devolviendo una porción en orden descendente. Para que esto funcione, ``begin`` debe ser mayor que ``end``.

Si ``deep`` es ``true``, todos los elementos anidados de tipo **Array** y :ref:`Dictionary<class_Dictionary>` en la porción se duplican recursivamente a partir del original. Véase también :ref:`duplicate()<class_Array_method_duplicate>`.

::

    var letters = ["A", "B", "C", "D", "E", "F"]

    print(letters.slice(0, 2))  # Imprime ["A", "B"]
    print(letters.slice(2, -2)) # Imprime ["C", "D"]
    print(letters.slice(-2, 6)) # Imprime ["E", "F"]

    print(letters.slice(0, 6, 2))  # Imprime ["A", "C", "E"]
    print(letters.slice(4, 1, -1)) # Imprime ["E", "D", "C"]

.. rst-class:: classref-item-separator

----

.. _class_Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Array_method_sort>`

Ordena el arreglo en orden ascendente. El orden final depende de la comparación "menor que" (``<``) entre los elementos.


.. tabs::

 .. code-tab:: gdscript

    var numbers = [10, 5, 2.5, 8]
    numbers.sort()
    print(numbers) # Imprime [2.5, 5, 8, 10]

 .. code-tab:: csharp

    Godot.Collections.Array numbers = [10, 5, 2.5, 8];
    numbers.Sort();
    GD.Print(numbers); // Imprime [2.5, 5, 8, 10]



\ **Nota:** El algoritmo de ordenamiento usado no es `estable <https://es.wikipedia.org/wiki/Algoritmo_de_ordenamiento#Estabilidad>`__. Esto significa que elementos equivalentes (como ``2`` y ``2.0``) pueden cambiar de orden al llamar a :ref:`sort()<class_Array_method_sort>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_sort_custom:

.. rst-class:: classref-method

|void| **sort_custom**\ (\ func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Array_method_sort_custom>`

Ordena el arreglo usando un :ref:`Callable<class_Callable>` personalizado.

\ ``func`` se llama tantas veces como sea necesario, recibiendo dos elementos del arreglo como argumentos. La función debe devolver ``true`` si el primer elemento debe colocarse *antes* del segundo, de lo contrario debe devolver ``false``.

::

    func sort_ascending(a, b):
        if a[1] < b[1]:
            return true
        return false

    func _ready():
        var my_items = [["Tomato", 5], ["Apple", 9], ["Rice", 4]]
        my_items.sort_custom(sort_ascending)
        print(my_items) # Imprime [["Rice", 4], ["Tomato", 5], ["Apple", 9]]

        # Orden descendente usando una función lambda.
        my_items.sort_custom(func(a, b): return a[1] > b[1])
        print(my_items) # Imprime [["Apple", 9], ["Tomato", 5], ["Rice", 4]]

También puede ser necesario usar este método para ordenar cadenas por orden natural, con :ref:`String.naturalnocasecmp_to()<class_String_method_naturalnocasecmp_to>`, como en el siguiente ejemplo:

::

    var files = ["newfile1", "newfile2", "newfile10", "newfile11"]
    files.sort_custom(func(a, b): return a.naturalnocasecmp_to(b) < 0)
    print(files) # Imprime ["newfile1", "newfile2", "newfile10", "newfile11"]

\ **Nota:** En C#, este método no está soportado.

\ **Nota:** El algoritmo de ordenamiento usado no es `estable <https://es.wikipedia.org/wiki/Algoritmo_de_ordenamiento#Estabilidad>`__. Esto significa que valores considerados iguales pueden cambiar de orden al usar este método.

\ **Nota:** No se debe aleatorizar el valor devuelto por ``func``, ya que el algoritmo heapsort espera un resultado consistente. Aleatorizarlo puede producir comportamientos inesperados.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Array_operator_neq_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_neq_Array>`

Devuelve ``true`` si el tamaño del arreglo o sus elementos son diferentes a los de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_sum_Array:

.. rst-class:: classref-operator

:ref:`Array<class_Array>` **operator +**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_sum_Array>`

Agrega el arreglo ``right`` al operando izquierdo, creando un nuevo **Array**. Esto también se conoce como concatenación de arreglos.


.. tabs::

 .. code-tab:: gdscript

    var array1 = ["Uno", 2]
    var array2 = [3, "Cuatro"]
    print(array1 + array2) # Imprime ["Uno", 2, 3, "Cuatro"]

 .. code-tab:: csharp

    // Nota: La concatenación no es posible con el tipo nativo Array de C#.
    Godot.Collections.Array array1 = ["Uno", 2];
    Godot.Collections.Array array2 = [3, "Cuatro"];
    GD.Print(array1 + array2); // Imprime ["Uno", 2, 3, "Cuatro"]



\ **Nota:** Para arreglos existentes, :ref:`append_array()<class_Array_method_append_array>` es mucho más eficiente que concatenar y asignar usando el operador ``+=``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_lt_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_lt_Array>`

Compara los elementos de ambos arreglos en orden, comenzando desde el índice ``0`` y hasta el último índice que tengan en común ambos arreglos. Para cada par de elementos, devuelve ``true`` si el elemento de este arreglo es menor que el correspondiente en ``right``, y ``false`` si es mayor. De lo contrario, continúa con el siguiente par.

Si todos los elementos comparados son iguales, devuelve ``true`` si el tamaño de este arreglo es menor que el de ``right``; de lo contrario, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_lte_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_lte_Array>`

Compara los elementos de ambos arrays en orden, empezando desde el índice ``0`` y terminando en el último índice en común entre ambos arrays. Para cada par de elementos, devuelve ``true`` si el elemento de este array es menor que el de ``right``, ``false`` si este elemento es mayor. De lo contrario, continúa con el siguiente par.

Si todos los elementos buscados son iguales, devuelve ``true`` si el tamaño de este array es menor o igual que el de ``right``, de lo contrario devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_eq_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_eq_Array>`

Compara el operando izquierdo **Array** contra el **Array** en ``right`` . Devuelve ``true`` si los tamaños y contenidos de los arrays son iguales, ``false`` en caso contrario.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_gt_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_gt_Array>`

Compara los elementos de ambos arrays en orden, empezando desde el índice ``0`` y terminando en el último índice en común entre ambos arrays. Para cada par de elementos, devuelve ``true`` si el elemento de este array es mayor que el de ``right``, ``false`` si este elemento es menor. De lo contrario, continúa con el siguiente par.

Si todos los elementos buscados son iguales, devuelve ``true`` si el tamaño de este array es mayor que el de ``right``, de lo contrario devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_gte_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_gte_Array>`

Compara los elementos de ambos arrays en orden, empezando desde el índice ``0`` y terminando en el último índice en común entre ambos arrays. Para cada par de elementos, devuelve ``true`` si el elemento de este array es mayor que el de ``right``, ``false`` si este elemento es menor. De lo contrario, continúa con el siguiente par.

Si todos los elementos buscados son iguales, devuelve ``true`` si el tamaño de este array es mayor o igual que el de ``right``, de lo contrario devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_operator_idx_int>`

Devuelve el elemento :ref:`Variant<class_Variant>` en el ``index`` especificado. Los arrays comienzan en el índice 0. Si ``index`` es mayor o igual que ``0``, el elemento se obtiene comenzando desde el principio del array. Si ``index`` es un valor negativo, el elemento se obtiene comenzando desde el final. El acceso a un array fuera de los límites provocará un error en tiempo de ejecución, pausando la ejecución del proyecto si se ejecuta desde el editor.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
