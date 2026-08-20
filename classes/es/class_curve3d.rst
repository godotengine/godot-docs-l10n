:github_url: hide

.. _class_Curve3D:

Curve3D
=======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Describe una curva de Bézier en el espacio 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase describe una curva Bézier en el espacio 3D. Se utiliza principalmente para dar una forma a un :ref:`Path3D<class_Path3D>`, pero puede ser muestreada manualmente para otros propósitos.

Mantiene una caché de puntos precalculados a lo largo de la curva, para acelerar los cálculos posteriores.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`bake_interval<class_Curve3D_property_bake_interval>`                   | ``0.2``              |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`closed<class_Curve3D_property_closed>`                                 | ``false``            |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`point_count<class_Curve3D_property_point_count>`                       | ``0``                |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/in<class_Curve3D_property_point_{index}/in>`             | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/out<class_Curve3D_property_point_{index}/out>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point_{index}/position<class_Curve3D_property_point_{index}/position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`point_{index}/tilt<class_Curve3D_property_point_{index}/tilt>`         | ``0.0``              |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`up_vector_enabled<class_Curve3D_property_up_vector_enabled>`           | ``true``             |
   +-------------------------------+------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_Curve3D_method_add_point>`\ (\ position\: :ref:`Vector3<class_Vector3>`, in\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), out\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), index\: :ref:`int<class_int>` = -1\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_points<class_Curve3D_method_clear_points>`\ (\ )                                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_baked_length<class_Curve3D_method_get_baked_length>`\ (\ ) |const|                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_baked_points<class_Curve3D_method_get_baked_points>`\ (\ ) |const|                                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_baked_tilts<class_Curve3D_method_get_baked_tilts>`\ (\ ) |const|                                                                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_baked_up_vectors<class_Curve3D_method_get_baked_up_vectors>`\ (\ ) |const|                                                                                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_closest_offset<class_Curve3D_method_get_closest_offset>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_closest_point<class_Curve3D_method_get_closest_point>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                            |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_in<class_Curve3D_method_get_point_in>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_out<class_Curve3D_method_get_point_out>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_position<class_Curve3D_method_get_point_position>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_tilt<class_Curve3D_method_get_point_tilt>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_Curve3D_method_remove_point>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample<class_Curve3D_method_sample>`\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const|                                                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample_baked<class_Curve3D_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`sample_baked_up_vector<class_Curve3D_method_sample_baked_up_vector>`\ (\ offset\: :ref:`float<class_float>`, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const|                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`sample_baked_with_rotation<class_Curve3D_method_sample_baked_with_rotation>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const|                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`samplef<class_Curve3D_method_samplef>`\ (\ fofs\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_in<class_Curve3D_method_set_point_in>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_out<class_Curve3D_method_set_point_out>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_Curve3D_method_set_point_position>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_tilt<class_Curve3D_method_set_point_tilt>`\ (\ idx\: :ref:`int<class_int>`, tilt\: :ref:`float<class_float>`\ )                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`tessellate<class_Curve3D_method_tessellate>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const|                                                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`tessellate_even_length<class_Curve3D_method_tessellate_even_length>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 0.2\ ) |const|                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Curve3D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``0.2`` :ref:`🔗<class_Curve3D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

La distancia en metros entre dos puntos cacheados adyacentes. Cambiarlo obliga a recomponer la caché la próxima vez que se llame a la función :ref:`get_baked_points()<class_Curve3D_method_get_baked_points>` o :ref:`get_baked_length()<class_Curve3D_method_get_baked_length>`. Cuanto más pequeña sea la distancia, más puntos en la caché y más memoria consumirá, así que úsala con cuidado.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``false`` :ref:`🔗<class_Curve3D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Si es ``true`` y la curva tiene más de 2 puntos de control, el último punto y el primero se conectarán en un bucle.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve3D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

El número de puntos que describen la curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/in:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/in** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/in>`

La posición del punto de control que conduce al vértice en ``index``.

\ **Nota:** ``index`` es un valor en el rango ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/out:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/out** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/out>`

La posición del punto de control que sale del vértice en el ``índice``.

\ **Nota:** El ``índice`` es un valor en el rango de ``0 .. contar_puntos - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point_{index}/position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Curve3D_property_point_{index}/position>`

La posición del vértice en ``index``.

\ **Nota:** ``index`` es un valor en el rango ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_point_{index}/tilt:

.. rst-class:: classref-property

:ref:`float<class_float>` **point_{index}/tilt** = ``0.0`` :ref:`🔗<class_Curve3D_property_point_{index}/tilt>`

El ángulo de inclinación en radianes para el punto en ``index``.

\ **Nota:** ``index`` es un valor en el rango ``0 .. point_count - 1``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_property_up_vector_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **up_vector_enabled** = ``true`` :ref:`🔗<class_Curve3D_property_up_vector_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_up_vector_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_up_vector_enabled**\ (\ )

Si es ``true``, la curva calculará los vectores utilizados para la orientación. Esto se utiliza cuando :ref:`PathFollow3D.rotation_mode<class_PathFollow3D_property_rotation_mode>` se establece en :ref:`PathFollow3D.ROTATION_ORIENTED<class_PathFollow3D_constant_ROTATION_ORIENTED>`. Cambiar esto fuerza a que la caché se vuelva a calcular.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Curve3D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector3<class_Vector3>`, in\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), out\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve3D_method_add_point>`

Añade un punto con la ``position`` especificada relativa a la posición de la propia curva, con los puntos de control ``in`` y ``out``. Añade el nuevo punto al final de la lista de puntos.

Si se proporciona un ``index``, el nuevo punto se inserta antes del punto existente identificado por el índice ``index``. Cada punto existente a partir de ``index`` se desplaza hacia abajo en la lista de puntos. El índice debe ser mayor o igual a ``0`` y no debe exceder el número de puntos existentes en la línea. Consulte :ref:`point_count<class_Curve3D_property_point_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve3D_method_clear_points>`

Elimina todos los puntos de la curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_length>`

Devuelve la longitud total de la curva, basada en los puntos cacheados. Si se le da suficiente densidad (véase :ref:`bake_interval<class_Curve3D_property_bake_interval>`), debe ser bastante aproximada.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_points>`

Devuelve la caché de puntos como un :ref:`PackedVector3Array<class_PackedVector3Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_tilts:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_baked_tilts**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_tilts>`

Devuelve la caché de inclinaciones como un :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_baked_up_vectors:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_baked_up_vectors**\ (\ ) |const| :ref:`🔗<class_Curve3D_method_get_baked_up_vectors>`

Devuelve la caché de los vectores como un :ref:`PackedVector3Array<class_PackedVector3Array>`.

Si :ref:`up_vector_enabled<class_Curve3D_property_up_vector_enabled>` es ``false``, la caché estará vacía.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_closest_offset>`

Devuelve el desplazamiento (offset) más cercano a ``to_point``. Este desplazamiento está destinado a ser utilizado en :ref:`sample_baked()<class_Curve3D_method_sample_baked>` o :ref:`sample_baked_up_vector()<class_Curve3D_method_sample_baked_up_vector>`.

\ ``to_point`` debe estar en el espacio local de esta curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_closest_point>`

Devuelve el punto más cercano en los segmentos horneados (baked), en el espacio local de la curva, a ``to_point``.

\ ``to_point`` debe estar en el espacio local de esta curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_in>`

Devuelve la posición del punto de control que precede al vértice ``idx``. La posición devuelta es relativa al vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola y devuelve ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_out>`

Devuelve la posición del punto de control que sale del vértice ``idx``. La posición devuelta es relativa al vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola y devuelve ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_position>`

Devuelve la posición del vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola y devuelve ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_get_point_tilt:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_tilt**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve3D_method_get_point_tilt>`

Devuelve el ángulo de inclinación (tilt) en radianes para el punto ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola y devuelve ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve3D_method_remove_point>`

Elimina el punto ``idx`` de la curva. Envía un error a la consola si ``idx`` está fuera de los límites.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve3D_method_sample>`

Devuelve la posición entre el vértice ``idx`` y el vértice ``idx + 1``, donde ``t`` controla si el punto es el primer vértice (``t = 0.0``), el último vértice (``t = 1.0``) o un punto intermedio. Los valores de ``t`` fuera del rango (``0.0 <= t <= 1.0``) dan resultados extraños pero predecibles.

Si ``idx`` está fuera de los límites, se trunca al primer o último vértice y se ignora ``t``. Si la curva no tiene puntos, la función envía un error a la consola y devuelve ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked>`

Devuelve un punto dentro de la curva en la posición ``offset``, donde ``offset`` se mide como una distancia en unidades 3D a lo largo de la curva. Para ello, busca los dos puntos almacenados en caché entre los que se encuentra el ``offset`` y luego interpola los valores. Esta interpolación es cúbica si ``cubic`` se establece en ``true``, o lineal si se establece en ``false``.

La interpolación cúbica tiende a seguir mejor las curvas, pero la lineal es más rápida (y a menudo, lo suficientemente precisa).

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked_up_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **sample_baked_up_vector**\ (\ offset\: :ref:`float<class_float>`, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked_up_vector>`

Devuelve un vector "hacia arriba" (up vector) dentro de la curva en la posición ``offset``, donde ``offset`` se mide como una distancia en unidades 3D a lo largo de la curva. Para ello, busca los dos vectores "hacia arriba" almacenados en caché entre los que se encuentra el ``offset`` y luego interpola los valores. Si ``apply_tilt`` es ``true``, se aplica una inclinación (tilt) interpolada al vector "hacia arriba" interpolado.

Si la curva no tiene vectores "hacia arriba", la función envía un error a la consola y devuelve ``(0, 1, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false, apply_tilt\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve3D_method_sample_baked_with_rotation>`

Devuelve un :ref:`Transform3D<class_Transform3D>` con ``origin`` como posición del punto, ``basis.x`` como vector lateral, ``basis.y`` como vector superior, ``basis.z`` como vector frontal. Cuando la longitud de la curva es 0, no hay una forma razonable de calcular la rotación, todos los vectores se alinean con los ejes del espacio global. Véase también :ref:`sample_baked()<class_Curve3D_method_sample_baked>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve3D_method_samplef>`

Devuelve la posición en el vértice ``fofs``. Llama a :ref:`sample()<class_Curve3D_method_sample>` utilizando la parte entera de ``fofs`` como ``idx`` y su parte fraccionaria como ``t``.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_in>`

Establece la posición del punto de control que precede al vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola. La posición es relativa al vértice.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_out>`

Establece la posición del punto de control que sale del vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola. La posición es relativa al vértice.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Curve3D_method_set_point_position>`

Establece la posición para el vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_set_point_tilt:

.. rst-class:: classref-method

|void| **set_point_tilt**\ (\ idx\: :ref:`int<class_int>`, tilt\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Curve3D_method_set_point_tilt>`

Establece el ángulo de inclinación en radianes para el punto ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola.

La inclinación controla la rotación a lo largo del eje de visión que tendría un objeto que viaja por el trayecto. En el caso de una curva que controla un :ref:`PathFollow3D<class_PathFollow3D>`, esta inclinación es un desplazamiento sobre la inclinación natural que calcula el :ref:`PathFollow3D<class_PathFollow3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve3D_method_tessellate>`

Devuelve una lista de puntos a lo largo de la curva, con una densidad de puntos controlada por la curvatura. Es decir, las partes más curvas tendrán más puntos que las partes más rectas.

Esta aproximación crea segmentos rectos entre cada punto y luego subdivide esos segmentos hasta que la forma resultante sea lo suficientemente similar.

\ ``max_stages`` controla cuántas subdivisiones puede tener un segmento de curva antes de que se considere lo suficientemente aproximado. Cada subdivisión divide el segmento por la mitad, por lo que las 5 etapas por defecto pueden significar hasta 32 subdivisiones por segmento de curva. ¡Aumenta este valor con cuidado!

\ ``tolerance_degrees`` controla cuántos grados puede desviarse el punto medio de un segmento respecto a la curva real antes de que el segmento deba subdividirse.

.. rst-class:: classref-item-separator

----

.. _class_Curve3D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 0.2\ ) |const| :ref:`🔗<class_Curve3D_method_tessellate_even_length>`

Devuelve una lista de puntos a lo largo de la curva con una densidad casi uniforme. ``max_stages`` controla cuántas subdivisiones puede tener un segmento de curva antes de que se considere lo suficientemente aproximado. Cada subdivisión divide el segmento por la mitad, por lo que las 5 etapas por defecto pueden significar hasta 32 subdivisiones por segmento de curva. ¡Aumenta este valor con cuidado!

\ ``tolerance_length`` controla la distancia máxima permitida entre dos puntos vecinos antes de que el segmento deba subdividirse.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
