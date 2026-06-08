:github_url: hide

.. _class_FontVariation:

FontVariation
=============

**Hereda:** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una variación de una fuente con configuraciones adicionales.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Provides OpenType variations, simulated bold / slant, and additional font settings like OpenType features and extra spacing.

To use simulated bold font variant:


.. tabs::

 .. code-tab:: gdscript

    var fv = FontVariation.new()
    fv.base_font = load("res://BarlowCondensed-Regular.ttf")
    fv.variation_embolden = 1.2
    $Label.add_theme_font_override("font", fv)
    $Label.add_theme_font_size_override("font_size", 64)

 .. code-tab:: csharp

    var fv = new FontVariation();
    fv.SetBaseFont(ResourceLoader.Load<FontFile>("res://BarlowCondensed-Regular.ttf"));
    fv.SetVariationEmbolden(1.2);
    GetNode("Label").AddThemeFontOverride("font", fv);
    GetNode("Label").AddThemeFontSizeOverride("font_size", 64);



To set the coordinate of multiple variation axes:

::

    var fv = FontVariation.new();
    var ts = TextServerManager.get_primary_interface()
    fv.base_font = load("res://BarlowCondensed-Regular.ttf")
    fv.variation_opentype = { ts.name_to_tag("wght"): 900, ts.name_to_tag("custom_hght"): 900 }

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`                         | :ref:`base_font<class_FontVariation_property_base_font>`                         |                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                       | :ref:`baseline_offset<class_FontVariation_property_baseline_offset>`             | ``0.0``                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`opentype_features<class_FontVariation_property_opentype_features>`         | ``{}``                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`palette_custom_colors<class_FontVariation_property_palette_custom_colors>` | ``PackedColorArray()``            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`palette_index<class_FontVariation_property_palette_index>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_bottom<class_FontVariation_property_spacing_bottom>`               | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_glyph<class_FontVariation_property_spacing_glyph>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_space<class_FontVariation_property_spacing_space>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_top<class_FontVariation_property_spacing_top>`                     | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                       | :ref:`variation_embolden<class_FontVariation_property_variation_embolden>`       | ``0.0``                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`variation_face_index<class_FontVariation_property_variation_face_index>`   | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`variation_opentype<class_FontVariation_property_variation_opentype>`       | ``{}``                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>`           | :ref:`variation_transform<class_FontVariation_property_variation_transform>`     | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_spacing<class_FontVariation_method_set_spacing>`\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_FontVariation_property_base_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **base_font** :ref:`🔗<class_FontVariation_property_base_font>`

.. rst-class:: classref-property-setget

- |void| **set_base_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_base_font**\ (\ )

Fuente base utilizada para crear una variación. Si no se establece, se utiliza la fuente :ref:`Theme<class_Theme>` predeterminada.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_baseline_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **baseline_offset** = ``0.0`` :ref:`🔗<class_FontVariation_property_baseline_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baseline_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_baseline_offset**\ (\ )

Desplazamiento adicional de la línea de base (como una fracción de la altura de la fuente).

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_FontVariation_property_opentype_features>`

.. rst-class:: classref-property-setget

- |void| **set_opentype_features**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_opentype_features**\ (\ )

Un conjunto de etiquetas de características OpenType. Más información: `Etiquetas de características OpenType <https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags>`__.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_palette_custom_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **palette_custom_colors** = ``PackedColorArray()`` :ref:`🔗<class_FontVariation_property_palette_custom_colors>`

.. rst-class:: classref-property-setget

- |void| **set_palette_custom_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_palette_custom_colors**\ (\ )

An array of colors to override predefined palette. Use ``Color(0, 0, 0, 0)``, to keep predefined palette color at specific position.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_palette_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **palette_index** = ``0`` :ref:`🔗<class_FontVariation_property_palette_index>`

.. rst-class:: classref-property-setget

- |void| **set_palette_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_palette_index**\ (\ )

Un índice de paleta de colores.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_bottom** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Espacio adicional en la parte inferior de la línea en píxeles.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_glyph:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_glyph** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_glyph>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Espacio adicional entre glifos gráficos.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_space:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_space** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_space>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Ancho adicional de los glifos de espacio.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_top** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_top>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

Espacio adicional en la parte superior de la línea en píxeles.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_embolden:

.. rst-class:: classref-property

:ref:`float<class_float>` **variation_embolden** = ``0.0`` :ref:`🔗<class_FontVariation_property_variation_embolden>`

.. rst-class:: classref-property-setget

- |void| **set_variation_embolden**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_variation_embolden**\ (\ )

Si no es igual a cero, engrosa los contornos de la fuente. Los valores negativos reducen el grosor del contorno.

\ **Nota:** Las fuentes engrosadas pueden tener contornos que se auto-intersectan, lo que impedirá que las fuentes MSDF y :ref:`TextMesh<class_TextMesh>` funcionen correctamente.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_face_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **variation_face_index** = ``0`` :ref:`🔗<class_FontVariation_property_variation_face_index>`

.. rst-class:: classref-property-setget

- |void| **set_variation_face_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_variation_face_index**\ (\ )

Índice de cara activa en el archivo de colección TrueType/OpenType.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_opentype:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **variation_opentype** = ``{}`` :ref:`🔗<class_FontVariation_property_variation_opentype>`

.. rst-class:: classref-property-setget

- |void| **set_variation_opentype**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_variation_opentype**\ (\ )

Coordenadas de variación OpenType de la fuente. Más información: `Etiquetas de variación OpenType <https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg>`__.

\ **Nota:** Este :ref:`Dictionary<class_Dictionary>` utiliza etiquetas OpenType como claves. Los ejes de variación pueden identificarse tanto por etiquetas (:ref:`int<class_int>`, p. ej., ``0x77678674``) como por nombres (:ref:`String<class_String>`, p. ej., ``wght``). Algunos ejes pueden ser accesibles por múltiples nombres. Por ejemplo, ``wght`` se refiere al mismo eje que ``weight``. Las etiquetas, por otro lado, son únicas. Para convertir entre nombres y etiquetas, utiliza :ref:`TextServer.name_to_tag()<class_TextServer_method_name_to_tag>` y :ref:`TextServer.tag_to_name()<class_TextServer_method_tag_to_name>`.

\ **Nota:** Para obtener los ejes de variación disponibles de una fuente, utiliza :ref:`Font.get_supported_variation_list()<class_Font_method_get_supported_variation_list>`.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **variation_transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_FontVariation_property_variation_transform>`

.. rst-class:: classref-property-setget

- |void| **set_variation_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_variation_transform**\ (\ )

Transformación 2D, aplicada a los contornos de la fuente, que puede utilizarse para inclinar, voltear y rotar glifos.

Por ejemplo, para simular un tipo de letra cursiva mediante la inclinación, aplica la siguiente transformación ``Transform2D(1.0, inclinación, 0.0, 1.0, 0.0, 0.0)``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_FontVariation_method_set_spacing:

.. rst-class:: classref-method

|void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FontVariation_method_set_spacing>`

Establece el espaciado para ``spacing`` a ``value`` en píxeles (no en relación con el tamaño de la fuente).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
