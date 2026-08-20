:github_url: hide

.. _class_AnimationTree:

AnimationTree
=============

**Eredita:** :ref:`AnimationMixer<class_AnimationMixer>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo usato per transizioni di animazione avanzate in un :ref:`AnimationPlayer<class_AnimationPlayer>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo utilizzato per transizioni di animazione avanzate in un :ref:`AnimationPlayer<class_AnimationPlayer>`.

\ **Nota:** Se collegato con un :ref:`AnimationPlayer<class_AnimationPlayer>`, diverse proprietà e metodi del corrispondente :ref:`AnimationPlayer<class_AnimationPlayer>` non funzioneranno come previsto. La riproduzione e le transizioni dovrebbero essere gestite utilizzando solo l'**AnimationTree** e il suoi costituenti :ref:`AnimationNode<class_AnimationNode>`. Il nodo :ref:`AnimationPlayer<class_AnimationPlayer>` dovrebbe essere utilizzato esclusivamente per aggiungere, eliminare, e modificare animazioni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`advance_expression_base_node<class_AnimationTree_property_advance_expression_base_node>` | ``NodePath(".")``                                                                             |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`anim_player<class_AnimationTree_property_anim_player>`                                   | ``NodePath("")``                                                                              |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` | callback_mode_discrete                                                                         | ``2`` (overrides :ref:`AnimationMixer<class_AnimationMixer_property_callback_mode_discrete>`) |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                                 | deterministic                                                                                  | ``true`` (overrides :ref:`AnimationMixer<class_AnimationMixer_property_deterministic>`)       |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AnimationRootNode<class_AnimationRootNode>`                                       | :ref:`tree_root<class_AnimationTree_property_tree_root>`                                       |                                                                                               |
   +-----------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` | :ref:`get_process_callback<class_AnimationTree_method_get_process_callback>`\ (\ ) |const|                                                                              |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`set_process_callback<class_AnimationTree_method_set_process_callback>`\ (\ mode\: :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>`\ ) |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AnimationTree_signal_animation_player_changed:

.. rst-class:: classref-signal

**animation_player_changed**\ (\ ) :ref:`🔗<class_AnimationTree_signal_animation_player_changed>`

Emesso quando :ref:`anim_player<class_AnimationTree_property_anim_player>` è cambiato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AnimationTree_AnimationProcessCallback:

.. rst-class:: classref-enumeration

enum **AnimationProcessCallback**: :ref:`🔗<enum_AnimationTree_AnimationProcessCallback>`

.. _class_AnimationTree_constant_ANIMATION_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_PHYSICS** = ``0``

**Deprecato:** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`.



.. _class_AnimationTree_constant_ANIMATION_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_IDLE** = ``1``

**Deprecato:** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_IDLE<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_IDLE>`.



.. _class_AnimationTree_constant_ANIMATION_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **ANIMATION_PROCESS_MANUAL** = ``2``

**Deprecato:** See :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_MANUAL<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_MANUAL>`.



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationTree_property_advance_expression_base_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **advance_expression_base_node** = ``NodePath(".")`` :ref:`🔗<class_AnimationTree_property_advance_expression_base_node>`

.. rst-class:: classref-property-setget

- |void| **set_advance_expression_base_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_advance_expression_base_node**\ (\ )

Il percorso del :ref:`Node<class_Node>` utilizzato per valutare un :ref:`Expression<class_Expression>` dell':ref:`AnimationNode<class_AnimationNode>` se non è esplicitamente specificato internamente.

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_property_anim_player:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **anim_player** = ``NodePath("")`` :ref:`🔗<class_AnimationTree_property_anim_player>`

.. rst-class:: classref-property-setget

- |void| **set_animation_player**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_animation_player**\ (\ )

Il percorso per l':ref:`AnimationPlayer<class_AnimationPlayer>` utilizzato per l'animazione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_property_tree_root:

.. rst-class:: classref-property

:ref:`AnimationRootNode<class_AnimationRootNode>` **tree_root** :ref:`🔗<class_AnimationTree_property_tree_root>`

.. rst-class:: classref-property-setget

- |void| **set_tree_root**\ (\ value\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ )
- :ref:`AnimationRootNode<class_AnimationRootNode>` **get_tree_root**\ (\ )

Il nodo di animazione radice di questo **AnimationTree**. Vedi :ref:`AnimationRootNode<class_AnimationRootNode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimationTree_method_get_process_callback:

.. rst-class:: classref-method

:ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>` **get_process_callback**\ (\ ) |const| :ref:`🔗<class_AnimationTree_method_get_process_callback>`

**Deprecato:** Use :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` instead.

Restituisce la notifica di processo in cui aggiornare le animazioni.

.. rst-class:: classref-item-separator

----

.. _class_AnimationTree_method_set_process_callback:

.. rst-class:: classref-method

|void| **set_process_callback**\ (\ mode\: :ref:`AnimationProcessCallback<enum_AnimationTree_AnimationProcessCallback>`\ ) :ref:`🔗<class_AnimationTree_method_set_process_callback>`

**Deprecato:** Use :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` instead.

Imposta la notifica di processo in cui aggiornare le animazioni.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
