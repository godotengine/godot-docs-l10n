:github_url: hide

.. _class_VirtualJoystick:

VirtualJoystick
===============

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un controllo di joystick virtuale per i dispositivi touchscreen.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un controllo di joystick virtuale personalizzabile, progettato per i dispositivi touchscreen. Consente agli utenti di effettuare input direzionali trascinando una punta virtuale all'interno di un'area circolare definita.

Questo controllo può simulare azioni direzionali (vedi :ref:`action_up<class_VirtualJoystick_property_action_up>`, :ref:`action_down<class_VirtualJoystick_property_action_down>`, :ref:`action_left<class_VirtualJoystick_property_action_left>` e :ref:`action_right<class_VirtualJoystick_property_action_right>`), che vengono attivate quando il joystick viene mosso nelle direzioni corrispondenti.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_down<class_VirtualJoystick_property_action_down>`                   | ``&"ui_down"``        |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_left<class_VirtualJoystick_property_action_left>`                   | ``&"ui_left"``        |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_right<class_VirtualJoystick_property_action_right>`                 | ``&"ui_right"``       |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`                        | :ref:`action_up<class_VirtualJoystick_property_action_up>`                       | ``&"ui_up"``          |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`clampzone_ratio<class_VirtualJoystick_property_clampzone_ratio>`           | ``1.0``               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`deadzone_ratio<class_VirtualJoystick_property_deadzone_ratio>`             | ``0.0``               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`initial_offset_ratio<class_VirtualJoystick_property_initial_offset_ratio>` | ``Vector2(0.5, 0.5)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>`     | :ref:`joystick_mode<class_VirtualJoystick_property_joystick_mode>`               | ``0``                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`joystick_size<class_VirtualJoystick_property_joystick_size>`               | ``100.0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                  | :ref:`tip_size<class_VirtualJoystick_property_tip_size>`                         | ``50.0``              |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` | :ref:`visibility_mode<class_VirtualJoystick_property_visibility_mode>`           | ``0``                 |
   +------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_joystick<class_VirtualJoystick_theme_style_normal_joystick>`   |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_tip<class_VirtualJoystick_theme_style_normal_tip>`             |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_joystick<class_VirtualJoystick_theme_style_pressed_joystick>` |
   +---------------------------------+-----------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_tip<class_VirtualJoystick_theme_style_pressed_tip>`           |
   +---------------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_VirtualJoystick_signal_flick_canceled:

.. rst-class:: classref-signal

**flick_canceled**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_flick_canceled>`

Emesso quando la punta rientra nella zona morta dopo esserne stata al di fuori.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_flicked:

.. rst-class:: classref-signal

**flicked**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_flicked>`

Emesso quando la punta si muove fuori dalla zona morta e il joystick viene rilasciato. ``input_vector`` contiene l'ultima direzione e intensità dell'input prima del rilascio. La sua lunghezza è compresa tra ``0.0`` e ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_pressed>`

Emesso quando il joystick viene premuto.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_released:

.. rst-class:: classref-signal

**released**\ (\ input_vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VirtualJoystick_signal_released>`

Emesso quando il joystick viene rilasciato. ``input_vector`` è la direzione e l'intensità finali dell'input, con una lunghezza compresa tra ``0.0`` e ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_signal_tapped:

.. rst-class:: classref-signal

**tapped**\ (\ ) :ref:`🔗<class_VirtualJoystick_signal_tapped>`

Emesso quando il joystick viene rilasciato senza muovere la punta.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_VirtualJoystick_JoystickMode:

.. rst-class:: classref-enumeration

enum **JoystickMode**: :ref:`🔗<enum_VirtualJoystick_JoystickMode>`

.. _class_VirtualJoystick_constant_JOYSTICK_FIXED:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FIXED** = ``0``

Il joystick non si muove.

.. _class_VirtualJoystick_constant_JOYSTICK_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_DYNAMIC** = ``1``

Il joystick si muove nella posizione iniziale del tocco fin quando rimane entro i suoi limiti. Torna nella sua posizione originale quando viene rilasciato.

.. _class_VirtualJoystick_constant_JOYSTICK_FOLLOWING:

.. rst-class:: classref-enumeration-constant

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **JOYSTICK_FOLLOWING** = ``2``

Il joystick si muove nella posizione iniziale del tocco fin quando rimane entro i suoi limiti. Seguirà l'input del tocco se supera i limiti del joystick. Torna nella sua posizione originale quando viene rilasciato.

.. rst-class:: classref-item-separator

----

.. _enum_VirtualJoystick_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_VirtualJoystick_VisibilityMode>`

.. _class_VirtualJoystick_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

Il joystick è sempre visibile.

.. _class_VirtualJoystick_constant_VISIBILITY_WHEN_TOUCHED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **VISIBILITY_WHEN_TOUCHED** = ``1``

Il joystick è visibile solo quando viene toccato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_VirtualJoystick_property_action_down:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_down** = ``&"ui_down"`` :ref:`🔗<class_VirtualJoystick_property_action_down>`

.. rst-class:: classref-property-setget

- |void| **set_action_down**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_down**\ (\ )

L'azione da attivare quando il joystick viene spostato in basso.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_left:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_left** = ``&"ui_left"`` :ref:`🔗<class_VirtualJoystick_property_action_left>`

.. rst-class:: classref-property-setget

- |void| **set_action_left**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_left**\ (\ )

L'azione da attivare quando il joystick viene spostato a sinistra.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_right:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_right** = ``&"ui_right"`` :ref:`🔗<class_VirtualJoystick_property_action_right>`

.. rst-class:: classref-property-setget

- |void| **set_action_right**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_right**\ (\ )

L'azione da attivare quando il joystick viene spostato a destra.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_action_up:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action_up** = ``&"ui_up"`` :ref:`🔗<class_VirtualJoystick_property_action_up>`

.. rst-class:: classref-property-setget

- |void| **set_action_up**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action_up**\ (\ )

L'azione da attivare quando il joystick viene spostato in alto.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_clampzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **clampzone_ratio** = ``1.0`` :ref:`🔗<class_VirtualJoystick_property_clampzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_clampzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clampzone_ratio**\ (\ )

Il moltiplicatore applicato al raggio del joystick che definisce la zona di bloccaggio.

Questa zona limita quanto lontano la punta del joystick si può muovere dal suo centro prima che venga bloccata.

Un valore di ``1.0`` significa che la punta può muoversi fino al bordo dell'area visibile del joystick.

Nella modalità :ref:`JOYSTICK_FOLLOWING<class_VirtualJoystick_constant_JOYSTICK_FOLLOWING>`, questo raggio determina anche quanto lontano il dito si può muovere prima che la base del joystick inizi a seguire l'input tattile.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_deadzone_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **deadzone_ratio** = ``0.0`` :ref:`🔗<class_VirtualJoystick_property_deadzone_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_deadzone_ratio**\ (\ )

Il rapporto tra le dimensioni del joystick e la sua zona morta. La punta del joystick deve muoversi oltre questo rapporto prima di essere considerata attiva.

Questa zona morta è applicata prima di attivare le azioni di input e influenza il vettore di input del joystick e tutti i segnali correlati.

Si noti che le azioni di input possono anche definire le proprie zone morte nella InputMap. Se entrambe sono impostate, viene applicata prima la zona morta del joystick, seguita dalla zona morta dell'azione.

Come predefinito, questo valore è ``0.0``, il che significa che il joystick non applica la propria zona morta e si basa interamente sulle zone morte delle azioni definite nella InputMap.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_initial_offset_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **initial_offset_ratio** = ``Vector2(0.5, 0.5)`` :ref:`🔗<class_VirtualJoystick_property_initial_offset_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_initial_offset_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_initial_offset_ratio**\ (\ )

La posizione iniziale del joystick, in rapporto alle dimensioni del controllo. ``(0, 0)`` è in alto a sinistra e ``(1, 1)`` è in basso a destra.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_mode:

.. rst-class:: classref-property

:ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **joystick_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_joystick_mode>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_mode**\ (\ value\: :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>`\ )
- :ref:`JoystickMode<enum_VirtualJoystick_JoystickMode>` **get_joystick_mode**\ (\ )

La modalità del joystick da utilizzare.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_joystick_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **joystick_size** = ``100.0`` :ref:`🔗<class_VirtualJoystick_property_joystick_size>`

.. rst-class:: classref-property-setget

- |void| **set_joystick_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_joystick_size**\ (\ )

La dimensione del joystick in pixel.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_tip_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **tip_size** = ``50.0`` :ref:`🔗<class_VirtualJoystick_property_tip_size>`

.. rst-class:: classref-property-setget

- |void| **set_tip_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tip_size**\ (\ )

La dimensione della punta del joystick in pixel.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_VirtualJoystick_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_VirtualJoystick_VisibilityMode>` **get_visibility_mode**\ (\ )

La modalità di visibilità da utilizzare.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_VirtualJoystick_theme_style_normal_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_normal_joystick>`

:ref:`StyleBox<class_StyleBox>` della base del joystick.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_normal_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_tip** :ref:`🔗<class_VirtualJoystick_theme_style_normal_tip>`

:ref:`StyleBox<class_StyleBox>` della punta del joystick.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_joystick:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_joystick** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_joystick>`

:ref:`StyleBox<class_StyleBox>` della base del joystick alla pressione.

.. rst-class:: classref-item-separator

----

.. _class_VirtualJoystick_theme_style_pressed_tip:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_tip** :ref:`🔗<class_VirtualJoystick_theme_style_pressed_tip>`

:ref:`StyleBox<class_StyleBox>` della punta del joystick alla pressione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
