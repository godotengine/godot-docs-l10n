:github_url: hide

.. _class_Polygon2D:

Polygon2D
=========

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un polígono 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un Polígono2D se define por un conjunto de puntos. Cada punto está conectado al siguiente, y el punto final está conectado al primero, resultando en un polígono cerrado. Los Polígonos2D pueden ser rellenados con color (sólido o gradiente) o rellenados con una textura dada.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`antialiased<class_Polygon2D_property_antialiased>`                     | ``false``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`color<class_Polygon2D_property_color>`                                 | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`internal_vertex_count<class_Polygon2D_property_internal_vertex_count>` | ``0``                    |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`invert_border<class_Polygon2D_property_invert_border>`                 | ``100.0``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`invert_enabled<class_Polygon2D_property_invert_enabled>`               | ``false``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`offset<class_Polygon2D_property_offset>`                               | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_Polygon2D_property_polygon>`                             | ``PackedVector2Array()`` |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`                           | :ref:`polygons<class_Polygon2D_property_polygons>`                           | ``[]``                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`skeleton<class_Polygon2D_property_skeleton>`                           | ``NodePath("")``         |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`texture<class_Polygon2D_property_texture>`                             |                          |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`texture_offset<class_Polygon2D_property_texture_offset>`               | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`texture_rotation<class_Polygon2D_property_texture_rotation>`           | ``0.0``                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`texture_scale<class_Polygon2D_property_texture_scale>`                 | ``Vector2(1, 1)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`uv<class_Polygon2D_property_uv>`                                       | ``PackedVector2Array()`` |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`     | :ref:`vertex_colors<class_Polygon2D_property_vertex_colors>`                 | ``PackedColorArray()``   |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_bone<class_Polygon2D_method_add_bone>`\ (\ path\: :ref:`NodePath<class_NodePath>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_bones<class_Polygon2D_method_clear_bones>`\ (\ )                                                                                                         |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`erase_bone<class_Polygon2D_method_erase_bone>`\ (\ index\: :ref:`int<class_int>`\ )                                                                            |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_bone_count<class_Polygon2D_method_get_bone_count>`\ (\ ) |const|                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`get_bone_path<class_Polygon2D_method_get_bone_path>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_bone_weights<class_Polygon2D_method_get_bone_weights>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_bone_path<class_Polygon2D_method_set_bone_path>`\ (\ index\: :ref:`int<class_int>`, path\: :ref:`NodePath<class_NodePath>`\ )                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_bone_weights<class_Polygon2D_method_set_bone_weights>`\ (\ index\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Polygon2D_property_antialiased:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **antialiased** = ``false`` :ref:`🔗<class_Polygon2D_property_antialiased>`

.. rst-class:: classref-property-setget

- |void| **set_antialiased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_antialiased**\ (\ )

Si es ``true``, los bordes del polígono tendrán antialiasing.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Polygon2D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

El color de relleno del polígono. Si se define :ref:`texture<class_Polygon2D_property_texture>`, se multiplicará por este color. También será el color por defecto para los vértices no definidos en :ref:`vertex_colors<class_Polygon2D_property_vertex_colors>`.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_internal_vertex_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **internal_vertex_count** = ``0`` :ref:`🔗<class_Polygon2D_property_internal_vertex_count>`

.. rst-class:: classref-property-setget

- |void| **set_internal_vertex_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_internal_vertex_count**\ (\ )

Número de vértices internos, utilizados para el mapeo UV.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_invert_border:

.. rst-class:: classref-property

:ref:`float<class_float>` **invert_border** = ``100.0`` :ref:`🔗<class_Polygon2D_property_invert_border>`

.. rst-class:: classref-property-setget

- |void| **set_invert_border**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_invert_border**\ (\ )

Relleno adicional aplicado al cuadro delimitador cuando :ref:`invert_enabled<class_Polygon2D_property_invert_enabled>` se establece como ``true``. Establecer este valor demasiado pequeño puede resultar en un error de "Polígono Erróneo".

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_invert_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert_enabled** = ``false`` :ref:`🔗<class_Polygon2D_property_invert_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_invert_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert_enabled**\ (\ )

Si es ``true``, el polígono se invertirá, conteniendo el área fuera de los puntos definidos y extendiéndose hasta :ref:`invert_border<class_Polygon2D_property_invert_border>`.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Polygon2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

El desplazamiento se aplicó a cada vértice.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_Polygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

La lista de vértices del polígono. El punto final estará conectado al primero.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_polygons:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **polygons** = ``[]`` :ref:`🔗<class_Polygon2D_property_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_polygons**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_polygons**\ (\ )

La lista de polígonos, en caso de que se represente más de uno. Cada polígono individual se almacena como un :ref:`PackedInt32Array<class_PackedInt32Array>` donde cada :ref:`int<class_int>` es un índice a un punto en :ref:`polygon<class_Polygon2D_property_polygon>`. Si está vacío, esta propiedad será ignorada, y el polígono único resultante se compondrá de todos los puntos en :ref:`polygon<class_Polygon2D_property_polygon>`, usando el orden en que están almacenados.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("")`` :ref:`🔗<class_Polygon2D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton**\ (\ )

Ruta a un nodo :ref:`Skeleton2D<class_Skeleton2D>` usado para deformaciones basadas en esqueleto de este polígono. Si está vacío o es inválido, las deformaciones esqueléticas no se usarán.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Polygon2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La textura de relleno del polígono. Usa :ref:`uv<class_Polygon2D_property_uv>` para establecer las coordenadas de la textura.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Polygon2D_property_texture_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_offset**\ (\ )

Cantidad para desplazar la :ref:`texture<class_Polygon2D_property_texture>` del polígono. Si se establece a ``Vector2(0, 0)``, el origen de la textura (su esquina superior izquierda) se colocará en la posición del polígono.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_rotation** = ``0.0`` :ref:`🔗<class_Polygon2D_property_texture_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_rotation**\ (\ )

La rotación de la textura en radianes.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Polygon2D_property_texture_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texture_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_scale**\ (\ )

Cantidad por la que multiplicar las coordenadas :ref:`uv<class_Polygon2D_property_uv>` cuando se usa :ref:`texture<class_Polygon2D_property_texture>`. Los valores más grandes hacen la textura más pequeña, y viceversa.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_uv:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **uv** = ``PackedVector2Array()`` :ref:`🔗<class_Polygon2D_property_uv>`

.. rst-class:: classref-property-setget

- |void| **set_uv**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_uv**\ (\ )

Las coordenadas de textura para cada vértice del polígono. Debería haber un valor UV por vértice del polígono. Si hay menos, los vértices no definidos usarán ``Vector2(0, 0)``.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_vertex_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **vertex_colors** = ``PackedColorArray()`` :ref:`🔗<class_Polygon2D_property_vertex_colors>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_vertex_colors**\ (\ )

Color para cada vértice. Los colores se interpolan entre los vértices, lo que resulta en gradientes suaves. Debería haber uno por vértice del polígono. Si hay menos, los vértices no definidos usarán :ref:`color<class_Polygon2D_property_color>`.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Polygon2D_method_add_bone:

.. rst-class:: classref-method

|void| **add_bone**\ (\ path\: :ref:`NodePath<class_NodePath>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_Polygon2D_method_add_bone>`

Agrega un hueso con la ``path`` y los ``weights`` especificados.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_clear_bones:

.. rst-class:: classref-method

|void| **clear_bones**\ (\ ) :ref:`🔗<class_Polygon2D_method_clear_bones>`

Quita todos los huesos de este **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_erase_bone:

.. rst-class:: classref-method

|void| **erase_bone**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Polygon2D_method_erase_bone>`

Quita el hueso especificado de este **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_count>`

Devuelve el número de huesos en este **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_bone_path**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_path>`

Devuelve el camino al nodo asociado con el hueso especificado.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_bone_weights**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_weights>`

Devuelve los valores de peso del hueso especificado.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_set_bone_path:

.. rst-class:: classref-method

|void| **set_bone_path**\ (\ index\: :ref:`int<class_int>`, path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Polygon2D_method_set_bone_path>`

Establece el camino al nodo asociado con el hueso especificado.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_set_bone_weights:

.. rst-class:: classref-method

|void| **set_bone_weights**\ (\ index\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_Polygon2D_method_set_bone_weights>`

Establece los valores de peso para el hueso especificado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
