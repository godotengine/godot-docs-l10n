:github_url: hide

.. _class_PackedVector3Array:

PackedVector3Array
==================

Un array empaquetado de :ref:`Vector3<class_Vector3>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un array diseñado específicamente para contener :ref:`Vector3<class_Vector3>`. Empaqueta los datos de forma compacta, por lo que ahorra memoria para arrays de gran tamaño.

\ **Diferencias entre arrays empaquetados, tipados y no tipados:** Los arrays empaquetados son generalmente más rápidos de iterar y modificar en comparación con un array tipado del mismo tipo (por ejemplo, **PackedVector3Array** frente a ``Array[Vector3]``). Además, los arrays empaquetados consumen menos memoria. Como desventaja, los arrays empaquetados son menos flexibles, ya que no ofrecen tantos métodos de conveniencia como :ref:`Array.map()<class_Array_method_map>`. Los arrays tipados son a su vez más rápidos de iterar y modificar que los arrays no tipados.

\ **Nota:** Los arrays empaquetados siempre se pasan por referencia. Para obtener una copia de un array que se pueda modificar independientemente del original, utiliza :ref:`duplicate()<class_PackedVector3Array_method_duplicate>`. Este *no* es el caso de las propiedades y métodos incorporados. En estos casos, el array empaquetado devuelto es una copia, y su modificación *no* afectará al valor original. Para actualizar una propiedad incorporada de este tipo, modifica el array devuelto y luego asígnalo de nuevo a la propiedad.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`PackedVector3Array<class_PackedVector3Array_constructor_PackedVector3Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`PackedVector3Array<class_PackedVector3Array_constructor_PackedVector3Array>`\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`PackedVector3Array<class_PackedVector3Array_constructor_PackedVector3Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedVector3Array_method_append>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ )                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedVector3Array_method_append_array>`\ (\ array\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedVector3Array_method_bsearch>`\ (\ value\: :ref:`Vector3<class_Vector3>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedVector3Array_method_clear>`\ (\ )                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedVector3Array_method_count>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`duplicate<class_PackedVector3Array_method_duplicate>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedVector3Array_method_erase>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedVector3Array_method_fill>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ )                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedVector3Array_method_find>`\ (\ value\: :ref:`Vector3<class_Vector3>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get<class_PackedVector3Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedVector3Array_method_has>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedVector3Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector3<class_Vector3>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedVector3Array_method_is_empty>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedVector3Array_method_push_back>`\ (\ value\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedVector3Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedVector3Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedVector3Array_method_reverse>`\ (\ )                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedVector3Array_method_rfind>`\ (\ value\: :ref:`Vector3<class_Vector3>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedVector3Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector3<class_Vector3>`\ )                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedVector3Array_method_size>`\ (\ ) |const|                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`slice<class_PackedVector3Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedVector3Array_method_sort>`\ (\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedVector3Array_method_to_byte_array>`\ (\ ) |const|                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedVector3Array_operator_neq_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator *<class_PackedVector3Array_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator +<class_PackedVector3Array_operator_sum_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedVector3Array_operator_eq_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`operator []<class_PackedVector3Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_PackedVector3Array_constructor_PackedVector3Array:

.. rst-class:: classref-constructor

:ref:`PackedVector3Array<class_PackedVector3Array>` **PackedVector3Array**\ (\ ) :ref:`🔗<class_PackedVector3Array_constructor_PackedVector3Array>`

Construye un **PackedVector3Array** vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector3Array<class_PackedVector3Array>` **PackedVector3Array**\ (\ from\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )

Construye un **PackedVector3Array** como una copia del **PackedVector3Array** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector3Array<class_PackedVector3Array>` **PackedVector3Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Construye un nuevo **PackedVector3Array**. Opcionalmente, puedes pasar un :ref:`Array<class_Array>` genérico que será convertido.

\ **Nota:** Al inicializar un **PackedVector3Array** con elementos, debe ser inicializado con un :ref:`Array<class_Array>` de valores :ref:`Vector3<class_Vector3>`:

::

    var array = PackedVector3Array([Vector3(12, 34, 56), Vector3(78, 90, 12)])

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedVector3Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_append>`

Concatena un elemento al final del array (alias de :ref:`push_back()<class_PackedVector3Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_PackedVector3Array_method_append_array>`

Añade un **PackedVector3Array** al final de este array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Vector3<class_Vector3>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedVector3Array_method_bsearch>`

Encuentra el índice de un valor existente (o el índice de inserción que mantiene el orden, si el valor aún no está presente en el array) usando búsqueda binaria. Opcionalmente, se puede pasar un especificador ``before``. Si es ``false``, el índice devuelto vendrá después de todas las entradas existentes del valor en el array.

\ **Nota:** Llamar a :ref:`bsearch()<class_PackedVector3Array_method_bsearch>` en un array sin ordenar resultará en un comportamiento inesperado.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedVector3Array_method_clear>`

Limpia el array. Esto es equivalente a usar :ref:`resize()<class_PackedVector3Array_method_resize>` con un tamaño de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_PackedVector3Array_method_count>`

Devuelve el número de veces que un elemento se encuentra en el array.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedVector3Array_method_duplicate>`

Creates a copy of the array, and returns it.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_erase>`

Elimina la primera ocurrencia de un valor del array y devuelve ``true``. Si el valor no existe en el array, no ocurre nada y se devuelve ``false``. Para eliminar un elemento por índice, usa :ref:`remove_at()<class_PackedVector3Array_method_remove_at>` en su lugar.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_fill>`

Asigna el valor dado a todos los elementos del array. Esto normalmente se puede usar junto con :ref:`resize()<class_PackedVector3Array_method_resize>` para crear un array con un tamaño dado y elementos inicializados.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Vector3<class_Vector3>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedVector3Array_method_find>`

Busca el array por un valor y devuelve su índice o ``-1`` si no se encuentra. Opcionalmente, se puede pasar el índice de búsqueda inicial.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método podrían no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_get:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedVector3Array_method_get>`

Devuelve el :ref:`Vector3<class_Vector3>` en el ``index`` dado en el array. Si ``index`` está fuera de los límites o es negativo, este método falla y devuelve ``Vector3(0, 0, 0)``.

Este método es similar (pero no idéntico) al operador ``[]``. En particular, cuando este método falla, no pausa la ejecución del proyecto si se ejecuta desde el editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_PackedVector3Array_method_has>`

Devuelve ``true`` si el array contiene ``value``.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_insert>`

Inserta un nuevo elemento en una posición determinada del array. La posición debe ser válida, o al final del array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedVector3Array_method_is_empty>`

Devuelve ``true`` si el array es vacio.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_push_back>`

Inserta un :ref:`Vector3<class_Vector3>` al final.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector3Array_method_remove_at>`

Elimina un elemento del array por indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector3Array_method_resize>`

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling :ref:`resize()<class_PackedVector3Array_method_resize>` once and assigning the new values is faster than adding new elements one by one.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the following :ref:`Error<enum_@GlobalScope_Error>` constants if this method fails: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the size is negative, or :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` if allocations fail. Use :ref:`size()<class_PackedVector3Array_method_size>` to find the actual size of the array after resize.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedVector3Array_method_reverse>`

Invierte el orden de los elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Vector3<class_Vector3>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedVector3Array_method_rfind>`

Busca el array en orden inverso. Opcionalmente, se puede pasar un índice de búsqueda inicial. Si es negativo, el índice inicial se considera relativo al final del array.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PackedVector3Array_method_set>`

Cambia el :ref:`Vector3<class_Vector3>` en el índice dado.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedVector3Array_method_size>`

Devuelve el numer de elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedVector3Array_method_slice>`

Devuelve la porción del **PackedVector3Array**, desde ``begin`` (inclusivo) hasta ``end`` (exclusivo), como un nuevo **PackedVector3Array**.

El valor absoluto de ``begin`` y ``end`` se ajustará al tamaño del array, por lo que el valor por defecto de ``end`` hace que se corte hasta el final del array por defecto (es decir, ``arr.slice(1)`` es una abreviatura de ``arr.slice(1, arr.size())``).

Si ``begin`` o ``end`` son negativos, serán relativos al final del array (es decir, ``arr.slice(0, -2)`` es una abreviatura de ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedVector3Array_method_sort>`

Ordena los elementos del array en orden ascendente.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedVector3Array_method_to_byte_array>`

Devuelve un :ref:`PackedByteArray<class_PackedByteArray>` con cada vector codificado como bytes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_PackedVector3Array_operator_neq_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_PackedVector3Array_operator_neq_PackedVector3Array>`

Returns ``true`` if contents of the arrays differ.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_PackedVector3Array_operator_mul_Transform3D>`

Devuelve un nuevo **PackedVector3Array** con todos los vectores de este array transformados inversamente (multiplicados) por la matriz de transformación :ref:`Transform3D<class_Transform3D>` dada, bajo la suposición de que la base de la transformación es ortonormal (es decir, la rotación/reflexión está bien, pero el escalado/sesgado no).

\ ``array * transform`` es equivalente a ``transform.inverse() * array``. Véase :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`.

Para transformar por la inversa de una transformación afín (p. ej. con escalado) se puede usar en su lugar ``transform.affine_inverse() * array``. Véase :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_operator_sum_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator +**\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_PackedVector3Array_operator_sum_PackedVector3Array>`

Devuelve un nuevo **PackedVector3Array** con el contenido de ``right`` añadido al final de este array. Para un mejor rendimiento, considera usar :ref:`append_array()<class_PackedVector3Array_method_append_array>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_operator_eq_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_PackedVector3Array_operator_eq_PackedVector3Array>`

Devuelve ``true`` si el contenido de ambos arrays es el mismo, es decir, tienen todos los :ref:`Vector3<class_Vector3>`\ s iguales en los índices correspondientes.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector3Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector3Array_operator_idx_int>`

Devuelve el :ref:`Vector3<class_Vector3>` en el índice ``index``. Se pueden usar índices negativos para acceder a los elementos desde el final. Usar un índice fuera de los límites del array resultará en un error.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
