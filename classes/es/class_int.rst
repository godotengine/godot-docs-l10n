:github_url: hide

.. _class_int:

int
===

Un tipo incorporado para enteros.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Tipo de entero con signo de 64 bits. Esto significa que puede tomar valores desde ``-2^63`` hasta ``2^63 - 1``, es decir, desde ``-9223372036854775808`` hasta ``9223372036854775807``. Cuando excede estos límites, se ajustará (wrapping around).

Los **int** se pueden convertir automáticamente a :ref:`float<class_float>`\ s cuando sea necesario, por ejemplo, al pasarlos como argumentos en funciones. El :ref:`float<class_float>` será lo más cercano posible al entero original.

Del mismo modo, los :ref:`float<class_float>` se pueden convertir automáticamente en **int**\ s. Esto truncará el :ref:`float<class_float>`, descartando cualquier cosa después del punto decimal.

\ **Nota:** En un contexto booleano, un **int** se evaluará como ``false`` si es igual a ``0``, y como ``true`` en caso contrario.


.. tabs::

 .. code-tab:: gdscript

    var x: int = 1 # x es 1
    x = 4.2 # x es 4, porque 4.2 se trunca
    var max_int = 9223372036854775807 # El valor más grande que un int puede almacenar
    max_int += 1 # max_int es -9223372036854775808, porque se ajustó

 .. code-tab:: csharp

    int x = 1; // x es 1
    x = (int)4.2; // x es 4, porque 4.2 se trunca
    // Usamos long a continuación, porque el int de GDScript es de 64 bits mientras que el int de C# es de 32 bits.
    long maxLong = 9223372036854775807; // El valor más grande que un long puede almacenar
    maxLong++; // maxLong es ahora -9223372036854775808, porque se ajustó.

    // Alternativamente con el tipo int de 32 bits de C#, que tiene un valor máximo más pequeño.
    int maxInt = 2147483647; // El valor más grande que un int puede almacenar
    maxInt++; // maxInt es ahora -2147483648, porque se ajustó



Puedes usar el literal ``0b`` para la representación binaria, el literal ``0x`` para la representación hexadecimal, y el símbolo ``_`` para separar números largos y mejorar la legibilidad.


.. tabs::

 .. code-tab:: gdscript

    var x = 0b1001 # x es 9
    var y = 0xF5 # y es 245
    var z = 10_000_000 # z es 10000000

 .. code-tab:: csharp

    int x = 0b1001; // x es 9
    int y = 0xF5; // y es 245
    int z = 10_000_000; // z es 10000000



.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ )                                     |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`int<class_int>`\ )       |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`String<class_String>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`bool<class_bool>`\ )     |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`float<class_float>`\ )   |
   +-----------------------+---------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_int_operator_neq_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_int_operator_neq_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator %<class_int_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator &<class_int_operator_bwand_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`operator *<class_int_operator_mul_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_int_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_int_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`     | :ref:`operator *<class_int_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_int_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`     | :ref:`operator *<class_int_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_int_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>`     | :ref:`operator *<class_int_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_int_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator *<class_int_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_int_operator_pow_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator **<class_int_operator_pow_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_int_operator_sum_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator +<class_int_operator_sum_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_int_operator_dif_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator -<class_int_operator_dif_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_int_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator /<class_int_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_int_operator_lt_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_int_operator_lt_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator \<\<<class_int_operator_bwsl_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_int_operator_lte_float>`\ (\ right\: :ref:`float<class_float>`\ )              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_int_operator_lte_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_int_operator_eq_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_int_operator_eq_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_int_operator_gt_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_int_operator_gt_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_int_operator_gte_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_int_operator_gte_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator >><class_int_operator_bwsr_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator ^<class_int_operator_bwxor_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator unary+<class_int_operator_unplus>`\ (\ )                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator unary-<class_int_operator_unminus>`\ (\ )                                                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator |<class_int_operator_bwor_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator ~<class_int_operator_bwnot>`\ (\ )                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_int_constructor_int:

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ ) :ref:`🔗<class_int_constructor_int>`

Construye un **int** con un valor de ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`int<class_int>`\ )

Construye un **int** como copia del **int** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`String<class_String>`\ )

Construye un nuevo **int** a partir de un :ref:`String<class_String>`, siguiendo las mismas reglas que :ref:`String.to_int()<class_String_method_to_int>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`bool<class_bool>`\ )

Construye un nuevo **int** a partir de un :ref:`bool<class_bool>`. ``true`` se convierte en ``1`` y ``false`` se convierte en ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`float<class_float>`\ )

Construye un nuevo **int** a partir de un :ref:`float<class_float>`. Esto truncará el :ref:`float<class_float>`, descartando cualquier cosa después del punto flotante.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_int_operator_neq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_neq_float>`

Devuelve ``true`` si el **int** no es equivalente al :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_neq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_neq_int>`

Devuelve ``true`` si los **int**\ s no son iguales.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mod_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_mod_int>`

Devuelve el resto de la división de dos **int**\ s. Usa división truncada, la cual devuelve un número negativo si el dividendo es negativo. Si esto no es lo deseado, considera usar :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>`.

::

    print(6 % 2) # Imprime 0
    print(11 % 4) # Imprime 3
    print(-5 % 3) # Imprime -2

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwand_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator &**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwand_int>`

Realiza la operación ``AND`` a nivel de bits.

::

    print(0b1100 & 0b1010) # Imprime 8 (binario 1000)

Esto es útil para recuperar banderas binarias de una variable.

::

    var flags = 0b101
    # Comprueba si el primer o segundo bit están activados.
    if flags & 0b011:
        do_stuff() # Esta línea se ejecutará.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_int_operator_mul_Color>`

Multiplica cada componente del :ref:`Color<class_Color>` por el **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_int_operator_mul_Quaternion>`

Multiplica cada componente del :ref:`Quaternion<class_Quaternion>` por el **int**. Esta operación no es significativa por sí misma, pero puede ser usada como parte de una expresión mayor.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_int_operator_mul_Vector2>`

Multiplica cada componente del :ref:`Vector2<class_Vector2>` por el **int**.

::

    print(2 * Vector2(1, 4)) # Imprime (2, 8)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_int_operator_mul_Vector2i>`

Multiplica cada componente del :ref:`Vector2i<class_Vector2i>` por el **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_int_operator_mul_Vector3>`

Multiplica cada componente del :ref:`Vector3<class_Vector3>` por el **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_int_operator_mul_Vector3i>`

Multiplica cada componente del :ref:`Vector3i<class_Vector3i>` por el **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_int_operator_mul_Vector4>`

Multiplica cada componente del :ref:`Vector4<class_Vector4>` por el **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_int_operator_mul_Vector4i>`

Multiplica cada componente del :ref:`Vector4i<class_Vector4i>` por el **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_mul_float>`

Multiplica el :ref:`float<class_float>` por el **int**. El resultado es un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_mul_int>`

Multiplica los dos **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_pow_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_pow_float>`

Eleva un **int** a una potencia de :ref:`float<class_float>`. El resultado es un :ref:`float<class_float>`.

::

    print(2 ** 0.5) # Imprime 1.4142135623731

.. rst-class:: classref-item-separator

----

.. _class_int_operator_pow_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ****\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_pow_int>`

Eleva el **int** izquierdo a una potencia del **int** derecho.

::

    print(3 ** 4) # Imprime 81

.. rst-class:: classref-item-separator

----

.. _class_int_operator_sum_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_sum_float>`

Suma el **int** y el :ref:`float<class_float>`. El resultado es un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_sum_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator +**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_sum_int>`

Suma los dos **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_dif_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_dif_float>`

Resta el :ref:`float<class_float>` del **int**. El resultado es un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_dif_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator -**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_dif_int>`

Resta los dos **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_div_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_div_float>`

Divide el **int** entre el :ref:`float<class_float>`. El resultado es un :ref:`float<class_float>`.

::

    print(10 / 3.0) # Imprime 3.33333333333333

.. rst-class:: classref-item-separator

----

.. _class_int_operator_div_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_div_int>`

Divide los dos **int**\ s. El resultado es un **int**. Esto truncará el resultado, descartando cualquier cosa después del punto flotante.

::

    print(6 / 2) # Imprime 3
    print(5 / 3) # Imprime 1

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_lt_float>`

Devuelve ``true`` si el **int** es menor que el :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_lt_int>`

Devuelve ``true`` si el **int** de la izquierda es menor que el **int** de la derecha.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwsl_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator <<**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwsl_int>`

Realiza la operación de desplazamiento a la izquierda a nivel de bits. Efectivamente es lo mismo que multiplicar por una potencia de 2.

::

    print(0b1010 << 1) # Imprime 20 (binario 10100)
    print(0b1010 << 3) # Imprime 80 (binario 1010000)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_lte_float>`

Devuelve ``true`` si el **int** es menor o igual que el :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_lte_int>`

Devuelve ``true`` si el **int** de la izquierda es menor o igual que el **int** de la derecha.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_eq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_eq_float>`

Devuelve ``true`` si el **int** es igual al :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_eq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_eq_int>`

Devuelve ``true`` si los dos **int**\ s son iguales.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_gt_float>`

Devuelve ``true`` si el **int** es mayor que el :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_gt_int>`

Devuelve ``true`` si el **int** de la izquierda es mayor que el **int** de la derecha.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_gte_float>`

Devuelve ``true`` si el **int** es mayor o igual que el :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_gte_int>`

Devuelve ``true`` si el **int** de la izquierda es mayor o igual que el **int** de la derecha.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwsr_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator >>**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwsr_int>`

Realiza la operación de desplazamiento a la derecha a nivel de bits. Efectivamente es lo mismo que dividir por una potencia de 2.

::

    print(0b1010 >> 1) # Imprime 5 (binario 101)
    print(0b1010 >> 2) # Imprime 2 (binario 10)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwxor_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ^**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwxor_int>`

Realiza la operación bit a bit ``XOR``.

::

    print(0b1100 ^ 0b1010) # Imprime 6 (binario 110)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_unplus:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator unary+**\ (\ ) :ref:`🔗<class_int_operator_unplus>`

Devuelve el mismo valor como si el ``+`` no estuviera ahí. El ``+`` unario no hace nada, pero a veces puede hacer que tu código sea más legible.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_unminus:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator unary-**\ (\ ) :ref:`🔗<class_int_operator_unminus>`

Devuelve el valor negado del **int**. Si es positivo, lo vuelve negativo. Si es negativo, lo vuelve positivo. Si es cero, no hace nada.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwor_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator |**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwor_int>`

Realiza la operación ``OR`` bit a bit.

::

    print(0b1100 | 0b1010) # Imprime 14 (binario 1110)

Esto es útil para almacenar indicadores binarios en una variable.

::

    var flags = 0
    flags |= 0b101 # Activa el primer y tercer bit.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwnot:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ~**\ (\ ) :ref:`🔗<class_int_operator_bwnot>`

Realiza la operación ``NOT`` bit a bit sobre el **int**. Debido al `complemento a 2 <https://en.wikipedia.org/wiki/Two%27s_complement>`__, es efectivamente igual a ``-(int + 1)``.

::

    print(~4) # Imprime -5
    print(~(-7)) # Imprime 6

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
