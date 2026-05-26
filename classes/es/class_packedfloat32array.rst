:github_url: hide

.. _class_PackedFloat32Array:

PackedFloat32Array
==================

A packed array of 32-bit floating-point values.

.. rst-class:: classref-introduction-group

Descripción
----------------------

An array specifically designed to hold 32-bit floating-point values (float). Packs data tightly, so it saves memory for large array sizes.

If you need to pack 64-bit floats tightly, see :ref:`PackedFloat64Array<class_PackedFloat64Array>`.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedFloat32Array_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

\ **Note:** In a boolean context, a packed array will evaluate to ``false`` if it's empty. Otherwise, a packed array will always evaluate to ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`PackedFloat32Array<class_PackedFloat32Array_constructor_PackedFloat32Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedFloat32Array_method_append>`\ (\ value\: :ref:`float<class_float>`\ )                                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedFloat32Array_method_append_array>`\ (\ array\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedFloat32Array_method_bsearch>`\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedFloat32Array_method_clear>`\ (\ )                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedFloat32Array_method_count>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`duplicate<class_PackedFloat32Array_method_duplicate>`\ (\ ) |const|                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedFloat32Array_method_erase>`\ (\ value\: :ref:`float<class_float>`\ )                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedFloat32Array_method_fill>`\ (\ value\: :ref:`float<class_float>`\ )                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedFloat32Array_method_find>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get<class_PackedFloat32Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedFloat32Array_method_has>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedFloat32Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedFloat32Array_method_is_empty>`\ (\ ) |const|                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedFloat32Array_method_push_back>`\ (\ value\: :ref:`float<class_float>`\ )                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedFloat32Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedFloat32Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedFloat32Array_method_reverse>`\ (\ )                                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedFloat32Array_method_rfind>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedFloat32Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedFloat32Array_method_size>`\ (\ ) |const|                                                                                   |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`slice<class_PackedFloat32Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedFloat32Array_method_sort>`\ (\ )                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedFloat32Array_method_to_byte_array>`\ (\ ) |const|                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedFloat32Array_operator_neq_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`operator +<class_PackedFloat32Array_operator_sum_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedFloat32Array_operator_eq_PackedFloat32Array>`\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`operator []<class_PackedFloat32Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_PackedFloat32Array_constructor_PackedFloat32Array:

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ ) :ref:`🔗<class_PackedFloat32Array_constructor_PackedFloat32Array>`

Construye un :ref:`PackedInt64Array<class_PackedInt64Array>` vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ from\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )

Construye un nuevo **PackedFloat32Array** como copia del **PackedFloat32Array** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **PackedFloat32Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Construye un nuevo **PackedFloat32Array**. Opcionalmente, puedes pasar un :ref:`Array<class_Array>` genérico que será convertido.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedFloat32Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_append>`

Concatena un elemento al final del array (alias de :ref:`push_back()<class_PackedFloat32Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_method_append_array>`

Añade un **PackedFloat32Array** al final de este array.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_bsearch>`

Encuentra el índice de un valor existente (o el índice de inserción que mantiene el orden de clasificación, si el valor aún no está presente en el array) utilizando la búsqueda binaria. Opcionalmente, se puede pasar un especificador ``before``. Si es ``false``, el índice devuelto aparece después de todas las entradas existentes del valor en el array.

\ **Nota:** Llamar a :ref:`bsearch()<class_PackedFloat32Array_method_bsearch>` en un array no ordenado resulta en un comportamiento inesperado.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_clear>`

Limpia el array. Esto es equivalente a usar :ref:`resize()<class_PackedFloat32Array_method_resize>` con un tamaño de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_count>`

Devuelve el número de veces que un elemento está en el array.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_duplicate>`

Creates a copy of the array, and returns it.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_erase>`

Elimina la primera aparición de un valor del array y devuelve ``true``. Si el valor no existe en el array, no pasa nada y se devuelve ``false``. Para eliminar un elemento por índice, usa :ref:`remove_at()<class_PackedFloat32Array_method_remove_at>` en su lugar.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_fill>`

Asigna el valor dado a todos los elementos del array. Esto normalmente se puede usar junto con :ref:`resize()<class_PackedFloat32Array_method_resize>` para crear un array con un tamaño dado y elementos inicializados.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_find>`

Busca un valor en el array y devuelve su índice o ``-1`` si no lo encuentra. Opcionalmente, se puede pasar el índice de búsqueda inicial.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_get:

.. rst-class:: classref-method

:ref:`float<class_float>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_get>`

Devuelve el float de 32 bits en el ``index`` dado en el array. Si ``index`` está fuera de los límites o es negativo, este método falla y devuelve ``0.0``.

Este método es similar (pero no idéntico) al operador ``[]``. Lo más notable es que, cuando este método falla, no pausa la ejecución del proyecto si se ejecuta desde el editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_has>`

Devuelve ``true`` si el array contiene ``value``.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_insert>`

Inserta un nuevo elemento en una posición determinada del array. La posición debe ser válida, o al final del array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_is_empty>`

Devuelve ``true`` si el array es vacio.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_push_back>`

Concatena un elemen al final del array.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_method_remove_at>`

Elimina un elemento del array por indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_method_resize>`

Establece el tamaño del array. Si el array aumenta de tamaño, reserva elementos al final del array. Si el array se encoge, trunca el array al nuevo tamaño. Llamar a :ref:`resize()<class_PackedFloat32Array_method_resize>` una vez y asignar los nuevos valores es más rápido que añadir nuevos elementos uno por uno.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o una de las siguientes constantes :ref:`Error<enum_@GlobalScope_Error>` si este método falla: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si el tamaño es negativo, o :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` si las asignaciones fallan. Usa :ref:`size()<class_PackedFloat32Array_method_size>` para encontrar el tamaño real del array después del redimensionamiento.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_reverse>`

Invierte el orden de los elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_rfind>`

Busca el array en orden inverso. Opcionalmente, se puede pasar un índice de inicio de búsqueda. Si es negativo, el índice de inicio se considera relativo al final del array.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat32Array_method_set>`

Cambia el real en el índice dado.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_size>`

Devuelve el numer de elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_slice>`

Devuelve la porción del **PackedFloat32Array**, desde ``begin`` (inclusivo) hasta ``end`` (exclusivo), como un nuevo **PackedFloat32Array**.

El valor absoluto de ``begin`` y ``end`` se ajustará al tamaño del array, por lo que el valor predeterminado para ``end`` hace que se corte al tamaño del array por defecto (es decir, ``arr.slice(1)`` es una abreviatura de ``arr.slice(1, arr.size())``).

Si ``begin`` o ``end`` son negativos, serán relativos al final del array (es decir, ``arr.slice(0, -2)`` es una abreviatura de ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedFloat32Array_method_sort>`

Ordena los elementos del array en orden ascendente.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedFloat32Array_method_to_byte_array>`

Devuelve una copia de los datos convertidos a un :ref:`PackedByteArray<class_PackedByteArray>`, donde cada elemento ha sido codificado como 4 bytes.

El tamaño del nuevo array será ``float32_array.size() * 4``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_PackedFloat32Array_operator_neq_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_neq_PackedFloat32Array>`

Devuelve ``true`` si los contenidos de los arrays difieren.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_sum_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **operator +**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_sum_PackedFloat32Array>`

Devuelve un nuevo **PackedFloat32Array** con el contenido de ``right`` añadido al final de este array. Para un mejor rendimiento, considera usar :ref:`append_array()<class_PackedFloat32Array_method_append_array>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_eq_PackedFloat32Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_eq_PackedFloat32Array>`

Devuelve ``true`` si los contenidos de ambos arrays son iguales, es decir, tienen todos los floats iguales en los índices correspondientes.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat32Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat32Array_operator_idx_int>`

Devuelve el :ref:`float<class_float>` en el índice ``index``. Los índices negativos pueden utilizarse para acceder a los elementos empezando por el final. El uso de un índice fuera de los límites del array provocará un error.

Ten en cuenta que el tipo :ref:`float<class_float>` es de 64 bits, a diferencia de los valores almacenados en el array.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
