:github_url: hide

.. _class_Curve2D:

Curve2D
=======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Describe una curva de Bézier en el espacio 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase describe una curva de Bézier en el espacio 2D. Se utiliza principalmente para dar una forma a un :ref:`Path2D<class_Path2D>`, pero puede ser muestreada manualmente para otros propósitos.

Mantiene un cacheo de puntos precalculados a lo largo de la curva, para acelerar los cálculos.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`bake_interval<class_Curve2D_property_bake_interval>` | ``5.0`` |
   +---------------------------+------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`point_count<class_Curve2D_property_point_count>`     | ``0``   |
   +---------------------------+------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_Curve2D_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_points<class_Curve2D_method_clear_points>`\ (\ )                                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_baked_length<class_Curve2D_method_get_baked_length>`\ (\ ) |const|                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_baked_points<class_Curve2D_method_get_baked_points>`\ (\ ) |const|                                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_closest_offset<class_Curve2D_method_get_closest_offset>`\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                    |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_point<class_Curve2D_method_get_closest_point>`\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_in<class_Curve2D_method_get_point_in>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_out<class_Curve2D_method_get_point_out>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_point_position<class_Curve2D_method_get_point_position>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_Curve2D_method_remove_point>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`sample<class_Curve2D_method_sample>`\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const|                                                                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`sample_baked<class_Curve2D_method_sample_baked>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`sample_baked_with_rotation<class_Curve2D_method_sample_baked_with_rotation>`\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const|                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`samplef<class_Curve2D_method_samplef>`\ (\ fofs\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_in<class_Curve2D_method_set_point_in>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_out<class_Curve2D_method_set_point_out>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_Curve2D_method_set_point_position>`\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`tessellate<class_Curve2D_method_tessellate>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const|                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`tessellate_even_length<class_Curve2D_method_tessellate_even_length>`\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const|                                                         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Curve2D_property_bake_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_interval** = ``5.0`` :ref:`🔗<class_Curve2D_property_bake_interval>`

.. rst-class:: classref-property-setget

- |void| **set_bake_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_interval**\ (\ )

La distancia en píxeles entre dos puntos cacheados adyacentes. Cambiarlo obliga a recomponer la caché la próxima vez que se llame a la función :ref:`get_baked_points()<class_Curve2D_method_get_baked_points>` o :ref:`get_baked_length()<class_Curve2D_method_get_baked_length>`. Cuanto menor sea la distancia, más puntos en la caché y más memoria consumirá, así que úsala con cuidado.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_property_point_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **point_count** = ``0`` :ref:`🔗<class_Curve2D_property_point_count>`

.. rst-class:: classref-property-setget

- |void| **set_point_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_point_count**\ (\ )

El número de puntos que describen la curva.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Curve2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, in\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), out\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0), index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Curve2D_method_add_point>`

Añade un punto con la ``position`` especificada relativa a la posición de la propia curva, con los puntos de control ``in`` y ``out``. Añade el nuevo punto al final de la lista de puntos.

Si se proporciona un ``index``, el nuevo punto se inserta antes del punto existente identificado por el índice ``index``. Cada punto existente a partir de ``index`` se desplaza hacia abajo en la lista de puntos. El índice debe ser mayor o igual a ``0`` y no debe exceder el número de puntos existentes en la línea. Consulte :ref:`point_count<class_Curve2D_property_point_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Curve2D_method_clear_points>`

Elimina todos los puntos de la curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_baked_length**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_length>`

Devuelve la longitud total de la curva, basada en los puntos cacheados. Si se le da suficiente densidad (véase :ref:`bake_interval<class_Curve2D_property_bake_interval>`), debe ser bastante aproximada.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_baked_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_baked_points**\ (\ ) |const| :ref:`🔗<class_Curve2D_method_get_baked_points>`

Devuelve la caché de puntos como un :ref:`PackedVector2Array<class_PackedVector2Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_offset**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_offset>`

Devuelve el desplazamiento (offset) más cercano a ``to_point``. Este desplazamiento está destinado a ser utilizado en :ref:`sample_baked()<class_Curve2D_method_sample_baked>`.

\ ``to_point`` debe estar en el espacio local de esta curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point**\ (\ to_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_closest_point>`

Devuelve el punto más cercano en los segmentos horneados (baked), en el espacio local de la curva, a ``to_point``.

\ ``to_point`` debe estar en el espacio local de esta curva.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_in:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_in**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_in>`

Devuelve la posición del punto de control que precede al vértice ``idx``. La posición devuelta es relativa al vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola y devuelve ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_out:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_out**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_out>`

Devuelve la posición del punto de control que sale del vértice ``idx``. La posición devuelta es relativa al vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola y devuelve ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Curve2D_method_get_point_position>`

Devuelve la posición del vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola y devuelve ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Curve2D_method_remove_point>`

Elimina el punto ``idx`` de la curva. Envía un error a la consola si ``idx`` está fuera de los límites.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample**\ (\ idx\: :ref:`int<class_int>`, t\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_sample>`

Devuelve la posición entre el vértice ``idx`` y el vértice ``idx + 1``, donde ``t`` controla si el punto es el primer vértice (``t = 0.0``), el último vértice (``t = 1.0``) o un punto intermedio. Los valores de ``t`` fuera del rango (``0.0 <= t <= 1.0``) dan resultados extraños pero predecibles.

Si ``idx`` está fuera de los límites, se trunca al primer o último vértice y se ignora ``t``. Si la curva no tiene puntos, la función envía un error a la consola y devuelve ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **sample_baked**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked>`

Devuelve un punto dentro de la curva en la posición ``offset``, donde ``offset`` se mide como una distancia en píxeles a lo largo de la curva.

Para ello, busca los dos puntos almacenados en caché entre los que se encuentra el ``offset`` y luego interpola los valores. Esta interpolación es cúbica si ``cubic`` se establece en ``true``, o lineal si se establece en ``false``.

La interpolación cúbica tiende a seguir mejor las curvas, pero la lineal es más rápida (y a menudo, lo suficientemente precisa).

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_sample_baked_with_rotation:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **sample_baked_with_rotation**\ (\ offset\: :ref:`float<class_float>` = 0.0, cubic\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Curve2D_method_sample_baked_with_rotation>`

Similar to :ref:`sample_baked()<class_Curve2D_method_sample_baked>`, but returns :ref:`Transform2D<class_Transform2D>` that includes a rotation along the curve, with :ref:`Transform2D.origin<class_Transform2D_property_origin>` as the point position and the :ref:`Transform2D.x<class_Transform2D_property_x>` vector pointing in the direction of the path at that point. Returns an empty transform if the length of the curve is ``0``.

::

    var baked = curve.sample_baked_with_rotation(offset)
    # The returned Transform2D can be set directly.
    transform = baked
    # You can also read the origin and rotation separately from the returned Transform2D.
    position = baked.get_origin()
    rotation = baked.get_rotation()

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_samplef:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **samplef**\ (\ fofs\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Curve2D_method_samplef>`

Devuelve la posición en el vértice ``fofs``. Llama a :ref:`sample()<class_Curve2D_method_sample>` utilizando la parte entera de ``fofs`` como ``idx`` y su parte fraccionaria como ``t``.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_in:

.. rst-class:: classref-method

|void| **set_point_in**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_in>`

Establece la posición del punto de control que precede al vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola. La posición es relativa al vértice.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_out:

.. rst-class:: classref-method

|void| **set_point_out**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_out>`

Establece la posición del punto de control que sale del vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola. La posición es relativa al vértice.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ idx\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Curve2D_method_set_point_position>`

Establece la posición para el vértice ``idx``. Si el índice está fuera de los límites, la función envía un error a la consola.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_degrees\: :ref:`float<class_float>` = 4\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate>`

Devuelve una lista de puntos a lo largo de la curva, con una densidad de puntos controlada por la curvatura. Es decir, las partes más curvas tendrán más puntos que las partes más rectas.

Esta aproximación crea segmentos rectos entre cada punto y luego subdivide esos segmentos hasta que la forma resultante sea lo suficientemente similar.

\ ``max_stages`` controla cuántas subdivisiones puede tener un segmento de curva antes de que se considere lo suficientemente aproximado. Cada subdivisión divide el segmento por la mitad, por lo que las 5 etapas por defecto pueden significar hasta 32 subdivisiones por segmento de curva. ¡Aumenta este valor con cuidado!

\ ``tolerance_degrees`` controla cuántos grados puede desviarse el punto medio de un segmento respecto a la curva real antes de que el segmento deba subdividirse.

.. rst-class:: classref-item-separator

----

.. _class_Curve2D_method_tessellate_even_length:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **tessellate_even_length**\ (\ max_stages\: :ref:`int<class_int>` = 5, tolerance_length\: :ref:`float<class_float>` = 20.0\ ) |const| :ref:`🔗<class_Curve2D_method_tessellate_even_length>`

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
