:github_url: hide

.. _class_ResourceImporterDynamicFont:

ResourceImporterDynamicFont
===========================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un archivo de fuente TTF, TTC, OTF, OTC, WOFF o WOFF2 para una representación de fuente que se adapta a cualquier tamaño.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A diferencia de las fuentes de mapa de bits, las fuentes dinámicas pueden redimensionarse a cualquier tamaño y seguir viéndose nítidas. Las fuentes dinámicas también soportan opcionalmente el renderizado de fuentes MSDF, que permite cambios de escala en tiempo de ejecución sin costo de re-rasterización.

Mientras que WOFF y especialmente WOFF2 tienden a resultar en archivos de menor tamaño, no hay un formato de fuente universalmente "mejor". En la mayoría de las situaciones, se recomienda utilizar el formato de fuente que se entregó en el sitio web del desarrollador de la fuente.

Véase también :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>` y :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Fuentes dinámicas - Uso de fuentes <../tutorials/ui/gui_using_fonts.html#dynamic-fonts>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`                           | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`antialiasing<class_ResourceImporterDynamicFont_property_antialiasing>`                                             | ``1``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterDynamicFont_property_compress>`                                                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`disable_embedded_bitmaps<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`                                                   | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>`                                                       | ``3``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`keep_rounding_remainders<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`                                     | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`modulate_color_glyphs<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`                           | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`                                     | ``8``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_size<class_ResourceImporterDynamicFont_property_msdf_size>`                                                   | ``48``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`opentype_features<class_ResourceImporterDynamicFont_property_opentype_features>`                                   | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`oversampling<class_ResourceImporterDynamicFont_property_oversampling>`                                             | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`preload<class_ResourceImporterDynamicFont_property_preload>`                                                       | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`                                         | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>`                             | ``4``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterDynamicFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_allow_system_fallback>`

Si es ``true``, se usarán automáticamente las fuentes del sistema como alternativa si no se encuentra un glifo en esta fuente dinámica. Esto hace que sea más fácil dar soporte a los caracteres CJK o emojis, ya que no es necesario incluir una fuente CJK/emoji en tu proyecto. Véase también :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`.

\ **Nota:** La apariencia de las fuentes del sistema varía entre plataformas. La carga de fuentes del sistema solo es compatible en Windows, macOS, Linux, Android e iOS.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`int<class_int>` **antialiasing** = ``1`` :ref:`🔗<class_ResourceImporterDynamicFont_property_antialiasing>`

El método de antialiasing de fuente a utilizar.

\ **Deshabilitado:** El más adecuado para fuentes de pixel art, aunque no *tienes* que cambiar el antialiasing del predeterminado **Escala de grises** si el archivo de la fuente fue bien creado y la fuente se utiliza en un múltiplo entero de su tamaño previsto. Si las fuentes de pixel art tienen una mala apariencia en su tamaño previsto, intenta establecer :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` en **Deshabilitado** en su lugar.

\ **Escala de grises:** Usa antialiasing en escala de grises. Este es el enfoque utilizado por el sistema operativo en macOS, Android e iOS.

\ **Subpíxel LCD:** Usa antialiasing con patrones de subpíxeles para hacer las fuentes más nítidas en pantallas LCD. Este es el enfoque utilizado por el sistema operativo en Windows y la mayoría de las distribuciones de Linux. La desventaja es que esto puede introducir "fringing" (bordes de color) en los bordes, especialmente en tecnologías de pantalla que no utilizan subpíxeles RGB estándar (como las pantallas OLED). El diseño de subpíxeles LCD se controla globalmente mediante :ref:`ProjectSettings.gui/theme/lcd_subpixel_layout<class_ProjectSettings_property_gui/theme/lcd_subpixel_layout>`, que también permite volver al antialiasing en escala de grises.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_compress>`

Si es ``true``, utiliza compresión sin pérdidas para la fuente resultante.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`

Si se establece en ``true``, la carga de mapas de bits de fuentes incrustados se desactiva (las fuentes solo de mapa de bits y de color ignoran esta propiedad).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_fallbacks>`

Lista de fuentes de respaldo a utilizar si no se encuentra un glifo en esta fuente dinámica. Las fuentes al principio del array se intentan primero, pero las fuentes de respaldo que no son compatibles con el idioma y el script del glifo se intentan al final (ver :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>` y :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`). Véase también :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_force_autohinter>`

Si es ``true``, fuerza la generación de datos de hinting para la fuente usando el autohinter de `FreeType <https://freetype.org/>`__. Esto hará que el :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>` sea efectivo con fuentes que no incluyen datos de hinting.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_generate_mipmaps>`

Si es ``true``, se generarán mipmaps para esta fuente. Esto evita que el texto se vea granulado cuando un :ref:`Control<class_Control>` se escala hacia abajo, o cuando un :ref:`Label3D<class_Label3D>` se ve desde una gran distancia (si :ref:`Label3D.texture_filter<class_Label3D_property_texture_filter>` está configurado en un modo que muestra mipmaps).

Activar :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` aumenta el tiempo de generación de la fuente y el uso de memoria. Activa esta opción solo si realmente la necesitas.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_hinting:

.. rst-class:: classref-property

:ref:`int<class_int>` **hinting** = ``3`` :ref:`🔗<class_ResourceImporterDynamicFont_property_hinting>`

The hinting mode to use. This controls how aggressively glyph edges should be snapped to pixels when rasterizing the font. Depending on personal preference, you may prefer using one hinting mode over the other. Hinting modes other than **None** are only effective if the font contains hinting data (see :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`).

\ **None:** Smoothest appearance, which can make the font look blurry at small sizes.

\ **Light:** Sharp result by snapping glyph edges to pixels on the Y axis only.

\ **Normal:** Sharpest by snapping glyph edges to pixels on both X and Y axes.

\ **Light (Except Pixel Fonts):** **Disabled** for pixel style fonts (each glyph's contours contain only straight horizontal and vertical lines), **Light** for other fonts.

\ **Normal (Except Pixel Fonts):** **Disabled** for pixel style fonts (each glyph's contours contain only straight horizontal and vertical lines), **Normal** for other fonts.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`

Si se establece en ``true``, al alinear los glifos a los límites de los píxeles, los restos de redondeo se acumulan para asegurar una distribución de glifos más uniforme. Este ajuste no tiene efecto si el posicionamiento subpíxel está habilitado.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_language_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **language_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_language_support>`

Sobrescribe la lista de idiomas soportados por esta fuente. Si se deja vacío, se toma de los metadatos de la fuente. Normalmente no es necesario cambiar esto. Véase también :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`

Si se establece como ``true``, la modulación de color se aplica al dibujar glifos coloreados, de lo contrario, se aplica solo a los glifos monocromáticos.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``8`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`

El ancho del rango alrededor de la forma entre la distancia con signo mínima y máxima representable. Si se usan contornos de fuente, :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` debe ser al menos el *doble* del tamaño del contorno de fuente más grande. El valor por defecto de :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` de ``8`` permite que los tamaños de contorno de hasta ``4`` se vean correctamente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_size>`

Tamaño de la fuente de origen utilizado para generar texturas MSDF. Valores más altos permiten una mayor precisión, pero son más lentos de renderizar y requieren más memoria. Aumenta este valor solo si notas una falta visible de precisión en el renderizado de glifos. Solo es efectivo si :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`

Si se establece en ``true``, la fuente utilizará el campo de distancia con signo multicanal (MSDF) para una renderización nítida a cualquier tamaño. Dado que este enfoque no depende de la rasterización de la fuente cada vez que cambia su tamaño, permite redimensionar la fuente en tiempo real sin ninguna penalización de rendimiento. El texto tampoco se verá granulado para los :ref:`Control<class_Control>`\ s que se escalan hacia abajo (o para los :ref:`Label3D<class_Label3D>`\ s vistos desde una gran distancia).

La renderización de fuentes MSDF se puede combinar con :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` para mejorar aún más la calidad de renderización de la fuente cuando se escala hacia abajo.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_opentype_features>`

Las características OpenType para habilitar, deshabilitar o establecer un valor para esta fuente. Esto se puede utilizar para habilitar características opcionales proporcionadas por la fuente, como ligaduras o glifos alternativos. La lista de características OpenType compatibles varía según la fuente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_ResourceImporterDynamicFont_property_oversampling>`

If set to a positive value, overrides the oversampling factor of the viewport this font is used in. See :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`. This value doesn't override the ``oversampling`` parameter of ``draw_*`` methods.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_preload:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **preload** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_preload>`

Los rangos de glifos a prerrenderizar. Esto puede evitar el tartamudeo durante el juego cuando se necesitan renderizar nuevos caracteres, especialmente si :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` está habilitado. La desventaja de usar la precarga es que los tiempos de carga iniciales del proyecto aumentarán, así como el uso de la memoria.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_script_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **script_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_script_support>`

Sobrescribe la lista de escrituras de idiomas compatibles con esta fuente. Si se deja vacío, esto se obtiene de los metadatos de la fuente. Normalmente no hay necesidad de cambiar esto. Véase también :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`int<class_int>` **subpixel_positioning** = ``4`` :ref:`🔗<class_ResourceImporterDynamicFont_property_subpixel_positioning>`

Subpixel positioning improves font rendering appearance, especially at smaller font sizes. The downside is that it takes more time to initially render the font, which can cause stuttering during gameplay, especially if used with large font sizes. This should be set to **Disabled** for fonts with a pixel art appearance.

\ **Disabled:** No subpixel positioning. Lowest quality, fastest rendering.

\ **Auto:** Use subpixel positioning at small font sizes (the chosen quality varies depending on font size). Large fonts will not use subpixel positioning. This is a good tradeoff between performance and quality.

\ **One Half of a Pixel:** Always perform intermediate subpixel positioning regardless of font size. High quality, slow rendering.

\ **One Quarter of a Pixel:** Always perform precise subpixel positioning regardless of font size. Highest quality, slowest rendering.

\ **Auto (Except Pixel Fonts):** **Disabled** for pixel style fonts (each glyph's contours contain only straight horizontal and vertical lines), **Auto** for other fonts.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
