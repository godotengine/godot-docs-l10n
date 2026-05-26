:github_url: hide

.. _class_Vector2i:

Vector2i
========

Un vector 2D que utiliza coordenadas enteras.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una estructura de 2 elementos que se puede utilizar para representar coordenadas de cuadrícula 2D o cualquier otro par de enteros.

Utiliza coordenadas enteras y, por lo tanto, es preferible a :ref:`Vector2<class_Vector2>` cuando se requiere una precisión exacta. Ten en cuenta que los valores están limitados a 32 bits y, a diferencia de :ref:`Vector2<class_Vector2>`, esto no se puede configurar con una opción de compilación del motor. Utiliza :ref:`int<class_int>` o :ref:`PackedInt64Array<class_PackedInt64Array>` si se necesitan valores de 64 bits.

\ **Nota:** En un contexto booleano, un Vector2i se evaluará como ``false`` si es igual a ``Vector2i(0, 0)``. De lo contrario, un Vector2i siempre se evaluará como ``true``.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación matemática <../tutorials/math/index>`

- :doc:`Matemáticas vectoriales <../tutorials/math/vector_math>`

- `Esencia del álgebra lineal de 3Blue1Brown <https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector2i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector2i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ )                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )               |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ from\: :ref:`Vector2<class_Vector2>`\ )                 |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`abs<class_Vector2i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`aspect<class_Vector2i_method_aspect>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`clamp<class_Vector2i_method_clamp>`\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`clampi<class_Vector2i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector2i_method_distance_squared_to>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector2i_method_distance_to>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector2i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector2i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`max<class_Vector2i_method_max>`\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector2i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`maxi<class_Vector2i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`min<class_Vector2i_method_min>`\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector2i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`mini<class_Vector2i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`sign<class_Vector2i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`snapped<class_Vector2i_method_snapped>`\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`snappedi<class_Vector2i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector2i_operator_neq_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator %<class_Vector2i_operator_mod_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator %<class_Vector2i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator *<class_Vector2i_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`operator *<class_Vector2i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator *<class_Vector2i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator +<class_Vector2i_operator_sum_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator -<class_Vector2i_operator_dif_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator /<class_Vector2i_operator_div_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`operator /<class_Vector2i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator /<class_Vector2i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector2i_operator_lt_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector2i_operator_lte_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector2i_operator_eq_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector2i_operator_gt_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector2i_operator_gte_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector2i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator unary+<class_Vector2i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator unary-<class_Vector2i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Vector2i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector2i_Axis>`

.. _class_Vector2i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_X** = ``0``

Valor enumerado para el eje X. Devuelto por :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` y :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>`.

.. _class_Vector2i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_Y** = ``1``

Valor enumerado para el eje Y. Devuelto por :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` y :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Vector2i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector2i(0, 0)`` :ref:`🔗<class_Vector2i_constant_ZERO>`

Vector cero, un vector con todos los componentes ajustados a ``0``.

.. _class_Vector2i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector2i(1, 1)`` :ref:`🔗<class_Vector2i_constant_ONE>`

Un vector, un vector con todos los componentes ajustados a ``1``.

.. _class_Vector2i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector2i(-2147483648, -2147483648)`` :ref:`🔗<class_Vector2i_constant_MIN>`

Vector mínimo, un vector con todos los componentes iguales a ``INT32_MIN``. Se puede utilizar como un equivalente entero negativo de :ref:`Vector2.INF<class_Vector2_constant_INF>`.

.. _class_Vector2i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector2i(2147483647, 2147483647)`` :ref:`🔗<class_Vector2i_constant_MAX>`

Vector máximo, un vector con todos los componentes iguales a ``INT32_MAX``. Se puede utilizar como un equivalente entero de :ref:`Vector2.INF<class_Vector2_constant_INF>`.

.. _class_Vector2i_constant_LEFT:

.. rst-class:: classref-constant

**LEFT** = ``Vector2i(-1, 0)`` :ref:`🔗<class_Vector2i_constant_LEFT>`

Vector de la unidad izquierda. Representa la dirección de la izquierda.

.. _class_Vector2i_constant_RIGHT:

.. rst-class:: classref-constant

**RIGHT** = ``Vector2i(1, 0)`` :ref:`🔗<class_Vector2i_constant_RIGHT>`

Vector de la unidad derecha. Representa la dirección de la derecha.

.. _class_Vector2i_constant_UP:

.. rst-class:: classref-constant

**UP** = ``Vector2i(0, -1)`` :ref:`🔗<class_Vector2i_constant_UP>`

Vector de la unidad superior. Y está abajo en 2D, por lo que este vector apunta -Y.

.. _class_Vector2i_constant_DOWN:

.. rst-class:: classref-constant

**DOWN** = ``Vector2i(0, 1)`` :ref:`🔗<class_Vector2i_constant_DOWN>`

Vector de la unidad de descenso. Y está abajo en 2D, así que este vector apunta a +Y.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Vector2i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector2i_property_x>`

El componente X del vector. También se puede acceder utilizando la posición del índice ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector2i_property_y>`

El componente Y del vector. También se puede acceder usando la posición del índice ``[1]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Vector2i_constructor_Vector2i:

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ ) :ref:`🔗<class_Vector2i_constructor_Vector2i>`

Construye un **Vector2i** inicializado por defecto con todos los componentes establecidos en ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )

Construye un **Vector2i** como una copia del **Vector2i** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2<class_Vector2>`\ )

Construye un nuevo **Vector2i** a partir del :ref:`Vector2<class_Vector2>` dado truncando las partes fraccionarias de los componentes (redondeando hacia cero). Para un comportamiento diferente, considera pasar el resultado de :ref:`Vector2.ceil()<class_Vector2_method_ceil>`, :ref:`Vector2.floor()<class_Vector2_method_floor>` o :ref:`Vector2.round()<class_Vector2_method_round>` a este constructor en su lugar.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ )

Construye un nuevo **Vector2i** a partir de los ``x`` y ``y`` dados.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Vector2i_method_abs:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_abs>`

Devuelve un nuevo vector con todos los componentes en valores absolutos (es decir, positivos).

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **aspect**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_aspect>`

Devuelve la relación de aspecto de este vector, la relación de :ref:`x<class_Vector2i_property_x>` a :ref:`y<class_Vector2i_property_y>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clamp**\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_clamp>`

Devuelve un nuevo vector con todos los componentes limitados entre los componentes de ``min`` y ``max``, ejecutando :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_clampi>`

Devuelve un nuevo vector con todos los componentes restringidos entre ``min`` y ``max``, ejecutando :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_squared_to>`

Devuelve la distancia al cuadrado entre este vector y ``to``.

Este método se ejecuta más rápido que :ref:`distance_to()<class_Vector2i_method_distance_to>`, así que es preferible si necesitas comparar vectores o necesitas la distancia al cuadrado para alguna fórmula.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_to>`

Devuelve la distancia entre este vector y ``to``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length>`

Devuelve la longitud (magnitud) de este vector.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length_squared>`

Devuelve la longitud cuadrada (magnitud cuadrada) de este vector.

Este método funciona más rápido que el :ref:`length()<class_Vector2i_method_length>`, por lo que es preferible si necesitas comparar vectores o necesitas la distancia al cuadrado para alguna fórmula.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **max**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_max>`

Devuelve el máximo componente a componente de este y ``with``, equivalente a ``Vector2i(maxi(x, with.x), maxi(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_max_axis_index>`

Devuelve el eje del valor más alto del vector. Véanse las constantes ``AXIS_*``. Si todos los componentes son iguales, este método devuelve :ref:`AXIS_X<class_Vector2i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_maxi>`

Devuelve el máximo componente a componente de este y ``with``, equivalente a ``Vector2i(maxi(x, with), maxi(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **min**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_min>`

Devuelve el mínimo componente a componente de este y ``with``, equivalente a ``Vector2i(mini(x, with.x), mini(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_min_axis_index>`

Devuelve el eje del valor más bajo del vector. Véanse las constantes ``AXIS_*``. Si todos los componentes son iguales, este método devuelve :ref:`AXIS_Y<class_Vector2i_constant_AXIS_Y>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_mini:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_mini>`

Devuelve el mínimo componente a componente de este y ``with``, equivalente a ``Vector2i(mini(x, with), mini(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_sign:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_sign>`

Devuelve un nuevo vector con cada componente establecido en ``1`` si es positivo, ``-1`` si es negativo y ``0`` si es cero. El resultado es idéntico a llamar a :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snapped**\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_snapped>`

Devuelve un nuevo vector con cada componente ajustado al múltiplo más cercano del componente correspondiente en ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_snappedi>`

Devuelve un nuevo vector con cada componente ajustado al múltiplo más cercano de ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Vector2i_operator_neq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_neq_Vector2i>`

Devuelve ``true`` si los vectores no son iguales.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mod_Vector2i>`

Obtiene el resto de cada componente del **Vector2i** con los componentes del **Vector2i** dado. Esta operación utiliza la división truncada, que a menudo no es deseada ya que no funciona bien con números negativos. Considera usar :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` en su lugar si quieres manejar números negativos.

::

    print(Vector2i(10, -20) % Vector2i(7, 8)) # Imprime (3, -4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mod_int>`

Obtiene el resto de cada componente del **Vector2i** con el :ref:`int<class_int>` dado. Esta operación utiliza la división truncada, que a menudo no es deseada ya que no funciona bien con números negativos. Considera usar :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` en su lugar si quieres manejar números negativos.

::

    print(Vector2i(10, -20) % 7) # Imprime (3, -6)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mul_Vector2i>`

Multiplica cada componente de **Vector2i** por los componentes del **Vector2i** dado.

::

    print(Vector2i(10, 20) * Vector2i(3, 4)) # Imprime (30, 80)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_mul_float>`

Multiplica cada componente del **Vector2i** por el :ref:`float<class_float>` dado. Devuelve un :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(10, 15) * 0.9) # Imprime (9.0, 13.5)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mul_int>`

Multiplica cada componente de **Vector2i** por el :ref:`int<class_int>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_sum_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator +**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_sum_Vector2i>`

Suma cada componente de **Vector2i** por los componentes del **Vector2i** dado.

::

    print(Vector2i(10, 20) + Vector2i(3, 4)) # Imprime (13, 24)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_dif_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator -**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_dif_Vector2i>`

Resta cada componente de **Vector2i** por los componentes del **Vector2i** dado.

::

    print(Vector2i(10, 20) - Vector2i(3, 4)) # Imprime (7, 16)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_div_Vector2i>`

Divide cada componente de **Vector2i** entre los componentes del **Vector2i** dado.

::

    print(Vector2i(10, 20) / Vector2i(2, 5)) # Imprime (5, 4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_div_float>`

Divides each component of the **Vector2i** by the given :ref:`float<class_float>`. Returns a :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(1, 2) / 2.5) # Prints (0.4, 0.8)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_div_int>`

Divide cada componente de **Vector2i** por el :ref:`int<class_int>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lt_Vector2i>`

Compara dos vectores **Vector2i** comprobando primero si el valor X del vector de la izquierda es menor que el valor X del vector ``right``. Si los valores X son exactamente iguales, entonces repite esta comprobación con los valores Y de los dos vectores. Este operador es útil para ordenar vectores.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lte_Vector2i>`

Compara dos vectores **Vector2i** comprobando primero si el valor X del vector de la izquierda es menor o igual que el valor X del vector ``right``. Si los valores X son exactamente iguales, entonces repite esta comprobación con los valores Y de los dos vectores. Este operador es útil para ordenar vectores.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_eq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_eq_Vector2i>`

Devuelve ``true`` si los vectores son iguales.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gt_Vector2i>`

Compara dos vectores **Vector2i** comprobando primero si el valor X del vector de la izquierda es mayor que el valor X del vector ``right``. Si los valores X son exactamente iguales, entonces repite esta comprobación con los valores Y de los dos vectores. Este operador es útil para ordenar vectores.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gte_Vector2i>`

Compara dos vectores **Vector2i** comprobando primero si el valor X del vector de la izquierda es mayor o igual que el valor X del vector ``right``. Si los valores X son exactamente iguales, entonces repite esta comprobación con los valores Y de los dos vectores. Este operador es útil para ordenar vectores.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_idx_int>`

Accede a los componentes del vector utilizando su ``index``. ``v[0]`` es equivalente a ``v.x``, y ``v[1]`` es equivalente a ``v.y``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector2i_operator_unplus>`

Devuelve el mismo valor como si el ``+`` no estuviera ahí. El ``+`` unario no hace nada, pero a veces puede hacer que tu código sea más legible.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector2i_operator_unminus>`

Devuelve el valor negativo del **Vector2i**. Esto es lo mismo que escribir ``Vector2i(-v.x, -v.y)``. Esta operación invierte la dirección del vector manteniendo la misma magnitud.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
