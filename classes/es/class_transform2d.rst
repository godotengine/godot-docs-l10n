:github_url: hide

.. _class_Transform2D:

Transform2D
===========

Una matriz de 2×3 que representa una transformación 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

The **Transform2D** built-in :ref:`Variant<class_Variant>` type is a 2×3 `matrix <https://en.wikipedia.org/wiki/Matrix_(mathematics)>`__ representing a transformation in 2D space. It contains three :ref:`Vector2<class_Vector2>` values: :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>`, and :ref:`origin<class_Transform2D_property_origin>`. Together, they can represent translation, rotation, scale, and skew.

The :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` axes form a 2×2 matrix, known as the transform's **basis**. The length of each axis (:ref:`Vector2.length()<class_Vector2_method_length>`) influences the transform's scale, while the direction of all axes influence the rotation. Usually, both axes are perpendicular to one another. However, when you rotate one axis individually, the transform becomes skewed. Applying a skewed transform to a 2D sprite will make the sprite appear distorted.

For a general introduction, see the :doc:`Matrices and transforms <../tutorials/math/matrices_and_transforms>` tutorial.

\ **Note:** Unlike :ref:`Transform3D<class_Transform3D>`, there is no 2D equivalent to the :ref:`Basis<class_Basis>` type. All mentions of "basis" refer to the :ref:`x<class_Transform2D_property_x>` and :ref:`y<class_Transform2D_property_y>` components of **Transform2D**.

\ **Note:** In a boolean context, a Transform2D will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`. Otherwise, a Transform2D will always evaluate to ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación matemática <../tutorials/math/index>`

- :doc:`Matrices y transformaciones <../tutorials/math/matrices_and_transforms>`

- `Demo de Transformación de Matriz <https://godotengine.org/asset-library/asset/2787>`__

- `Demo de Juego en 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`origin<class_Transform2D_property_origin>` | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`x<class_Transform2D_property_x>`           | ``Vector2(1, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`y<class_Transform2D_property_y>`           | ``Vector2(0, 1)`` |
   +-------------------------------+--------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ )                                                                                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                            |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`affine_inverse<class_Transform2D_method_affine_inverse>`\ (\ ) |const|                                                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform<class_Transform2D_method_basis_xform>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform_inv<class_Transform2D_method_basis_xform_inv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`determinant<class_Transform2D_method_determinant>`\ (\ ) |const|                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_origin<class_Transform2D_method_get_origin>`\ (\ ) |const|                                                                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_rotation<class_Transform2D_method_get_rotation>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_scale<class_Transform2D_method_get_scale>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_skew<class_Transform2D_method_get_skew>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`interpolate_with<class_Transform2D_method_interpolate_with>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`inverse<class_Transform2D_method_inverse>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_conformal<class_Transform2D_method_is_conformal>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform2D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const|                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform2D_method_is_finite>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`looking_at<class_Transform2D_method_looking_at>`\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`orthonormalized<class_Transform2D_method_orthonormalized>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated<class_Transform2D_method_rotated>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated_local<class_Transform2D_method_rotated_local>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled<class_Transform2D_method_scaled>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled_local<class_Transform2D_method_scaled_local>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated<class_Transform2D_method_translated>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated_local<class_Transform2D_method_translated_local>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform2D_operator_neq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_Transform2D_operator_mul_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`operator *<class_Transform2D_operator_mul_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator *<class_Transform2D_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform2D_operator_eq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_Transform2D_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Transform2D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_IDENTITY>`

La **Transform2D** identidad. Es una transformación sin traslación, sin rotación y con una escala de :ref:`Vector2.ONE<class_Vector2_constant_ONE>`. Esto también significa que:

- :ref:`x<class_Transform2D_property_x>` apunta a la derecha (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`);

- :ref:`y<class_Transform2D_property_y>` apunta hacia abajo (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

::

    var transform = Transform2D.IDENTITY
    print("| X | Y | Origin")
    print("| %.f | %.f | %.f" % [transform.x.x, transform.y.x, transform.origin.x])
    print("| %.f | %.f | %.f" % [transform.x.y, transform.y.y, transform.origin.y])
    # Imprime:
    # | X | Y | Origen
    # | 1 | 0 | 0
    # | 0 | 1 | 0

Si un :ref:`Vector2<class_Vector2>`, un :ref:`Rect2<class_Rect2>`, un :ref:`PackedVector2Array<class_PackedVector2Array>`, u otro **Transform2D** es transformado (multiplicado) por esta constante, no ocurre ninguna transformación.

\ **Nota:** En GDScript, esta constante es equivalente a crear un :ref:`Transform2D<class_Transform2D_constructor_Transform2D>` sin ningún argumento. Puede usarse para hacer tu código más claro y por consistencia con C#.

.. _class_Transform2D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform2D(-1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_X>`

Cuando cualquier transformación es multiplicada por :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>`, niega todos los componentes del eje :ref:`x<class_Transform2D_property_x>` (la columna X).

Cuando :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` es multiplicado por cualquier transformación, niega el componente :ref:`Vector2.x<class_Vector2_property_x>` de todos los ejes (la fila X).

.. _class_Transform2D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform2D(1, 0, 0, -1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_Y>`

Cuando cualquier transformación se multiplica por :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>`, niega todos los componentes del eje :ref:`y<class_Transform2D_property_y>` (la columna Y).

Cuando :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` se multiplica por cualquier transformación, niega el componente :ref:`Vector2.y<class_Vector2_property_y>` de todos los ejes (la fila Y).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Transform2D_property_origin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **origin** = ``Vector2(0, 0)`` :ref:`🔗<class_Transform2D_property_origin>`

El desplazamiento de traslación de esta transformación, y la columna ``2`` de la matriz. En el espacio 2D, esto puede verse como la posición.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_x:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **x** = ``Vector2(1, 0)`` :ref:`🔗<class_Transform2D_property_x>`

El eje X de la base de la transformación, y la columna ``0`` de la matriz. Combinado con :ref:`y<class_Transform2D_property_y>`, esto representa la rotación, la escala y el sesgo de la transformación.

En la transformación identidad, este vector apunta a la derecha (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_y:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **y** = ``Vector2(0, 1)`` :ref:`🔗<class_Transform2D_property_y>`

El eje Y de la base de la transformación y la columna ``1`` de la matriz. Combinado con :ref:`x<class_Transform2D_property_x>`, representa la rotación, escala y sesgo de la transformación.

En la transformación identidad, este vector apunta hacia abajo (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Transform2D_constructor_Transform2D:

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ ) :ref:`🔗<class_Transform2D_constructor_Transform2D>`

Construye una **Transform2D** idéntica a :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`.

\ **Nota:** En C#, esto construye una **Transform2D** con todos sus componentes establecidos a :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )

Construye un **Transform2D** como una copia del **Transform2D** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Construye un **Transform2D** a partir de un ángulo (en radianes) y posición determinados.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Construye un **Transform2D** a partir de un ángulo (en radianes), escala, inclinación (en radianes) y posición determinados.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )

Construye un **Transform2D** a partir de 3 valores :ref:`Vector2<class_Vector2>` que representan el :ref:`x<class_Transform2D_property_x>`, el :ref:`y<class_Transform2D_property_y>` y el :ref:`origin<class_Transform2D_property_origin>` (las tres columnas de la matriz).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Transform2D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_affine_inverse>`

Devuelve la versión invertida de esta transformación. A diferencia de :ref:`inverse()<class_Transform2D_method_inverse>`, este método funciona con casi cualquier base, incluyendo las no uniformes, pero es más lento.

\ **Nota:** Para que este método se devuelva correctamente, la base de la transformación debe tener un determinante que no sea exactamente ``0.0`` (véase :ref:`determinant()<class_Transform2D_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform>`

Devuelve una copia del vector ``v``, transformado (multiplicado) por la matriz de la base de la transformación. A diferencia del operador de multiplicación (``*``), este método ignora el :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform_inv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform_inv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform_inv>`

Devuelve una copia del vector ``v``, transformado (multiplicado) por la matriz de la base de la transformación inversa (véase :ref:`inverse()<class_Transform2D_method_inverse>`). Este método ignora el :ref:`origin<class_Transform2D_property_origin>`.

\ **Nota:** Este método asume que la base de esta transformación es *ortonormal* (véase :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Si la base no es ortonormal, debería usarse ``transform.affine_inverse().basis_xform(vector)`` en su lugar (véase :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_determinant>`

Devuelve el `determinante <https://en.wikipedia.org/wiki/Determinant>`__ de la matriz de la base de esta transformación. Para matemáticas avanzadas, este número puede ser usado para determinar algunos atributos:

- Si el determinante es exactamente ``0.0``, la base no es invertible (véase :ref:`inverse()<class_Transform2D_method_inverse>`).

- Si el determinante es un número negativo, la base representa una escala negativa.

\ **Nota:** Si la escala de la base es la misma para cada eje, su determinante es siempre esa escala por la potencia de 2.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_origin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_origin**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_origin>`

Devuelve la traducción de esta transformación. Equivalente a :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rotation**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_rotation>`

Devuelve la rotación de esta transformación (en radianes). Esto es equivalente al ángulo de :ref:`x<class_Transform2D_property_x>` (véase :ref:`Vector2.angle()<class_Vector2_method_angle>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_scale>`

Devuelve la longitud de ambos :ref:`x<class_Transform2D_property_x>` e :ref:`y<class_Transform2D_property_y>`, como un :ref:`Vector2<class_Vector2>`. Si la base de esta transformación no está sesgada, este valor es el factor de escala. No se ve afectado por la rotación.


.. tabs::

 .. code-tab:: gdscript

    var mi_transformacion = Transform2D(
        Vector2(2, 0),
        Vector2(0, 4),
        Vector2(0, 0)
    )
    # Rotar la Transform2D de cualquier manera preserva su escala.
    mi_transformacion = mi_transformacion.rotated(TAU / 2)

    print(mi_transformacion.get_scale()) # Imprime (2.0, 4.0)

 .. code-tab:: csharp

    var miTransformacion = new Transform2D(
        Vector3(2.0f, 0.0f),
        Vector3(0.0f, 4.0f),
        Vector3(0.0f, 0.0f)
    );
    // Rotar la Transform2D de cualquier manera preserva su escala.
    miTransformacion = miTransformacion.Rotated(Mathf.Tau / 2.0f);

    GD.Print(miTransformacion.GetScale()); // Imprime (2, 4)



\ **Nota:** Si el valor devuelto por :ref:`determinant()<class_Transform2D_method_determinant>` es negativo, la escala también es negativa.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_skew:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skew**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_skew>`

Devuelve la desviación de esta transformación (en radianes).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **interpolate_with**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_interpolate_with>`

Devuelve el resultado de la interpolación lineal entre esta transformación y ``xform`` por el ``weight`` dado.

El ``weight`` debe estar entre ``0.0`` y ``1.0`` (inclusive). Se permiten valores fuera de este rango y se pueden utilizar para realizar *extrapolación* en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_inverse>`

Devuelve la versión ` invertida de esta transformación <https://en.wikipedia.org/wiki/Invertible_matrix>`__.

\ **Nota:** Para que este método se devuelva correctamente, la base de la transformación debe ser *ortonormal* (véase :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Eso significa que la base sólo debe representar una rotación. Si no es así, utiliza :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_conformal>`

Devuelve ``true`` si la base de esta transformación es conforme. Una base conforme es tanto *ortogonal* (los ejes son perpendiculares entre sí) como *uniforme* (los ejes comparten la misma longitud). Este método puede ser especialmente útil durante los cálculos de física.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const| :ref:`🔗<class_Transform2D_method_is_equal_approx>`

Devuelve ``true`` si esta transformación y ``xform`` son aproximadamente iguales, ejecutando :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_finite>`

Devuelve ``true`` si esta transformación es finita, llamando a :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **looking_at**\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Transform2D_method_looking_at>`

Devuelve una copia de la transformación rotada de tal manera que el eje X rotado apunte hacia la posición ``target``, en el espacio global.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_orthonormalized>`

Devuelve una copia de esta transformación con su base ortonormalizada. Una base ortonormal es tanto *ortogonal* (los ejes son perpendiculares entre sí) como *normalizada* (los ejes tienen una longitud de ``1.0``), lo que también significa que sólo puede representar una rotación.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated>`

Devuelve una copia de esta transformación rotada por el ``angle`` dado (en radianes).

Si ``angle`` es positivo, la transformación se rota en el sentido de las agujas del reloj.

Este método es una versión optimizada de la multiplicación de la transformación ``X`` dada con una transformación de rotación ``R`` correspondiente desde la izquierda, es decir, ``R * X``.

Esto puede verse como una transformación con respecto al fotograma global/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated_local**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated_local>`

Devuelve una copia de la transformación rotada por el ``angle`` dado (en radianes).

Este método es una versión optimizada de la multiplicación de la transformación ``X`` dada con una transformación de rotación ``R`` correspondiente desde la derecha, es decir, ``X * R``.

Esto puede verse como una transformación con respecto al fotograma local.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled>`

Devuelve una copia de la transformación escalada por el factor ``scale`` dado.

Este método es una versión optimizada de multiplicar la transformación dada ``X`` con una transformación de escalado correspondiente ``S`` desde la izquierda, es decir, ``S * X``.

Esto puede ser visto como una transformación con respecto al marco global/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled_local**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled_local>`

Devuelve una copia de la transformación escalada por el factor ``scale`` dado.

Este método es una versión optimizada de multiplicar la transformación dada ``X`` con una transformación de escalado correspondiente ``S`` desde la derecha, es decir, ``X * S``.

Esto puede ser visto como una transformación con respecto al marco local.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated>`

Devuelve una copia de la transformación trasladada por el ``offset`` dado.

Este método es una versión optimizada de multiplicar la transformación dada ``X`` con una transformación de traslación correspondiente ``T`` desde la izquierda, es decir, ``T * X``.

Esto puede ser visto como una transformación con respecto al marco global/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated_local**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated_local>`

Devuelve una copia de la transformación trasladada por el ``offset`` dado.

Este método es una versión optimizada de multiplicar la transformación dada ``X`` con una transformación de traslación correspondiente ``T`` desde la derecha, es decir, ``X * T``.

Esto puede ser visto como una transformación con respecto al marco local.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Transform2D_operator_neq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_neq_Transform2D>`

Devuelve ``true`` si los componentes de ambas transformaciones no son iguales.

\ **Nota:** Debido a los errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` en su lugar, lo cual es más fiable.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Transform2D_operator_mul_PackedVector2Array>`

Transforma (multiplica) cada elemento :ref:`Vector2<class_Vector2>` del :ref:`PackedVector2Array<class_PackedVector2Array>` dado por esta matriz de transformación.

En arrays más grandes, esta operación es mucho más rápida que transformar cada :ref:`Vector2<class_Vector2>` individualmente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Rect2:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Rect2>`

Transforma (multiplica) el :ref:`Rect2<class_Rect2>` por esta matriz de transformación.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Transform2D>`

Transforma (multiplica) esta transformación por la transformación ``right``.

Esta es la operación realizada entre los nodos :ref:`CanvasItem<class_CanvasItem>` padre e hijo.

\ **Nota:** Si necesitas modificar sólo un atributo de esta transformación, considera usar uno de los siguientes métodos, en su lugar:

- Para la traslación, mira :ref:`translated()<class_Transform2D_method_translated>` o :ref:`translated_local()<class_Transform2D_method_translated_local>`.

- Para la rotación, mira :ref:`rotated()<class_Transform2D_method_rotated>` o :ref:`rotated_local()<class_Transform2D_method_rotated_local>`.

- Para la escala, mira :ref:`scaled()<class_Transform2D_method_scaled>` o :ref:`scaled_local()<class_Transform2D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Vector2>`

Transforma (multiplica) el :ref:`Vector2<class_Vector2>` por esta matriz de transformación.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_mul_float>`

Multiplica todos los componentes del **Transform2D** por el :ref:`float<class_float>` dado, incluyendo el :ref:`origin<class_Transform2D_property_origin>`. Esto afecta la escala de la transformación uniformemente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_mul_int>`

Multiplica todos los componentes del **Transform2D** por el :ref:`int<class_int>` dado, incluyendo el :ref:`origin<class_Transform2D_property_origin>`. Esto afecta la escala de la transformación uniformemente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_div_float>`

Divide todos los componentes del **Transform2D** por el :ref:`float<class_float>` dado, incluyendo el :ref:`origin<class_Transform2D_property_origin>`. Esto afecta la escala de la transformación uniformemente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_div_int>`

Divide todos los componentes del **Transform2D** por el :ref:`int<class_int>` dado, incluyendo el :ref:`origin<class_Transform2D_property_origin>`. Esto afecta la escala de la transformación uniformemente.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_eq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_eq_Transform2D>`

Devuelve ``true`` si los componentes de ambas transformaciones son exactamente iguales.

\ **Nota:** Debido a errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` en su lugar, lo cual es más fiable.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_idx_int>`

Accede a cada eje (columna) de esta transformación por su índice. El índice ``0`` es el mismo que :ref:`x<class_Transform2D_property_x>`, el índice ``1`` es el mismo que :ref:`y<class_Transform2D_property_y>`, y el índice ``2`` es el mismo que :ref:`origin<class_Transform2D_property_origin>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
