:github_url: hide

.. _class_EditorSpinSlider:

EditorSpinSlider
================

**Hereda:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Control del editor Godot para editar valores numéricos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este nodo :ref:`Control<class_Control>` se utiliza en el panel Inspector del editor para permitir la edición de valores numéricos. Puede usarse con :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` para recrear el mismo comportamiento.

Si el valor de :ref:`Range.step<class_Range_property_step>` es ``1``, el **EditorSpinSlider** mostrará flechas arriba/abajo, similar a :ref:`SpinBox<class_SpinBox>`. Si el valor de :ref:`Range.step<class_Range_property_step>` no es ``1``, se mostrará un deslizador en su lugar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`ControlState<enum_EditorSpinSlider_ControlState>` | :ref:`control_state<class_EditorSpinSlider_property_control_state>`           | ``0``                                                                        |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`deferred_drag_mode<class_EditorSpinSlider_property_deferred_drag_mode>` | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>`       | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`flat<class_EditorSpinSlider_property_flat>`                             | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                | focus_mode                                                                    | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)          |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`hide_slider<class_EditorSpinSlider_property_hide_slider>`               | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`label<class_EditorSpinSlider_property_label>`                           | ``""``                                                                       |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`read_only<class_EditorSpinSlider_property_read_only>`                   | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]  | size_flags_vertical                                                           | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | step                                                                          | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`suffix<class_EditorSpinSlider_property_suffix>`                         | ``""``                                                                       |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown<class_EditorSpinSlider_theme_icon_updown>`                   |
   +-----------------------------------+---------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown_disabled<class_EditorSpinSlider_theme_icon_updown_disabled>` |
   +-----------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_EditorSpinSlider_signal_grabbed:

.. rst-class:: classref-signal

**grabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_grabbed>`

Emitted when the spinner/slider is grabbed.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_ungrabbed:

.. rst-class:: classref-signal

**ungrabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_ungrabbed>`

Emitted when the spinner/slider is ungrabbed.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_updown_pressed:

.. rst-class:: classref-signal

**updown_pressed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_updown_pressed>`

Emitida cuando se presiona el botón de arriba/abajo.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_entered:

.. rst-class:: classref-signal

**value_focus_entered**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_entered>`

Emitida cuando el formulario del valor obtiene el foco.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_exited:

.. rst-class:: classref-signal

**value_focus_exited**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_exited>`

Emitida cuando el formulario del valor pierde el foco.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_EditorSpinSlider_ControlState:

.. rst-class:: classref-enumeration

enum **ControlState**: :ref:`🔗<enum_EditorSpinSlider_ControlState>`

.. _class_EditorSpinSlider_constant_CONTROL_STATE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_DEFAULT** = ``0``

The type of control used will depend on the value of :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>`. Up-down arrows if ``true``, a slider if ``false``.

.. _class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_PREFER_SLIDER** = ``1``

A slider will always be used, even if :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>` is enabled.

.. _class_EditorSpinSlider_constant_CONTROL_STATE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_HIDE** = ``2``

Neither the up-down arrows nor the slider will be shown.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_EditorSpinSlider_property_control_state:

.. rst-class:: classref-property

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **control_state** = ``0`` :ref:`🔗<class_EditorSpinSlider_property_control_state>`

.. rst-class:: classref-property-setget

- |void| **set_control_state**\ (\ value\: :ref:`ControlState<enum_EditorSpinSlider_ControlState>`\ )
- :ref:`ControlState<enum_EditorSpinSlider_ControlState>` **get_control_state**\ (\ )

The state in which the control used to manipulate the value will be.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_deferred_drag_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deferred_drag_mode** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_deferred_drag_mode>`

.. rst-class:: classref-property-setget

- |void| **set_deferred_drag_mode_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deferred_drag_mode_enabled**\ (\ )

If ``true``, changing via dragging is applied only at the end of the input (for example, when the user releases a mouse button).

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_editing_integer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editing_integer** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_editing_integer>`

.. rst-class:: classref-property-setget

- |void| **set_editing_integer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_integer**\ (\ )

If ``true``, the **EditorSpinSlider** is considered to be editing an integer value. If ``false``, the **EditorSpinSlider** is considered to be editing a floating-point value. This is used to determine whether a slider should be drawn by default. The slider is only drawn for floats; integers use up-down arrows similar to :ref:`SpinBox<class_SpinBox>` instead, unless :ref:`control_state<class_EditorSpinSlider_property_control_state>` is set to :ref:`CONTROL_STATE_PREFER_SLIDER<class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER>`. It will also use :ref:`EditorSettings.interface/inspector/integer_drag_speed<class_EditorSettings_property_interface/inspector/integer_drag_speed>` instead of :ref:`EditorSettings.interface/inspector/float_drag_speed<class_EditorSettings_property_interface/inspector/float_drag_speed>` if the slider is available.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Si es ``true``, el deslizador no dibujará el fondo.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_hide_slider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hide_slider** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_hide_slider>`

.. rst-class:: classref-property-setget

- |void| **set_hide_slider**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hiding_slider**\ (\ )

**Obsoleto:** Use :ref:`control_state<class_EditorSpinSlider_property_control_state>` instead.

Si es ``true``, el deslizador y las flechas arriba/abajo están ocultas.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

El texto que se muestra a la izquierda del valor.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

Si es ``true``, no se puede interactuar con el deslizador.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

El sufijo a mostrar después del valor (en un color atenuado). Por lo general, debería ser una palabra en plural. Es posible que tengas que utilizar una abreviatura si el sufijo es demasiado largo para mostrarse.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_EditorSpinSlider_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown>`

Textura única que representa los botones de arriba y abajo.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_icon_updown_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown_disabled** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown_disabled>`

Textura única que representa los botones de arriba y abajo, cuando el control es de solo lectura o está deshabilitado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
