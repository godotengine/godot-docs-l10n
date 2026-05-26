:github_url: hide

.. _class_PackedVector2Array:

PackedVector2Array
==================

Un array empaquetado de :ref:`Vector2<class_Vector2>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un array específicamente diseñado para contener :ref:`Vector2<class_Vector2>`. Empaqueta los datos de forma compacta, lo que ahorra memoria para arrays de gran tamaño.

\ **Diferencias entre arrays empaquetados, arrays tipados y arrays sin tipar:** Los arrays empaquetados son generalmente más rápidos de iterar y modificar en comparación con un array tipado del mismo tipo (ej. **PackedVector2Array** versus ``Array[Vector2]``). Además, los arrays empaquetados consumen menos memoria. Como desventaja, los arrays empaquetados son menos flexibles ya que no ofrecen tantos métodos de conveniencia como :ref:`Array.map()<class_Array_method_map>`. Los arrays tipados son a su vez más rápidos de iterar y modificar que los arrays sin tipar.

\ **Nota:** Los arrays empaquetados siempre se pasan por referencia. Para obtener una copia de un array que pueda ser modificado independientemente del array original, usa :ref:`duplicate()<class_PackedVector2Array_method_duplicate>`. Este *no* es el caso de las propiedades y métodos incorporados. En estos casos, el array empaquetado devuelto es una copia, y modificarlo *no* afectará al valor original. Para actualizar una propiedad incorporada de este tipo, modifica el array devuelto y luego asígnalo de nuevo a la propiedad.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Navegación basada en cuadrícula con AStarGrid2D <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedVector2Array_method_append>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedVector2Array_method_append_array>`\ (\ array\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedVector2Array_method_bsearch>`\ (\ value\: :ref:`Vector2<class_Vector2>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedVector2Array_method_clear>`\ (\ )                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedVector2Array_method_count>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const|                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`duplicate<class_PackedVector2Array_method_duplicate>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedVector2Array_method_erase>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedVector2Array_method_fill>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedVector2Array_method_find>`\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get<class_PackedVector2Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedVector2Array_method_has>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedVector2Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedVector2Array_method_is_empty>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedVector2Array_method_push_back>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedVector2Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedVector2Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedVector2Array_method_reverse>`\ (\ )                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedVector2Array_method_rfind>`\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedVector2Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ )                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedVector2Array_method_size>`\ (\ ) |const|                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`slice<class_PackedVector2Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedVector2Array_method_sort>`\ (\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedVector2Array_method_to_byte_array>`\ (\ ) |const|                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedVector2Array_operator_neq_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_PackedVector2Array_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator +<class_PackedVector2Array_operator_sum_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedVector2Array_operator_eq_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_PackedVector2Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_PackedVector2Array_constructor_PackedVector2Array:

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ ) :ref:`🔗<class_PackedVector2Array_constructor_PackedVector2Array>`

Construye un **PackedVector2Array** vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )

Construye un **PackedVector2Array** como una copia del **PackedVector2Array** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Construye un nuevo **PackedVector2Array**. Opcionalmente, puedes pasar un :ref:`Array<class_Array>` genérico que será convertido.

\ **Nota:** Al inicializar un **PackedVector2Array** con elementos, debe ser inicializado con un :ref:`Array<class_Array>` de valores :ref:`Vector2<class_Vector2>`:

::

    var array = PackedVector2Array([Vector2(12, 34), Vector2(56, 78)])

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedVector2Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_append>`

Concatena un elemento al final del array (alias de :ref:`push_back()<class_PackedVector2Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_method_append_array>`

Añade un **PackedVector2Array** al final de este array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Vector2<class_Vector2>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedVector2Array_method_bsearch>`

Encuentra el índice de un valor existente (o el índice de inserción que mantiene el orden, si el valor aún no está presente en el array) usando búsqueda binaria. Opcionalmente, se puede pasar un especificador ``before``. Si es ``false``, el índice devuelto vendrá después de todas las entradas existentes del valor en el array.

\ **Nota:** Llamar a :ref:`bsearch()<class_PackedVector2Array_method_bsearch>` en un array sin ordenar resultará en un comportamiento inesperado.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_clear>`

Limpia el array. Esto es equivalente a usar :ref:`resize()<class_PackedVector2Array_method_resize>` con un tamaño de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_count>`

Devuelve el número de veces que un elemento se encuentra en el array.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_duplicate>`

Creates a copy of the array, and returns it.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_erase>`

Elimina la primera ocurrencia de un valor del array y devuelve ``true``. Si el valor no existe en el array, no ocurre nada y se devuelve ``false``. Para eliminar un elemento por índice, usa :ref:`remove_at()<class_PackedVector2Array_method_remove_at>` en su lugar.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_fill>`

Asigna el valor dado a todos los elementos del array. Esto normalmente se puede usar junto con :ref:`resize()<class_PackedVector2Array_method_resize>` para crear un array con un tamaño dado y elementos inicializados.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedVector2Array_method_find>`

Busca el array por un valor y devuelve su índice o ``-1`` si no se encuentra. Opcionalmente, se puede pasar el índice de búsqueda inicial.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método podrían no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_get:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_get>`

Devuelve el :ref:`Vector2<class_Vector2>` en el ``index`` dado en el array. Si ``index`` está fuera de los límites o es negativo, este método falla y devuelve ``Vector2(0, 0)``.

Este método es similar (pero no idéntico) al operador ``[]``. Cabe destacar que, cuando este método falla, no pausa la ejecución del proyecto si se ejecuta desde el editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_has>`

Devuelve ``true`` si el array contiene ``value``.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_insert>`

Inserta un nuevo elemento en una posición determinada del array. La posición debe ser válida, o al final del array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_is_empty>`

Devuelve ``true`` si el array es vacio.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_push_back>`

Inserta un :ref:`Vector2<class_Vector2>` al final.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_method_remove_at>`

Elimina un elemento del array por indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_method_resize>`

Establece el tamaño del array. Si el array aumenta de tamaño, reserva elementos al final del array. Si el array se encoge, trunca el array al nuevo tamaño. Llamar a :ref:`resize()<class_PackedVector2Array_method_resize>` una vez y asignar los nuevos valores es más rápido que añadir nuevos elementos uno por uno.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si tiene éxito, o una de las siguientes constantes :ref:`Error<enum_@GlobalScope_Error>` si este método falla: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si el tamaño es negativo, o :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` si las asignaciones fallan. Usa :ref:`size()<class_PackedVector2Array_method_size>` para encontrar el tamaño real del array después del redimensionamiento.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_reverse>`

Invierte el orden de los elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedVector2Array_method_rfind>`

Busca el array en orden inverso. Opcionalmente, se puede pasar un índice de búsqueda inicial. Si es negativo, el índice inicial se considera relativo al final del array.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_set>`

Cambia el :ref:`Vector2<class_Vector2>` en el índice dado.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_size>`

Devuelve el numer de elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedVector2Array_method_slice>`

Devuelve la porción del **PackedVector2Array**, desde ``begin`` (inclusive) hasta ``end`` (exclusive), como un nuevo **PackedVector2Array**.

El valor absoluto de ``begin`` y ``end`` se ajustará al tamaño del array, por lo que el valor predeterminado para ``end`` hace que se corte al tamaño del array por defecto (es decir, ``arr.slice(1)`` es una abreviatura de ``arr.slice(1, arr.size())``).

Si ``begin`` o ``end`` son negativos, serán relativos al final del array (es decir, ``arr.slice(0, -2)`` es una abreviatura de ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_sort>`

Ordena los elementos del array en orden ascendente.

\ **Nota:** Los vectores con elementos :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comportan igual que otros vectores. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaNs.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_to_byte_array>`

Devuelve un :ref:`PackedByteArray<class_PackedByteArray>` con cada vector codificado como bytes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_PackedVector2Array_operator_neq_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_neq_PackedVector2Array>`

Devuelve ``true`` si los contenidos de los arrays difieren.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_PackedVector2Array_operator_mul_Transform2D>`

Devuelve un nuevo **PackedVector2Array** con todos los vectores de este array transformados inversamente (multiplicados) por la matriz de transformación :ref:`Transform2D<class_Transform2D>` dada, bajo la suposición de que la base de la transformación es ortonormal (es decir, la rotación/reflexión está bien, el escalado/sesgado no lo está).

\ ``array * transform`` es equivalente a ``transform.inverse() * array``. Véase :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`.

Para transformar por la inversa de una transformación afín (por ejemplo, con escalado) se puede usar ``transform.affine_inverse() * array`` en su lugar. Véase :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_sum_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator +**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_sum_PackedVector2Array>`

Devuelve un nuevo **PackedVector2Array** con el contenido de ``right`` añadido al final de este array. Para un mejor rendimiento, considera usar :ref:`append_array()<class_PackedVector2Array_method_append_array>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_eq_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_eq_PackedVector2Array>`

Devuelve ``true`` si el contenido de ambos arrays es el mismo, es decir, tienen todos los :ref:`Vector2<class_Vector2>` iguales en los índices correspondientes.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_operator_idx_int>`

Devuelve el :ref:`Vector2<class_Vector2>` en el índice ``index``. Se pueden usar índices negativos para acceder a los elementos desde el final. Usar un índice fuera de los límites del array resultará en un error.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
