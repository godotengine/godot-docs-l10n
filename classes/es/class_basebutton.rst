:github_url: hide

.. _class_BaseButton:

BaseButton
==========

**Hereda:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`Button<class_Button>`, :ref:`LinkButton<class_LinkButton>`, :ref:`TextureButton<class_TextureButton>`

Clase base abstracta para botones GUI.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**BaseButton** es una clase base abstracta para botones de interfaz gráfica. No muestra nada por sí sola.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>`                           | :ref:`action_mode<class_BaseButton_property_action_mode>`                   | ``1``                                                               |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`ButtonGroup<class_ButtonGroup>`                                   | :ref:`button_group<class_BaseButton_property_button_group>`                 |                                                                     |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_BaseButton_property_button_mask>`                   | ``1``                                                               |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`button_pressed<class_BaseButton_property_button_pressed>`             | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`disabled<class_BaseButton_property_disabled>`                         | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                                | focus_mode                                                                  | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`keep_pressed_outside<class_BaseButton_property_keep_pressed_outside>` | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>`                                         | :ref:`shortcut<class_BaseButton_property_shortcut>`                         |                                                                     |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`shortcut_feedback<class_BaseButton_property_shortcut_feedback>`       | ``true``                                                            |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`shortcut_in_tooltip<class_BaseButton_property_shortcut_in_tooltip>`   | ``true``                                                            |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`toggle_mode<class_BaseButton_property_toggle_mode>`                   | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`_pressed<class_BaseButton_private_method__pressed>`\ (\ ) |virtual|                                            |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`_toggled<class_BaseButton_private_method__toggled>`\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) |virtual|      |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`DrawMode<enum_BaseButton_DrawMode>` | :ref:`get_draw_mode<class_BaseButton_method_get_draw_mode>`\ (\ ) |const|                                            |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_hovered<class_BaseButton_method_is_hovered>`\ (\ ) |const|                                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_pressed_no_signal<class_BaseButton_method_set_pressed_no_signal>`\ (\ pressed\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_BaseButton_signal_button_down:

.. rst-class:: classref-signal

**button_down**\ (\ ) :ref:`🔗<class_BaseButton_signal_button_down>`

Emitida cuando el botón comienza a ser presionado.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_button_up:

.. rst-class:: classref-signal

**button_up**\ (\ ) :ref:`🔗<class_BaseButton_signal_button_up>`

Emitida cuando el botón deja de ser presionado.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_BaseButton_signal_pressed>`

Emitida cuando el botón se conmuta o se presiona. Esto está en :ref:`button_down<class_BaseButton_signal_button_down>` si el :ref:`action_mode<class_BaseButton_property_action_mode>` es :ref:`ACTION_MODE_BUTTON_PRESS<class_BaseButton_constant_ACTION_MODE_BUTTON_PRESS>` y en :ref:`button_up<class_BaseButton_signal_button_up>` en caso contrario.

Si necesitas saber el estado de pulsación del botón (y :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` está activo), utiliza :ref:`toggled<class_BaseButton_signal_toggled>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_toggled:

.. rst-class:: classref-signal

**toggled**\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BaseButton_signal_toggled>`

Se emite cuando el botón acaba de conmutar entre los estados presionado y normal (solo si :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` está activo). El nuevo estado se incluye en el argumento ``toggled_on``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_BaseButton_DrawMode:

.. rst-class:: classref-enumeration

enum **DrawMode**: :ref:`🔗<enum_BaseButton_DrawMode>`

.. _class_BaseButton_constant_DRAW_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_NORMAL** = ``0``

El estado normal (es decir, no presionado, no encima del botón, no activado y activado) de los botones.

.. _class_BaseButton_constant_DRAW_PRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_PRESSED** = ``1``

El estado de los botones se presiona.

.. _class_BaseButton_constant_DRAW_HOVER:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_HOVER** = ``2``

El estado de los botones que tienen el cursor encima.

.. _class_BaseButton_constant_DRAW_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_DISABLED** = ``3``

El estado de los botones está desactivado.

.. _class_BaseButton_constant_DRAW_HOVER_PRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_HOVER_PRESSED** = ``4``

El estado de los botones cuyo cursor esta encima y se presiona.

.. rst-class:: classref-item-separator

----

.. _enum_BaseButton_ActionMode:

.. rst-class:: classref-enumeration

enum **ActionMode**: :ref:`🔗<enum_BaseButton_ActionMode>`

.. _class_BaseButton_constant_ACTION_MODE_BUTTON_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ActionMode<enum_BaseButton_ActionMode>` **ACTION_MODE_BUTTON_PRESS** = ``0``

Requiere sólo una pulsación para considerar el botón pulsado.

.. _class_BaseButton_constant_ACTION_MODE_BUTTON_RELEASE:

.. rst-class:: classref-enumeration-constant

:ref:`ActionMode<enum_BaseButton_ActionMode>` **ACTION_MODE_BUTTON_RELEASE** = ``1``

Requiere de una pulsación y una posterior liberación antes de considerar el botón pulsado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_BaseButton_property_action_mode:

.. rst-class:: classref-property

:ref:`ActionMode<enum_BaseButton_ActionMode>` **action_mode** = ``1`` :ref:`🔗<class_BaseButton_property_action_mode>`

.. rst-class:: classref-property-setget

- |void| **set_action_mode**\ (\ value\: :ref:`ActionMode<enum_BaseButton_ActionMode>`\ )
- :ref:`ActionMode<enum_BaseButton_ActionMode>` **get_action_mode**\ (\ )

Determina cuándo se considera que se hizo clic en el botón.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_group:

.. rst-class:: classref-property

:ref:`ButtonGroup<class_ButtonGroup>` **button_group** :ref:`🔗<class_BaseButton_property_button_group>`

.. rst-class:: classref-property-setget

- |void| **set_button_group**\ (\ value\: :ref:`ButtonGroup<class_ButtonGroup>`\ )
- :ref:`ButtonGroup<class_ButtonGroup>` **get_button_group**\ (\ )

El :ref:`ButtonGroup<class_ButtonGroup>` asociado con el botón. No confundir con grupos de nodos.

\ **Nota:** El botón se configurará como un botón de opción si se le asigna un :ref:`ButtonGroup<class_ButtonGroup>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``1`` :ref:`🔗<class_BaseButton_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

Máscara binaria para elegir a qué botones del ratón responderá este botón.

Para permitir clics izquierdo y derecho, utiliza ``MOUSE_BUTTON_MASK_LEFT | MOUSE_BUTTON_MASK_RIGHT``.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **button_pressed** = ``false`` :ref:`🔗<class_BaseButton_property_button_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Si es ``true``, el estado del botón es presionado. Significa que el botón está hundido o activado (si :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` está activo). Solo funciona si :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` es ``true``.

\ **Nota:** Cambiar el valor de :ref:`button_pressed<class_BaseButton_property_button_pressed>` resultará en la emisión de la señal :ref:`toggled<class_BaseButton_signal_toggled>`. Si deseas cambiar el estado de presión sin emitir esa señal, utiliza :ref:`set_pressed_no_signal()<class_BaseButton_method_set_pressed_no_signal>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_BaseButton_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Si es ``true``, el botón está en estado deshabilitado y no se puede hacer clic ni alternar.

\ **Nota:** Si el botón se deshabilita mientras se mantiene presionado, se emitirá :ref:`button_up<class_BaseButton_signal_button_up>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_keep_pressed_outside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_pressed_outside** = ``false`` :ref:`🔗<class_BaseButton_property_keep_pressed_outside>`

.. rst-class:: classref-property-setget

- |void| **set_keep_pressed_outside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_pressed_outside**\ (\ )

Si es ``true``, el botón permanecee pulsado cuando el cursor se mueve fuera mientras se presiona.

\ **Nota:** Esta propiedad solo afecta la apariencia visual del botón. Se emitirán señales en el mismo momento sin tener en cuenta el valor de esta propiedad.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **shortcut** :ref:`🔗<class_BaseButton_property_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_shortcut**\ (\ )

:ref:`Shortcut<class_Shortcut>` asociado al botón.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut_feedback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shortcut_feedback** = ``true`` :ref:`🔗<class_BaseButton_property_shortcut_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_feedback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shortcut_feedback**\ (\ )

Si es ``true``, el botón se resaltará durante un breve periodo de tiempo cuando se active su atajo. Si es ``false`` y :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` es ``false``, el atajo se activará sin ningún tipo de respuesta visual.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut_in_tooltip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shortcut_in_tooltip** = ``true`` :ref:`🔗<class_BaseButton_property_shortcut_in_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_in_tooltip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shortcut_in_tooltip_enabled**\ (\ )

Si es ``true``, el botón añadirá información sobre su atajo en la descripción emergente (tooltip).

\ **Nota:** Esta propiedad no hace nada cuando el control de la descripción emergente se personaliza mediante :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_BaseButton_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

Si es ``true``, el botón está en modo de conmutación. Hace que el botón cambie de estado entre presionado y no presionado cada vez que se hace clic en su área.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_BaseButton_private_method__pressed:

.. rst-class:: classref-method

|void| **_pressed**\ (\ ) |virtual| :ref:`🔗<class_BaseButton_private_method__pressed>`

Se llama cuando se presiona el botón. Si necesitas saber el estado de pulsación del botón (y :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` está activo), utiliza en su lugar el :ref:`_toggled()<class_BaseButton_private_method__toggled>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_private_method__toggled:

.. rst-class:: classref-method

|void| **_toggled**\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_BaseButton_private_method__toggled>`

Se llama cuando se cambia el estado del botón(Activado/Desactivado) (sólo si :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` está activo).

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_get_draw_mode:

.. rst-class:: classref-method

:ref:`DrawMode<enum_BaseButton_DrawMode>` **get_draw_mode**\ (\ ) |const| :ref:`🔗<class_BaseButton_method_get_draw_mode>`

Devuelve el estado visual utilizado para dibujar el botón. Esto es útil principalmente cuando implementas tu propio código de dibujo, ya sea anulando _draw() o conectando la señal de "dibujo". El estado visual del botón está definido por el enum :ref:`DrawMode<enum_BaseButton_DrawMode>`.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_is_hovered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hovered**\ (\ ) |const| :ref:`🔗<class_BaseButton_method_is_hovered>`

Devuelve ``true`` si el ratón ha entrado en el botón y no lo ha dejado todavía.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_set_pressed_no_signal:

.. rst-class:: classref-method

|void| **set_pressed_no_signal**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BaseButton_method_set_pressed_no_signal>`

Cambia el estado de :ref:`button_pressed<class_BaseButton_property_button_pressed>` del botón, sin emitir :ref:`toggled<class_BaseButton_signal_toggled>`. Úsalo cuando solo quieras cambiar el estado del botón sin enviar el evento de pulsado (por ejemplo, al inicializar la escena). Solo funciona si :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` está en ``true``.

\ **Nota:** Este método no desactiva otros botones en :ref:`button_group<class_BaseButton_property_button_group>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
