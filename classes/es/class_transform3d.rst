:github_url: hide

.. _class_Transform3D:

Transform3D
===========

Una matriz de 3×4 que representa una transformación 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El tipo :ref:`Variant<class_Variant>` incorporado **Transform3D** es una matriz de 3×4 que representa una transformación en el espacio 3D. Contiene una :ref:`Basis<class_Basis>`, que por sí sola puede representar rotación, escala y cizallamiento. Además, combinada con su propio :ref:`origin<class_Transform3D_property_origin>`, la transformación también puede representar una traslación.

Para una introducción general, consulta el tutorial :doc:`Matrices y transformaciones <../tutorials/math/matrices_and_transforms>`.

\ **Nota:** Godot utiliza un `sistema de coordenadas a la derecha <https://en.wikipedia.org/wiki/Right-hand_rule>`__, que es un estándar común. Para las direcciones, la convención para los tipos incorporados como :ref:`Camera3D<class_Camera3D>` es que -Z apunte hacia delante (+X está a la derecha, +Y arriba y +Z atrás). Otros objetos pueden utilizar diferentes convenciones de dirección. Para más información, consulta el tutorial `convenciones de dirección de los recursos 3D <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__.

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

- `Demo de Juego en 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`basis<class_Transform3D_property_basis>`   | ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`origin<class_Transform3D_property_origin>` | ``Vector3(0, 0, 0)``                 |
   +-------------------------------+--------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ )                                                                                                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`affine_inverse<class_Transform3D_method_affine_inverse>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`interpolate_with<class_Transform3D_method_interpolate_with>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const|                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`inverse<class_Transform3D_method_inverse>`\ (\ ) |const|                                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform3D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const|                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform3D_method_is_finite>`\ (\ ) |const|                                                                                                                                                     |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`looking_at<class_Transform3D_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`orthonormalized<class_Transform3D_method_orthonormalized>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated<class_Transform3D_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated_local<class_Transform3D_method_rotated_local>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled<class_Transform3D_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled_local<class_Transform3D_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                        |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated<class_Transform3D_method_translated>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated_local<class_Transform3D_method_translated_local>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                               |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform3D_operator_neq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                             | :ref:`operator *<class_Transform3D_operator_mul_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator *<class_Transform3D_operator_mul_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`                           | :ref:`operator *<class_Transform3D_operator_mul_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`operator *<class_Transform3D_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform3D_operator_eq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Transform3D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_IDENTITY>`

La **Transform3D** identidad. Esta es una transformación sin traslación, sin rotación y con una escala de :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Su :ref:`basis<class_Transform3D_property_basis>` es igual a :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`. Esto también significa que:

- Su :ref:`Basis.x<class_Basis_property_x>` apunta a la derecha (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- Su :ref:`Basis.y<class_Basis_property_y>` apunta hacia arriba (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- Su :ref:`Basis.z<class_Basis_property_z>` apunta hacia atrás (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var transform = Transform3D.IDENTITY
    var basis = transform.basis
    print("| X | Y | Z | Origen")
    print("| %.f | %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x, transform.origin.x])
    print("| %.f | %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y, transform.origin.y])
    print("| %.f | %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z, transform.origin.z])
    # Imprime:
    # | X | Y | Z | Origen
    # | 1 | 0 | 0 | 0
    # | 0 | 1 | 0 | 0
    # | 0 | 0 | 1 | 0

Si un :ref:`Vector3<class_Vector3>`, un :ref:`AABB<class_AABB>`, un :ref:`Plane<class_Plane>`, un :ref:`PackedVector3Array<class_PackedVector3Array>` u otra **Transform3D** se transforma (multiplica) por esta constante, no se produce ninguna transformación.

\ **Nota:** En GDScript, esta constante es equivalente a crear un :ref:`Transform3D<class_Transform3D_constructor_Transform3D>` sin ningún argumento. Se puede utilizar para que tu código sea más claro y para que sea coherente con C#.

.. _class_Transform3D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_X>`

**Transform3D** con la reflexión aplicada perpendicular al plano YZ. Su :ref:`basis<class_Transform3D_property_basis>` es igual a :ref:`Basis.FLIP_X<class_Basis_constant_FLIP_X>`.

.. _class_Transform3D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Y>`

**Transform3D** con la reflexión aplicada perpendicular al plano XZ. Su :ref:`basis<class_Transform3D_property_basis>` es igual a :ref:`Basis.FLIP_Y<class_Basis_constant_FLIP_Y>`.

.. _class_Transform3D_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Z>`

**Transform3D** con la reflexión aplicada perpendicular al plano XY. Su :ref:`basis<class_Transform3D_property_basis>` es igual a :ref:`Basis.FLIP_Z<class_Basis_constant_FLIP_Z>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Transform3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Transform3D_property_basis>`

La :ref:`Basis<class_Basis>` de esta transformación. Está compuesta por 3 ejes (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>` y :ref:`Basis.z<class_Basis_property_z>`). Juntos, estos representan la rotación, la escala y el sesgado de la transformación.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_property_origin:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Transform3D_property_origin>`

El desplazamiento de traslación de esta transformación. En el espacio 3D, esto se puede representar como la posición.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Transform3D_constructor_Transform3D:

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ ) :ref:`🔗<class_Transform3D_constructor_Transform3D>`

Construye una **Transform3D** idéntica a :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`.

\ **Nota:** En C#, esto construye una **Transform3D** con su :ref:`origin<class_Transform3D_property_origin>` y los componentes de su :ref:`basis<class_Transform3D_property_basis>` establecidos a :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Construye un **Transform3D** como una copia del **Transform3D** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Construye un **Transform3D** a partir de un :ref:`Basis<class_Basis>` y un :ref:`Vector3<class_Vector3>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Construye una **Transform3D** a partir de una :ref:`Projection<class_Projection>`. Dado que **Transform3D** es una matriz de 3×4 y :ref:`Projection<class_Projection>` es una matriz de 4×4, esta operación recorta la última fila de la matriz de proyección (``from.x.w``, ``from.y.w``, ``from.z.w`` y ``from.w.w`` no se incluyen en la nueva transformación).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ )

Construye una **Transform3D** a partir de cuatro valores :ref:`Vector3<class_Vector3>` (también llamados columnas de la matriz).

Los tres primeros argumentos son los ejes de la :ref:`basis<class_Transform3D_property_basis>` (:ref:`Basis.x<class_Basis_property_x>`, :ref:`Basis.y<class_Basis_property_y>` y :ref:`Basis.z<class_Basis_property_z>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Transform3D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_affine_inverse>`

Devuelve la versión invertida de esta transformación. A diferencia de :ref:`inverse()<class_Transform3D_method_inverse>`, este método funciona con casi cualquier :ref:`basis<class_Transform3D_property_basis>`, incluyendo las no uniformes, pero es más lento. Véase también :ref:`Basis.inverse()<class_Basis_method_inverse>`.

\ **Nota:** Para que este método se devuelva correctamente, la :ref:`basis<class_Transform3D_property_basis>` de la transformación debe tener un determinante que no sea exactamente ``0.0`` (véase :ref:`Basis.determinant()<class_Basis_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **interpolate_with**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_interpolate_with>`

Devuelve el resultado de la interpolación lineal entre esta transformación y ``xform`` por el ``weight`` dado.

El ``weight`` debe estar entre ``0.0`` y ``1.0`` (inclusive). Se permiten valores fuera de este rango y se pueden utilizar para realizar *extrapolación* en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_inverse>`

Devuelve la `versión invertida de esta transformación <https://en.wikipedia.org/wiki/Invertible_matrix>`__. Véase también :ref:`Basis.inverse()<class_Basis_method_inverse>`.

\ **Nota:** Para que este método se devuelva correctamente, la :ref:`basis<class_Transform3D_property_basis>` de la transformación debe ser *ortonormal* (véase :ref:`orthonormalized()<class_Transform3D_method_orthonormalized>`). Eso significa que la base sólo debe representar una rotación. Si no es así, utiliza :ref:`affine_inverse()<class_Transform3D_method_affine_inverse>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const| :ref:`🔗<class_Transform3D_method_is_equal_approx>`

Devuelve ``true`` si esta transformación y ``xform`` son aproximadamente iguales, ejecutando :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_is_finite>`

Devuelve ``true`` si esta transformación es finita, llamando a :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Transform3D_method_looking_at>`

Devuelve una copia de esta transformación rotada de forma que el eje delantero (-Z) apunte hacia la posición ``target``.

El eje superior (+Y) apunta lo más cerca posible del vector ``up`` sin dejar de ser perpendicular al eje delantero. La transformación resultante se ortonormaliza. Se descarta la información existente de rotación, escala y sesgado de la transformación original. Los vectores ``target`` y ``up`` no pueden ser cero, no pueden ser paralelos entre sí y se definen en el espacio global/principal.

Si ``use_model_front`` es ``true``, el eje +Z (frontal del recurso) se trata como delantero (implica que +X está a la izquierda) y apunta hacia la posición ``target``. Por defecto, el eje -Z (frontal de la cámara) se trata como delantero (implica que +X está a la derecha).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_orthonormalized>`

Devuelve una copia de esta transformación con su :ref:`basis<class_Transform3D_property_basis>` ortonormalizada. Una base ortonormal es tanto *ortogonal* (los ejes son perpendiculares entre sí) como *normalizada* (los ejes tienen una longitud de ``1.0``), lo que también significa que sólo puede representar una rotación. Véase también :ref:`Basis.orthonormalized()<class_Basis_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated>`

Devuelve una copia de esta transformación rotada alrededor del ``axis`` dado por el ``angle`` dado (en radianes).

El ``axis`` debe ser un vector normalizado (véase :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Si ``angle`` es positivo, la base se gira en sentido contrario a las agujas del reloj alrededor del eje.

Este método es una versión optimizada de la multiplicación de la transformación ``X`` dada con una transformación de rotación ``R`` correspondiente desde la izquierda, es decir, ``R * X``.

Esto puede verse como una transformación con respecto al fotograma global/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated_local>`

Devuelve una copia de esta transformación rotada alrededor del ``axis`` dado por el ``angle`` dado (en radianes).

El ``axis`` debe ser un vector normalizado en el sistema de coordenadas local de la transformación. Por ejemplo, para girar alrededor del eje X local, utiliza :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`.

Este método es una versión optimizada de la multiplicación de la transformación ``X`` dada con una transformación de rotación ``R`` correspondiente desde la derecha, es decir, ``X * R``.

Esto puede verse como una transformación con respecto al fotograma local.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled>`

Devuelve una copia de esta transformación escalada por el factor ``scale`` dado.

Este método es una versión optimizada de multiplicar la transformación dada ``X`` con una transformación de escalado correspondiente ``S`` desde la izquierda, es decir, ``S * X``.

Esto puede verse como transformar con respecto al marco global/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled_local>`

Devuelve una copia de esta transformación escalada por el factor ``scale`` dado.

Este método es una versión optimizada de multiplicar la transformación dada ``X`` con una transformación de escalado correspondiente ``S`` desde la derecha, es decir, ``X * S``.

Esto puede verse como transformar con respecto al marco local.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated>`

Devuelve una copia de esta transformación trasladada por el ``offset`` dado.

Este método es una versión optimizada de multiplicar la transformación dada ``X`` con una transformación de traslación correspondiente ``T`` desde la izquierda, es decir, ``T * X``.

Esto puede verse como transformar con respecto al marco global/padre.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated_local>`

Devuelve una copia de esta transformación trasladada por el ``offset`` dado.

Este método es una versión optimizada de multiplicar la transformación dada ``X`` con una transformación de traslación correspondiente ``T`` desde la derecha, es decir, ``X * T``.

Esto puede verse como transformar con respecto al marco local.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Transform3D_operator_neq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_neq_Transform3D>`

Devuelve ``true`` si los componentes de ambas transformaciones no son iguales.

\ **Nota:** Debido a los errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>` en su lugar, lo cual es más fiable.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_AABB:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_Transform3D_operator_mul_AABB>`

Transforma (multiplica) el :ref:`AABB<class_AABB>` por esta matriz de transformación.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Transform3D_operator_mul_PackedVector3Array>`

Transforma (multiplica) cada elemento :ref:`Vector3<class_Vector3>` del :ref:`PackedVector3Array<class_PackedVector3Array>` dado por esta matriz de transformación.

En arrays más grandes, esta operación es mucho más rápida que transformar cada :ref:`Vector3<class_Vector3>` individualmente.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Plane:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Plane>`

Transforma (multiplica) el :ref:`Plane<class_Plane>` por esta matriz de transformación.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Transform3D>`

Transforma (multiplica) esta transformación por la transformación ``right``.

Esta es la operación realizada entre :ref:`Node3D<class_Node3D>` padre e hijo.

\ **Nota:** Si solo necesitas modificar un atributo de esta transformación, considera usar uno de los siguientes métodos en su lugar:

- Para traslación, véase :ref:`translated()<class_Transform3D_method_translated>` o :ref:`translated_local()<class_Transform3D_method_translated_local>`.

- Para rotación, véase :ref:`rotated()<class_Transform3D_method_rotated>` o :ref:`rotated_local()<class_Transform3D_method_rotated_local>`.

- Para escala, véase :ref:`scaled()<class_Transform3D_method_scaled>` o :ref:`scaled_local()<class_Transform3D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Vector3>`

Transforma (multiplica) el :ref:`Vector3<class_Vector3>` por esta matriz de transformación.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_mul_float>`

Multiplica todos los componentes de la **Transform3D** por el :ref:`float<class_float>` dado, incluyendo el :ref:`origin<class_Transform3D_property_origin>`. Esto afecta la escala de la transformación uniformemente, escalando el :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_mul_int>`

Multiplica todos los componentes de la **Transform3D** por el :ref:`int<class_int>` dado, incluyendo el :ref:`origin<class_Transform3D_property_origin>`. Esto afecta la escala de la transformación uniformemente, escalando el :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_div_float>`

Divide todos los componentes de la **Transform3D** por el :ref:`float<class_float>` dado, incluyendo el :ref:`origin<class_Transform3D_property_origin>`. Esto afecta la escala de la transformación uniformemente, escalando el :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_div_int>`

Divide todos los componentes de la **Transform3D** por el :ref:`int<class_int>` dado, incluyendo el :ref:`origin<class_Transform3D_property_origin>`. Esto afecta la escala de la transformación uniformemente, escalando el :ref:`basis<class_Transform3D_property_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_eq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_eq_Transform3D>`

Devuelve ``true`` si los componentes de ambas transformaciones son exactamente iguales.

\ **Nota:** Debido a errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_Transform3D_method_is_equal_approx>` en su lugar, lo cual es más fiable.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
