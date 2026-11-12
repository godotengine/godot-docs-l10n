:github_url: hide

.. _class_AnimationNodeTransition:

AnimationNodeTransition
=======================

**Eredita:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una transizione all'interno di un :ref:`AnimationTree<class_AnimationTree>` che collega due :ref:`AnimationNode<class_AnimationNode>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Simple state machine for cases which don't require a more advanced :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`. Animations can be connected to the inputs and transition times can be specified.

After setting the request and changing the animation playback, the transition node automatically clears the request on the next process frame by setting its ``transition_request`` value to empty.

\ **Note:** When using a cross-fade, ``current_state`` and ``current_index`` change to the next state immediately after the cross-fade begins.


.. tabs::

 .. code-tab:: gdscript

    # Play child animation connected to "state_2" port.
    animation_tree.set("parameters/Transition/transition_request", "state_2")
    # Alternative syntax (same result as above).
    animation_tree["parameters/Transition/transition_request"] = "state_2"

    # Get current state name (read-only).
    animation_tree.get("parameters/Transition/current_state")
    # Alternative syntax (same result as above).
    animation_tree["parameters/Transition/current_state"]

    # Get current state index (read-only).
    animation_tree.get("parameters/Transition/current_index")
    # Alternative syntax (same result as above).
    animation_tree["parameters/Transition/current_index"]

 .. code-tab:: csharp

    // Play child animation connected to "state_2" port.
    animationTree.Set("parameters/Transition/transition_request", "state_2");

    // Get current state name (read-only).
    animationTree.Get("parameters/Transition/current_state");

    // Get current state index (read-only).
    animationTree.Get("parameters/Transition/current_index");



Optionally, signals can be used by setting an :ref:`AnimationNodeObserverTransition<class_AnimationNodeObserverTransition>` through :ref:`AnimationTree<class_AnimationTree>`.


.. tabs::

 .. code-tab:: gdscript

    var observer = animation_tree.get("parameters/Transition/observer")
    observer.state_started.connect(on_state_started)

 .. code-tab:: csharp

    var observer = animationTree.Get("parameters/Transition/observer").As<AnimationNodeObserverTransition>();
    observer.StateStarted += OnStateStarted;



.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

- `Demo di gioco piattaforme 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`allow_transition_to_self<class_AnimationNodeTransition_property_allow_transition_to_self>` | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`input_count<class_AnimationNodeTransition_property_input_count>`                           | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>` | :ref:`xfade_curve<class_AnimationNodeTransition_property_xfade_curve>`                           |           |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`xfade_time<class_AnimationNodeTransition_property_xfade_time>`                             | ``0.0``   |
   +---------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_loop_broken_at_end<class_AnimationNodeTransition_method_is_input_loop_broken_at_end>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_reset<class_AnimationNodeTransition_method_is_input_reset>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_input_set_as_auto_advance<class_AnimationNodeTransition_method_is_input_set_as_auto_advance>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_as_auto_advance<class_AnimationNodeTransition_method_set_input_as_auto_advance>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_break_loop_at_end<class_AnimationNodeTransition_method_set_input_break_loop_at_end>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_input_reset<class_AnimationNodeTransition_method_set_input_reset>`\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationNodeTransition_property_allow_transition_to_self:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_transition_to_self** = ``false`` :ref:`🔗<class_AnimationNodeTransition_property_allow_transition_to_self>`

.. rst-class:: classref-property-setget

- |void| **set_allow_transition_to_self**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_transition_to_self**\ (\ )

Se ``true``, permette la transizione allo stesso stato attuale. Quando l'opzione di reset è attivata in ingresso, l'animazione è riavviata. Se ``false``, non succede niente alla transizione allo stesso stato attuale.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_input_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **input_count** = ``0`` :ref:`🔗<class_AnimationNodeTransition_property_input_count>`

.. rst-class:: classref-property-setget

- |void| **set_input_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_input_count**\ (\ )

Il numero di porte di ingresso abilitate per questo nodo di animazione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_xfade_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **xfade_curve** :ref:`🔗<class_AnimationNodeTransition_property_xfade_curve>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_xfade_curve**\ (\ )

Determina il modo in cui la dissolvenza incrociata tra le animazioni è allentata. Se vuoto, la transizione sarà lineare. Dovrebbe essere una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_property_xfade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **xfade_time** = ``0.0`` :ref:`🔗<class_AnimationNodeTransition_property_xfade_time>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_xfade_time**\ (\ )

Tempo di dissolvenza incrociata (in secondi) tra ogni animazione collegata agli ingressi.

\ **Nota:** **AnimationNodeTransition** passa dallo stato attuale immediatamente dopo l'inizio della dissolvenza. Il tempo esatto rimanente può essere solo dedotto dall'animazione principale. Quando :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` è considerato il più upstream, quindi il :ref:`xfade_time<class_AnimationNodeTransition_property_xfade_time>` non è scalato a seconda del delta downstream. Vedi anche :ref:`AnimationNodeOneShot.fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimationNodeTransition_method_is_input_loop_broken_at_end:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_loop_broken_at_end**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_loop_broken_at_end>`

Restituisce se l'animazione interrompe il ciclo alla fine del ciclo per la transizione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_is_input_reset:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_reset**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_reset>`

Restituisce se l'animazione si riavvia quando l'animazione passa dall'altra animazione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_is_input_set_as_auto_advance:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_set_as_auto_advance**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeTransition_method_is_input_set_as_auto_advance>`

Restituisce ``true`` se l'avanzamento automatico è abilitato per l'indice ``input`` indicato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_as_auto_advance:

.. rst-class:: classref-method

|void| **set_input_as_auto_advance**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_as_auto_advance>`

Abilita o disabilita l'avanzamento automatico per l'ingresso all'indice ``input`` indicato. Se abilitato, lo stato passa al prossimo stato in ingresso dopo aver riprodotto l'animazione una volta. Se abilitato per l'ultimo stato in ingresso, ritorna al primo stato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_break_loop_at_end:

.. rst-class:: classref-method

|void| **set_input_break_loop_at_end**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_break_loop_at_end>`

Se ``true``, interrompe la ripetizione alla fine del ciclo per la transizione, anche se l'animazione è in ripetizione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeTransition_method_set_input_reset:

.. rst-class:: classref-method

|void| **set_input_reset**\ (\ input\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNodeTransition_method_set_input_reset>`

Se ``true``, l'animazione di destinazione è riavviata quando l'animazione passa.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
