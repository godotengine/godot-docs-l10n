:github_url: hide

.. _class_ProgressBar:

ProgressBar
===========

**Hereda:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un control utilizado para la representación visual de un porcentaje.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un control utilizado para la representación visual de un porcentaje. Muestra el porcentaje de relleno en el centro. También se puede utilizar para mostrar el progreso indeterminado. Para más modos de relleno, utiliza :ref:`TextureProgressBar<class_TextureProgressBar>` en su lugar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`editor_preview_indeterminate<class_ProgressBar_property_editor_preview_indeterminate>` |           |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`fill_mode<class_ProgressBar_property_fill_mode>`                                       | ``0``     |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`indeterminate<class_ProgressBar_property_indeterminate>`                               | ``false`` |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`show_percentage<class_ProgressBar_property_show_percentage>`                           | ``true``  |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_ProgressBar_theme_color_font_color>`                 | ``Color(0.95, 0.95, 0.95, 1)`` |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_ProgressBar_theme_color_font_outline_color>` | ``Color(0, 0, 0, 1)``          |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_ProgressBar_theme_constant_outline_size>`          | ``0``                          |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_ProgressBar_theme_font_font>`                              |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_ProgressBar_theme_font_size_font_size>`               |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`background<class_ProgressBar_theme_style_background>`                 |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`fill<class_ProgressBar_theme_style_fill>`                             |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ProgressBar_FillMode:

.. rst-class:: classref-enumeration

enum **FillMode**: :ref:`🔗<enum_ProgressBar_FillMode>`

.. _class_ProgressBar_constant_FILL_BEGIN_TO_END:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_BEGIN_TO_END** = ``0``

La barra de progreso se llena de principio a fin horizontalmente, según la dirección del idioma. Si :ref:`Control.is_layout_rtl()<class_Control_method_is_layout_rtl>` devuelve ``false``, se llena de izquierda a derecha, y si devuelve ``true``, se llena de derecha a izquierda.

.. _class_ProgressBar_constant_FILL_END_TO_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_END_TO_BEGIN** = ``1``

La barra de progreso se llena de fin a principio horizontalmente, según la dirección del idioma. Si :ref:`Control.is_layout_rtl()<class_Control_method_is_layout_rtl>` devuelve ``false``, se llena de derecha a izquierda, y si devuelve ``true``, se llena de izquierda a derecha.

.. _class_ProgressBar_constant_FILL_TOP_TO_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_TOP_TO_BOTTOM** = ``2``

El progreso se llena de arriba a abajo.

.. _class_ProgressBar_constant_FILL_BOTTOM_TO_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_BOTTOM_TO_TOP** = ``3``

El progreso se llena de abajo hacia arriba.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ProgressBar_property_editor_preview_indeterminate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_preview_indeterminate** :ref:`🔗<class_ProgressBar_property_editor_preview_indeterminate>`

.. rst-class:: classref-property-setget

- |void| **set_editor_preview_indeterminate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_preview_indeterminate_enabled**\ (\ )

Si es ``false``, la animación :ref:`indeterminate<class_ProgressBar_property_indeterminate>` se pausará en el editor.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_fill_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **fill_mode** = ``0`` :ref:`🔗<class_ProgressBar_property_fill_mode>`

.. rst-class:: classref-property-setget

- |void| **set_fill_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fill_mode**\ (\ )

La dirección de llenado. Véase :ref:`FillMode<enum_ProgressBar_FillMode>` para los posibles valores.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_indeterminate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **indeterminate** = ``false`` :ref:`🔗<class_ProgressBar_property_indeterminate>`

.. rst-class:: classref-property-setget

- |void| **set_indeterminate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_indeterminate**\ (\ )

Cuando se establece en ``true``, la barra de progreso indica que algo está sucediendo con una animación, pero no muestra el porcentaje o valor de relleno.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_show_percentage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_percentage** = ``true`` :ref:`🔗<class_ProgressBar_property_show_percentage>`

.. rst-class:: classref-property-setget

- |void| **set_show_percentage**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_percentage_shown**\ (\ )

Si es ``true``, el porcentaje de llenado se muestra en la barra.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_ProgressBar_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_ProgressBar_theme_color_font_color>`

El color del texto.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ProgressBar_theme_color_font_outline_color>`

El tono del contorno del texto de **ProgressBar**.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_ProgressBar_theme_constant_outline_size>`

El tamaño del contorno del texto.

\ **Note:** Si se usa una fuente con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` habilitado, su :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` debe establecerse en al menos *el doble* del valor de :ref:`outline_size<class_ProgressBar_theme_constant_outline_size>` para que el renderizado del contorno se vea correctamente. De lo contrario, el contorno puede parecer cortado antes de lo previsto.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_ProgressBar_theme_font_font>`

Fuente utilizada para dibujar el porcentaje de relleno si :ref:`show_percentage<class_ProgressBar_property_show_percentage>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_ProgressBar_theme_font_size_font_size>`

Tamaño de fuente utilizado para dibujar el porcentaje de relleno si :ref:`show_percentage<class_ProgressBar_property_show_percentage>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_style_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **background** :ref:`🔗<class_ProgressBar_theme_style_background>`

El estilo del fondo.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_style_fill:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **fill** :ref:`🔗<class_ProgressBar_theme_style_fill>`

El estilo del progreso (es decir, la parte que llena la barra).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
