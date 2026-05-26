:github_url: hide

.. _class_Projection:

Projection
==========

Una matriz de 4×4 para transformaciones proyectivas 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A 4×4 matrix used for 3D projective transformations. It can represent transformations such as translation, rotation, scaling, shearing, and perspective division. It consists of four :ref:`Vector4<class_Vector4>` columns.

For purely linear transformations (translation, rotation, and scale), it is recommended to use :ref:`Transform3D<class_Transform3D>`, as it is more performant and requires less memory.

Used internally as :ref:`Camera3D<class_Camera3D>`'s projection matrix.

\ **Note:** In a boolean context, a projection will evaluate to ``false`` if it's equal to :ref:`IDENTITY<class_Projection_constant_IDENTITY>`. Otherwise, a projection will always evaluate to ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`w<class_Projection_property_w>` | ``Vector4(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`x<class_Projection_property_x>` | ``Vector4(1, 0, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`y<class_Projection_property_y>` | ``Vector4(0, 1, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`z<class_Projection_property_z>` | ``Vector4(0, 0, 1, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ )                                                                                                                                                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_depth_correction<class_Projection_method_create_depth_correction>`\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_fit_aabb<class_Projection_method_create_fit_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_for_hmd<class_Projection_method_create_for_hmd>`\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum<class_Projection_method_create_frustum>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum_aspect<class_Projection_method_create_frustum_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_light_atlas_rect<class_Projection_method_create_light_atlas_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal<class_Projection_method_create_orthogonal>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal_aspect<class_Projection_method_create_orthogonal_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective<class_Projection_method_create_perspective>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective_hmd<class_Projection_method_create_perspective_hmd>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Projection_method_determinant>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`flipped_y<class_Projection_method_flipped_y>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_aspect<class_Projection_method_get_aspect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_far_plane_half_extents<class_Projection_method_get_far_plane_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fov<class_Projection_method_get_fov>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fovy<class_Projection_method_get_fovy>`\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static|                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_lod_multiplier<class_Projection_method_get_lod_multiplier>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_pixels_per_meter<class_Projection_method_get_pixels_per_meter>`\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`           | :ref:`get_projection_plane<class_Projection_method_get_projection_plane>`\ (\ plane\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_viewport_half_extents<class_Projection_method_get_viewport_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_far<class_Projection_method_get_z_far>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_near<class_Projection_method_get_z_near>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`inverse<class_Projection_method_inverse>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_orthogonal<class_Projection_method_is_orthogonal>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`jitter_offseted<class_Projection_method_jitter_offseted>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`perspective_znear_adjusted<class_Projection_method_perspective_znear_adjusted>`\ (\ new_znear\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_Projection_operator_neq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`operator *<class_Projection_operator_mul_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_Projection_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_Projection_operator_eq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator []<class_Projection_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Projection_Planes:

.. rst-class:: classref-enumeration

enum **Planes**: :ref:`🔗<enum_Projection_Planes>`

.. _class_Projection_constant_PLANE_NEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_NEAR** = ``0``

El valor del índice del plano de recorte cercano de la proyección.

.. _class_Projection_constant_PLANE_FAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_FAR** = ``1``

El valor del índice del plano de recorte lejano de la proyección.

.. _class_Projection_constant_PLANE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_LEFT** = ``2``

El valor del índice del plano de recorte izquierdo de la proyección.

.. _class_Projection_constant_PLANE_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_TOP** = ``3``

El valor del índice del plano de recorte superior de la proyección.

.. _class_Projection_constant_PLANE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_RIGHT** = ``4``

El valor del índice del plano de recorte derecho de la proyección.

.. _class_Projection_constant_PLANE_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_BOTTOM** = ``5``

El valor del índice del plano de recorte inferior de la proyección.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Projection_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)`` :ref:`🔗<class_Projection_constant_IDENTITY>`

Una **Projection** sin transformación definida. Cuando se aplica a otras estructuras de datos, no se realiza ninguna transformación.

.. _class_Projection_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Projection_constant_ZERO>`

Una **Projection** con todos los valores inicializados a 0. Cuando se aplique a otras estructuras de datos, se pondrán a cero.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Projection_property_w:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **w** = ``Vector4(0, 0, 0, 1)`` :ref:`🔗<class_Projection_property_w>`

El vector W de la matriz de proyección (columna 3). Equivalente al índice ``3`` del array.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_x:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **x** = ``Vector4(1, 0, 0, 0)`` :ref:`🔗<class_Projection_property_x>`

El vector X de la matriz de proyección (columna 0). Equivalente al índice ``0`` del array.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_y:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **y** = ``Vector4(0, 1, 0, 0)`` :ref:`🔗<class_Projection_property_y>`

El vector Y de la matriz de proyección (columna 1). Equivalente al índice ``1`` del array.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_z:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **z** = ``Vector4(0, 0, 1, 0)`` :ref:`🔗<class_Projection_property_z>`

El vector Z de la matriz de proyección (columna 2). Equivalente al índice ``2`` del array.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Projection_constructor_Projection:

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ ) :ref:`🔗<class_Projection_constructor_Projection>`

Construye una **Projection** inicializada por defecto idéntica a :ref:`IDENTITY<class_Projection_constant_IDENTITY>`.

\ **Nota:** En C#, esto construye una **Projection** idéntica a :ref:`ZERO<class_Projection_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Construye una **Projection** como una copia de la **Projection** dada.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Construye una Projection como una copia del :ref:`Transform3D<class_Transform3D>` dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ )

Construye una **Projection** a partir de cuatro valores :ref:`Vector4<class_Vector4>` (columnas de la matriz).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Projection_method_create_depth_correction:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_depth_correction**\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Projection_method_create_depth_correction>`

Crea una nueva **Projection** que proyecta posiciones desde un rango de profundidad de ``-1`` a ``1`` a uno que va de ``0`` a ``1``, e invierte las posiciones proyectadas verticalmente, según ``flip_y``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_fit_aabb:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_fit_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static| :ref:`🔗<class_Projection_method_create_fit_aabb>`

Crea una nueva **Projection** que escala una proyección dada para ajustarse a un :ref:`AABB<class_AABB>` determinado en el espacio de proyección.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_for_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_for_hmd**\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_for_hmd>`

Crea una nueva **Projection** para proyectar posiciones en una pantalla montada en la cabeza con la relación de aspecto X:Y dada, la distancia entre los ojos, el ancho de la pantalla, la distancia a la lente, el factor de sobremuestreo y los planos de recorte de profundidad.

\ ``eye`` crea la proyección para el ojo izquierdo cuando se establece en 1, o el ojo derecho cuando se establece en 2.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_frustum>`

Crea una nueva **Projection** que proyecta posiciones en un frustum con los planos de recorte dados.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_frustum_aspect>`

Crea una nueva **Projection** que proyecta posiciones en un frustum con el tamaño dado, la relación de aspecto X:Y, el desplazamiento y los planos de recorte.

\ ``flip_fov`` determina si el campo de visión de la proyección se invierte sobre su diagonal.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_light_atlas_rect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_light_atlas_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static| :ref:`🔗<class_Projection_method_create_light_atlas_rect>`

Crea una nueva **Projection** que proyecta posiciones en el :ref:`Rect2<class_Rect2>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal>`

Crea una nueva **Projection** que proyecta posiciones utilizando una proyección ortogonal con los planos de recorte dados.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal_aspect>`

Crea una nueva **Projection** que proyecta posiciones usando una proyección ortogonal con el tamaño dado, la relación de aspecto X:Y y los planos de recorte.

\ ``flip_fov`` determina si el campo de visión de la proyección se invierte sobre su diagonal.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_perspective>`

Crea una nueva **Projection** que proyecta posiciones usando una proyección en perspectiva con el campo de visión del eje Y dado (en grados), la relación de aspecto X:Y y los planos de recorte.

\ ``flip_fov`` determina si el campo de visión de la proyección se invierte sobre su diagonal.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective_hmd**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_perspective_hmd>`

Crea una nueva **Projection** que proyecta posiciones usando una proyección en perspectiva con el campo de visión del eje Y dado (en grados), la relación de aspecto X:Y y las distancias de recorte. La proyección se ajusta para una pantalla montada en la cabeza con la distancia dada entre los ojos y la distancia a un punto en el que se puede enfocar.

\ ``eye`` crea la proyección para el ojo izquierdo cuando se establece en 1, o el ojo derecho cuando se establece en 2.

\ ``flip_fov`` determina si el campo de visión de la proyección se invierte sobre su diagonal.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Projection_method_determinant>`

Devuelve un valor escalar que es el factor con signo por el cual las áreas son escaladas por esta matriz. Si el signo es negativo, la matriz invierte la orientación del área.

El determinante se puede utilizar para calcular la invertibilidad de una matriz o resolver sistemas lineales de ecuaciones que involucran a la matriz, entre otras aplicaciones.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_flipped_y:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **flipped_y**\ (\ ) |const| :ref:`🔗<class_Projection_method_flipped_y>`

Devuelve una copia de esta **Projection** con los signos de los valores de la columna Y invertidos.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_aspect**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_aspect>`

Devuelve la relación de aspecto X:Y del viewport de esta **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_far_plane_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_far_plane_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_far_plane_half_extents>`

Devuelve las dimensiones del plano de recorte lejano de la proyección, divididas entre dos.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_fov>`

Devuelve el campo de visión horizontal de la proyección (en grados).

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fovy:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fovy**\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_get_fovy>`

Devuelve el campo de visión vertical de la proyección (en grados) asociado con el campo de visión horizontal dado (en grados) y la relación de aspecto.

\ **Nota:** A diferencia de la mayoría de los métodos de **Projection**, se espera que ``aspect`` sea 1 dividido por la relación de aspecto X:Y.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_lod_multiplier:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_lod_multiplier**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_lod_multiplier>`

Devuelve el factor por el cual se escala el nivel de detalle visible mediante esta **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_pixels_per_meter:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_pixels_per_meter**\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_pixels_per_meter>`

Devuelve ``for_pixel_width`` dividido por el ancho del viewport medido en metros en el plano cercano, después de aplicar esta **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_projection_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_projection_plane**\ (\ plane\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_projection_plane>`

Devuelve el plano de recorte de esta **Projection** cuyo índice se indica en ``plane``.

\ ``plane`` debe ser igual a uno de :ref:`PLANE_NEAR<class_Projection_constant_PLANE_NEAR>`, :ref:`PLANE_FAR<class_Projection_constant_PLANE_FAR>`, :ref:`PLANE_LEFT<class_Projection_constant_PLANE_LEFT>`, :ref:`PLANE_TOP<class_Projection_constant_PLANE_TOP>`, :ref:`PLANE_RIGHT<class_Projection_constant_PLANE_RIGHT>` o :ref:`PLANE_BOTTOM<class_Projection_constant_PLANE_BOTTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_viewport_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_viewport_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_viewport_half_extents>`

Devuelve las dimensiones del plano del viewport sobre el que esta **Projection** proyecta posiciones, dividido por dos.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_far:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_far**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_far>`

Devuelve la distancia para esta **Projection** más allá de la cual se recortan las posiciones.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_near:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_near**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_near>`

Devuelve la distancia para esta **Projection** antes de la cual se recortan las posiciones.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_inverse:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **inverse**\ (\ ) |const| :ref:`🔗<class_Projection_method_inverse>`

Devuelve una **Projection** que realiza la inversa de la transformación proyectiva de esta **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_is_orthogonal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_orthogonal**\ (\ ) |const| :ref:`🔗<class_Projection_method_is_orthogonal>`

Devuelve ``true`` si esta **Projection** realiza una proyección ortogonal.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_jitter_offseted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **jitter_offseted**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Projection_method_jitter_offseted>`

Devuelve una **Projection** con los valores X e Y del :ref:`Vector2<class_Vector2>` dado agregados al primer y segundo valor de la columna final respectivamente.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_perspective_znear_adjusted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **perspective_znear_adjusted**\ (\ new_znear\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Projection_method_perspective_znear_adjusted>`

Devuelve una **Projection** con la distancia de recorte cercana ajustada a ``new_znear``.

\ **Nota:** La **Projection** original debe ser una proyección en perspectiva.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Projection_operator_neq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_neq_Projection>`

Devuelve ``true`` si las proyecciones no son iguales.

\ **Nota:** Debido a errores de precisión de punto flotante, esto puede devolver ``true``, incluso si las proyecciones son virtualmente iguales. Un método ``is_equal_approx`` puede ser añadido en una futura versión de Godot.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Projection:

.. rst-class:: classref-operator

:ref:`Projection<class_Projection>` **operator ***\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_mul_Projection>`

Devuelve una **Projection** que aplica las transformaciones combinadas de esta **Projection** y ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_Projection_operator_mul_Vector4>`

Proyecta (multiplica) el :ref:`Vector4<class_Vector4>` dado por esta matriz **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_eq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_eq_Projection>`

Devuelve ``true`` si las proyecciones son iguales.

\ **Nota:** Debido a errores de precisión de punto flotante, esto puede devolver ``false``, incluso si las proyecciones son virtualmente iguales. Un método ``is_equal_approx`` puede ser añadido en una futura versión de Godot.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Projection_operator_idx_int>`

Devuelve la columna de la **Projection** con el índice dado.

Los índices están en el siguiente orden: x, y, z, w.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
