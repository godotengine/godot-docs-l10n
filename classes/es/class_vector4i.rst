:github_url: hide

.. _class_Vector4i:

Vector4i
========

Un vector 4D que utiliza coordenadas enteras.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Estructura de 4 elementos que puede ser usada para representar coordenadas de cuadrícula 4D o cualquier otro cuarteto de enteros.

Utiliza coordenadas enteras y por lo tanto es preferible a :ref:`Vector4<class_Vector4>` cuando se requiere precisión exacta. Ten en cuenta que los valores están limitados a 32 bits, y a diferencia de :ref:`Vector4<class_Vector4>` esto no se puede configurar con una opción de compilación del motor. Usa :ref:`int<class_int>` o :ref:`PackedInt64Array<class_PackedInt64Array>` si se necesitan valores de 64 bits.

\ **Nota:** En un contexto booleano, un Vector4i evaluará a ``false`` si es igual a ``Vector4i(0, 0, 0, 0)``. De lo contrario, un Vector4i siempre evaluará a ``true``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`w<class_Vector4i_property_w>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector4i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector4i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`z<class_Vector4i_property_z>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ )                                                                                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4<class_Vector4>`\ )                                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`abs<class_Vector4i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clamp<class_Vector4i_method_clamp>`\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clampi<class_Vector4i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector4i_method_distance_squared_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector4i_method_distance_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector4i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector4i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`max<class_Vector4i_method_max>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector4i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`maxi<class_Vector4i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`min<class_Vector4i_method_min>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector4i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`mini<class_Vector4i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`sign<class_Vector4i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snapped<class_Vector4i_method_snapped>`\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snappedi<class_Vector4i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector4i_operator_neq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator *<class_Vector4i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator +<class_Vector4i_operator_sum_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator -<class_Vector4i_operator_dif_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator /<class_Vector4i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector4i_operator_lt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector4i_operator_lte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector4i_operator_eq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector4i_operator_gt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector4i_operator_gte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector4i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary+<class_Vector4i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary-<class_Vector4i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Vector4i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector4i_Axis>`

.. _class_Vector4i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_X** = ``0``

Valor enumerado para el eje X. Devuelto por :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` y :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Y** = ``1``

Valor enumerado para el eje Y. Devuelto por :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` y :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Z** = ``2``

Valor enumerado para el eje Z. Devuelto por :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` y :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_W:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_W** = ``3``

Valor enumerado para el eje W. Devuelto por :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` y :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Vector4i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector4i(0, 0, 0, 0)`` :ref:`🔗<class_Vector4i_constant_ZERO>`

Vector cero, un vector con todos los componentes ajustados a ``0``.

.. _class_Vector4i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector4i(1, 1, 1, 1)`` :ref:`🔗<class_Vector4i_constant_ONE>`

Un vector, un vector con todos los componentes ajustados a ``1``.

.. _class_Vector4i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector4i(-2147483648, -2147483648, -2147483648, -2147483648)`` :ref:`🔗<class_Vector4i_constant_MIN>`

Vector mínimo, un vector con todos los componentes iguales a ``INT32_MIN``. Se puede utilizar como un entero negativo equivalente a :ref:`Vector4.INF<class_Vector4_constant_INF>`.

.. _class_Vector4i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector4i(2147483647, 2147483647, 2147483647, 2147483647)`` :ref:`🔗<class_Vector4i_constant_MAX>`

Vector máximo, un vector con todos los componentes iguales a ``INT32_MAX``. Se puede usar como un equivalente entero de :ref:`Vector4.INF<class_Vector4_constant_INF>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Vector4i_property_w:

.. rst-class:: classref-property

:ref:`int<class_int>` **w** = ``0`` :ref:`🔗<class_Vector4i_property_w>`

El componente W del vector. También se puede acceder utilizando la posición del índice ``[3]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector4i_property_x>`

El componente X del vector. También se puede acceder utilizando la posición del índice ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector4i_property_y>`

El componente Y del vector. También se puede acceder usando la posición del índice ``[1]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_z:

.. rst-class:: classref-property

:ref:`int<class_int>` **z** = ``0`` :ref:`🔗<class_Vector4i_property_z>`

El componente Z del vector. También se puede acceder usando la posición del índice ``[2]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Vector4i_constructor_Vector4i:

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ ) :ref:`🔗<class_Vector4i_constructor_Vector4i>`

Construye un **Vector4i** inicializado por defecto con todos los componentes a ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )

Construye un **Vector4i** a partir del **Vector4i** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4<class_Vector4>`\ )

Construye un nuevo **Vector4i** a partir del :ref:`Vector4<class_Vector4>` dado truncando las fracciones de los componentes (redondeando hacia cero). Para un comportamiento diferente, considera pasar el resultado de :ref:`Vector4.ceil()<class_Vector4_method_ceil>`, :ref:`Vector4.floor()<class_Vector4_method_floor>` o :ref:`Vector4.round()<class_Vector4_method_round>` a este constructor.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ )

Devuelve un **Vector4i** con los componentes dados.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Vector4i_method_abs:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_abs>`

Devuelve un nuevo vector con todos los componentes en valores absolutos (es decir, positivos).

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clamp**\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_clamp>`

Devuelve un nuevo vector con todos los componentes limitados entre los componentes de ``min`` y ``max``, ejecutando :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_clampi>`

Devuelve un nuevo vector con todos los componentes restringidos entre ``min`` y ``max``, ejecutando :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_squared_to>`

Devuelve la distancia al cuadrado entre este vector y ``to``.

Este método se ejecuta más rápido que :ref:`distance_to()<class_Vector4i_method_distance_to>`, así que es preferible si necesitas comparar vectores o necesitas la distancia al cuadrado para alguna fórmula.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_to>`

Devuelve la distancia entre este vector y ``to``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length>`

Devuelve la longitud (magnitud) de este vector.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length_squared>`

Devuelve la longitud cuadrada (magnitud cuadrada) de este vector.

Este método funciona más rápido que el :ref:`length()<class_Vector4i_method_length>`, por lo que es preferible si necesitas comparar vectores o necesitas la distancia al cuadrado para alguna fórmula.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **max**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_max>`

Devuelve el máximo por componente de este y ``with``, equivalente a ``Vector4i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z), maxi(w, with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_max_axis_index>`

Devuelve el eje del valor más alto del vector. Véanse las constantes ``AXIS_*``. Si todos los componentes son iguales, este método devuelve :ref:`AXIS_X<class_Vector4i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_maxi>`

Devuelve el máximo por componente de este y ``with``, equivalente a ``Vector4i(maxi(x, with), maxi(y, with), maxi(z, with), maxi(w, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **min**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_min>`

Devuelve el mínimo componente por componente de este y ``with``, equivalente a ``Vector4i(mini(x, with.x), mini(y, with.y), mini(z, with.z), mini(w, with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_min_axis_index>`

Devuelve el eje del valor más bajo del vector. Ver las constantes ``AXIS_*``. Si todos los componentes son iguales, este método devuelve :ref:`AXIS_W<class_Vector4i_constant_AXIS_W>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_mini:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_mini>`

Devuelve el mínimo componente por componente de este y ``with``, equivalente a ``Vector4i(mini(x, with), mini(y, with), mini(z, with), mini(w, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_sign:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_sign>`

Devuelve un nuevo vector con cada componente establecido en ``1`` si es positivo, ``-1`` si es negativo y ``0`` si es cero. El resultado es idéntico a llamar a :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snapped**\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_snapped>`

Devuelve un nuevo vector con cada componente ajustado al múltiplo más cercano del componente correspondiente en ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_snappedi>`

Devuelve un nuevo vector con cada componente ajustado al múltiplo más cercano de ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Vector4i_operator_neq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_neq_Vector4i>`

Devuelve ``true`` si los vectores no son iguales.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mod_Vector4i>`

Obtiene el resto de cada componente del **Vector4i** con los componentes del **Vector4i** dado. Esta operación usa división truncada, que a menudo no es deseada ya que no funciona bien con números negativos. Considera usar :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` en su lugar si quieres manejar números negativos.

::

    print(Vector4i(10, -20, 30, -40) % Vector4i(7, 8, 9, 10)) # Imprime (3, -4, 3, 0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mod_int>`

Obtiene el resto de cada componente del **Vector4i** con el :ref:`int<class_int>` dado. Esta operación usa división truncada, que a menudo no es deseada ya que no funciona bien con números negativos. Considera usar :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` en su lugar si quieres manejar números negativos.

::

    print(Vector4i(10, -20, 30, -40) % 7) # Imprime (3, -6, 2, -5)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mul_Vector4i>`

Multiplica cada componente de **Vector4i** por los componentes de **Vector4i** dado.

::

    print(Vector4i(10, 20, 30, 40) * Vector4i(3, 4, 5, 6)) # Imprime (30, 80, 150, 240)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_mul_float>`

Multiplica cada componente de **Vector4i** por el :ref:`float<class_float>` dado.

Devuelve un valor de Vector4 debido a operaciones de punto flotante.

::

    print(Vector4i(10, 20, 30, 40) * 2) # Imprime (20.0, 40.0, 60.0, 80.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mul_int>`

Multiplica cada componente del **Vector4i** por el :ref:`int<class_int>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_sum_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator +**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_sum_Vector4i>`

Suma cada componente del **Vector4i** con los componentes del **Vector4i** dado.

::

    print(Vector4i(10, 20, 30, 40) + Vector4i(3, 4, 5, 6)) # Imprime (13, 24, 35, 46)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_dif_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator -**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_dif_Vector4i>`

Resta cada componente del **Vector4i** por los componentes del **Vector4i** dado.

::

    print(Vector4i(10, 20, 30, 40) - Vector4i(3, 4, 5, 6)) # Imprime (7, 16, 25, 34)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_div_Vector4i>`

Divide cada componente del **Vector4i** por los componentes del **Vector4i** dado.

::

    print(Vector4i(10, 20, 30, 40) / Vector4i(2, 5, 3, 4)) # Imprime (5, 4, 10, 10)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_div_float>`

Divides each component of the **Vector4i** by the given :ref:`float<class_float>`.

Returns a Vector4 value due to floating-point operations.

::

    print(Vector4i(1, 2, 3, 4) / 2.5) # Prints (0.4, 0.8, 1.2, 1.6)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_div_int>`

Divide cada componente del **Vector4i** por el :ref:`int<class_int>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lt_Vector4i>`

Compara dos vectores **Vector4i** comprobando primero si el valor X del vector izquierdo es menor que el valor X del vector ``right``. Si los valores X son exactamente iguales, repite esta comprobación con los valores Y de los dos vectores, los valores Z de los dos vectores y, a continuación, con los valores W. Este operador es útil para ordenar vectores.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lte_Vector4i>`

Compara dos vectores **Vector4i** comprobando primero si el valor X del vector izquierdo es menor o igual que el valor X del vector ``right``. Si los valores X son exactamente iguales, repite esta comprobación con los valores Y de los dos vectores, los valores Z de los dos vectores y, a continuación, con los valores W. Este operador es útil para ordenar vectores.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_eq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_eq_Vector4i>`

Devuelve ``true`` si los vectores son exactamente iguales.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gt_Vector4i>`

Compara dos vectores **Vector4i** comprobando primero si el valor X del vector izquierdo es mayor que el valor X del vector ``right``. Si los valores X son exactamente iguales, repite esta comprobación con los valores Y de los dos vectores, los valores Z de los dos vectores y, a continuación, con los valores W. Este operador es útil para ordenar vectores.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gte_Vector4i>`

Compara dos vectores **Vector4i** comprobando primero si el valor X del vector izquierdo es mayor o igual que el valor X del vector ``right``. Si los valores X son exactamente iguales, repite esta comprobación con los valores Y de los dos vectores, los valores Z de los dos vectores y, a continuación, con los valores W. Este operador es útil para ordenar vectores.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_idx_int>`

Accede a los componentes del vector usando su ``index``. ``v[0]`` es equivalente a ``v.x``, ``v[1]`` es equivalente a ``v.y``, ``v[2]`` es equivalente a ``v.z``, y ``v[3]`` es equivalente a ``v.w``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector4i_operator_unplus>`

Devuelve el mismo valor como si el ``+`` no estuviera ahí. El ``+`` unario no hace nada, pero a veces puede hacer que tu código sea más legible.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector4i_operator_unminus>`

Devuelve el valor negativo del **Vector4i**. Esto es lo mismo que escribir ``Vector4i(-v.x, -v.y, -v.z, -v.w)``. Esta operación invierte la dirección del vector manteniendo la misma magnitud.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
