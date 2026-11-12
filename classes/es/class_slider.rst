:github_url: hide

.. _class_Slider:

Slider
======

**Hereda:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`HSlider<class_HSlider>`, :ref:`VSlider<class_VSlider>`

Clase base abstracta para deslizadores.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base abstracta para los deslizadores, utilizada para ajustar un valor moviendo un agarrador a lo largo de un eje horizontal o vertical. Los deslizadores son controles basados en :ref:`Range<class_Range>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`editable<class_Slider_property_editable>`                 | ``true``                                                            |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`      | focus_mode                                                      | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`scrollable<class_Slider_property_scrollable>`             | ``true``                                                            |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                     | step                                                            | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)         |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`tick_count<class_Slider_property_tick_count>`             | ``0``                                                               |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`ticks_on_borders<class_Slider_property_ticks_on_borders>` | ``false``                                                           |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`TickPosition<enum_Slider_TickPosition>` | :ref:`ticks_position<class_Slider_property_ticks_position>`     | ``0``                                                               |
   +-----------------------------------------------+-----------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`center_grabber<class_Slider_theme_constant_center_grabber>`                        | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`grabber_max_size<class_Slider_theme_constant_grabber_max_size>`                    | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`grabber_offset<class_Slider_theme_constant_grabber_offset>`                        | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`tick_max_size<class_Slider_theme_constant_tick_max_size>`                          | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                 | :ref:`tick_offset<class_Slider_theme_constant_tick_offset>`                              | ``0`` |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber<class_Slider_theme_icon_grabber>`                                          |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber_disabled<class_Slider_theme_icon_grabber_disabled>`                        |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`grabber_highlight<class_Slider_theme_icon_grabber_highlight>`                      |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`tick<class_Slider_theme_icon_tick>`                                                |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_ended_sound<class_Slider_theme_sound_drag_ended_sound>`                       |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`drag_started_sound<class_Slider_theme_sound_drag_started_sound>`                   |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`focus_sound<class_Slider_theme_sound_focus_sound>`                                 |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_change_rejected_sound<class_Slider_theme_sound_value_change_rejected_sound>` |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`value_changed_sound<class_Slider_theme_sound_value_changed_sound>`                 |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_area<class_Slider_theme_style_grabber_area>`                               |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`grabber_area_highlight<class_Slider_theme_style_grabber_area_highlight>`           |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`slider<class_Slider_theme_style_slider>`                                           |       |
   +---------------------------------------+------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Slider_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ value_changed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Slider_signal_drag_ended>`

Emitida cuando se deja de arrastrar el agarrador. Si ``value_changed`` es ``true``, :ref:`Range.value<class_Range_property_value>` es diferente del valor cuando se empezó a arrastrar.

.. rst-class:: classref-item-separator

----

.. _class_Slider_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_Slider_signal_drag_started>`

Emitida cuando se empieza a arrastrar el agarrador. Se emite antes de la señal :ref:`Range.value_changed<class_Range_signal_value_changed>` correspondiente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Slider_TickPosition:

.. rst-class:: classref-enumeration

enum **TickPosition**: :ref:`🔗<enum_Slider_TickPosition>`

.. _class_Slider_constant_TICK_POSITION_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTTOM_RIGHT** = ``0``

Coloca las marcas en la parte inferior del :ref:`HSlider<class_HSlider>`, o a la derecha del :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_TOP_LEFT** = ``1``

Coloca las marcas en la parte superior del :ref:`HSlider<class_HSlider>`, o a la izquierda del :ref:`VSlider<class_VSlider>`.

.. _class_Slider_constant_TICK_POSITION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_BOTH** = ``2``

Places the ticks at the both sides of the slider.

.. _class_Slider_constant_TICK_POSITION_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`TickPosition<enum_Slider_TickPosition>` **TICK_POSITION_CENTER** = ``3``

Places the ticks at the center of the slider.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Slider_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_Slider_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Si es ``true``, se puede interactuar con el deslizador. Si ``false``, el valor puede ser cambiado sólo por el código.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_scrollable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrollable** = ``true`` :ref:`🔗<class_Slider_property_scrollable>`

.. rst-class:: classref-property-setget

- |void| **set_scrollable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scrollable**\ (\ )

Si es ``true``, el valor puede ser cambiado usando la rueda del ratón.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_tick_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tick_count** = ``0`` :ref:`🔗<class_Slider_property_tick_count>`

.. rst-class:: classref-property-setget

- |void| **set_ticks**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ticks**\ (\ )

Número de marcas que aparecen en el deslizador, incluyendo las marcas de los bordes. Las marcas son marcadores de valor uniformemente distribuidos.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_on_borders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ticks_on_borders** = ``false`` :ref:`🔗<class_Slider_property_ticks_on_borders>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_on_borders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ticks_on_borders**\ (\ )

Si es ``true``, el deslizador mostrará las marcas de los valores mínimo y máximo.

.. rst-class:: classref-item-separator

----

.. _class_Slider_property_ticks_position:

.. rst-class:: classref-property

:ref:`TickPosition<enum_Slider_TickPosition>` **ticks_position** = ``0`` :ref:`🔗<class_Slider_property_ticks_position>`

.. rst-class:: classref-property-setget

- |void| **set_ticks_position**\ (\ value\: :ref:`TickPosition<enum_Slider_TickPosition>`\ )
- :ref:`TickPosition<enum_Slider_TickPosition>` **get_ticks_position**\ (\ )

Establece la posición de las marcas. Véase :ref:`TickPosition<enum_Slider_TickPosition>` para más detalles.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_Slider_theme_constant_center_grabber:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_grabber** = ``0`` :ref:`🔗<class_Slider_theme_constant_center_grabber>`

Constante booleana. Si es ``1``, el tamaño de la textura del agarrador se ignorará y se ajustará a los límites del deslizador basándose únicamente en la posición de su centro.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_grabber_max_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **grabber_max_size** = ``0`` :ref:`🔗<class_Slider_theme_constant_grabber_max_size>`

The maximum allowed size of the **Slider**'s grabber icon. The grabber texture is scaled down so its widest axis is :ref:`grabber_max_size<class_Slider_theme_constant_grabber_max_size>` and the other axis is scaled keeping the original ratio.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_grabber_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **grabber_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_grabber_offset>`

Desplazamiento vertical u horizontal del agarrador.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_tick_max_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tick_max_size** = ``0`` :ref:`🔗<class_Slider_theme_constant_tick_max_size>`

The maximum allowed size of the **Slider**'s tick icons. The tick texture is scaled down so its widest axis is :ref:`tick_max_size<class_Slider_theme_constant_tick_max_size>` and the other axis is scaled keeping the original ratio.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_constant_tick_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tick_offset** = ``0`` :ref:`🔗<class_Slider_theme_constant_tick_offset>`

Desplazamiento vertical u horizontal de las marcas. El desplazamiento se invierte para las marcas superiores o izquierdas.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_Slider_theme_icon_grabber>`

La textura para el grabber (el elemento arrastrable).

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_disabled** :ref:`🔗<class_Slider_theme_icon_grabber_disabled>`

La textura para el agarrador cuando está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_grabber_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber_highlight** :ref:`🔗<class_Slider_theme_icon_grabber_highlight>`

La textura para el agarrador cuando está enfocado.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_icon_tick:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **tick** :ref:`🔗<class_Slider_theme_icon_tick>`

La textura de las marcas, visible cuando :ref:`tick_count<class_Slider_property_tick_count>` es mayor que 0.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_drag_ended_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_ended_sound** :ref:`🔗<class_Slider_theme_sound_drag_ended_sound>`

Played when mouse or touch drag ends. This is also used by :ref:`SpinBox<class_SpinBox>` when dragging over its arrows, or :ref:`ColorPicker<class_ColorPicker>` when dragging over its color wheel/rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_drag_started_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **drag_started_sound** :ref:`🔗<class_Slider_theme_sound_drag_started_sound>`

Played when mouse or touch drag begins. This is also used by :ref:`SpinBox<class_SpinBox>` when dragging over its arrows, or :ref:`ColorPicker<class_ColorPicker>` when dragging over its color wheel/rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_focus_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **focus_sound** :ref:`🔗<class_Slider_theme_sound_focus_sound>`

Played when this **Slider** receives keyboard or gamepad-induced focus. Mouse or touch-induced focus does not play a focus sound.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_value_change_rejected_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_change_rejected_sound** :ref:`🔗<class_Slider_theme_sound_value_change_rejected_sound>`

Played when the value is attempted to be changed through keyboard or gamepad input, but the value is already at the minimum (or maximum).

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_sound_value_changed_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **value_changed_sound** :ref:`🔗<class_Slider_theme_sound_value_changed_sound>`

Played when the value is changed through keyboard or gamepad input. If the value is already at the minimum (or maximum), :ref:`value_change_rejected_sound<class_Slider_theme_sound_value_change_rejected_sound>` is played instead.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area** :ref:`🔗<class_Slider_theme_style_grabber_area>`

El fondo del área a la izquierda o debajo del agarrador.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_grabber_area_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **grabber_area_highlight** :ref:`🔗<class_Slider_theme_style_grabber_area_highlight>`

El fondo del área a la izquierda o debajo del agarrador que se muestra cuando se está pasando el ratón por encima o está enfocado.

.. rst-class:: classref-item-separator

----

.. _class_Slider_theme_style_slider:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **slider** :ref:`🔗<class_Slider_theme_style_slider>`

The background for the whole slider. Affects the height or width of the :ref:`grabber_area<class_Slider_theme_style_grabber_area>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
