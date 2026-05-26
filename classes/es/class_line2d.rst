:github_url: hide

.. _class_Line2D:

Line2D
======

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una polilínea 2D que se puede texturizar opcionalmente.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo dibuja una polilínea 2D, es decir, una forma que consta de varios puntos conectados por segmentos. **Line2D** no es una polilínea matemática, es decir, los segmentos no son infinitamente delgados. Está destinado a la renderización y puede colorearse y texturizarse opcionalmente.

\ **Advertencia:** Ciertas configuraciones pueden ser imposibles de dibujar bien, como ángulos muy agudos. En estas situaciones, el nodo utiliza una lógica de dibujo alternativa para que se vea decente.

\ **Nota:** **Line2D** se dibuja usando una malla 2D.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Transformación de Matriz <https://godotengine.org/asset-library/asset/2787>`__

- `Demo de Juego en 2.5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`antialiased<class_Line2D_property_antialiased>`         | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineCapMode<enum_Line2D_LineCapMode>`         | :ref:`begin_cap_mode<class_Line2D_property_begin_cap_mode>`   | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`closed<class_Line2D_property_closed>`                   | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`default_color<class_Line2D_property_default_color>`     | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineCapMode<enum_Line2D_LineCapMode>`         | :ref:`end_cap_mode<class_Line2D_property_end_cap_mode>`       | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Gradient<class_Gradient>`                     | :ref:`gradient<class_Line2D_property_gradient>`               |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineJointMode<enum_Line2D_LineJointMode>`     | :ref:`joint_mode<class_Line2D_property_joint_mode>`           | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_Line2D_property_points>`                   | ``PackedVector2Array()`` |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`round_precision<class_Line2D_property_round_precision>` | ``8``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`sharp_limit<class_Line2D_property_sharp_limit>`         | ``2.0``                  |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`texture<class_Line2D_property_texture>`                 |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`LineTextureMode<enum_Line2D_LineTextureMode>` | :ref:`texture_mode<class_Line2D_property_texture_mode>`       | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`width<class_Line2D_property_width>`                     | ``10.0``                 |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+
   | :ref:`Curve<class_Curve>`                           | :ref:`width_curve<class_Line2D_property_width_curve>`         |                          |
   +-----------------------------------------------------+---------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_point<class_Line2D_method_add_point>`\ (\ position\: :ref:`Vector2<class_Vector2>`, index\: :ref:`int<class_int>` = -1\ )              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_points<class_Line2D_method_clear_points>`\ (\ )                                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_point_count<class_Line2D_method_get_point_count>`\ (\ ) |const|                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_point_position<class_Line2D_method_get_point_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_point<class_Line2D_method_remove_point>`\ (\ index\: :ref:`int<class_int>`\ )                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_point_position<class_Line2D_method_set_point_position>`\ (\ index\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Line2D_LineJointMode:

.. rst-class:: classref-enumeration

enum **LineJointMode**: :ref:`🔗<enum_Line2D_LineJointMode>`

.. _class_Line2D_constant_LINE_JOINT_SHARP:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_SHARP** = ``0``

Hace que las uniones de la polilínea sean puntiagudas, conectando los lados de los dos segmentos extendiéndolos hasta que se intersecten. Si la rotación de una unión es demasiado grande (basada en :ref:`sharp_limit<class_Line2D_property_sharp_limit>`), la unión recurre a :ref:`LINE_JOINT_BEVEL<class_Line2D_constant_LINE_JOINT_BEVEL>` para evitar ingletes muy largos.

.. _class_Line2D_constant_LINE_JOINT_BEVEL:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_BEVEL** = ``1``

Hace que las uniones de la polilínea sean biseladas/achanflanadas, conectando los lados de los dos segmentos con una simple línea.

.. _class_Line2D_constant_LINE_JOINT_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **LINE_JOINT_ROUND** = ``2``

Hace que las uniones de la polilínea sean redondeadas, conectando los lados de los dos segmentos con un arco. El detalle de este arco depende de :ref:`round_precision<class_Line2D_property_round_precision>`.

.. rst-class:: classref-item-separator

----

.. _enum_Line2D_LineCapMode:

.. rst-class:: classref-enumeration

enum **LineCapMode**: :ref:`🔗<enum_Line2D_LineCapMode>`

.. _class_Line2D_constant_LINE_CAP_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_NONE** = ``0``

No dibuja un remate de línea.

.. _class_Line2D_constant_LINE_CAP_BOX:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_BOX** = ``1``

Dibuja el remate de línea como una caja, extendiendo ligeramente el primer/último segmento.

.. _class_Line2D_constant_LINE_CAP_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **LINE_CAP_ROUND** = ``2``

Dibuja el extremo de la línea como un semicírculo adjunto al primer/último segmento.

.. rst-class:: classref-item-separator

----

.. _enum_Line2D_LineTextureMode:

.. rst-class:: classref-enumeration

enum **LineTextureMode**: :ref:`🔗<enum_Line2D_LineTextureMode>`

.. _class_Line2D_constant_LINE_TEXTURE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_NONE** = ``0``

Toma los píxeles de la izquierda de la textura y los renderiza sobre toda la polilínea.

.. _class_Line2D_constant_LINE_TEXTURE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_TILE** = ``1``

Coloca la textura en mosaico sobre la polilínea. :ref:`CanvasItem.texture_repeat<class_CanvasItem_property_texture_repeat>` del nodo **Line2D** debe ser :ref:`CanvasItem.TEXTURE_REPEAT_ENABLED<class_CanvasItem_constant_TEXTURE_REPEAT_ENABLED>` o :ref:`CanvasItem.TEXTURE_REPEAT_MIRROR<class_CanvasItem_constant_TEXTURE_REPEAT_MIRROR>` para que funcione correctamente.

.. _class_Line2D_constant_LINE_TEXTURE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **LINE_TEXTURE_STRETCH** = ``2``

Estira la textura a través de la polilínea. :ref:`CanvasItem.texture_repeat<class_CanvasItem_property_texture_repeat>` del nodo **Line2D** debe ser :ref:`CanvasItem.TEXTURE_REPEAT_DISABLED<class_CanvasItem_constant_TEXTURE_REPEAT_DISABLED>` para obtener los mejores resultados.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Line2D_property_antialiased:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **antialiased** = ``false`` :ref:`🔗<class_Line2D_property_antialiased>`

.. rst-class:: classref-property-setget

- |void| **set_antialiased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_antialiased**\ (\ )

Si es ``true``, el borde de la polilínea tendrá antialiasing.

\ **Nota:** **Line2D** no se acelera mediante el procesamiento por lotes cuando se le aplica antialiasing.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_begin_cap_mode:

.. rst-class:: classref-property

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **begin_cap_mode** = ``0`` :ref:`🔗<class_Line2D_property_begin_cap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_begin_cap_mode**\ (\ value\: :ref:`LineCapMode<enum_Line2D_LineCapMode>`\ )
- :ref:`LineCapMode<enum_Line2D_LineCapMode>` **get_begin_cap_mode**\ (\ )

El estilo del principio de la polilínea, si :ref:`closed<class_Line2D_property_closed>` es ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_closed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **closed** = ``false`` :ref:`🔗<class_Line2D_property_closed>`

.. rst-class:: classref-property-setget

- |void| **set_closed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_closed**\ (\ )

Si es ``true``, y la polilínea tiene más de 2 puntos, el último punto y el primero se conectarán mediante un segmento.

\ **Nota:** No se garantiza que la forma del segmento de cierre sea perfecta si se proporciona una :ref:`width_curve<class_Line2D_property_width_curve>`.

\ **Nota:** La unión entre el segmento de cierre y el primer segmento se dibuja primero y muestrea el :ref:`gradient<class_Line2D_property_gradient>` y la :ref:`width_curve<class_Line2D_property_width_curve>` al principio. Este es un detalle de implementación que podría cambiar en una versión futura.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_default_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **default_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Line2D_property_default_color>`

.. rst-class:: classref-property-setget

- |void| **set_default_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_default_color**\ (\ )

El color de la polilínea. No se utilizará si se establece un gradiente.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_end_cap_mode:

.. rst-class:: classref-property

:ref:`LineCapMode<enum_Line2D_LineCapMode>` **end_cap_mode** = ``0`` :ref:`🔗<class_Line2D_property_end_cap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_end_cap_mode**\ (\ value\: :ref:`LineCapMode<enum_Line2D_LineCapMode>`\ )
- :ref:`LineCapMode<enum_Line2D_LineCapMode>` **get_end_cap_mode**\ (\ )

El estilo del final de la polilínea, si :ref:`closed<class_Line2D_property_closed>` es ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_gradient:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **gradient** :ref:`🔗<class_Line2D_property_gradient>`

.. rst-class:: classref-property-setget

- |void| **set_gradient**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_gradient**\ (\ )

El gradiente se dibuja a través de toda la línea de principio a fin. El :ref:`default_color<class_Line2D_property_default_color>` no se utilizará si se establece esta propiedad.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_joint_mode:

.. rst-class:: classref-property

:ref:`LineJointMode<enum_Line2D_LineJointMode>` **joint_mode** = ``0`` :ref:`🔗<class_Line2D_property_joint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joint_mode**\ (\ value\: :ref:`LineJointMode<enum_Line2D_LineJointMode>`\ )
- :ref:`LineJointMode<enum_Line2D_LineJointMode>` **get_joint_mode**\ (\ )

El estilo de las conexiones entre los segmentos de la polilínea.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_Line2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

Los puntos de la polilínea, interpretados en coordenadas 2D locales. Los segmentos se dibujan entre los puntos adyacentes de esta matriz.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_round_precision:

.. rst-class:: classref-property

:ref:`int<class_int>` **round_precision** = ``8`` :ref:`🔗<class_Line2D_property_round_precision>`

.. rst-class:: classref-property-setget

- |void| **set_round_precision**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_round_precision**\ (\ )

La suavidad utilizada para las uniones y remates redondeados. Los valores más altos dan como resultado esquinas más suaves, pero son más exigentes de renderizar y actualizar.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_sharp_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **sharp_limit** = ``2.0`` :ref:`🔗<class_Line2D_property_sharp_limit>`

.. rst-class:: classref-property-setget

- |void| **set_sharp_limit**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sharp_limit**\ (\ )

Determina el límite de inglete de la polilínea. Normalmente, cuando :ref:`joint_mode<class_Line2D_property_joint_mode>` se establece en :ref:`LINE_JOINT_SHARP<class_Line2D_constant_LINE_JOINT_SHARP>`, los ángulos agudos recurren a la lógica de las uniones :ref:`LINE_JOINT_BEVEL<class_Line2D_constant_LINE_JOINT_BEVEL>` para evitar ingletes muy largos. Los valores más altos de esta propiedad significan que el retorno a una unión biselada ocurrirá en ángulos más agudos.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Line2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La textura utilizada para la polilínea. Utiliza :ref:`texture_mode<class_Line2D_property_texture_mode>` para el estilo de dibujo.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_texture_mode:

.. rst-class:: classref-property

:ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **texture_mode** = ``0`` :ref:`🔗<class_Line2D_property_texture_mode>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mode**\ (\ value\: :ref:`LineTextureMode<enum_Line2D_LineTextureMode>`\ )
- :ref:`LineTextureMode<enum_Line2D_LineTextureMode>` **get_texture_mode**\ (\ )

El estilo para renderizar la :ref:`texture<class_Line2D_property_texture>` de la polilínea.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``10.0`` :ref:`🔗<class_Line2D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

El ancho de la polilínea.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_property_width_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **width_curve** :ref:`🔗<class_Line2D_property_width_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

La curva de anchura de la polilínea. La anchura de la polilínea a lo largo de su longitud será equivalente al valor de la curva de anchura sobre su dominio. La curva de anchura debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Line2D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ position\: :ref:`Vector2<class_Vector2>`, index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_Line2D_method_add_point>`

Añade un punto con la ``position`` especificada en relación con la propia posición de la polilínea. Si no se proporciona ningún ``index``, el nuevo punto se añadirá al final de la matriz de puntos.

Si se proporciona ``index``, el nuevo punto se inserta antes del punto existente identificado por el índice ``index``. Los índices de los puntos después del nuevo punto se incrementan en 1. El ``index`` proporcionado no debe exceder el número de puntos existentes en la polilínea. Véase :ref:`get_point_count()<class_Line2D_method_get_point_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_clear_points:

.. rst-class:: classref-method

|void| **clear_points**\ (\ ) :ref:`🔗<class_Line2D_method_clear_points>`

Elimina todos los puntos de la polilínea, dejándola vacía.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_Line2D_method_get_point_count>`

Devuelve el número de puntos en la polilínea.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Line2D_method_get_point_position>`

Devuelve la posición del punto en el índice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Line2D_method_remove_point>`

Elimina el punto en el índice ``index`` de la polilínea.

.. rst-class:: classref-item-separator

----

.. _class_Line2D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ index\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Line2D_method_set_point_position>`

Sobrescribe la posición del punto en el ``index`` dado con la ``position`` proporcionada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
