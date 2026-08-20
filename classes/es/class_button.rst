:github_url: hide

.. _class_Button:

Button
======

**Hereda:** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CheckBox<class_CheckBox>`, :ref:`CheckButton<class_CheckButton>`, :ref:`ColorPickerButton<class_ColorPickerButton>`, :ref:`MenuButton<class_MenuButton>`, :ref:`OptionButton<class_OptionButton>`

Un botón temático que puede contener texto y un icono.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**Button** is the standard themed button. It can contain text and an icon, and it will display them according to the current :ref:`Theme<class_Theme>`.

\ **Example:** Create a button and connect a method that will be called when the button is pressed:


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        button.text = "Click me"
        button.pressed.connect(_button_pressed)
        add_child(button)

    func _button_pressed():
        print("Hello world!")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        button.Text = "Click me";
        button.Pressed += ButtonPressed;
        AddChild(button);
    }

    private void ButtonPressed()
    {
        GD.Print("Hello world!");
    }



See also :ref:`BaseButton<class_BaseButton>` which contains common properties and methods associated with this node.

\ **Note:** Buttons support multitouch via touch input, allowing multiple buttons to be pressed at the same time. Otherwise, mouse input is used, limiting interaction to one button press at a time.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

- `Demo de Prueba de Sistema Operativo <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`alignment<class_Button_property_alignment>`                             | ``1``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                 | :ref:`autowrap_mode<class_Button_property_autowrap_mode>`                     | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] | :ref:`autowrap_trim_flags<class_Button_property_autowrap_trim_flags>`         | ``128``   |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`clip_text<class_Button_property_clip_text>`                             | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`expand_icon<class_Button_property_expand_icon>`                         | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                           | :ref:`flat<class_Button_property_flat>`                                       | ``false`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                                 | :ref:`icon<class_Button_property_icon>`                                       |           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`icon_alignment<class_Button_property_icon_alignment>`                   | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_Button_property_language>`                               | ``""``    |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                       | :ref:`text<class_Button_property_text>`                                       | ``""``    |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`text_direction<class_Button_property_text_direction>`                   | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`text_overrun_behavior<class_Button_property_text_overrun_behavior>`     | ``0``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`     | :ref:`vertical_icon_alignment<class_Button_property_vertical_icon_alignment>` | ``1``     |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_color<class_Button_theme_color_font_color>`                                  | ``Color(0.875, 0.875, 0.875, 1)``   |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_disabled_color<class_Button_theme_color_font_disabled_color>`                | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_focus_color<class_Button_theme_color_font_focus_color>`                      | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hover_color<class_Button_theme_color_font_hover_color>`                      | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hover_pressed_color<class_Button_theme_color_font_hover_pressed_color>`      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_Button_theme_color_font_outline_color>`                  | ``Color(0, 0, 0, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_pressed_color<class_Button_theme_color_font_pressed_color>`                  | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_disabled_color<class_Button_theme_color_icon_disabled_color>`                | ``Color(1, 1, 1, 0.4)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_focus_color<class_Button_theme_color_icon_focus_color>`                      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_hover_color<class_Button_theme_color_icon_hover_color>`                      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_hover_pressed_color<class_Button_theme_color_icon_hover_pressed_color>`      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_normal_color<class_Button_theme_color_icon_normal_color>`                    | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_pressed_color<class_Button_theme_color_icon_pressed_color>`                  | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`align_to_largest_stylebox<class_Button_theme_constant_align_to_largest_stylebox>` | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`h_separation<class_Button_theme_constant_h_separation>`                           | ``4``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_max_width<class_Button_theme_constant_icon_max_width>`                       | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`line_spacing<class_Button_theme_constant_line_spacing>`                           | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_Button_theme_constant_outline_size>`                           | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_Button_theme_font_font>`                                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_Button_theme_font_size_font_size>`                                |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`icon<class_Button_theme_icon_icon>`                                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`disabled<class_Button_theme_style_disabled>`                                      |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`disabled_mirrored<class_Button_theme_style_disabled_mirrored>`                    |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_Button_theme_style_focus>`                                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover<class_Button_theme_style_hover>`                                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_mirrored<class_Button_theme_style_hover_mirrored>`                          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_pressed<class_Button_theme_style_hover_pressed>`                            |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`hover_pressed_mirrored<class_Button_theme_style_hover_pressed_mirrored>`          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`normal<class_Button_theme_style_normal>`                                          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`normal_mirrored<class_Button_theme_style_normal_mirrored>`                        |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`pressed<class_Button_theme_style_pressed>`                                        |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`pressed_mirrored<class_Button_theme_style_pressed_mirrored>`                      |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Button_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``1`` :ref:`🔗<class_Button_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_text_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_text_alignment**\ (\ )

Política de alineación del texto del botón.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Button_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Si se establece en un valor distinto de :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, el texto se ajusta dentro del rectángulo delimitador del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``128`` :ref:`🔗<class_Button_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Flags de recorte de espacio de ajuste automático. Véase :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` y :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` para más información.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_clip_text:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_text** = ``false`` :ref:`🔗<class_Button_property_clip_text>`

.. rst-class:: classref-property-setget

- |void| **set_clip_text**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_text**\ (\ )

Si es ``true``, el texto que es demasiado grande para caber en el botón se recorta horizontalmente. Si es ``false``, el botón siempre será lo suficientemente ancho como para contener el texto. El texto no se recorta verticalmente, y la altura del botón no se ve afectada por esta propiedad.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_expand_icon:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **expand_icon** = ``false`` :ref:`🔗<class_Button_property_expand_icon>`

.. rst-class:: classref-property-setget

- |void| **set_expand_icon**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_expand_icon**\ (\ )

Cuando está activado, el icono del botón se expandirá o encogerá para adaptarse al tamaño del botón, manteniendo su aspecto. Véase también :ref:`icon_max_width<class_Button_theme_constant_icon_max_width>`.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_Button_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Los botones planos no muestran decoración.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_Button_property_icon>`

.. rst-class:: classref-property-setget

- |void| **set_button_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_button_icon**\ (\ )

Icono del botón, si hay texto presente, el icono se colocará antes del texto.

Para editar el margen y el espaciado del icono, usa la propiedad del tema :ref:`h_separation<class_Button_theme_constant_h_separation>` y las propiedades ``content_margin_*`` de los :ref:`StyleBox<class_StyleBox>` usados.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_icon_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **icon_alignment** = ``0`` :ref:`🔗<class_Button_property_icon_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_icon_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_icon_alignment**\ (\ )

Especifica si el icono debe estar alineado horizontalmente a la izquierda, a la derecha o al centro de un botón. Utiliza las mismas constantes de :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` que la alineación del texto. Si está centrado horizontal y verticalmente, el texto se dibujará encima del icono.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Button_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Código de idioma utilizado para los algoritmos de salto de línea y de formación de texto. Si se deja vacío, se utiliza la configuración regional actual.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Button_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

El texto del botón que se mostrará dentro del área del botón.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_Button_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Dirección base de escritura del texto.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_Button_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Sets the clipping behavior when the text exceeds the node's bounding rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Button_property_vertical_icon_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_icon_alignment** = ``1`` :ref:`🔗<class_Button_property_vertical_icon_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_icon_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_icon_alignment**\ (\ )

Especifica si el icono debe alinearse verticalmente a la parte superior, inferior o al centro de un botón. Utiliza las mismas constantes de :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` que la alineación del texto. Si está centrado horizontal y verticalmente, el texto se dibujará encima del icono.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_Button_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_Button_theme_color_font_color>`

:ref:`Color<class_Color>` del texto predeterminado del **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_Button_theme_color_font_disabled_color>`

:ref:`Color<class_Color>` del texto utilizado cuando el **Button** está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_Button_theme_color_font_focus_color>`

El :ref:`Color<class_Color>` del texto que se usa cuando el **Button** está enfocado. Solo reemplaza el color normal del texto del botón. Los estados desactivado, flotante y presionado tienen prioridad sobre este color.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_Button_theme_color_font_hover_color>`

:ref:`Color<class_Color>` del texto usado cuando el **Button** tiene encima el cursor.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_font_hover_pressed_color>`

:ref:`Color<class_Color>` del texto utilizado cuando se está pasando el ratón y pulsando el **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Button_theme_color_font_outline_color>`

El tinte del contorno del texto del **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_font_pressed_color>`

:ref:`Color<class_Color>` del texto utilizado cuando se pulsa el **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_disabled_color** = ``Color(1, 1, 1, 0.4)`` :ref:`🔗<class_Button_theme_color_icon_disabled_color>`

:ref:`Color<class_Color>` de modulación del icono que se usa cuando el **Button** está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_focus_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_focus_color>`

:ref:`Color<class_Color>` de modulación del icono que se usa cuando el **Button** está enfocado. Solo reemplaza el color de modulación normal del botón. Los estados desactivado, flotante y presionado tienen prioridad sobre este color.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hover_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_hover_color>`

:ref:`Color<class_Color>` de modulación del icono que se usa cuando se está pasando el ratón por encima del **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_hover_pressed_color>`

:ref:`Color<class_Color>` de modulación del icono que se usa cuando se está pasando el ratón por encima del **Button** y se está pulsando.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_normal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_normal_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_normal_color>`

:ref:`Color<class_Color>` de modulación del icono predeterminado del **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_color_icon_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Button_theme_color_icon_pressed_color>`

:ref:`Color<class_Color>` de modulación del icono usado cuando se está pulsando el **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_align_to_largest_stylebox:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **align_to_largest_stylebox** = ``0`` :ref:`🔗<class_Button_theme_constant_align_to_largest_stylebox>`

Esta constante actúa como un valor booleano. Si es ``true``, el tamaño mínimo del botón y la alineación del texto o icono se basan siempre en los márgenes del stylebox más grande; de lo contrario, se basan en los márgenes del stylebox correspondientes al estado actual del botón.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_Button_theme_constant_h_separation>`

El espacio horizontal entre el icono y el texto del **Button**. Los valores negativos se tratarán como ``0`` cuando se utilicen.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_Button_theme_constant_icon_max_width>`

El ancho máximo permitido para el icono del **Button**. Este límite se aplica sobre el tamaño predeterminado del icono, o sobre su tamaño expandido si :ref:`expand_icon<class_Button_property_expand_icon>` es ``true``. La altura se ajusta según la relación de aspecto (ratio) del icono. Si el botón tiene iconos adicionales (por ejemplo, :ref:`CheckBox<class_CheckBox>`), estos también se verán limitados.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_line_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **line_spacing** = ``0`` :ref:`🔗<class_Button_theme_constant_line_spacing>`

Espacio vertical adicional entre líneas (en píxeles); el espacio se añade al descenso de la línea (line descent). Este valor puede ser negativo.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_Button_theme_constant_outline_size>`

El tamaño del contorno del texto.

\ **Note:** Si se usa una fuente con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` habilitado, su :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` debe establecerse en al menos *el doble* del valor de :ref:`outline_size<class_Button_theme_constant_outline_size>` para que el renderizado del contorno se vea correctamente. De lo contrario, el contorno puede parecer cortado antes de lo previsto.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Button_theme_font_font>`

:ref:`Font<class_Font>` del texto del **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_Button_theme_font_size_font_size>`

Tamaño de fuente del texto del **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_icon_icon:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_Button_theme_icon_icon>`

Icono predeterminado para el **Button**. Aparece solo si :ref:`icon<class_Button_property_icon>` no está asignado.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled** :ref:`🔗<class_Button_theme_style_disabled>`

:ref:`StyleBox<class_StyleBox>` usado cuando el **Button** está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled_mirrored** :ref:`🔗<class_Button_theme_style_disabled_mirrored>`

:ref:`StyleBox<class_StyleBox>` usado cuando el **Button** está desactivado (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_Button_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` usado cuando el **Button** está enfocado. El :ref:`StyleBox<class_StyleBox>` :ref:`focus<class_Button_theme_style_focus>` se muestra *sobre* el :ref:`StyleBox<class_StyleBox>` base, por lo que se debe usar un :ref:`StyleBox<class_StyleBox>` parcialmente transparente para asegurar que el :ref:`StyleBox<class_StyleBox>` base permanezca visible. Un :ref:`StyleBox<class_StyleBox>` que represente un contorno o un subrayado funciona bien para este propósito. Para desactivar el efecto visual de enfoque, asigna un recurso :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Ten en cuenta que desactivar el efecto visual de enfoque perjudicará la usabilidad de la navegación con teclado/mando, por lo que no se recomienda por razones de accesibilidad.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover** :ref:`🔗<class_Button_theme_style_hover>`

:ref:`StyleBox<class_StyleBox>` que se usa cuando el **Button** tiene encima el cursor.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_mirrored** :ref:`🔗<class_Button_theme_style_hover_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando el puntero está sobre el **Button** (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed** :ref:`🔗<class_Button_theme_style_hover_pressed>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando se está pulsando el **Button** y el puntero está encima a la vez.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_hover_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed_mirrored** :ref:`🔗<class_Button_theme_style_hover_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando se está pulsando el **Button** y el puntero está encima a la vez (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_Button_theme_style_normal>`

:ref:`StyleBox<class_StyleBox>` por defecto para el **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_normal_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_mirrored** :ref:`🔗<class_Button_theme_style_normal_mirrored>`

El :ref:`StyleBox<class_StyleBox>` predeterminado para el **Button** (para diseños de derecha a izquierda).

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed** :ref:`🔗<class_Button_theme_style_pressed>`

:ref:`StyleBox<class_StyleBox>` que se usa cuando se presiona el **Button**.

.. rst-class:: classref-item-separator

----

.. _class_Button_theme_style_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_mirrored** :ref:`🔗<class_Button_theme_style_pressed_mirrored>`

:ref:`StyleBox<class_StyleBox>` utilizado cuando se presiona el **Button** (para diseños de derecha a izquierda).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
