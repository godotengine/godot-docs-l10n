:github_url: hide

.. _class_EditorSpinSlider:

EditorSpinSlider
================

**Eredita:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Il controllo per la modifica dei valori numerici nell'editor Godot .

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo :ref:`Control<class_Control>` viene utilizzato nel pannello dell'Ispettore nell'editor per consentire la modifica di valori numerici. Può essere utilizzato con :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` per ricreare lo stesso comportamento.

Se il valore di :ref:`Range.step<class_Range_property_step>` è ``1``, **EditorSpinSlider** visualizzerà frecce su/giù, simili a :ref:`SpinBox<class_SpinBox>`. Se il valore di :ref:`Range.step<class_Range_property_step>` non è ``1``, sarà invece visualizzato uno slider.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Proprietà del tema
------------------------------------

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

Segnali
--------------

.. _class_EditorSpinSlider_signal_grabbed:

.. rst-class:: classref-signal

**grabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_grabbed>`

Emesso quando lo spinner/slider viene afferrato.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_ungrabbed:

.. rst-class:: classref-signal

**ungrabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_ungrabbed>`

Emesso quando lo spinner/slider viene rilasciato.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_updown_pressed:

.. rst-class:: classref-signal

**updown_pressed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_updown_pressed>`

Emesso quando il pulsante su/giù viene premuto.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_entered:

.. rst-class:: classref-signal

**value_focus_entered**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_entered>`

Emesso quando il campo del valore ottiene il focus.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_exited:

.. rst-class:: classref-signal

**value_focus_exited**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_exited>`

Emesso quando il campo del valore perde il focus.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

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

Descrizioni delle proprietà
------------------------------------------------------

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

Se ``true``, il selettore non disegna lo sfondo.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_hide_slider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hide_slider** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_hide_slider>`

.. rst-class:: classref-property-setget

- |void| **set_hide_slider**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hiding_slider**\ (\ )

**Deprecato:** Use :ref:`control_state<class_EditorSpinSlider_property_control_state>` instead.

Se ``true``, il selettore e le frecce in alto e in basso sono nascosti.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

Il testo visualizzato a sinistra del valore.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

Se ``true``, non è possibile interagire con lo slider.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

Il suffisso da visualizzare dopo il valore (in un colore sbiadito). Dovrebbe essere generalmente una parola plurale. Potresti dover usare un'abbreviazione se il suffisso è troppo lungo per essere visualizzato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_EditorSpinSlider_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown>`

Singola texture che rappresenta entrambi i pulsanti su e giù.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_icon_updown_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown_disabled** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown_disabled>`

Singola texture che rappresenta entrambi i pulsanti su e giù, quando il controllo è di sola lettura o disabilitato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
