:github_url: hide

.. _class_TextLine:

TextLine
========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene una línea de texto.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Abstracción sobre :ref:`TextServer<class_TextServer>` para manejar una sola línea de texto.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`alignment<class_TextLine_property_alignment>`                         | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`direction<class_TextLine_property_direction>`                         | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`ellipsis_char<class_TextLine_property_ellipsis_char>`                 | ``"…"``   |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`flags<class_TextLine_property_flags>`                                 | ``3``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Orientation<enum_TextServer_Orientation>`                           | :ref:`orientation<class_TextLine_property_orientation>`                     | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_control<class_TextLine_property_preserve_control>`           | ``false`` |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_invalid<class_TextLine_property_preserve_invalid>`           | ``true``  |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                   | :ref:`text_overrun_behavior<class_TextLine_property_text_overrun_behavior>` | ``3``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextLine_property_width>`                                 | ``-1.0``  |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_object<class_TextLine_method_add_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_string<class_TextLine_method_add_string>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ )                                         |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear<class_TextLine_method_clear>`\ (\ )                                                                                                                                                                                                                                                    |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw<class_TextLine_method_draw>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                  |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_outline<class_TextLine_method_draw_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextLine<class_TextLine>`             | :ref:`duplicate<class_TextLine_method_duplicate>`\ (\ ) |const|                                                                                                                                                                                                                                    |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>` | :ref:`get_inferred_direction<class_TextLine_method_get_inferred_direction>`\ (\ ) |const|                                                                                                                                                                                                          |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_ascent<class_TextLine_method_get_line_ascent>`\ (\ ) |const|                                                                                                                                                                                                                        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_descent<class_TextLine_method_get_line_descent>`\ (\ ) |const|                                                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_position<class_TextLine_method_get_line_underline_position>`\ (\ ) |const|                                                                                                                                                                                                |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_thickness<class_TextLine_method_get_line_underline_thickness>`\ (\ ) |const|                                                                                                                                                                                              |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_width<class_TextLine_method_get_line_width>`\ (\ ) |const|                                                                                                                                                                                                                          |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                   | :ref:`get_object_rect<class_TextLine_method_get_object_rect>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                   |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`get_objects<class_TextLine_method_get_objects>`\ (\ ) |const|                                                                                                                                                                                                                                |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_rid<class_TextLine_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_size<class_TextLine_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`has_object<class_TextLine_method_has_object>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                             |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`hit_test<class_TextLine_method_hit_test>`\ (\ coords\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                  |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`resize_object<class_TextLine_method_resize_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ )                               |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bidi_override<class_TextLine_method_set_bidi_override>`\ (\ override\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`tab_align<class_TextLine_method_tab_align>`\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                                                           |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TextLine_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextLine_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Establece la alineación del texto dentro de la línea como si la línea fuera horizontal.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextLine_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

Dirección de escritura del texto.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextLine_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Carácter de elipsis utilizado para el recorte de texto.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **flags** = ``3`` :ref:`🔗<class_TextLine_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_flags**\ (\ )

Reglas de alineación de línea. Para más información, véase :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextLine_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

Orientación del texto.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextLine_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

Si se establece a ``true``, el texto mostrará caracteres de control.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextLine_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

Si se establece a ``true``, el texto mostrará caracteres inválidos.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``3`` :ref:`🔗<class_TextLine_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

El comportamiento de recorte cuando el texto excede el ancho establecido de la línea de texto.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextLine_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

El ancho de la línea de texto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TextLine_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextLine_method_add_object>`

Añade un objeto en línea al buffer de texto, ``key`` debe ser único. En el texto, el objeto se representa como ``length`` caracteres de reemplazo de objeto.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextLine_method_add_string>`

Agrega espacio de texto y fuente para dibujarlo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextLine_method_clear>`

Limpia la línea de texto (elimina el texto y los objetos en línea).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextLine_method_draw>`

Draw text into a canvas item at a given position, with ``color``. ``pos`` specifies the top left corner of the bounding box. If ``oversampling`` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextLine_method_draw_outline>`

Draw text into a canvas item at a given position, with ``color``. ``pos`` specifies the top left corner of the bounding box. If ``oversampling`` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_duplicate:

.. rst-class:: classref-method

:ref:`TextLine<class_TextLine>` **duplicate**\ (\ ) |const| :ref:`🔗<class_TextLine_method_duplicate>`

Duplica este **TextLine**.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_inferred_direction>`

Devuelve la dirección de escritura del texto inferida por el algoritmo BiDi.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_ascent>`

Devuelve el ascenso del texto (número de píxeles por encima de la línea de base para diseño horizontal o a la izquierda de la línea de base para vertical).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_descent>`

Devuelve el descenso del texto (número de píxeles por debajo de la línea de base para diseño horizontal o a la derecha de la línea de base para vertical).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_underline_position>`

Devuelve el desplazamiento de píxeles del subrayado debajo de la línea base.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_underline_thickness>`

Devuelve el grosor del subrayado.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_width>`

Devuelve el ancho (para diseño horizontal) o la altura (para vertical) del texto.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_object_rect**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextLine_method_get_object_rect>`

Devuelve el rectángulo delimitador del objeto en línea.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_objects**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_objects>`

Devuelve un array de objetos en la línea.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_rid>`

Devuelve el RID del búfer de TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_size>`

Devuelve el tamaño del cuadro delimitador del texto.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_has_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_object**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextLine_method_has_object>`

Devuelve ``true`` si un objeto con ``key`` está incrustado en esta línea.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_TextLine_method_hit_test>`

Devuelve el desplazamiento del cursor en el píxel especificado en la línea base. Esta función siempre devuelve una posición válida.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextLine_method_resize_object>`

Establece el nuevo tamaño y alineación del objeto incrustado.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextLine_method_set_bidi_override>`

Sobreescribe BiDi para el texto estructurado.

Los rangos de sobreescritura deben cubrir el texto fuente completo sin superposiciones. El algoritmo BiDi se utilizará en cada rango por separado.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextLine_method_tab_align>`

Alinea el texto con las tabulaciones indicadas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
