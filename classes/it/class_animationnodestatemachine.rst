:github_url: hide

.. _class_AnimationNodeStateMachine:

AnimationNodeStateMachine
=========================

**Eredita:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una macchina a stati con più :ref:`AnimationRootNode<class_AnimationRootNode>`, usata da :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Contiene più :ref:`AnimationRootNode<class_AnimationRootNode>` che rappresentano gli stati di animazione, collegati in un grafico. È possibile configurare le transizioni di stato per svolgersi automaticamente o tramite codice, utilizzando un algoritmo di percorso più breve. Recupera l'oggetto :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>` dal nodo :ref:`AnimationTree<class_AnimationTree>` per controllarlo programmaticamente.


.. tabs::

 .. code-tab:: gdscript

    var state_machine = $AnimationTree.get("parameters/playback")
    state_machine.travel("some_state")

 .. code-tab:: csharp

    var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback") as AnimationNodeStateMachinePlayback;
    stateMachine.Travel("some_state");



.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`allow_transition_to_self<class_AnimationNodeStateMachine_property_allow_transition_to_self>` | ``false`` |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`reset_ends<class_AnimationNodeStateMachine_property_reset_ends>`                             | ``false`` |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` | :ref:`state_machine_type<class_AnimationNodeStateMachine_property_state_machine_type>`             | ``0``     |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`add_node<class_AnimationNodeStateMachine_method_add_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`add_transition<class_AnimationNodeStateMachine_method_add_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`, transition\: :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`\ ) |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                         | :ref:`get_graph_offset<class_AnimationNodeStateMachine_method_get_graph_offset>`\ (\ ) |const|                                                                                                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>`                                             | :ref:`get_node<class_AnimationNodeStateMachine_method_get_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\]                      | :ref:`get_node_list<class_AnimationNodeStateMachine_method_get_node_list>`\ (\ ) |const|                                                                                                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_node_name<class_AnimationNodeStateMachine_method_get_node_name>`\ (\ node\: :ref:`AnimationNode<class_AnimationNode>`\ ) |const|                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                         | :ref:`get_node_position<class_AnimationNodeStateMachine_method_get_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                 |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>` | :ref:`get_transition<class_AnimationNodeStateMachine_method_get_transition>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                      |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                                 | :ref:`get_transition_count<class_AnimationNodeStateMachine_method_get_transition_count>`\ (\ ) |const|                                                                                                                                                                       |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_transition_from<class_AnimationNodeStateMachine_method_get_transition_from>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                            |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_transition_to<class_AnimationNodeStateMachine_method_get_transition_to>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                               | :ref:`has_node<class_AnimationNodeStateMachine_method_has_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                               | :ref:`has_transition<class_AnimationNodeStateMachine_method_has_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                             |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_node<class_AnimationNodeStateMachine_method_remove_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_transition<class_AnimationNodeStateMachine_method_remove_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ )                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_transition_by_index<class_AnimationNodeStateMachine_method_remove_transition_by_index>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                      |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`rename_node<class_AnimationNodeStateMachine_method_rename_node>`\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ )                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`replace_node<class_AnimationNodeStateMachine_method_replace_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`\ )                                                                                                 |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`set_graph_offset<class_AnimationNodeStateMachine_method_set_graph_offset>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`set_node_position<class_AnimationNodeStateMachine_method_set_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AnimationNodeStateMachine_StateMachineType:

.. rst-class:: classref-enumeration

enum **StateMachineType**: :ref:`🔗<enum_AnimationNodeStateMachine_StateMachineType>`

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_ROOT** = ``0``

Cercare all'inizio è considerato come una riproduzione dallo stato iniziale. La transizione allo stato finale è considerata come un'uscita dalla macchina a stati.

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_NESTED:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_NESTED** = ``1``

Cercare all'inizio è considerato come cercare all'inizio dell'animazione nello stato attuale. La transizione allo stato finale, o l'assenza di transizioni in ogni stato, è considerata come un'uscita dalla macchina a stati.

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_GROUPED:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_GROUPED** = ``2``

Questa è una macchina a stati raggruppata che può essere controllata da una macchina a stati madre. Non funziona separatamente. Ci deve essere una macchina a stati con :ref:`state_machine_type<class_AnimationNodeStateMachine_property_state_machine_type>` impostato a :ref:`STATE_MACHINE_TYPE_ROOT<class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_ROOT>` o :ref:`STATE_MACHINE_TYPE_NESTED<class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_NESTED>` nel genitore o progenitore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationNodeStateMachine_property_allow_transition_to_self:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_transition_to_self** = ``false`` :ref:`🔗<class_AnimationNodeStateMachine_property_allow_transition_to_self>`

.. rst-class:: classref-property-setget

- |void| **set_allow_transition_to_self**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_transition_to_self**\ (\ )

Se ``true``, permette il teletrasporto allo stesso stato attuale con :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`. Quando l'opzione di reset è abilitata in :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`, l'animazione è riavviata. Se ``false``, non succede niente al teletrasporto allo stesso stato attuale.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_property_reset_ends:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_ends** = ``false`` :ref:`🔗<class_AnimationNodeStateMachine_property_reset_ends>`

.. rst-class:: classref-property-setget

- |void| **set_reset_ends**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_ends_reset**\ (\ )

Se ``true``, tratta la dissolvenza incrociata ai nodi iniziali e finali come una fusione con l'animazione di RESET.

Nella maggior parte dei casi, quando ulteriori dissolvenze incrociate sono effettuate nell':ref:`AnimationNode<class_AnimationNode>` genitore della macchina a stati, impostando questa proprietà a ``false`` e corrispondente il tempo di dissolvenza incrociata dell':ref:`AnimationNode<class_AnimationNode>` genitore e il nodo iniziale e il nodo finale della macchina a stati dà buoni risultati.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_property_state_machine_type:

.. rst-class:: classref-property

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **state_machine_type** = ``0`` :ref:`🔗<class_AnimationNodeStateMachine_property_state_machine_type>`

.. rst-class:: classref-property-setget

- |void| **set_state_machine_type**\ (\ value\: :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>`\ )
- :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **get_state_machine_type**\ (\ )

Questa proprietà può definire il processo delle transizioni per diversi casi d'uso. Vedi anche :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimationNodeStateMachine_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_add_node>`

Aggiunge un nuovo nodo di animazione al grafico. La posizione ``position`` è utilizzata per la visualizzazione nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_add_transition:

.. rst-class:: classref-method

|void| **add_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`, transition\: :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_add_transition>`

Aggiunge una transizione tra i nodi di animazione forniti.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_graph_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_graph_offset>`

Restituisce lo scostamento di disegno del grafico. Utilizzato per la visualizzazione nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **get_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node>`

Restituisce il nodo di animazione con il nome indicato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_node_list**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_list>`

Restituisce una lista contenente i nomi di tutti i nodi di animazione in questa macchina a stati.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_name**\ (\ node\: :ref:`AnimationNode<class_AnimationNode>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_name>`

Restituisce il nome del nodo di animazione indicato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_position>`

Restituisce le coordinate del nodo di animazione indicato. Utilizzato per la visualizzazione nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition:

.. rst-class:: classref-method

:ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>` **get_transition**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition>`

Restituisce la transizione indicata.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_transition_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_count>`

Restituisce il numero di connessioni nel grafico.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_from:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_transition_from**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_from>`

Restituisce il nodo iniziale della transizione indicata.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_to:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_transition_to**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_to>`

Restituisce il nodo finale della transizione indicata.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_has_node>`

Restituisce ``true`` se il grafico contiene il nodo di animazione indicato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_has_transition:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_has_transition>`

Restituisce ``true`` se c'è una transizione tra i nodi di animazione indicati.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_node>`

Elimina il nodo di animazione indicato dal grafico.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_transition:

.. rst-class:: classref-method

|void| **remove_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_transition>`

Elimina la transizione tra i due nodi di animazione specificati.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_transition_by_index:

.. rst-class:: classref-method

|void| **remove_transition_by_index**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_transition_by_index>`

Elimina la transizione fornita per indice.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_rename_node:

.. rst-class:: classref-method

|void| **rename_node**\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_rename_node>`

Rinomina il nodo di animazione fornito.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_replace_node>`

Sostituisce il nodo di animazione fornito con un nuovo nodo di animazione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_set_graph_offset:

.. rst-class:: classref-method

|void| **set_graph_offset**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_set_graph_offset>`

Imposta lo scostamento del grafico. Utilizzato per la visualizzazione nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_set_node_position>`

Imposta le coordinate del nodo di animazione. Utilizzato per la visualizzazione nell'editor.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
