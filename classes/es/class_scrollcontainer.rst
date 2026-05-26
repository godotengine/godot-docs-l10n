:github_url: hide

.. _class_ScrollContainer:

ScrollContainer
===============

**Hereda:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`EditorInspector<class_EditorInspector>`

Un contenedor utilizado para proporcionar barras de desplazamiento a un control hijo cuando sea necesario.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un contenedor utilizado para proporcionar a un control hijo barras de desplazamiento cuando sea necesario. Las barras de desplazamiento se dibujarán automáticamente a la derecha (para vertical) o abajo (para horizontal) y permitirán arrastrar para mover el Control visible (y sus hijos) dentro del ScrollContainer. Las barras de desplazamiento también cambiarán automáticamente el tamaño del agarrador según el :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` del Control en relación con el ScrollContainer.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar Contenedores <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | clip_contents                                                                                      | ``true`` (overrides :ref:`Control<class_Control_property_clip_contents>`)           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>`                         | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`                                   | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`         | :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`               | ``1``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | propagate_maximum_size                                                                             | ``false`` (overrides :ref:`Control<class_Control_property_propagate_maximum_size>`) |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_deadzone<class_ScrollContainer_property_scroll_deadzone>`                             | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` | :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`                           | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`                         | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`scroll_horizontal_by_default<class_ScrollContainer_property_scroll_horizontal_by_default>`   | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                  | :ref:`scroll_horizontal_custom_step<class_ScrollContainer_property_scroll_horizontal_custom_step>` | ``-1.0``                                                                            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_vertical<class_ScrollContainer_property_scroll_vertical>`                             | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                  | :ref:`scroll_vertical_custom_step<class_ScrollContainer_property_scroll_vertical_custom_step>`     | ``-1.0``                                                                            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`tile_scroll_hint<class_ScrollContainer_property_tile_scroll_hint>`                           | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`         | :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`                   | ``1``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`ensure_control_visible<class_ScrollContainer_method_ensure_control_visible>`\ (\ control\: :ref:`Control<class_Control>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HScrollBar<class_HScrollBar>` | :ref:`get_h_scroll_bar<class_ScrollContainer_method_get_h_scroll_bar>`\ (\ )                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VScrollBar<class_VScrollBar>` | :ref:`get_v_scroll_bar<class_ScrollContainer_method_get_v_scroll_bar>`\ (\ )                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_horizontal_color<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>` | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_vertical_color<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`     | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_h_separation<class_ScrollContainer_theme_constant_scrollbar_h_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_v_separation<class_ScrollContainer_theme_constant_scrollbar_v_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`              |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>`                  |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_ScrollContainer_theme_style_focus>`                                               |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_ScrollContainer_theme_style_panel>`                                               |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_ScrollContainer_signal_scroll_ended:

.. rst-class:: classref-signal

**scroll_ended**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_ended>`

Emitida cuando el desplazamiento se detiene al arrastrar el área desplazable *con un evento táctil*. Esta señal *no* se emite cuando se desplaza arrastrando la barra de desplazamiento, desplazando con la rueda del ratón o desplazando con eventos de teclado/gamepad.

\ **Nota:** Esta señal solo se emite en Android o iOS, o en plataformas de escritorio/web cuando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` está habilitado.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_signal_scroll_started:

.. rst-class:: classref-signal

**scroll_started**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_started>`

Emitida cuando el desplazamiento comienza al arrastrar el área desplazable c\ *on un evento táctil*. Esta señal *no* se emite cuando se desplaza arrastrando la barra de desplazamiento, desplazando con la rueda del ratón o desplazando con eventos de teclado/gamepad.

\ **Nota:** Esta señal solo se emite en Android o iOS, o en plataformas de escritorio/web cuando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` está habilitado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_ScrollContainer_ScrollMode:

.. rst-class:: classref-enumeration

enum **ScrollMode**: :ref:`🔗<enum_ScrollContainer_ScrollMode>`

.. _class_ScrollContainer_constant_SCROLL_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_DISABLED** = ``0``

Desplazamiento desactivado, la barra de desplazamiento estará invisible.

.. _class_ScrollContainer_constant_SCROLL_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_AUTO** = ``1``

Desplazamiento activado, la barra de desplazamiento estará visible solo si es necesario, es decir, el contenido del contenedor es más grande que el contenedor.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_ALWAYS** = ``2``

Desplazamiento activado, la barra de desplazamiento siempre estará visible.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_NEVER** = ``3``

Desplazamiento activado, la barra de desplazamiento estará oculta.

.. _class_ScrollContainer_constant_SCROLL_MODE_RESERVE:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_RESERVE** = ``4``

Combina :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>` y :ref:`SCROLL_MODE_SHOW_ALWAYS<class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS>`. La barra de desplazamiento solo es visible si es necesario, pero el tamaño del contenido se ajusta como si siempre estuviera visible. Es útil para asegurar que el tamaño del contenido se mantenga igual independientemente de si la barra de desplazamiento está visible.

.. _class_ScrollContainer_constant_SCROLL_MODE_MAXIMIZE_FIRST:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_MAXIMIZE_FIRST** = ``5``

Behaves like :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>`, but makes the **ScrollContainer** report a minimum size based on its content (limited by :ref:`Control.custom_maximum_size<class_Control_property_custom_maximum_size>` when set on the corresponding axis). This allows it to grow first and only start scrolling once constrained.

.. rst-class:: classref-item-separator

----

.. _enum_ScrollContainer_ScrollHintMode:

.. rst-class:: classref-enumeration

enum **ScrollHintMode**: :ref:`🔗<enum_ScrollContainer_ScrollHintMode>`

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_DISABLED** = ``0``

Las pistas de desplazamiento nunca se mostrarán.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_ALL** = ``1``

Scroll hints will be shown at the top and bottom (if vertical), or left and right (if horizontal).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_TOP_AND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_TOP_AND_LEFT** = ``2``

Scroll hints will be shown at the top (if vertical), or the left (if horizontal).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_BOTTOM_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_BOTTOM_AND_RIGHT** = ``3``

Scroll hints will be shown at the bottom (if horizontal), or the right (if horizontal).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ScrollContainer_property_draw_focus_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_focus_border** = ``false`` :ref:`🔗<class_ScrollContainer_property_draw_focus_border>`

.. rst-class:: classref-property-setget

- |void| **set_draw_focus_border**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_focus_border**\ (\ )

Si es ``true``, se dibuja :ref:`focus<class_ScrollContainer_theme_style_focus>` cuando el ScrollContainer o uno de sus nodos descendientes está enfocado.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_follow_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_focus** = ``false`` :ref:`🔗<class_ScrollContainer_property_follow_focus>`

.. rst-class:: classref-property-setget

- |void| **set_follow_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_focus**\ (\ )

Si es ``true``, el ScrollContainer se desplazará automáticamente hacia los hijos enfocados (incluidos los hijos indirectos) para asegurarse de que sean completamente visibles.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_horizontal_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **horizontal_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_horizontal_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_horizontal_scroll_mode**\ (\ )

Controla si la barra de desplazamiento horizontal puede ser usada y cuándo debería ser visible.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_deadzone:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_deadzone** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_deadzone>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_deadzone**\ (\ )

Zona muerta para el desplazamiento táctil. Una zona muerta más baja hace que el desplazamiento sea más sensible.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_hint_mode:

.. rst-class:: classref-property

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **scroll_hint_mode** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_hint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_hint_mode**\ (\ value\: :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>`\ )
- :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **get_scroll_hint_mode**\ (\ )

The way which scroll hints (indicators that show that the content can still be scrolled in a certain direction) will be shown.

\ **Note:** Hints won't be shown if the content can be scrolled both vertically and horizontally.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_horizontal** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_h_scroll**\ (\ )

El valor de desplazamiento horizontal actual.

\ **Nota:** Si estás estableciendo este valor en la función :ref:`Node._ready()<class_Node_private_method__ready>` o antes, necesita ser envuelto con :ref:`Object.set_deferred()<class_Object_method_set_deferred>`, ya que :ref:`Range.max_value<class_Range_property_max_value>` de la barra de desplazamiento aún no está inicializado.

::

    func _ready():
        set_deferred("scroll_horizontal", 600)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal_by_default:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_horizontal_by_default** = ``false`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal_by_default>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_horizontal_by_default**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_horizontal_by_default**\ (\ )

If ``true``, the mouse wheel scrolls the view horizontally, and holding :kbd:`Shift` scrolls vertically.

If ``false`` (default), the mouse wheel scrolls the view vertically, and holding :kbd:`Shift` scrolls horizontally.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_horizontal_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_horizontal_custom_step**\ (\ )

Reemplaza el :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>` utilizado al hacer clic en los botones de incremento y decremento horizontal de la barra de desplazamiento interna o al usar las teclas de flecha cuando la :ref:`ScrollBar<class_ScrollBar>` está enfocada.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_vertical** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_v_scroll**\ (\ )

El valor de desplazamiento vertical actual.

\ **Nota:** Establecerlo antes de tiempo necesita ser diferido, al igual que en :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`.

::

    func _ready():
        set_deferred("scroll_vertical", 600)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_vertical_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vertical_custom_step**\ (\ )

Reemplaza el :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>` utilizado al hacer clic en los botones de incremento y decremento verticales de la barra de desplazamiento interna o al usar las teclas de flecha cuando la :ref:`ScrollBar<class_ScrollBar>` está enfocada.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_tile_scroll_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tile_scroll_hint** = ``false`` :ref:`🔗<class_ScrollContainer_property_tile_scroll_hint>`

.. rst-class:: classref-property-setget

- |void| **set_tile_scroll_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_hint_tiled**\ (\ )

If ``true``, the scroll hint texture will be tiled instead of stretched. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_vertical_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **vertical_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_vertical_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_vertical_scroll_mode**\ (\ )

Controla si la barra de desplazamiento vertical puede ser usada y cuándo debería ser visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ScrollContainer_method_ensure_control_visible:

.. rst-class:: classref-method

|void| **ensure_control_visible**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_ScrollContainer_method_ensure_control_visible>`

Asegura que el ``control`` dado sea visible (debe ser un hijo directo o indirecto del ScrollContainer). Utilizado por :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`.

\ **Nota:** Esto no funcionará en un nodo que acaba de ser añadido durante el mismo frame. Si quieres desplazarte a un hijo recién añadido, debes esperar hasta el siguiente frame usando :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>`:

::

    add_child(child_node)
    await get_tree().process_frame
    ensure_control_visible(child_node)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_h_scroll_bar:

.. rst-class:: classref-method

:ref:`HScrollBar<class_HScrollBar>` **get_h_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_h_scroll_bar>`

Devuelve la barra de desplazamiento horizontal :ref:`HScrollBar<class_HScrollBar>` de este **ScrollContainer**.

\ **Advertencia:** Este es un nodo interno requerido, eliminarlo y liberarlo puede causar un fallo. Si deseas deshabilitar u ocultar una barra de desplazamiento, puedes usar :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_v_scroll_bar:

.. rst-class:: classref-method

:ref:`VScrollBar<class_VScrollBar>` **get_v_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_v_scroll_bar>`

Devuelve la barra de desplazamiento vertical :ref:`VScrollBar<class_VScrollBar>` de este **ScrollContainer**.

\ **Advertencia:** Este es un nodo interno requerido, eliminarlo y liberarlo puede causar un fallo. Si deseas deshabilitar u ocultar una barra de desplazamiento, puedes usar :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_ScrollContainer_theme_color_scroll_hint_horizontal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_horizontal_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>`

:ref:`Color<class_Color>` used to modulate the :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>` texture.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_color_scroll_hint_vertical_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_vertical_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`

:ref:`Color<class_Color>` used to modulate the :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>` texture.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_h_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_h_separation>`

The space between the ScrollContainer's vertical scroll bar and its content, in pixels. No space will be added when the content's minimum size is larger than the ScrollContainer's size.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_v_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_v_separation>`

The space between the ScrollContainer's horizontal scroll bar and its content, in pixels. No space will be added when the content's minimum size is larger than the ScrollContainer's size.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_horizontal:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_horizontal** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`

The indicator that will be shown when the content can still be scrolled horizontally. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_vertical:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_vertical** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_vertical>`

The indicator that will be shown when the content can still be scrolled vertically. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_ScrollContainer_theme_style_focus>`

El :ref:`StyleBox<class_StyleBox>` del borde de enfoque del **ScrollContainer**. Solo se usa si :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_ScrollContainer_theme_style_panel>`

El fondo :ref:`StyleBox<class_StyleBox>` del **ScrollContainer**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
