:github_url: hide

.. _class_PackedInt64Array:

PackedInt64Array
================

Un array empaquetado de enteros de 64 bits.

.. rst-class:: classref-introduction-group

Descripción
----------------------

An array specifically designed to hold 64-bit integer values. Packs data tightly, so it saves memory for large array sizes.

\ **Note:** This type stores signed 64-bit integers, which means it can take values in the interval ``[-2^63, 2^63 - 1]``, i.e. ``[-9223372036854775808, 9223372036854775807]``. Exceeding those bounds will wrap around. If you only need to pack 32-bit integers tightly, see :ref:`PackedInt32Array<class_PackedInt32Array>` for a more memory-friendly alternative.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedInt64Array** versus ``Array[int]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`Array.map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedInt64Array_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

\ **Note:** In a boolean context, a packed array will evaluate to ``false`` if it's empty. Otherwise, a packed array will always evaluate to ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ )                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`PackedInt64Array<class_PackedInt64Array_constructor_PackedInt64Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`append<class_PackedInt64Array_method_append>`\ (\ value\: :ref:`int<class_int>`\ )                                                    |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`append_array<class_PackedInt64Array_method_append_array>`\ (\ array\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`bsearch<class_PackedInt64Array_method_bsearch>`\ (\ value\: :ref:`int<class_int>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_PackedInt64Array_method_clear>`\ (\ )                                                                                     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`count<class_PackedInt64Array_method_count>`\ (\ value\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`duplicate<class_PackedInt64Array_method_duplicate>`\ (\ ) |const|                                                                     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`erase<class_PackedInt64Array_method_erase>`\ (\ value\: :ref:`int<class_int>`\ )                                                      |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fill<class_PackedInt64Array_method_fill>`\ (\ value\: :ref:`int<class_int>`\ )                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`find<class_PackedInt64Array_method_find>`\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get<class_PackedInt64Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has<class_PackedInt64Array_method_has>`\ (\ value\: :ref:`int<class_int>`\ ) |const|                                                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`insert<class_PackedInt64Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_empty<class_PackedInt64Array_method_is_empty>`\ (\ ) |const|                                                                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`push_back<class_PackedInt64Array_method_push_back>`\ (\ value\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_at<class_PackedInt64Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`resize<class_PackedInt64Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reverse<class_PackedInt64Array_method_reverse>`\ (\ )                                                                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`rfind<class_PackedInt64Array_method_rfind>`\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set<class_PackedInt64Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ )                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`size<class_PackedInt64Array_method_size>`\ (\ ) |const|                                                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`slice<class_PackedInt64Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|    |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`sort<class_PackedInt64Array_method_sort>`\ (\ )                                                                                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`to_byte_array<class_PackedInt64Array_method_to_byte_array>`\ (\ ) |const|                                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator !=<class_PackedInt64Array_operator_neq_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`operator +<class_PackedInt64Array_operator_sum_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator ==<class_PackedInt64Array_operator_eq_PackedInt64Array>`\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`operator []<class_PackedInt64Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                        |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_PackedInt64Array_constructor_PackedInt64Array:

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ ) :ref:`🔗<class_PackedInt64Array_constructor_PackedInt64Array>`

Construye un **PackedInt64Array** vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ from\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )

Construye un **PackedInt64Array** como una copia del **PackedInt64Array** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedInt64Array<class_PackedInt64Array>` **PackedInt64Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Construye un nuevo **PackedInt64Array**. Opcionalmente, puedes pasar un :ref:`Array<class_Array>` genérico que será convertido.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedInt64Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_append>`

Concatena un elemento al final del array (alias de :ref:`push_back()<class_PackedInt64Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_method_append_array>`

Añade un **PackedInt64Array** al final de este array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`int<class_int>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedInt64Array_method_bsearch>`

Encuentra el índice de un valor existente (o el índice de inserción que mantiene el orden de clasificación, si el valor aún no está presente en el array) utilizando la búsqueda binaria. Opcionalmente, se puede pasar un especificador ``before``. Si es ``false``, el índice devuelto viene después de todas las entradas existentes del valor en el array.

\ **Nota:** Llamar a :ref:`bsearch()<class_PackedInt64Array_method_bsearch>` en un array sin ordenar da como resultado un comportamiento inesperado.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_clear>`

Limpia el array. Esto es equivalente a usar :ref:`resize()<class_PackedInt64Array_method_resize>` con un tamaño de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_count>`

Devuelve el numer de veces que un elemento es encuentra en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_duplicate>`

Creates a copy of the array, and returns it.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_erase>`

Elimina la primera aparición de un valor del array y devuelve ``true``. Si el valor no existe en el array, no sucede nada y se devuelve ``false``. Para eliminar un elemento por índice, usa :ref:`remove_at()<class_PackedInt64Array_method_remove_at>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_fill>`

Asigna el valor dado a todos los elementos del array. Esto normalmente se puede usar junto con :ref:`resize()<class_PackedInt64Array_method_resize>` para crear un array con un tamaño dado y elementos inicializados.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedInt64Array_method_find>`

Busca un valor en el array y devuelve su índice o ``-1`` si no lo encuentra. Opcionalmente, se puede pasar el índice de búsqueda inicial.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_get:

.. rst-class:: classref-method

:ref:`int<class_int>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_get>`

Devuelve el entero de 64 bits en el ``index`` dado en el array. Si ``index`` está fuera de los límites o es negativo, este método falla y devuelve ``0``.

Este método es similar (pero no idéntico) al operador ``[]``. Lo más notable es que, cuando este método falla, no pausa la ejecución del proyecto si se ejecuta desde el editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedInt64Array_method_has>`

Devuelve ``true`` si el array contiene ``value``.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_insert>`

Inserta un nuevo entero en una posición dada del array. La posición debe ser válida, o al final del array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_is_empty>`

Devuelve ``true`` si el array es vacio.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_push_back>`

Añade un valor al array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_remove_at>`

Elimina un elemento del array por indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_resize>`

Establece el tamaño del array. Si el array aumenta de tamaño, reserva elementos al final del array. Si el array se encoge, trunca el array al nuevo tamaño. Llamar a :ref:`resize()<class_PackedInt64Array_method_resize>` una vez y asignar los nuevos valores es más rápido que añadir nuevos elementos uno por uno.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o una de las siguientes constantes :ref:`Error<enum_@GlobalScope_Error>` si este método falla: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si el tamaño es negativo, o :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` si las asignaciones fallan. Usa :ref:`size()<class_PackedInt64Array_method_size>` para encontrar el tamaño real del array después del redimensionamiento.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_reverse>`

Invierte el orden de los elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`int<class_int>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedInt64Array_method_rfind>`

Busca el array en orden inverso. Opcionalmente, se puede pasar un índice de búsqueda inicial. Si es negativo, el índice inicial se considera relativo al final del array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_method_set>`

Cambia el entero en el índice dado.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_size>`

Devuelve el numer de elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedInt64Array_method_slice>`

Devuelve una porción del **PackedInt64Array**, desde ``begin`` (inclusive) hasta ``end`` (exclusivo), como un nuevo **PackedInt64Array**.

El valor absoluto de ``begin`` y ``end`` se ajustará al tamaño del array, por lo que el valor predeterminado para ``end`` hace que se corte al tamaño del array por defecto (es decir, ``arr.slice(1)`` es una abreviatura de ``arr.slice(1, arr.size())``).

Si ``begin`` o ``end`` son negativos, serán relativos al final del array (es decir, ``arr.slice(0, -2)`` es una abreviatura de ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedInt64Array_method_sort>`

Ordena los elementos del array en orden ascendente.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedInt64Array_method_to_byte_array>`

Devuelve una copia de los datos convertidos a un :ref:`PackedByteArray<class_PackedByteArray>`, donde cada elemento ha sido codificado como 8 bytes.

El tamaño del nuevo array será ``int64_array.size() * 8``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_PackedInt64Array_operator_neq_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_neq_PackedInt64Array>`

Devuelve ``true`` si los contenidos de los arrays difieren.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_sum_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`PackedInt64Array<class_PackedInt64Array>` **operator +**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_sum_PackedInt64Array>`

Devuelve un nuevo **PackedInt64Array** con el contenido de ``right`` añadido al final de este array. Para un mejor rendimiento, considera usar :ref:`append_array()<class_PackedInt64Array_method_append_array>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_eq_PackedInt64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ ) :ref:`🔗<class_PackedInt64Array_operator_eq_PackedInt64Array>`

Devuelve ``true`` si el contenido de ambos arrays es el mismo, es decir, si tienen todos los enteros iguales en los índices correspondientes.

.. rst-class:: classref-item-separator

----

.. _class_PackedInt64Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedInt64Array_operator_idx_int>`

Devuelve el :ref:`int<class_int>` en el índice ``index``. Se pueden usar índices negativos para acceder a los elementos desde el final. Usar un índice fuera de los límites del array resultará en un error.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
