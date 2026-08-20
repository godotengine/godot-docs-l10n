:github_url: hide

.. _class_LinkButton:

LinkButton
==========

**Hereda:** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un botón que representa un enlace.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un botón que representa un enlace. Este tipo de botón se utiliza principalmente para interacciones que causan un cambio de contexto (como enlazar a una página web).

Véase también :ref:`BaseButton<class_BaseButton>`, que contiene propiedades y métodos comunes asociados con este nodo.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`ellipsis_char<class_LinkButton_property_ellipsis_char>`                                                 | ``"…"``                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                          | focus_mode                                                                                                    | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_LinkButton_property_language>`                                                           | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                      | mouse_default_cursor_shape                                                                                    | ``2`` (overrides :ref:`Control<class_Control_property_mouse_default_cursor_shape>`) |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` | :ref:`structured_text_bidi_override<class_LinkButton_property_structured_text_bidi_override>`                 | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                         | :ref:`structured_text_bidi_override_options<class_LinkButton_property_structured_text_bidi_override_options>` | ``[]``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`text<class_LinkButton_property_text>`                                                                   | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`text_direction<class_LinkButton_property_text_direction>`                                               | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`text_overrun_behavior<class_LinkButton_property_text_overrun_behavior>`                                 | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>`               | :ref:`underline<class_LinkButton_property_underline>`                                                         | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`uri<class_LinkButton_property_uri>`                                                                     | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_LinkButton_theme_color_font_color>`                             | ``Color(0.875, 0.875, 0.875, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_disabled_color<class_LinkButton_theme_color_font_disabled_color>`           | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_focus_color<class_LinkButton_theme_color_font_focus_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_color<class_LinkButton_theme_color_font_hover_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_pressed_color<class_LinkButton_theme_color_font_hover_pressed_color>` | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_LinkButton_theme_color_font_outline_color>`             | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_pressed_color<class_LinkButton_theme_color_font_pressed_color>`             | ``Color(1, 1, 1, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_LinkButton_theme_constant_outline_size>`                      | ``0``                             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`underline_spacing<class_LinkButton_theme_constant_underline_spacing>`            | ``2``                             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_LinkButton_theme_font_font>`                                          |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_LinkButton_theme_font_size_font_size>`                           |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`focus<class_LinkButton_theme_style_focus>`                                       |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_LinkButton_UnderlineMode:

.. rst-class:: classref-enumeration

enum **UnderlineMode**: :ref:`🔗<enum_LinkButton_UnderlineMode>`

.. _class_LinkButton_constant_UNDERLINE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_ALWAYS** = ``0``

El LinkButton siempre mostrará un subrayado en la parte inferior de su texto.

.. _class_LinkButton_constant_UNDERLINE_MODE_ON_HOVER:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_ON_HOVER** = ``1``

El LinkButton mostrará un subrayado en la parte inferior de su texto cuando el cursor del ratón esté sobre él.

.. _class_LinkButton_constant_UNDERLINE_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_NEVER** = ``2``

El LinkButton nunca mostrará un subrayado en la parte inferior de su texto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_LinkButton_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_LinkButton_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Carácter de elipsis utilizado para el recorte de texto.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_LinkButton_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Código de idioma utilizado para los algoritmos de salto de línea y de formación de texto. Si se deja vacío, se utiliza la configuración regional actual.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_LinkButton_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Establece la sobrescritura del algoritmo BiDi para el texto estructurado.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_LinkButton_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Establece opciones adicionales para la sobrescritura BiDi.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_LinkButton_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

El texto del botón que se mostrará dentro del área del botón.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_LinkButton_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Dirección base de escritura del texto.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_LinkButton_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Sets the clipping behavior when the text exceeds the node's bounding rectangle.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_underline:

.. rst-class:: classref-property

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **underline** = ``0`` :ref:`🔗<class_LinkButton_property_underline>`

.. rst-class:: classref-property-setget

- |void| **set_underline_mode**\ (\ value\: :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>`\ )
- :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **get_underline_mode**\ (\ )

El modo de subrayado a utilizar para el texto.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_uri:

.. rst-class:: classref-property

:ref:`String<class_String>` **uri** = ``""`` :ref:`🔗<class_LinkButton_property_uri>`

.. rst-class:: classref-property-setget

- |void| **set_uri**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_uri**\ (\ )

El `URI <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier>`__ para este **LinkButton**. Si se establece en un URI válido, al presionar el botón se abre el URI utilizando el programa predeterminado del sistema operativo para el protocolo (a través de :ref:`OS.shell_open()<class_OS_method_shell_open>`). Las URL HTTP y HTTPS abren el navegador web predeterminado.


.. tabs::

 .. code-tab:: gdscript

    uri = "https://godotengine.org"  # Abre la URL en el navegador web predeterminado.
    uri = "C:\SomeFolder"  # Abre el explorador de archivos en la ruta dada.
    uri = "C:\SomeImage.png"  # Abre la imagen dada en la aplicación de visualización predeterminada.

 .. code-tab:: csharp

    Uri = "https://godotengine.org"; // Abre la URL en el navegador web predeterminado.
    Uri = "C:\SomeFolder"; // Abre el explorador de archivos en la ruta dada.
    Uri = "C:\SomeImage.png"; // Abre la imagen dada en la aplicación de visualización predeterminada.



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_LinkButton_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_color>`

:ref:`Color<class_Color>` del texto predeterminado del **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_disabled_color>`

:ref:`Color<class_Color>` del texto utilizado cuando el **LinkButton** está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_focus_color>`

Color de texto usado cuando el **LinkButton** está enfocado. Solo reemplaza el color de texto normal del botón. Los estados deshabilitado, al pasar el cursor y presionado tienen precedencia sobre este color.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_hover_color>`

:ref:`Color<class_Color>` del texto usado cuando el **LinkButton** está siendo movido.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_hover_pressed_color>`

:ref:`Color<class_Color>` del texto usado cuando el **LinkButton** es pasado con el cursor y presionado.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_outline_color>`

El tinte del contorno del texto del **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_pressed_color>`

:ref:`Color<class_Color>` del texto utilizado cuando se pulsa el **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_LinkButton_theme_constant_outline_size>`

El tamaño del contorno del texto.

\ **Note:** Si se usa una fuente con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` habilitado, su :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` debe establecerse en al menos *el doble* del valor de :ref:`outline_size<class_LinkButton_theme_constant_outline_size>` para que el renderizado del contorno se vea correctamente. De lo contrario, el contorno puede parecer cortado antes de lo previsto.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_constant_underline_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **underline_spacing** = ``2`` :ref:`🔗<class_LinkButton_theme_constant_underline_spacing>`

El espacio vertical entre la línea de base del texto y el subrayado.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_LinkButton_theme_font_font>`

:ref:`Font<class_Font>` del texto del **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_LinkButton_theme_font_size_font_size>`

Tamaño de fuente del texto del **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_LinkButton_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` usado cuando el **LinkButton** está enfocado. El :ref:`StyleBox<class_StyleBox>` de :ref:`focus<class_LinkButton_theme_style_focus>` se muestra *sobre* el :ref:`StyleBox<class_StyleBox>` base, por lo que se debe usar un :ref:`StyleBox<class_StyleBox>` parcialmente transparente para asegurar que el :ref:`StyleBox<class_StyleBox>` base permanezca visible. Un :ref:`StyleBox<class_StyleBox>` que representa un contorno o un subrayado funciona bien para este propósito. Para deshabilitar el efecto visual de enfoque, asigna un recurso :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Ten en cuenta que deshabilitar el efecto visual de enfoque perjudicará la usabilidad de la navegación con teclado/controlador, por lo que esto no se recomienda por razones de accesibilidad.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
