:github_url: hide

.. _class_Array:

Array
=====

Una struttura di dati integrata che contiene una sequenza di elementi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una struttura dati che può contenere una sequenza di elementi di qualsiasi tipo di :ref:`Variant<class_Variant>`. Gli elementi sono accessibili da un indice numerico a partire da ``0``. È possibile facoltativamente imporre i valori a un tipo specifico creando un *array tipizzato*. Gli indici negativi sono utilizzati per contare dalla fine (``-1`` è l'ultimo elemento, ``-2`` è il penultimo, ecc.).


.. tabs::

 .. code-tab:: gdscript

    var array = ["Primo", 2, 3, "Ultimo"]
    print(array[0])  # Stampa "Primo"
    print(array[2])  # Stampa 3
    print(array[-1]) # Stampa "Ultimo"

    array[1] = "Secondo"
    print(array[1])  # Stampa "Secondo"
    print(array[-3]) # Stampa "Secondo"

    # Questo array tipizzato può contenere solo numeri interi.
    # Aggiungere un valore di qualunque altro tipo genererà un errore.
    var typed_array: Array[int] = [1, 2, 3]

 .. code-tab:: csharp

    Godot.Collections.Array array = ["Primo", 2, 3, "Ultimo"];
    GD.Print(array[0]); // Stampa "Primo"
    GD.Print(array[2]); // Stampa 3
    GD.Print(array[^1]);; // Stampa "Ultimo"

    array[2] = "Secondo";
    GD.Print(array[1]); // Stampa "Secondo"
    GD.Print(array[^3]); // Stampa "Secondo"

    // Questo array tipizzato può contenere solo numeri interi.
    // Aggiungere un valore di qualunque altro tipo genererà un errore.
    Godot.Collections.Array<int> typedArray = [1, 2, 3];



\ **Nota:** Gli array sono sempre passati per **riferimento**. Per ottenere una copia di un array che può essere modificato indipendentemente dall'array originale, utilizza :ref:`duplicate()<class_Array_method_duplicate>`.

\ **Nota:** Rimuovere elementi durante un'iterazione su un array **non** è supportato e causerà comportamenti imprevedibili.

\ **Nota:** In un contesto booleano, un array sarà valutato come ``false`` se è vuoto (``[]``). Altrimenti, un array sarà sempre valutato come ``true``.

\ **Differenze tra gli array impacchettati, gli array tipizzati e gli array non tipizzati:** Gli array impacchettati sono generalmente più veloci da iterare e modificare rispetto a un array tipizzato dello stesso tipo (ad esempio :ref:`PackedInt64Array<class_PackedInt64Array>` in confronto a ``Array[int]``). Inoltre, gli array impacchettati consumano meno memoria. Come svantaggio, i array impacchettati sono meno flessibili in quanto non offrono molti metodi di convenienza come :ref:`map()<class_Array_method_map>`. Gli array tipizzati sono anche loro più veloci da iterare e modificare in confronto ad array non tipizzati.

.. note::

	Ci sono differenze sostanziali quando si usa questa API con C#. Vedi :ref:`doc_c_sharp_differences` per maggiori informazioni.

.. rst-class:: classref-reftable-group

Costruttori
----------------------

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

Metodi
------------

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

Operatori
------------------

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

Descrizioni dei costruttori
------------------------------------------------------

.. _class_Array_constructor_Array:

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ ) :ref:`🔗<class_Array_constructor_Array>`

Costruisce un **Array** vuoto.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ base\: :ref:`Array<class_Array>`, type\: :ref:`int<class_int>`, class_name\: :ref:`StringName<class_StringName>`, script\: :ref:`Variant<class_Variant>`\ )

Crea un array tipizzato dall'array ``base``. Un array tipizzato può contenere solo elementi del tipo specificato o che ereditano dalla classe specificata, come descritto dai parametri di questo costruttore:

- ``type`` è il tipo di :ref:`Variant<class_Variant>` integrato, come una delle costanti di :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`.

- ``class_name`` è il nome della classe integrata (vedi :ref:`Object.get_class()<class_Object_method_get_class>`).

- ``script`` è lo script associato. Deve essere un'istanza di :ref:`Script<class_Script>` o ``null``.

Se ``type`` non è :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`, ``class_name`` deve essere uno :ref:`StringName<class_StringName>` vuoto e ``script`` deve essere ``null``.

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

Gli elementi dell'array ``base`` vengono convertiti quando necessario. Se ciò non è possibile o ``base`` è già tipizzato, questo costruttore fallisce e restituisce un **Array** vuoto.

In GDScript, questo costruttore di solito non è necessario, poiché è possibile creare un array tipizzato tramite tipizzazione statica:

::

    var numbers: Array[float] = []
    var children: Array[Node] = [$Node, $Sprite2D, $RigidBody3D]

    var integers: Array[int] = [0.2, 4.5, -2.0]
    print(integers) # Stampa [0, 4, -2]

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Restituisce lo stesso array di ``from``. Se hai bisogno di una copia dell'array, usa :ref:`duplicate()<class_Array_method_duplicate>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedByteArray<class_PackedByteArray>`\ )

Costruisce un array da un :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ )

Costruisce un array da un :ref:`PackedColorArray<class_PackedColorArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )

Costruisce un array da un :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )

Costruisce un array da un :ref:`PackedFloat64Array<class_PackedFloat64Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )

Costruisce un array da un :ref:`PackedInt32Array<class_PackedInt32Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )

Costruisce un array da un :ref:`PackedInt64Array<class_PackedInt64Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )

Costruisce un array da un :ref:`PackedStringArray<class_PackedStringArray>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )

Costruisce un array da un :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )

Costruisce un array da un :ref:`PackedVector3Array<class_PackedVector3Array>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Array<class_Array>` **Array**\ (\ from\: :ref:`PackedVector4Array<class_PackedVector4Array>`\ )

Costruisce un **Array** da un :ref:`PackedVector4Array<class_PackedVector4Array>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Array_method_all:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **all**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_all>`

Chiama il :ref:`Callable<class_Callable>` fornito su ogni elemento nell'array e restituisce ``true`` se il :ref:`Callable<class_Callable>` restituisce ``true`` per *tutti* gli elementi nell'array. Se il :ref:`Callable<class_Callable>` restituisce ``false`` per uno o più elementi nell'array, questo metodo restituisce ``true``.

Il ``method`` dovrebbe accettare un parametro :ref:`Variant<class_Variant>` (l'elemento attuale dell'array) e restituire un :ref:`bool<class_bool>`.


.. tabs::

 .. code-tab:: gdscript

    func greater_than_5(number):
        return number > 5

    func _ready():
        print([6, 10, 6].all(greater_than_5)) # Stampa true (3/3 elementi sono valutati come true).
        print([4, 10, 4].all(greater_than_5)) # Stampa false (1/3 elementi sono valutati come true).
        print([4, 4, 4].all(greater_than_5))  # Stampa false (0/3 elementi sono valutati come true).
        print([].all(greater_than_5))         # Stampa true (0/0 elementi sono valutati come true).

        # Come la prima riga sopra, ma usando una funzione lambda.
        print([6, 10, 6].all(func(element): return element > 5)) # Stampa true

 .. code-tab:: csharp

    private static bool GreaterThan5(int number)
    {
        return number > 5;
    }

    public override void _Ready()
    {
        // Stampa True (3/3 elementi sono valutati come true).
        GD.Print(new Godot.Collections.Array<int> { 6, 10, 6 }.All(GreaterThan5));
        // Stampa False (1/3 elementi sono valutati come true).
        GD.Print(new Godot.Collections.Array<int> { 4, 10, 4 }.All(GreaterThan5));
        // Stampa False (0/3 elementi sono valutati come true).
        GD.Print(new Godot.Collections.Array<int> { 4, 4, 4 }.All(GreaterThan5));
        // Stampa True (0/0 elementi sono valutati come true).
        GD.Print(new Godot.Collections.Array<int> { }.All(GreaterThan5));

        // Come la prima riga sopra, ma usando una funzione lambda.
        GD.Print(new Godot.Collections.Array<int> { 6, 10, 6 }.All(element => element > 5)); // Stampa True
    }



Vedi anche :ref:`all()<class_Array_method_all>`, :ref:`filter()<class_Array_method_filter>`, :ref:`map()<class_Array_method_map>` e :ref:`reduce()<class_Array_method_reduce>`.

\ **Nota:** A differenza di basarsi sulla dimensione di un array restituito da :ref:`filter()<class_Array_method_filter>`, questo metodo restituirà il prima possibile per migliorare le prestazioni (soprattutto con array di grandi dimensioni).

\ **Nota:** Per un array vuoto, questo metodo restituisce `sempre <https://en.wikipedia.org/wiki/Vacuous_truth>`__ ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_any:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **any**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_any>`

Chiama il :ref:`Callable<class_Callable>` fornito su ogni elemento nell'array e restituisce ``true`` se il :ref:`Callable<class_Callable>` restituisce ``true`` per *uno o più* elementi nell'array. Se il :ref:`Callable<class_Callable>` restituisce ``false`` per tutti gli elementi nell'array, questo metodo restituisce ``false``.

Il ``method`` dovrebbe accettare un parametro :ref:`Variant<class_Variant>` (l'elemento attuale dell'array) e restituire un :ref:`bool<class_bool>`.

::

    func greater_than_5(number):
        return number > 5

    func _ready():
        print([6, 10, 6].any(greater_than_5)) # Stampa true (3 elementi sono valutati come true).
        print([4, 10, 4].any(greater_than_5)) # Stampa true (1 elements è valutato come to true).
        print([4, 4, 4].any(greater_than_5))  # Stampa false (0 elementi sono valutati come true).
        print([].any(greater_than_5))         # Stampa false (0 elements sono valutati come true).

        # Come la prima riga sopra, ma usando una funzione lambda.
        print([6, 10, 6].any(func(number): return number > 5)) # Stampa true

Vedi anche :ref:`all()<class_Array_method_all>`, :ref:`filter()<class_Array_method_filter>`, :ref:`map()<class_Array_method_map>` e :ref:`reduce()<class_Array_method_reduce>`.

\ **Nota:** A differenza di basarsi sulla dimensione di un array restituito da :ref:`filter()<class_Array_method_filter>`, questo metodo restituirà il prima possibile per migliorare le prestazioni (soprattutto con array di grandi dimensioni).

\ **Nota:** Per un array vuoto, questo metodo restituisce sempre ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_append:

.. rst-class:: classref-method

|void| **append**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_append>`

Appende ``value`` alla fine dell'array (alias di :ref:`push_back()<class_Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_method_append_array>`

Accoda un altro ``array`` alla fine di questo array.

::

    numeri = [1, 2, 3]
    var aggiuntivi = [4, 5, 6]
    numeri.append_array(aggiuntivi)
    print(numeri) # Stampa [1, 2, 3, 4, 5, 6]

.. rst-class:: classref-item-separator

----

.. _class_Array_method_assign:

.. rst-class:: classref-method

|void| **assign**\ (\ array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_method_assign>`

Assegna elementi di un altro ``array`` in questo array. Ridimensiona l'array per corrispondere a ``array``. Esegue le conversioni di tipo se l'array è tipizzato.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_back:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **back**\ (\ ) |const| :ref:`🔗<class_Array_method_back>`

Restituisce l'ultimo elemento dell'array. Se l'array è vuoto, fallisce e restituisce ``null``. Vedi anche :ref:`front()<class_Array_method_front>`.

\ **Nota:** A differenza dell'operatore ``[]`` (``array[-1]``), viene generato un errore senza interrompere l'esecuzione del progetto.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Variant<class_Variant>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Array_method_bsearch>`

Restituisce l'indice del valore ``value`` nell'array ordinato. Se non può essere trovato, restituisce dove ``value`` dovrebbe essere inserito per mantenere l'array ordinato. L'algoritmo utilizzato è la `ricerca dicotomica <https://it.wikipedia.org/wiki/Ricerca_dicotomica>`__.

Se ``before`` è ``true`` (come per impostazione predefinita), l'indice restituito viene prima di tutti gli elementi esistenti uguali a ``value`` nell'array.

::

    var numeri = [2, 4, 8, 10]
    var indice = numbers.bsearch(7)

    numeri.insert(indice, 7)
    print(numeri) # Stampa [2, 4, 7, 8, 10]

    var frutta = ["Mela", "Limone", "Limone", "Arancia"]
    print(frutta.bsearch("Limone", true))  # Stampa 1, punta al primo "Limone".
    print(frutta.bsearch("Limone", false)) # Stampa 3, punta ad "Arancia".

\ **Nota:** Chiamare :ref:`bsearch()<class_Array_method_bsearch>` su un array *non ordinato* risulterà in comportamento inaspettato. Utilizza :ref:`sort()<class_Array_method_sort>` prima di chiamare questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_bsearch_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch_custom**\ (\ value\: :ref:`Variant<class_Variant>`, func\: :ref:`Callable<class_Callable>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Array_method_bsearch_custom>`

Restituisce l'indice del valore ``value`` nell'array ordinato. Se non può essere trovato, restituisce dove ``value`` dovrebbe essere inserito per mantenere l'array ordinato (utilizzando ``func`` per i confronti). L'algoritmo utilizzato è la `ricerca dicotomica <https://it.wikipedia.org/wiki/Ricerca_dicotomica>`__.

Simile a :ref:`sort_custom()<class_Array_method_sort_custom>`, ``func`` è chiamato quante volte è necessario, ricevendo un elemento dell'array e ``value`` come argomenti. La funzione dovrebbe restituire ``true`` se l'elemento dell'array dovrebbe apparire *dietro* ``value``, altrimenti dovrebbe restituire ``false``.

Se ``before`` è ``true`` (come per impostazione predefinita), l'indice restituito viene prima di tutti gli elementi esistenti uguali a ``value`` nell'array.

::

    func ordina_per_quantità(a, b):
        if a[1] < b[1]:
            return true
        return false

    func _ready():
        var elementi = [["Pomodoro", 2], ["Kiwi", 5], ["Riso", 9]]

        var mela = ["Mela", 5]
        # "Mela" è inserito prima di "Kiwi".
        elementi.insert(elementi.bsearch_custom(mela, ordina_per_quantità, true), mela)

        var banana = ["Banana", 5]
        # "Banana" è inserito dopo di "Kiwi".
        elementi.insert(elementi.bsearch_custom(banana, ordina_per_quantità, false), banana)

        # Stampa [["Pomodoro", 2], ["Mela", 5], ["Kiwi", 5], ["Banana", 5], ["Riso", 9]]
        print(elementi)

\ **Nota:** Chiamare :ref:`bsearch_custom()<class_Array_method_bsearch_custom>` su un array *non ordinato* risulterà in comportamento inaspettato. Utilizza :ref:`sort_custom()<class_Array_method_sort_custom>` con ``func`` prima di chiamare questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_Array_method_clear>`

Rimuove tutti gli elementi dall'array. Questo è equivalente a utilizzare :ref:`resize()<class_Array_method_resize>` con una dimensione di ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Array_method_count>`

Restituisce il numero di volte in cui un elemento è presente nell'array.

Per contare quanti elementi in un array soddisfano una condizione, vedi :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_duplicate:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Array_method_duplicate>`

Restituisce una nuova copia dell'array.

Normalmente, viene restituita una copia **superficiale**: tutti gli elementi annidati di tipo **Array**, :ref:`Dictionary<class_Dictionary>` e :ref:`Resource<class_Resource>` sono condivisi con l'array originale. Modificarli in un array li influenzerà anche nell'altro.

Se ``deep`` è ``true``, viene restituita una copia **profonda**: anche tutti gli array e i dizionari annidati sono duplicati (ricorsivamente). Tuttavia, qualsiasi oggetto :ref:`Resource<class_Resource>` rimane condiviso con l'array originale.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`int<class_int>` = 1\ ) |const| :ref:`🔗<class_Array_method_duplicate_deep>`

Duplica questo array profondamente, come :ref:`duplicate()<class_Array_method_duplicate>` quando si passa ``true``, con più controllo su come le sotto-risorse sono gestite.

\ ``deep_subresources_mode`` deve essere uno dei valori di :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`. Come predefinito, solo le risorse interne saranno duplicate (ricorsivamente).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_erase:

.. rst-class:: classref-method

|void| **erase**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_erase>`

Trova e rimuove la prima occorrenza del valore ``value`` dall'array. Se ``value`` non esiste nell'array, non succede nulla. Per rimuovere un elemento per indice, utilizza :ref:`remove_at()<class_Array_method_remove_at>` invece.

\ **Nota:** Questo metodo sposta l'indice di ogni elemento dopo il ``value`` rimosso, il che potrebbe avere un costo notevole sulle prestazioni, soprattutto sugli array più grandi.

\ **Nota:** Rimuovere elementi durante un'iterazione su un array **non** è supportato e risulterà in comportamento imprevedibile.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_fill>`

Assegna il valore ``value`` a tutti gli elementi dell'array.

Questo metodo può spesso essere combinato con :ref:`resize()<class_Array_method_resize>` per creare un array con una certa dimensione ed elementi inizializzati:


.. tabs::

 .. code-tab:: gdscript

    var array = []
    array.resize(5)
    array.fill(2)
    print(array) # Stampa [2, 2, 2, 2, 2]

 .. code-tab:: csharp

    Godot.Collections.Array array = [];
    array.Resize(5);
    array.Fill(2);
    GD.Print(array); // Stampa [2, 2, 2, 2, 2]



\ **Nota:** Se ``value`` è un :ref:`Variant<class_Variant>` passato per riferimento (derivato da :ref:`Object<class_Object>`, **Array**, :ref:`Dictionary<class_Dictionary>`, ecc.), l'array sarà riempito con riferimenti allo stesso ``value``, che non sono duplicati.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_filter:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **filter**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_filter>`

Chiama il :ref:`Callable<class_Callable>` indicato su ogni elemento nell'array e restituisce un nuovo **Array** filtrato.

\ ``method`` riceve uno degli elementi dell'array come argomento, e dovrebbe restituire ``true`` per aggiungere l'elemento all'array filtrato, o ``false`` per escluderlo.

::

    func is_even(number):
        return number % 2 == 0

    func _ready():
        print([1, 4, 5, 8].filter(is_even)) # Stampa [4, 8]

        # Stesso di sopra, ma usando una funzione lambda.
        print([1, 4, 5, 8].filter(func(number): return number % 2 == 0))

Vedi anche :ref:`any()<class_Array_method_any>`, :ref:`all()<class_Array_method_all>`, :ref:`map()<class_Array_method_map>` e :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Array_method_find>`

Restituisce l'indice della **prima** occorrenza di ``what`` in questo array, o ``-1`` se non ne esistono. L'inizio della ricerca può essere specificato con ``from``, la quale continua fino alla fine dell'array.

\ **Nota:** Se si desidera solo sapere se l'array contiene ``what``, utilizza :ref:`has()<class_Array_method_has>` (``Contains`` in C#). In GDScript, è anche possibile utilizzare l'operatore ``in``.

\ **Nota:** Per motivi di prestazioni, la ricerca è influenzata dal tipo (:ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`) di ``what``. Ad esempio, ``7`` (:ref:`int<class_int>`) e ``7.0`` (:ref:`float<class_float>`)) non sono considerati uguali per questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_find_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_custom**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_Array_method_find_custom>`

Restituisce l'indice del **primo** elemento nell'array che fa in modo che ``method`` restituisca ``true``, o ``-1`` se non ce ne sono. L'inizio della ricerca può essere specificato con ``from``, continuando fino alla fine dell'array.

\ ``method`` è un chiamabile che accetta un elemento dell'array e restituisce un :ref:`bool<class_bool>`.

\ **Nota:** Se vuoi solo sapere se l'array contiene *qualcosa* che soddisfa ``method``, usa :ref:`any()<class_Array_method_any>`.


.. tabs::

 .. code-tab:: gdscript

    func is_even(number):
        return number % 2 == 0

    func _ready():
        print([1, 3, 4, 7].find_custom(is_even.bind())) # Stampa 2

    # Un altro esempio, usando `bind()` per passare un parametro in più:
    func is_specific_number(number, expected):
        return number == expected

    func _ready():
        print([1, 3, 4, 7].find_custom(is_specific_number.bind(4))) # Stampa 2



.. rst-class:: classref-item-separator

----

.. _class_Array_method_front:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **front**\ (\ ) |const| :ref:`🔗<class_Array_method_front>`

Restituisce il primo elemento dell'array. Se l'array è vuoto, fallisce e restituisce ``null``. Vedi anche :ref:`back()<class_Array_method_back>`.

\ **Nota:** A differenza dell'operatore ``[]`` (``array[0]``), viene generato un errore senza interrompere l'esecuzione del progetto.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Array_method_get>`

Returns the element at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``null``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_builtin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_typed_builtin**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_builtin>`

Restituisce il tipo di :ref:`Variant<class_Variant>` integrato dell'array tipizzato come constante di :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`. Se l'array non è tipizzato, restituisce :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`. Vedi anche :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_class_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_typed_class_name**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_class_name>`

Restituisce il nome della classe **integrata** dell'array tipizzato, se il tipo di :ref:`Variant<class_Variant>` incorporato è :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`. Altrimenti, restituisce un :ref:`StringName<class_StringName>` vuoto. Vedi anche :ref:`is_typed()<class_Array_method_is_typed>` e :ref:`Object.get_class()<class_Object_method_get_class>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_get_typed_script:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_typed_script**\ (\ ) |const| :ref:`🔗<class_Array_method_get_typed_script>`

Restituisce l'istanza di :ref:`Script<class_Script>` associata a questo array tipizzato, o ``null`` se non esiste. Vedi anche :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_Array_method_has>`

Restituisce ``true`` se l'array contiene il valore ``value``.


.. tabs::

 .. code-tab:: gdscript

    print(["inside", 7].has("dentro"))  # Stampa true
    print(["inside", 7].has("fuori")) # Stampa false
    print(["inside", 7].has(7))         # Stampa true
    print(["inside", 7].has("7"))       # Stampa false

 .. code-tab:: csharp

    Godot.Collections.Array arr = ["dentro", 7];
    // By C# convention, this method is renamed to `Contains`.
    GD.Print(arr.Contains("dentro"));  // Stampa True
    GD.Print(arr.Contains("fuori")); // Stampa False
    GD.Print(arr.Contains(7));         // Stampa True
    GD.Print(arr.Contains("7"));       // Stampa False



In GDScript, questo metodo equivale all'operatore ``in``:

::

    if 4 in [2, 4, 6, 8]:
        print("4 è qui!") # Sarà stampato.

\ **Nota:** Per motivi di prestazioni, la ricerca è influenzata dal tipo (:ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`) di ``value``. Ad esempio, ``7`` (:ref:`int<class_int>`) e ``7.0`` (:ref:`float<class_float>`)) non sono considerati uguali per questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Array_method_hash>`

Returns a hashed 32-bit integer value representing the array and its contents.

\ **Note:** Arrays with equal hash values are *not* guaranteed to be the same, as a result of hash collisions. On the contrary, arrays with different hash values are guaranteed to be different.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ position\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_insert>`

Inserisce un nuovo elemento (``value``) a un indice fornito (``position``) nell'array. ``position`` dovrebbe essere tra ``0`` e la dimensione dell'array (:ref:`size()<class_Array_method_size>`). Se negativo, ``position`` è considerato relativo alla fine dell'array.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` al successo, o una delle altre costanti di :ref:`Error<enum_@GlobalScope_Error>` se questo metodo fallisce.

\ **Nota:** Ogni indice degli elementi dopo l'indice ``position`` deve essere spostato in avanti, il che potrebbe avere un impatto notevole sulle prestazioni, soprattutto sugli array più grandi.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_Array_method_is_empty>`

Restituisce ``true`` se l'array è vuoto (``[]``). Vedi anche :ref:`size()<class_Array_method_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_read_only**\ (\ ) |const| :ref:`🔗<class_Array_method_is_read_only>`

Restituisce ``true`` se l'array è di sola lettura. Vedi :ref:`make_read_only()<class_Array_method_make_read_only>`.

In GDScript, gli array diventano automaticamente di sola lettura se dichiarati con la parola chiave ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_same_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_same_typed**\ (\ array\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Array_method_is_same_typed>`

Restituisce ``true`` se questo array è tipizzato lo stesso di ``array``. Vedi anche :ref:`is_typed()<class_Array_method_is_typed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_is_typed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_typed**\ (\ ) |const| :ref:`🔗<class_Array_method_is_typed>`

Restituisce ``true`` se l'array è tipizzato. Gli array tipizzati possono contenere solo elementi di un tipo specifico, come definito dal costruttore di array tipizzato. I metodi di un array tipizzato si aspettano comunque di restituire un :ref:`Variant<class_Variant>` generico.

In GDScript, è possibile definire un array tipizzato con la tipizzazione statica:

::

    var numeri: Array[float] = [0.2, 4.2, -2.0]
    print(numeri.is_typed()) # Stampa true

.. rst-class:: classref-item-separator

----

.. _class_Array_method_make_read_only:

.. rst-class:: classref-method

|void| **make_read_only**\ (\ ) :ref:`🔗<class_Array_method_make_read_only>`

Rende l'array di sola lettura. Gli elementi dell'array non possono essere sovrascritti con valori diversi, e il loro ordine non può cambiare. Non si applica agli elementi annidati, come i dizionari.

In GDScript, gli array diventano automaticamente di sola lettura se dichiarati con la parola chiave ``const``.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_map:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **map**\ (\ method\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Array_method_map>`

Chiama il :ref:`Callable<class_Callable>` fornito per ogni elemento nell'array e restituisce un nuovo array riempito di valori restituiti da ``method``.

\ ``method`` dovrebbe prendere un parametro :ref:`Variant<class_Variant>` (l'elemento attuale dell'array) e può restituire un qualsiasi :ref:`Variant<class_Variant>`.

::

    func doppio(numero):
        return numero * 2

    func _ready():
        print([1, 2, 3].map(doppio)) # Stampa [2, 4, 6]

        # Stesso di sopra, ma usando una funzione lambda.
        print([1, 2, 3].map(func(elemento): return elemento * 2))

Vedi anche :ref:`filter()<class_Array_method_filter>`, :ref:`reduce()<class_Array_method_reduce>`, :ref:`any()<class_Array_method_any>` e :ref:`all()<class_Array_method_all>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_max:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **max**\ (\ ) |const| :ref:`🔗<class_Array_method_max>`

Restituisce il valore massimo contenuto nell'array, se tutti gli elementi possono essere confrontati. Altrimenti, restituisce ``null``. Vedi anche :ref:`min()<class_Array_method_min>`.

Per trovare il valore massimo utilizzando un comparatore personalizzato, è possibile utilizzare :ref:`reduce()<class_Array_method_reduce>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_min:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **min**\ (\ ) |const| :ref:`🔗<class_Array_method_min>`

Restituisce il valore minimo contenuto nell'array, se tutti gli elementi possono essere confrontati. Altrimenti, restituisce ``null``. Vedi anche :ref:`max()<class_Array_method_max>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pick_random:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pick_random**\ (\ ) |const| :ref:`🔗<class_Array_method_pick_random>`

Restituisce un elemento a caso dall'array. Genera un errore e restituisce ``null`` se l'array è vuoto.


.. tabs::

 .. code-tab:: gdscript

    # Potrebbe stampare 1, 2, 3.25, o "Ciao".
    print([1, 2, 3.25, "Ciao"].pick_random())

 .. code-tab:: csharp

    Godot.Collections.Array array = [1, 2, 3.25f, "Ciao"];
    GD.Print(array.PickRandom()); // Potrebbe stampare 1, 2, 3.25, o "Ciao".



\ **Nota:** Come molte funzioni simili nel motore (come ad esempio :ref:`@GlobalScope.randi()<class_@GlobalScope_method_randi>` o :ref:`shuffle()<class_Array_method_shuffle>`), questo metodo utilizza un seed casuale, comune e globale. Per ottenere un risultato prevedibile da questo metodo, vedi :ref:`@GlobalScope.seed()<class_@GlobalScope_method_seed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_at:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_at**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_pop_at>`

Rimuove e restituisce l'elemento dell'array all'indice ``position``. Se negativo, ``position`` è considerato relativo alla fine dell'array. Restituisce ``null`` se l'array è vuoto. Se ``position`` è fuori dai limiti, viene generato anche un messaggio di errore.

\ **Nota:** Questo metodo sposta indietro gli indici di ogni elemento dopo ``position``, il che potrebbe avere un costo notevole sulle prestazioni, soprattutto sugli array più grandi.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_back:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_back**\ (\ ) :ref:`🔗<class_Array_method_pop_back>`

Rimuove e restituisce l'ultimo elemento dell'array. Restituisce ``null`` se l'array è vuoto, senza generare un errore. Vedi anche :ref:`pop_front()<class_Array_method_pop_front>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_pop_front:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **pop_front**\ (\ ) :ref:`🔗<class_Array_method_pop_front>`

Rimuove e restituisce il primo elemento dell'array. Restituisce ``null`` se l'array è vuoto, senza generare un errore. Vedi anche :ref:`pop_back()<class_Array_method_pop_back>`.

\ **Nota:** Questo metodo sposta indietro l'indice di ogni altro elemento, il che può avere un notevole costo sulle prestazioni, soprattutto su array più grandi.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_push_back:

.. rst-class:: classref-method

|void| **push_back**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_push_back>`

Appende un elemento alla fine dell'array. Vedi anche :ref:`push_front()<class_Array_method_push_front>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_push_front:

.. rst-class:: classref-method

|void| **push_front**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_push_front>`

Aggiunge un elemento all'inizio dell'array. Vedi anche :ref:`push_back()<class_Array_method_push_back>`.

\ **Nota:** Questo metodo sposta in avanti l'indice di ogni altro elemento, il che può avere un notevole costo sulle prestazioni, soprattutto su array più grandi.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_reduce:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **reduce**\ (\ method\: :ref:`Callable<class_Callable>`, accum\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_Array_method_reduce>`

Chiama il :ref:`Callable<class_Callable>` fornito per ogni elemento nell'array, accumula il risultato in ``accum``, quindi lo restituisce.

Il ``method`` prende due argomenti: il valore attuale di ``accum`` e l'elemento attuale dell'array. Se ``accum`` è ``null`` (come per impostazione predefinita), l'iterazione inizierà dal secondo elemento, con il primo utilizzato come valore iniziale di ``accum``.

::

    func somma(accum, numero):
        return accum + numero

    func _ready():
        print([1, 2, 3].reduce(somma, 0))  # Stampa 6
        print([1, 2, 3].reduce(somma, 10)) # Stampa 16

        # Stesso di sopra, ma usando una funzione lambda.
        print([1, 2, 3].reduce(func(accum, numero): return accum + numero, 10))

Se :ref:`max()<class_Array_method_max>` non è desiderato, questo metodo può anche essere utilizzato per implementare un comparatore personalizzato:

::

    func _ready():
        var arr = [Vector2(5, 0), Vector2(3, 4), Vector2(1, 2)]

        var longest_vec = arr.reduce(func(max, vec): return vec if is_length_greater(vec, max) else max)
        print(longest_vec) # Stampa Vector2(3, 4).

    func is_length_greater(a, b):
        return a.length() > b.length()

Questo metodo può essere utilizzato anche per contare quanti elementi in un array soddisfano una determinata condizione, in modo simile al metodo :ref:`count()<class_Array_method_count>`:

::

    func is_even(number):
        return number % 2 == 0

    func _ready():
        var arr = [1, 2, 3, 4, 5]
        # Se l'elemento attuale è pari, incrementa il conteggio, altrimenti lascialo invariato.
        var even_count = arr.reduce(func(count, next): return count + 1 if is_even(next) else count, 0)
        print(even_count) # Stampa 2

Vedi anche :ref:`map()<class_Array_method_map>`, :ref:`filter()<class_Array_method_filter>`, :ref:`any()<class_Array_method_any>` e :ref:`all()<class_Array_method_all>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_remove_at>`

Rimuove l'elemento dall'array all'indice ``position``. Se l'indice è fuori dai limiti, questo metodo fallisce. Se l'indice è negativo, ``position`` è considerato relativo alla fine dell'array.

Se è necessario restituire l'elemento rimosso, usa :ref:`pop_at()<class_Array_method_pop_at>`. Per rimuovere un elemento per valore, usa invece :ref:`erase()<class_Array_method_erase>`.

\ **Nota:** Questo metodo sposta indietro l'indice di ogni elemento dopo ``position``, il che potrebbe avere un notevole costo sulle prestazioni, soprattutto sugli array più grandi.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_method_resize>`

Imposta il numero di elementi dell'array a ``size``. Se ``size`` è più piccolo della dimensione corrente dell'array, gli elementi alla fine sono rimossi. Se ``size`` è maggiore, sono aggiunti nuovi elementi predefiniti (di solito ``null``), a seconda del tipo dell'array.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, o una delle seguenti costanti di :ref:`Error<enum_@GlobalScope_Error>` se questo metodo fallisce: :ref:`@GlobalScope.ERR_LOCKED<class_@GlobalScope_constant_ERR_LOCKED>` se l'array è di sola lettura, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se la dimensione è negativa o :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` se le allocazioni falliscono. Usare :ref:`size()<class_Array_method_size>` per trovare la dimensione effettiva dell'array dopo il ridimensionamento.

\ **Nota:** Chiamare questo metodo una volta e assegnare i nuovi valori è più veloce di chiamare :ref:`append()<class_Array_method_append>` per ogni nuovo elemento.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_Array_method_reverse>`

Inverte l'ordine di tutti gli elementi nell'array.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ what\: :ref:`Variant<class_Variant>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Array_method_rfind>`

Restituisce l'indice dell'**ultima** occorrenza di ``what`` in questo array, o ``-1`` se non ne esistono. L'inizio della ricerca può essere specificato con ``from``, la quale continua fino all'inizio dell'array. Questo metodo è l'inverso di :ref:`find()<class_Array_method_find>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_rfind_custom:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind_custom**\ (\ method\: :ref:`Callable<class_Callable>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Array_method_rfind_custom>`

Restituisce l'indice dell'**ultima** occorrenza nell'array che provoca ``method`` a ritornare ``true``, o ``-1`` se non ne esistono. L'inizio della ricerca può essere specificato con ``from``, la quale continua fino all'inizio dell'array. Questo metodo è l'inverso di :ref:`find_custom()<class_Array_method_find_custom>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Array_method_set>`

Imposta il valore dell'elemento all'indice ``index`` sul valore ``value``. Ciò non modificherà la dimensione dell'array, ma modificherà solo il valore in un indice già presente nell'array. Questo equivale a usare l'operatore ``[]`` (``array[index] = value``).

.. rst-class:: classref-item-separator

----

.. _class_Array_method_shuffle:

.. rst-class:: classref-method

|void| **shuffle**\ (\ ) :ref:`🔗<class_Array_method_shuffle>`

Rimescola tutti gli elementi dell'array in un ordine casuale.

\ **Nota:** Come molte funzioni simili nel motore (come ad esempio :ref:`@GlobalScope.randi()<class_@GlobalScope_method_randi>` o :ref:`pick_random()<class_Array_method_pick_random>`), questo metodo utilizza un seed casuale, comune e globale. Per ottenere un risultato prevedibile da questo metodo, vedi :ref:`@GlobalScope.seed()<class_@GlobalScope_method_seed>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_Array_method_size>`

Restituisce il numero di elementi nell'array. Gli array vuoti (``[]``) restituiscono sempre ``0``. Vedi anche :ref:`is_empty()<class_Array_method_is_empty>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_slice:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647, step\: :ref:`int<class_int>` = 1, deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Array_method_slice>`

Restituisce un nuovo **Array** contenente gli elementi di questo array, dall'indice ``begin`` (inclusivo) a ``end`` (esclusivo), ogni numero di elementi (``step``).

Se ``begin`` o ``end`` sono negativi, il loro valore è relativo alla fine dell'array.

Se ``step`` è negativo, questo metodo itera attraverso l'array al rovescio, restituendo una sezione ordinata all'indietro. Affinché funzioni, ``begin`` deve essere maggiore di ``end``.

Se ``deep`` è ``true``, tutti gli elementi annidati di tipo **Array** e :ref:`Dictionary<class_Dictionary>` nella sezione sono duplicati dall'originale, ricorsivamente. Vedi anche :ref:`duplicate()<class_Array_method_duplicate>`).

::

    var lettere = ["A", "B", "C", "D", "E", "F"]

    print(lettere.slice(0, 2))  # Stampa ["A", "B"]
    print(lettere.slice(2, -2)) # Stampa ["C", "D"]
    print(lettere.slice(-2, 6)) # Stampa ["E", "F"]

    print(lettere.slice(0, 6, 2))  # Stampa ["A", "C", "E"]
    print(lettere.slice(4, 1, -1)) # Stampa ["E", "D", "C"]

.. rst-class:: classref-item-separator

----

.. _class_Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_Array_method_sort>`

Ordina l'array in ordine crescente. L'ordine finale dipende dal confronto "minore di" (``<``) tra gli elementi.


.. tabs::

 .. code-tab:: gdscript

    var numeri = [10, 5, 2.5, 8]
    numeri.sort()
    print(numeri) # Stampa [2.5, 5, 8, 10]

 .. code-tab:: csharp

    Godot.Collections.Array numbers = [10, 5, 2.5, 8];
    numeri.Sort();
    GD.Print(numeri); // Stampa [2.5, 5, 8, 10]



\ **Nota:** L'algoritmo di selezione utilizzato non è `stabile <https://it.wikipedia.org/wiki/Algoritmo_di_ordinamento#Stabilit%C3%A0_di_un_algoritmo>`__. Ciò significa che gli elementi equivalenti (come ``2`` e ``2.0``) potrebbero avere il loro ordine cambiato quando viene chiamato :ref:`sort()<class_Array_method_sort>`.

.. rst-class:: classref-item-separator

----

.. _class_Array_method_sort_custom:

.. rst-class:: classref-method

|void| **sort_custom**\ (\ func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Array_method_sort_custom>`

Ordina l'array utilizzando un :ref:`Callable<class_Callable>` personalizzato.

\ ``func`` è chiamato quante più volte è necessario, ricevendo due elementi dell'array come argomenti. La funzione dovrebbe restituire ``true`` se il primo elemento deve essere spostato *dietro* al secondo, altrimenti dovrebbe restituire ``false``.

::

    func sort_ascending(a, b):
        if a[1] < b[1]:
            return true
        return false

    func _ready():
        var my_items = [["Pomodoro", 5], ["Mela", 9], ["Riso", 4]]
        my_items.sort_custom(sort_ascending)
        print(my_items) # Stampa [["Riso", 4], ["Pomodoro", 5], ["Mela", 9]]

        # Ordina in ordine decrescente, usando una funzione lambda.
        my_items.sort_custom(func(a, b): return a[0] > b[0])
        print(my_items) # Stampa [["Mela", 9], ["Pomodoro", 5], ["Riso", 4]]

Può anche essere necessario utilizzare questo metodo per ordinare le stringhe per ordine naturale, con :ref:`String.naturalnocasecmp_to()<class_String_method_naturalnocasecmp_to>`, come nell'esempio seguente:

::

    var file_array = ["nuovofile1", "nuovofile2", "nuovofile10", "nuovofile11"]
    file_array.sort_custom(func(a, b): return a.naturalnocasecmp_to(b) < 0)
    print(file_array) # Stampa ["newfile1", "newfile2", "newfile10", "newfile11"]

\ **Nota:** In C#, questo metodo non è supportato.

\ **Nota:** L'algoritmo di selezione utilizzato non è `stabile <https://it.wikipedia.org/wiki/Algoritmo_di_ordinamento#Stabilit%C3%A0_di_un_algoritmo>`__. Ciò significa che gli elementi considerati equivalenti potrebbero avere il loro ordine cambiato quando si chiama :ref:`sort()<class_Array_method_sort>`.

\ **Nota:** Non si dovrebbe randomizzare il valore di ritorno di ``func``, poiché l'algoritmo di heapsort si aspetta un risultato coerente. Randomizzare il valore restituito risulterà in comportamento inaspettato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni degli operatori
------------------------------------------------------

.. _class_Array_operator_neq_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_neq_Array>`

Restituisce ``true`` se la dimensione dell'array o i suoi elementi sono diversi da quelli di ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_sum_Array:

.. rst-class:: classref-operator

:ref:`Array<class_Array>` **operator +**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_sum_Array>`

Appende l'array ``right`` all'operando sinistro, creando un nuovo **Array**. Questa è anche conosciuta come una concatenazione di array.


.. tabs::

 .. code-tab:: gdscript

    var array1 = ["Uno", 2]
    var array2 = [3, "Quattro"]
    print(array1 + array2) # Stampa ["Uno", 2, 3, "Quattro"]

 .. code-tab:: csharp

    // Si noti che la concatenazione non è possibile con il tipo Array nativo di C#.
    Godot.Collections.Array array1 = ["Uno", 2];
    Godot.Collections.Array array2 = [3, "Quattro"];
    GD.Print(array1 + array2); // Stampa ["Uno", 2, 3, "Quattro"]



\ **Nota:** Per gli array esistenti, :ref:`append_array()<class_Array_method_append_array>` è molto più efficiente della concatenazione e dell'assegnazione con l'operatore ``+=``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_lt_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_lt_Array>`

Confronta gli elementi di entrambi gli array in ordine, a partire dall'indice ``0`` e terminando all'ultimo indice in comune tra entrambi gli array. Per ogni coppia di elementi, restituisce ``true`` se l'elemento di questo array è minore di quello di ``right``, ``false`` se questo elemento è maggiore. Altrimenti, continua alla prossima coppia.

Se tutti gli elementi cercati sono uguali, restituisce ``true`` se la dimensione di questo array è minore di quella di ``right``, altrimenti restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_lte_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_lte_Array>`

Confronta gli elementi di entrambi gli array in ordine, a partire dall'indice ``0`` e terminando all'ultimo indice in comune tra entrambi gli array. Per ogni coppia di elementi, restituisce ``true`` se l'elemento di questo array è minore di quello di ``right``, ``false`` se questo elemento è maggiore. Altrimenti, continua alla prossima coppia.

Se tutti gli elementi cercati sono uguali, restituisce ``true`` se la dimensione di questo array è minore o uguale a quella di ``right``, altrimenti restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_eq_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_eq_Array>`

Confronta l'operando sinistro **Array** contro l'**Array** ``right``. Restituisce ``true`` se le dimensioni e il contenuto degli array sono uguali, altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_gt_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_gt_Array>`

Confronta gli elementi di entrambi gli array in ordine, a partire dall'indice ``0`` e terminando all'ultimo indice in comune tra entrambi gli array. Per ogni coppia di elementi, restituisce ``true`` se l'elemento di questo array è maggiore di quello di ``right``, ``false`` se questo elemento è minore. Altrimenti, continua alla prossima coppia.

Se tutti gli elementi cercati sono uguali, restituisce ``true`` se la dimensione di questo array è maggiore di quella di ``right``, altrimenti restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_gte_Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Array_operator_gte_Array>`

Confronta gli elementi di entrambi gli array in ordine, a partire dall'indice ``0`` e terminando all'ultimo indice in comune tra entrambi gli array. Per ogni coppia di elementi, restituisce ``true`` se l'elemento di questo array è maggiore di quello di ``right``, ``false`` se questo elemento è minore. Altrimenti, continua alla prossima coppia.

Se tutti gli elementi cercati sono uguali, restituisce ``true`` se la dimensione di questo array è maggiore o uguale a quella di ``right``, altrimenti restituisce ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Variant<class_Variant>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Array_operator_idx_int>`

Restituisce l'elemento :ref:`Variant<class_Variant>` all'indice specificato da ``index``. Gli array iniziano all'indice 0. Se ``index`` è maggiore o uguale a ``0``, l'elemento è recuperato a partire dall'inizio dell'array. Se ``index`` è un valore negativo, l'elemento è recuperato a partire dalla fine. Accedere a un array fuori dai limiti causerà un errore durante l'esecuzione, mettendo in pausa l'esecuzione del progetto se eseguito dall'editor.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
