:github_url: hide

.. _class_AnimationNodeStateMachineTransition:

AnimationNodeStateMachineTransition
===================================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una transizione all'interno di un :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` che collega due :ref:`AnimationRootNode<class_AnimationRootNode>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il percorso generator quando si utilizza :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` è limitato ai nodi collegati da **AnimationNodeStateMachineTransition**.

Puoi impostare la tempistica e condizioni della transizione in dettaglio.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>`                                      | :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>`   | ``&""``   |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                              | :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` | ``""``    |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` | :ref:`advance_mode<class_AnimationNodeStateMachineTransition_property_advance_mode>`             | ``1``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`break_loop_at_end<class_AnimationNodeStateMachineTransition_property_break_loop_at_end>`   | ``false`` |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                    | :ref:`priority<class_AnimationNodeStateMachineTransition_property_priority>`                     | ``1``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`reset<class_AnimationNodeStateMachineTransition_property_reset>`                           | ``true``  |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>`   | :ref:`switch_mode<class_AnimationNodeStateMachineTransition_property_switch_mode>`               | ``0``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                                                | :ref:`xfade_curve<class_AnimationNodeStateMachineTransition_property_xfade_curve>`               |           |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                | :ref:`xfade_time<class_AnimationNodeStateMachineTransition_property_xfade_time>`                 | ``0.0``   |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AnimationNodeStateMachineTransition_signal_advance_condition_changed:

.. rst-class:: classref-signal

**advance_condition_changed**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachineTransition_signal_advance_condition_changed>`

Emesso quando :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` è cambiato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AnimationNodeStateMachineTransition_SwitchMode:

.. rst-class:: classref-enumeration

enum **SwitchMode**: :ref:`🔗<enum_AnimationNodeStateMachineTransition_SwitchMode>`

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_IMMEDIATE** = ``0``

Passa subito allo stato successivo. Lo stato attuale terminerà e verrà fuso all'inizio del nuovo stato.

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_SYNC:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_SYNC** = ``1``

Passa immediatamente allo stato successivo, ma cercherà il nuovo stato alla posizione di riproduzione del vecchio stato.

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_AT_END:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_AT_END** = ``2``

Attende il termine della riproduzione dello stato attuale, poi passa all'inizio della prossima animazione di stato.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeStateMachineTransition_AdvanceMode:

.. rst-class:: classref-enumeration

enum **AdvanceMode**: :ref:`🔗<enum_AnimationNodeStateMachineTransition_AdvanceMode>`

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_DISABLED** = ``0``

Non usare questa transizione.

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_ENABLED** = ``1``

Utilizza questa transizione solo durante :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`.

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_AUTO** = ``2``

Utilizza automaticamente questa transizione se le verifiche di :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` e :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` sono pari a ``true`` (se assegnati).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationNodeStateMachineTransition_property_advance_condition:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **advance_condition** = ``&""`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_condition>`

.. rst-class:: classref-property-setget

- |void| **set_advance_condition**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_advance_condition**\ (\ )

Attiva l'avanzamento automatico quando questa condizione è impostata. Il nome fornito diventerà un parametro booleano nell':ref:`AnimationTree<class_AnimationTree>` che può essere controllato in codice (vedi `Utilizzo dell'AnimationTree <../tutorials/animation/animation_tree.html#controlling-from-code>`__). Per esempio, se :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` è un :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` e :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` è impostato a ``"idle"``:


.. tabs::

 .. code-tab:: gdscript

    $animation_tree.set("parameters/conditions/idle", is_on_floor and (linear_velocity.x == 0))

 .. code-tab:: csharp

    GetNode<AnimationTree>("animation_tree").Set("parameters/conditions/idle", IsOnFloor && (LinearVelocity.X == 0));



.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_advance_expression:

.. rst-class:: classref-property

:ref:`String<class_String>` **advance_expression** = ``""`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_expression>`

.. rst-class:: classref-property-setget

- |void| **set_advance_expression**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_advance_expression**\ (\ )

Usa un'espressione come condizione per le transizioni della machina a stati. È possibile creare condizioni complesse di avanzamento d'animazioni per passare tra vari stati, e permette una maggiore flessibilità nella creazione di macchine a stati complesse, interfacciandosi direttamente con il codice di script.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_advance_mode:

.. rst-class:: classref-property

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **advance_mode** = ``1`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_mode>`

.. rst-class:: classref-property-setget

- |void| **set_advance_mode**\ (\ value\: :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>`\ )
- :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **get_advance_mode**\ (\ )

Determina se la transizione dovrebbe essere disattivata, abilitata quando si utilizza :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`, o attraversata automaticamente se le verifiche di :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` e :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` sono pari a ``true`` (se assegnati).

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_break_loop_at_end:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **break_loop_at_end** = ``false`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_break_loop_at_end>`

.. rst-class:: classref-property-setget

- |void| **set_break_loop_at_end**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_loop_broken_at_end**\ (\ )

Se ``true``, interrompe la ripetizione alla fine del ciclo per la transizione, anche se l'animazione è in ripetizione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``1`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

Le transizioni di priorità più basse sono preferite quando si viaggia attraverso l'albero tramite :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` o :ref:`advance_mode<class_AnimationNodeStateMachineTransition_property_advance_mode>` è impostato su :ref:`ADVANCE_MODE_AUTO<class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_AUTO>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_reset:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset** = ``true`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_reset>`

.. rst-class:: classref-property-setget

- |void| **set_reset**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset**\ (\ )

Se ``true``, l'animazione di destinazione è riprodotta dall'inizio quando avviene il passaggio.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_switch_mode:

.. rst-class:: classref-property

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **switch_mode** = ``0`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_switch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_switch_mode**\ (\ value\: :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>`\ )
- :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **get_switch_mode**\ (\ )

Il tipo di transizione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_xfade_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **xfade_curve** :ref:`🔗<class_AnimationNodeStateMachineTransition_property_xfade_curve>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_xfade_curve**\ (\ )

Curva di allentamento per un miglior controllo sulla dissolvenza incrociata tra questo stato e quello successivo. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_xfade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **xfade_time** = ``0.0`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_xfade_time>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_xfade_time**\ (\ )

Il tempo per attraversare tra questo stato e il successivo.

\ **Nota:** :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` passa dallo stato attuale immediatamente dopo l'inizio della dissolvenza. Il tempo esatto rimanente può essere solo dedotto dall'animazione principale. Quando :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` è considerato il più upstream, quindi il :ref:`xfade_time<class_AnimationNodeStateMachineTransition_property_xfade_time>` non è scalato a seconda del delta downstream. Vedi anche :ref:`AnimationNodeOneShot.fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
