:github_url: hide

.. _class_PackedStringArray:

PackedStringArray
=================

Un array empaquetado de :ref:`String<class_String>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un array diseñado específicamente para contener :ref:`String<class_String>`\ s. Empaqueta los datos de forma compacta, lo que ahorra memoria para arrays de gran tamaño.

Si quieres unir las strings en el array, usa :ref:`String.join()<class_String_method_join>`.

::

    var string_array = PackedStringArray(["hola", "mundo"])
    var string = " ".join(string_array)
    print(string) # "hola mundo"

\ **Diferencias entre arrays empaquetados, arrays tipados y arrays sin tipo:** Los arrays empaquetados son generalmente más rápidos de iterar y modificar en comparación con un array tipado del mismo tipo (por ejemplo, **PackedStringArray** versus ``Array[String]``). Además, los arrays empaquetados consumen menos memoria. Como desventaja, los arrays empaquetados son menos flexibles ya que no ofrecen tantos métodos de conveniencia como :ref:`Array.map()<class_Array_method_map>`. Los arrays tipados, a su vez, son más rápidos de iterar y modificar que los arrays sin tipo.

\ **Nota:** Los arrays empaquetados siempre se pasan por referencia. Para obtener una copia de un array que pueda ser modificado independientemente del array original, usa :ref:`duplicate()<class_PackedStringArray_method_duplicate>`. Este *no* es el caso para propiedades y métodos integrados. En estos casos, el array empaquetado devuelto es una copia, y modificarlo *no* afectará al valor original. Para actualizar una propiedad integrada de este tipo, modifica el array devuelto y luego asígnalo a la propiedad de nuevo.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Prueba de Sistema Operativo <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ )                                                           |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`PackedStringArray<class_PackedStringArray_constructor_PackedStringArray>`\ (\ from\: :ref:`Array<class_Array>`\ )                         |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`append<class_PackedStringArray_method_append>`\ (\ value\: :ref:`String<class_String>`\ )                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`append_array<class_PackedStringArray_method_append_array>`\ (\ array\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`bsearch<class_PackedStringArray_method_bsearch>`\ (\ value\: :ref:`String<class_String>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_PackedStringArray_method_clear>`\ (\ )                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`count<class_PackedStringArray_method_count>`\ (\ value\: :ref:`String<class_String>`\ ) |const|                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`duplicate<class_PackedStringArray_method_duplicate>`\ (\ ) |const|                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`erase<class_PackedStringArray_method_erase>`\ (\ value\: :ref:`String<class_String>`\ )                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`fill<class_PackedStringArray_method_fill>`\ (\ value\: :ref:`String<class_String>`\ )                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`find<class_PackedStringArray_method_find>`\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get<class_PackedStringArray_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has<class_PackedStringArray_method_has>`\ (\ value\: :ref:`String<class_String>`\ ) |const|                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`insert<class_PackedStringArray_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ )                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_empty<class_PackedStringArray_method_is_empty>`\ (\ ) |const|                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`push_back<class_PackedStringArray_method_push_back>`\ (\ value\: :ref:`String<class_String>`\ )                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_at<class_PackedStringArray_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`resize<class_PackedStringArray_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`reverse<class_PackedStringArray_method_reverse>`\ (\ )                                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`rfind<class_PackedStringArray_method_rfind>`\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set<class_PackedStringArray_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`size<class_PackedStringArray_method_size>`\ (\ ) |const|                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`slice<class_PackedStringArray_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`sort<class_PackedStringArray_method_sort>`\ (\ )                                                                                             |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`     | :ref:`to_byte_array<class_PackedStringArray_method_to_byte_array>`\ (\ ) |const|                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`operator !=<class_PackedStringArray_operator_neq_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`operator +<class_PackedStringArray_operator_sum_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`operator ==<class_PackedStringArray_operator_eq_PackedStringArray>`\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ )  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`operator []<class_PackedStringArray_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                           |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_PackedStringArray_constructor_PackedStringArray:

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ ) :ref:`🔗<class_PackedStringArray_constructor_PackedStringArray>`

Construye un **PackedStringArray** vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ from\: :ref:`PackedStringArray<class_PackedStringArray>`\ )

Construye un **PackedStringArray** como una copia del **PackedStringArray** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedStringArray<class_PackedStringArray>` **PackedStringArray**\ (\ from\: :ref:`Array<class_Array>`\ )

Construye un nuevo **PackedStringArray**. Opcionalmente, puedes pasar un :ref:`Array<class_Array>` genérico que será convertido.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedStringArray_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_append>`

Concatena un elemento al final del array (alias de :ref:`push_back()<class_PackedStringArray_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_method_append_array>`

Añade un **PackedStringArray** al final de este array.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`String<class_String>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedStringArray_method_bsearch>`

Encuentra el índice de un valor existente (o el índice de inserción que mantiene el orden de clasificación, si el valor aún no está presente en el array) utilizando la búsqueda binaria. Opcionalmente, se puede pasar un especificador ``before``. Si es ``false``, el índice devuelto viene después de todas las entradas existentes del valor en el array.

\ **Nota:** Llamar a :ref:`bsearch()<class_PackedStringArray_method_bsearch>` en un array sin ordenar da como resultado un comportamiento inesperado.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedStringArray_method_clear>`

Limpia el array. Esto es equivalente a usar :ref:`resize()<class_PackedStringArray_method_resize>` con un tamaño de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_count>`

Devuelve el numer de veces que un elemento es encuentra en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_duplicate>`

Creates a copy of the array, and returns it.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_erase>`

Elimina la primera aparición de un valor del array y devuelve ``true``. Si el valor no existe en el array, no sucede nada y se devuelve ``false``. Para eliminar un elemento por índice, usa :ref:`remove_at()<class_PackedStringArray_method_remove_at>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_fill>`

Asigna el valor dado a todos los elementos del array. Esto normalmente se puede usar junto con :ref:`resize()<class_PackedStringArray_method_resize>` para crear un array con un tamaño dado y elementos inicializados.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedStringArray_method_find>`

Busca un valor en el array y devuelve su índice o ``-1`` si no lo encuentra. Opcionalmente, se puede pasar el índice de búsqueda inicial.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_get:

.. rst-class:: classref-method

:ref:`String<class_String>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_get>`

Devuelve la :ref:`String<class_String>` en el ``index`` dado en el array. Si ``index`` está fuera de los límites o es negativo, este método falla y devuelve una cadena vacía.

Este método es similar (pero no idéntico) al operador ``[]``. Lo más notable es que, cuando este método falla, no pausa la ejecución del proyecto si se ejecuta desde el editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_PackedStringArray_method_has>`

Returns ``true`` if the array contains ``value``.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_insert>`

Inserta un nuevo elemento en una posición determinada del array. La posición debe ser válida, o al final del array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_is_empty>`

Devuelve ``true`` si el array es vacio.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_push_back>`

Añade un elemento de string al final de la array.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_method_remove_at>`

Elimina un elemento del array por indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_method_resize>`

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling :ref:`resize()<class_PackedStringArray_method_resize>` once and assigning the new values is faster than adding new elements one by one.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the following :ref:`Error<enum_@GlobalScope_Error>` constants if this method fails: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the size is negative, or :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` if allocations fail. Use :ref:`size()<class_PackedStringArray_method_size>` to find the actual size of the array after resize.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedStringArray_method_reverse>`

Invierte el orden de los elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`String<class_String>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedStringArray_method_rfind>`

Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PackedStringArray_method_set>`

Cambia la :ref:`String<class_String>` en el índice dado.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_size>`

Devuelve el numer de elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_slice:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedStringArray_method_slice>`

Devuelve una porción del **PackedStringArray**, desde ``begin`` (inclusive) hasta ``end`` (exclusive), como un nuevo **PackedStringArray**.

El valor absoluto de ``begin`` y ``end`` se ajustará al tamaño del array, de modo que el valor predeterminado para ``end`` hace que se corte al tamaño del array por defecto (es decir, ``arr.slice(1)`` es una abreviatura de ``arr.slice(1, arr.size())``).

Si ``begin`` o ``end`` son negativos, serán relativos al final del array (es decir, ``arr.slice(0, -2)`` es una abreviatura de ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedStringArray_method_sort>`

Sorts the elements of the array in ascending order.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedStringArray_method_to_byte_array>`

Devuelve un :ref:`PackedByteArray<class_PackedByteArray>` con cada strings codificada como UTF-8. Las cadenas están terminadas en ``null``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_PackedStringArray_operator_neq_PackedStringArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_neq_PackedStringArray>`

Returns ``true`` if contents of the arrays differ.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_sum_PackedStringArray:

.. rst-class:: classref-operator

:ref:`PackedStringArray<class_PackedStringArray>` **operator +**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_sum_PackedStringArray>`

Devuelve un nuevo **PackedStringArray** con el contenido de ``right`` añadido al final de este array. Para un mejor rendimiento, considera usar :ref:`append_array()<class_PackedStringArray_method_append_array>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_eq_PackedStringArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_PackedStringArray_operator_eq_PackedStringArray>`

Devuelve ``true`` si el contenido de ambos arrays es el mismo, es decir, tienen todas las :ref:`String<class_String>`\ s iguales en los índices correspondientes.

.. rst-class:: classref-item-separator

----

.. _class_PackedStringArray_operator_idx_int:

.. rst-class:: classref-operator

:ref:`String<class_String>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedStringArray_operator_idx_int>`

Devuelve la :ref:`String<class_String>` en el índice ``index``. Se pueden usar índices negativos para acceder a los elementos desde el final. Usar un índice fuera de los límites del array resultará en un error.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
