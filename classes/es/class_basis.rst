:github_url: hide

.. _class_Basis:

Basis
=====

Una matriz de 3×3 para representar la rotación y la escala 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El tipo :ref:`Variant<class_Variant>` incorporado **Basis** es una `matriz <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__ de 3×3 utilizada para representar rotación, escala y cizallamiento en 3D. Se utiliza frecuentemente dentro de un :ref:`Transform3D<class_Transform3D>`.

Un **Basis** está compuesto por 3 vectores de eje, cada uno representando una columna de la matriz: :ref:`x<class_Basis_property_x>`, :ref:`y<class_Basis_property_y>` y :ref:`z<class_Basis_property_z>`. La longitud de cada eje (:ref:`Vector3.length()<class_Vector3_method_length>`) influye en la escala de la base, mientras que la dirección de todos los ejes influye en la rotación. Por lo general, estos ejes son perpendiculares entre sí. Sin embargo, cuando rotas cualquier eje individualmente, la base se vuelve cizallada. Aplicar una base cizallada a un modelo 3D hará que el modelo aparezca distorsionado.

Un **Basis** es:

- **Ortogonal** si sus ejes son perpendiculares entre sí.

- **Normalizado** si la longitud de cada eje es ``1.0``.

- **Uniforme** si todos los ejes comparten la misma longitud (consulta :ref:`get_scale()<class_Basis_method_get_scale>`).

- **Ortonormal** si es tanto ortogonal como normalizado, lo que le permite representar solo rotaciones (consulta :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

- **Conforme** si es tanto ortogonal como uniforme, lo que asegura que no esté distorsionado.

Para una introducción general, consulta el tutorial :doc:`Matrices y transformaciones <../tutorials/math/matrices_and_transforms>`.

\ **Nota:** Godot utiliza un `sistema de coordenadas derecho <https://en.wikipedia.org/wiki/Right-hand_rule>`__, que es un estándar común. Para las direcciones, la convención para tipos incorporados como :ref:`Camera3D<class_Camera3D>` es que -Z apunte hacia adelante (+X es derecha, +Y es arriba y +Z es atrás). Otros objetos pueden usar diferentes convenciones de dirección. Para más información, consulta el tutorial `Convenciones de dirección de activos 3D <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__.

\ **Nota:** Las matrices de base se exponen en orden `column-major <https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html>`__, que es el mismo que OpenGL. Sin embargo, se almacenan internamente en orden row-major, que es el mismo que DirectX.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación matemática <../tutorials/math/index>`

- :doc:`Matrices y transformaciones <../tutorials/math/matrices_and_transforms>`

- :doc:`Usar transformaciones 3D <../tutorials/3d/using_transforms>`

- `Demo de Transformación de Matriz <https://godotengine.org/asset-library/asset/2787>`__

- `Demo de Plataformas en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Demo de Juego en 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`x<class_Basis_property_x>` | ``Vector3(1, 0, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`y<class_Basis_property_y>` | ``Vector3(0, 1, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`z<class_Basis_property_z>` | ``Vector3(0, 0, 1)`` |
   +-------------------------------+----------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ )                                                                                                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Basis_method_determinant>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_euler<class_Basis_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static|                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_scale<class_Basis_method_from_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Basis_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`get_rotation_quaternion<class_Basis_method_get_rotation_quaternion>`\ (\ ) |const|                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_scale<class_Basis_method_get_scale>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inverse<class_Basis_method_inverse>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_conformal<class_Basis_method_is_conformal>`\ (\ ) |const|                                                                                                                                                |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Basis_method_is_equal_approx>`\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const|                                                                                                           |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Basis_method_is_finite>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`looking_at<class_Basis_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`orthonormalized<class_Basis_method_orthonormalized>`\ (\ ) |const|                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`rotated<class_Basis_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled<class_Basis_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled_local<class_Basis_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`slerp<class_Basis_method_slerp>`\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotx<class_Basis_method_tdotx>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdoty<class_Basis_method_tdoty>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotz<class_Basis_method_tdotz>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`transposed<class_Basis_method_transposed>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Basis_operator_neq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator *<class_Basis_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Basis_operator_eq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator []<class_Basis_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )            |
   +-------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Basis_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_IDENTITY>`

La identidad **Basis**. Esta es una base ortonormal sin rotación, sin cizallamiento y con una escala de :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Esto también significa que:

- El elemento :ref:`x<class_Basis_property_x>` apunta a la derecha (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- El elemento :ref:`y<class_Basis_property_y>` apunta hacia arriba (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- El elemento :ref:`z<class_Basis_property_z>` apunta hacia atrás (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var basis = Basis.IDENTITY
    print("| X | Y | Z")
    print("| %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x])
    print("| %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y])
    print("| %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z])
    # Imprime:
    # | X | Y | Z
    # | 1 | 0 | 0
    # | 0 | 1 | 0
    # | 0 | 0 | 1

Si un :ref:`Vector3<class_Vector3>` u otro **Basis** se transforma (multiplica) por esta constante, no se produce ninguna transformación.

\ **Nota:** En GDScript, esta constante equivale a crear un :ref:`Basis<class_Basis_constructor_Basis>` sin argumentos. Se puede usar para que el código sea más claro y para mantener la coherencia con C#.

.. _class_Basis_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_X>`

Cuando cualquier base se multiplica por :ref:`FLIP_X<class_Basis_constant_FLIP_X>`, se invierten todos los componentes del eje :ref:`x<class_Basis_property_x>` (la columna X).

Cuando :ref:`FLIP_X<class_Basis_constant_FLIP_X>` se multiplica por cualquier base, se invierte el componente :ref:`Vector3.x<class_Vector3_property_x>` de todos los ejes (la fila X).

.. _class_Basis_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_Y>`

Cuando cualquier base se multiplica por :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>`, se invierten todos los componentes del eje :ref:`y<class_Basis_property_y>` (la columna Y).

Cuando :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` se multiplica por cualquier base, se invierte el componente :ref:`Vector3.y<class_Vector3_property_y>` de todos los ejes (la fila Y).

.. _class_Basis_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)`` :ref:`🔗<class_Basis_constant_FLIP_Z>`

Cuando cualquier base se multiplica por :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>`, se anulan todos los componentes del eje :ref:`z<class_Basis_property_z>` (la columna Z).

Cuando :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` se multiplica por cualquier base, se anula el componente :ref:`Vector3.z<class_Vector3_property_z>` de todos los ejes (la fila Z).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Basis_property_x:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **x** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_Basis_property_x>`

El eje X de la base y la columna ``0`` de la matriz.

En la base identidad, este vector apunta a la derecha (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_y:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **y** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_Basis_property_y>`

El eje Y de la base y la columna ``1`` de la matriz.

En la base identidad, este vector apunta hacia arriba (:ref:`Vector3.UP<class_Vector3_constant_UP>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_z:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **z** = ``Vector3(0, 0, 1)`` :ref:`🔗<class_Basis_property_z>`

El eje Z de la base y la columna ``2`` de la matriz.

En la base identidad, este vector apunta hacia atrás (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Basis_constructor_Basis:

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ ) :ref:`🔗<class_Basis_constructor_Basis>`

Construye una **Basis** idéntica a :ref:`IDENTITY<class_Basis_constant_IDENTITY>`.

\ **Nota:** En C#, esto construye una **Basis** con todos sus componentes establecidos a :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Basis<class_Basis>`\ )

Construye una **Basis** como una copia de la **Basis** dada.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

Construye una **Basis** que solo representa la rotación, girada alrededor del ``axis`` según el ``angle`` dado, en radianes. El eje debe ser un vector normalizado.

\ **Nota:** Esto es equivalente a usar :ref:`rotated()<class_Basis_method_rotated>` en la base :ref:`IDENTITY<class_Basis_constant_IDENTITY>`. Si se requiere más de un ángulo, considere usar :ref:`from_euler()<class_Basis_method_from_euler>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

Construye una **Basis** que solo representa la rotación del :ref:`Quaternion<class_Quaternion>` dado.

\ **Nota:** Los cuaterniones *solo* almacenan rotación, no escala. Por esta razón, las conversiones de **Basis** a :ref:`Quaternion<class_Quaternion>` no siempre se pueden revertir.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ )

Construye una **Basis** a partir de tres vectores de eje. Estas son las columnas de la matriz base.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Basis_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Basis_method_determinant>`

Returns the `determinant <https://en.wikipedia.org/wiki/Determinant>`__ of this basis's matrix. For advanced math, this number can be used to determine a few attributes:

- If the determinant is exactly ``0.0``, the basis is not invertible (see :ref:`inverse()<class_Basis_method_inverse>`).

- If the determinant is a negative number, the basis represents a negative scale.

\ **Note:** If the basis's scale is the same for every axis, its determinant is always that scale by the power of 3.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_euler:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static| :ref:`🔗<class_Basis_method_from_euler>`

Construye una nueva **Basis** que solo representa la rotación respecto al :ref:`Vector3<class_Vector3>` dado de `ángulos de Euler <https://en.wikipedia.org/wiki/Euler_angles>`__, en radianes.

- El :ref:`Vector3.x<class_Vector3_property_x>` debe contener el ángulo alrededor del :ref:`x<class_Basis_property_x>` (cabeceo);

- El :ref:`Vector3.y<class_Vector3_property_y>` debe contener el ángulo alrededor del :ref:`y<class_Basis_property_y>` (guiñada);

- El :ref:`Vector3.z<class_Vector3_property_z>` debe contener el ángulo alrededor del :ref:`z<class_Basis_property_z>` (balanceo).


.. tabs::

 .. code-tab:: gdscript

    # Crea una Base cuyo eje z apunta hacia abajo.
    var my_basis = Basis.from_euler(Vector3(TAU / 4, 0, 0))

    print(my_basis.z) # Imprime (0.0, -1.0, 0.0)

 .. code-tab:: csharp

    // Crea una base cuyo eje z apunta hacia abajo.
    var myBasis = Basis.FromEuler(new Vector3(Mathf.Tau / 4.0f, 0.0f, 0.0f));

    GD.Print(myBasis.Z); // Imprime (0, -1, 0)



El orden de cada rotación consecutiva se puede cambiar con ``order`` (ver constantes :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). Por defecto, se utiliza la convención YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): la base gira primero alrededor del eje Y (guiñada), luego del eje X (cabeceo) y, por último, del eje Z (balanceo). Al utilizar el método opuesto :ref:`get_euler()<class_Basis_method_get_euler>`, este orden se invierte.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_scale:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Basis_method_from_scale>`

Construye una nueva **Basis** que solo representa la escala, sin rotación ni deformación, a partir del vector ``scale`` dado.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.from_scale(Vector3(2, 4, 8))

    print(my_basis.x) # Imprime (2.0, 0.0, 0.0)
    print(my_basis.y) # Imprime (0.0, 4.0, 0.0)
    print(my_basis.z) # Imprime (0.0, 0.0, 8.0)

 .. code-tab:: csharp

    var myBasis = Basis.FromScale(new Vector3(2.0f, 4.0f, 8.0f));

    GD.Print(myBasis.X); // Imprime (2, 0, 0)
    GD.Print(myBasis.Y); // Imprime (0, 4, 0)
    GD.Print(myBasis.Z); // Imprime (0, 0, 8)



\ **Nota:** En álgebra lineal, la matriz de esta base también se conoce como `matriz diagonal <https://en.wikipedia.org/wiki/Diagonal_matrix>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Basis_method_get_euler>`

Devuelve la rotación de esta base como un :ref:`Vector3<class_Vector3>` de `ángulos de Euler <https://en.wikipedia.org/wiki/Euler_angles>`__, en radianes. Para el valor devuelto:

- El :ref:`Vector3.x<class_Vector3_property_x>` contiene el ángulo alrededor del :ref:`x<class_Basis_property_x>` (cabeceo);

- El :ref:`Vector3.y<class_Vector3_property_y>` contiene el ángulo alrededor del :ref:`y<class_Basis_property_y>` (guiñada);

- El :ref:`Vector3.z<class_Vector3_property_z>` contiene el ángulo alrededor del :ref:`z<class_Basis_property_z>` (balanceo).

El orden de cada rotación consecutiva se puede cambiar con ``order`` (ver constantes :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). Por defecto, se utiliza la convención YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`): primero se calcula Z (balanceo), luego X (cabeceo) y, por último, Y (guiñada). Al usar el método opuesto :ref:`from_euler()<class_Basis_method_from_euler>`, este orden se invierte.

\ **Nota:** Para que este método funcione correctamente, la base debe ser *ortonormal* (véase :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

\ **Nota:** Los ángulos de Euler son mucho más intuitivos, pero no son adecuados para matemáticas 3D. Por ello, considere utilizar el método :ref:`get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>`, que devuelve un :ref:`Quaternion<class_Quaternion>`.

\ **Nota:** En el panel Inspector, la rotación de una base suele mostrarse en ángulos de Euler (en grados), como ocurre con la propiedad :ref:`Node3D.rotation<class_Node3D_property_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_rotation_quaternion:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_rotation_quaternion**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_rotation_quaternion>`

Devuelve la rotación de esta base como un :ref:`Quaternion<class_Quaternion>`.

\ **Nota:** Los cuaterniones son mucho más adecuados para matemáticas 3D, pero son menos intuitivos. Para interfaces de usuario, considere usar el método :ref:`get_euler()<class_Basis_method_get_euler>`, que devuelve ángulos de Euler.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_scale>`

Devuelve la longitud de cada eje de esta base como un :ref:`Vector3<class_Vector3>`. Si la base no se deforma, este valor es el factor de escala. No se ve afectado por la rotación.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(2, 0, 0),
        Vector3(0, 4, 0),
        Vector3(0, 0, 8)
    )
    # Cualquier rotación de la base conserva su escala.
    my_basis = my_basis.rotated(Vector3.UP, TAU / 2)
    my_basis = my_basis.rotated(Vector3.RIGHT, TAU / 4)

    print(my_basis.get_scale()) # Imprime (2.0, 4.0, 8.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        Vector3(2.0f, 0.0f, 0.0f),
        Vector3(0.0f, 4.0f, 0.0f),
        Vector3(0.0f, 0.0f, 8.0f)
    );
    // Rotar la base de cualquier forma conserva su escala.
    myBasis = myBasis.Rotated(Vector3.Up, Mathf.Tau / 2.0f);
    myBasis = myBasis.Rotated(Vector3.Right, Mathf.Tau / 4.0f);

    GD.Print(myBasis.Scale); // Imprime (2, 4, 8)



\ **Nota:** Si el valor devuelto por el método :ref:`determinant()<class_Basis_method_determinant>` es negativo, la escala también es negativa.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_inverse:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **inverse**\ (\ ) |const| :ref:`🔗<class_Basis_method_inverse>`

Devuelve la `inversa de la matriz de esta base <https://en.wikipedia.org/wiki/Invertible_matrix>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_conformal>`

Devuelve ``true`` si esta base es conforme. Una base conforme es tanto *ortogonal* (los ejes son perpendiculares entre sí) como *uniforme* (los ejes comparten la misma longitud). Este método puede ser especialmente útil durante los cálculos físicos.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_Basis_method_is_equal_approx>`

Devuelve ``true`` si esta base y ``b`` son aproximadamente iguales, llamando a :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` en todos los componentes vectoriales.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_finite>`

Devuelve ``true`` si esta base es finita, llamando a :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` en todos los componentes vectoriales.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_looking_at:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Basis_method_looking_at>`

Crea una nueva **Basis** con una rotación tal que el eje frontal (-Z) apunta hacia la posición ``target``.

Por defecto, el eje -Z (frontal de la cámara) se considera frontal (lo que implica que +X apunta a la derecha). Si ``use_model_front`` es ``true``, el eje +Z (frontal del objeto) se considera frontal (lo que implica que +X apunta a la izquierda) y apunta hacia la posición ``target``.

El eje vertical (+Y) apunta lo más cerca posible del vector ``up``, manteniéndose perpendicular al eje frontal. La base resultante está ortonormalizada (véase :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

\ ``target`` y ``up`` no pueden ser :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>` y no deben ser colineales para evitar rotaciones no deseadas alrededor del eje Z local.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Basis_method_orthonormalized>`

Devuelve la versión ortonormalizada de esta base. Una base ortonormal es tanto *ortogonal* (los ejes son perpendiculares entre sí) como *normalizada* (los ejes tienen una longitud de ``1.0``), lo que también significa que solo puede representar una rotación.

A menudo resulta útil llamar a este método para evitar errores de redondeo en una base giratoria:


.. tabs::

 .. code-tab:: gdscript

    # Rota este Node3D en cada fotograma.
    func _process(delta):
        basic = basis.rotated(Vector3.UP, TAU * delta)
        basic = basis.rotated(Vector3.RIGHT, TAU * delta)
        basic = basis.orthonormalized()

 .. code-tab:: csharp

    // Rota este Node3D en cada fotograma.
    public override void _Process(double delta)
    {
        Basis = Basis.Rotated(Vector3.Up, Mathf.Tau * (float)delta)
                .Rotated(Vector3.Right, Mathf.Tau * (float)delta)
                .Orthonormalized();
    }



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_rotated:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_rotated>`

Devuelve una copia de esta base rotada alrededor del eje ``axis`` dado, con el ángulo ``angle`` dado (en radianes).

El eje ``axis`` debe ser un vector normalizado (véase :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Si el ángulo ``angle`` es positivo, la base se rota en sentido antihorario alrededor del eje.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis.IDENTITY
    var angle = TAU / 2

    my_basis = my_basis.rotated(Vector3.UP, angle)     # Rotar alrededor del eje vertical (guiñada).
    my_basis = my_basis.rotated(Vector3.RIGHT, angle) # Rotar alrededor del eje horizontal (cabeceo).
    my_basis = my_basis.rotated(Vector3.BACK, angle)  # Rotar alrededor del eje vertical (balanceo).

 .. code-tab:: csharp

    var myBasis = Basis.Identity;
    var ángulo = Mathf.Tau / 2.0f;

    myBasis = myBasis.Rotated(Vector3.Up, ángulo);      // Rotar alrededor del eje vertical (guiñada).
    myBasis = myBasis.Rotated(Vector3.Right, ángulo); // Rotar alrededor del eje horizontal (cabeceo).
    myBasis = myBasis.Rotated(Vector3.Back, ángulo);   // Rotar alrededor del eje vertical (balanceo).



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled>`

Devuelve esta base con los componentes de cada eje escalados según los componentes de ``scale`` especificados.

Las filas de la matriz base se multiplican por los componentes de ``scale``. Esta operación aplica una escala global (relativa a la matriz padre).


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled(Vector3(0, 2, -2))

    print(my_basis.x) # Imprime (0.0, 2.0, -2.0)
    print(my_basis.y) # Imprime (0.0, 4.0, -4.0)
    print(my_basis.z) # Imprime (0.0, 6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)

    myBasis = myBasis.Scaled(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // Imprime (0, 2, -2)
    GD.Print(myBasis.Y); // Imprime (0, 4, -4)
    GD.Print(myBasis.Z); // Imprime (0, 6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled_local:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled_local>`

Devuelve esta base con cada eje escalado por el componente correspondiente en el parámetro ``scale``.

Las columnas de la matriz base se multiplican por los componentes de ``scale``. Esta operación es una escala local (relativa a sí misma).


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    my_basis = my_basis.scaled_local(Vector3(0, 2, -2))

    print(my_basis.x) # Imprime (0.0, 0.0, 0.0)
    print(my_basis.y) # Imprime (4.0, 4.0, 4.0)
    print(my_basis.z) # Imprime (-6.0, -6.0, -6.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    myBasis = myBasis.ScaledLocal(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(myBasis.X); // Imprime (0, 0, 0)
    GD.Print(myBasis.Y); // Imprime (4, 4, 4)
    GD.Print(myBasis.Z); // Imprime (-6, -6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_slerp:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **slerp**\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_slerp>`

Realiza una interpolación esférica lineal con la base ``to``, dado un ``weight``. Tanto esta base como ``to`` deben representar una rotación.

\ **Ejemplo:** Rota suavemente un :ref:`Node3D<class_Node3D>` a la base objetivo a lo largo del tiempo, con un :ref:`Tween<class_Tween>`:

::

    var start_basis = Basis.IDENTITY
    var target_basis = Basis.IDENTITY.rotated(Vector3.UP, TAU / 2)

    func _ready():
        create_tween().tween_method(interpolate, 0.0, 1.0, 5.0).set_trans(Tween.TRANS_EXPO)

    func interpolate(weight):
        basic = start_basis.slerp(target_basis, weight)

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotx:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotx**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotx>`

Devuelve el producto escalar transpuesto entre ``with`` y el eje :ref:`x<class_Basis_property_x>` (ver :ref:`transposed()<class_Basis_method_transposed>`).

Esto es equivalente a ``basis.x.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdoty:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdoty**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdoty>`

Devuelve el producto escalar transpuesto entre ``with`` y el eje :ref:`y<class_Basis_property_y>` (ver :ref:`transposed()<class_Basis_method_transposed>`).

Esto es equivalente a ``basis.y.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotz:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotz**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotz>`

Devuelve el producto escalar transpuesto entre ``with`` y el eje :ref:`z<class_Basis_property_z>` (ver :ref:`transposed()<class_Basis_method_transposed>`).

Esto es equivalente a ``basis.z.dot(vector)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_transposed:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **transposed**\ (\ ) |const| :ref:`🔗<class_Basis_method_transposed>`

Devuelve la versión transpuesta de esta base. Esto convierte las columnas de la matriz base en filas y sus filas en columnas.


.. tabs::

 .. code-tab:: gdscript

    var my_basis = Basis(
        Vector3(1, 2, 3),
        Vector3(4, 5, 6),
        Vector3(7, 8, 9)
    )
    my_basis = my_basis.transposed()

    print(my_basis.x) # Imprime (1.0, 4.0, 7.0)
    print(my_basis.y) # Imprime (2.0, 5.0, 8.0)
    print(my_basis.z) # Imprime (3.0, 6.0, 9.0)

 .. code-tab:: csharp

    var myBasis = new Basis(
        new Vector3(1.0f, 2.0f, 3.0f),
        new Vector3(4.0f, 5.0f, 6.0f),
        new Vector3(7.0f, 8.0f, 9.0f)
    );
    myBasis = myBasis.Transposed();

    GD.Print(myBasis.X); // Imprime (1, 4, 7)
    GD.Print(myBasis.Y); // Imprime (2, 5, 8)
    GD.Print(myBasis.Z); // Imprime (3, 6, 9)



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Basis_operator_neq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_neq_Basis>`

Devuelve ``true`` si los componentes de ambas matrices **Basis** no son iguales.

\ **Nota:** Debido a errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>` en su lugar, ya que es más confiable.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Basis:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_mul_Basis>`

Transforma (multiplica) la base ``right`` por esta base.

Esta es la operación que se realiza entre los nodos :ref:`Node3D<class_Node3D>` padre e hijo.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Basis_operator_mul_Vector3>`

Transforma (multiplica) el vector ``right`` por esta base, devolviendo un :ref:`Vector3<class_Vector3>`.


.. tabs::

 .. code-tab:: gdscript

    # Base que intercambia los ejes X/Z y duplica la escala.
    var my_basis = Basis(Vector3(0, 2, 0), Vector3(2, 0, 0), Vector3(0, 0, 2))
    print(my_basis * Vector3(1, 2, 3)) # Imprime (4.0, 2.0, 6.0)

 .. code-tab:: csharp

    // Base que intercambia los ejes X/Z y duplica la escala.
    var myBasis = new Basis(new Vector3(0, 2, 0), new Vector3(2, 0, 0), new Vector3(0, 0, 2));
    GD.Print(myBasis * new Vector3(1, 2, 3)); // Imprime (4, 2, 6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_mul_float>`

Multiplica todos los componentes de la **Basis** por el :ref:`float<class_float>` dado. Esto afecta a la escala de la base de forma uniforme, redimensionando los 3 ejes por el valor de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_mul_int>`

Multiplica todos los componentes de la **Basis** por el :ref:`int<class_int>` dado. Esto afecta a la escala de la base de forma uniforme, redimensionando los 3 ejes por el valor de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_div_float>`

Divide todos los componentes de la **Basis** por el :ref:`float<class_float>` dado. Esto afecta a la escala de la base de forma uniforme, redimensionando los 3 ejes por el valor de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_div_int>`

Divide todos los componentes de la **Basis** por el :ref:`int<class_int>` dado. Esto afecta a la escala de la base de forma uniforme, redimensionando los 3 ejes por el valor de ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_eq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_eq_Basis>`

Devuelve ``true`` si los componentes de ambas matrices **Basis** son exactamente iguales.

\ **Nota:** Debido a errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>` en su lugar, ya que es más confiable.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_idx_int>`

Accede a cada eje (columna) de esta base por su índice. El índice ``0`` es lo mismo que :ref:`x<class_Basis_property_x>`, el índice ``1`` es lo mismo que :ref:`y<class_Basis_property_y>`, y el índice ``2`` es lo mismo que :ref:`z<class_Basis_property_z>`.

\ **Nota:** En C++, este operador accede a las filas de la matriz de la base, *no* a las columnas. Para el mismo comportamiento que los lenguajes de script, usa los métodos ``set_column`` y ``get_column``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
