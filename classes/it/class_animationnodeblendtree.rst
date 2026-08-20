:github_url: hide

.. _class_AnimationNodeBlendTree:

AnimationNodeBlendTree
======================

**Eredita:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un sottoalbero di molti tipi di :ref:`AnimationNode<class_AnimationNode>` usato per animazioni complesse. Usato da :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo di animazione può contenere un sottoalbero di qualsiasi altro tipo di nodo di animazione, come :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`, :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`, :ref:`AnimationNodeBlend3<class_AnimationNodeBlend3>`, :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>`, ecc. Questa è una delle radici dei nodi di animazione più comunemente utilizzate.

Per impostazione predefinita, viene creato un nodo :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` denominato ``output``.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`graph_offset<class_AnimationNodeBlendTree_property_graph_offset>` | ``Vector2(0, 0)`` |
   +-------------------------------+-------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_node<class_AnimationNodeBlendTree_method_add_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`connect_node<class_AnimationNodeBlendTree_method_connect_node>`\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`, output_node\: :ref:`StringName<class_StringName>`\ )       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`disconnect_node<class_AnimationNodeBlendTree_method_disconnect_node>`\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`\ )                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>`                        | :ref:`get_node<class_AnimationNodeBlendTree_method_get_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_node_list<class_AnimationNodeBlendTree_method_get_node_list>`\ (\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_node_position<class_AnimationNodeBlendTree_method_get_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_node<class_AnimationNodeBlendTree_method_has_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_node<class_AnimationNodeBlendTree_method_remove_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_node<class_AnimationNodeBlendTree_method_rename_node>`\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_node_position<class_AnimationNodeBlendTree_method_set_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AnimationNodeBlendTree_signal_node_changed:

.. rst-class:: classref-signal

**node_changed**\ (\ node_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_signal_node_changed>`

Emesso quando le informazioni sulla porta di ingresso sono cambiate.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_AnimationNodeBlendTree_constant_CONNECTION_OK:

.. rst-class:: classref-constant

**CONNECTION_OK** = ``0`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_OK>`

Il collegamento ha avuto successo.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_INPUT** = ``1`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT>`

Il nodo in ingresso è ``null``.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT_INDEX:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_INPUT_INDEX** = ``2`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT_INDEX>`

La porta di ingresso specificata è fuori portata.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_OUTPUT:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_OUTPUT** = ``3`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_OUTPUT>`

Il nodo in uscita è ``null``.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_SAME_NODE:

.. rst-class:: classref-constant

**CONNECTION_ERROR_SAME_NODE** = ``4`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_SAME_NODE>`

I nodi in ingresso e in uscita sono gli stessi.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_CONNECTION_EXISTS:

.. rst-class:: classref-constant

**CONNECTION_ERROR_CONNECTION_EXISTS** = ``5`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_CONNECTION_EXISTS>`

Il collegamento specificato esiste già.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AnimationNodeBlendTree_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AnimationNodeBlendTree_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

Scostamento globale di tutti i nodi di animazione secondari.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AnimationNodeBlendTree_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_add_node>`

Aggiunge un :ref:`AnimationNode<class_AnimationNode>` alla posizione ``position``. Il nome ``name`` serve per identificare il nodo di animazione secondario creato in seguito.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_connect_node:

.. rst-class:: classref-method

|void| **connect_node**\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`, output_node\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_connect_node>`

Collega l'uscita di un :ref:`AnimationNode<class_AnimationNode>` all'ingresso per un altro :ref:`AnimationNode<class_AnimationNode>`, alla porta di ingresso specificata da ``input_index``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_disconnect_node:

.. rst-class:: classref-method

|void| **disconnect_node**\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_disconnect_node>`

Scollega il nodo di animazione connesso all'ingresso specificato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **get_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node>`

Restituisce il nodo di animazione secondario con il nome specificato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_node_list**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node_list>`

Restituisce una lista contenente i nomi di tutti i nodi di animazione secondari in questo albero di fusione.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node_position>`

Restituisce la posizione del nodo di animazione secondario con il nome specificato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_has_node>`

Restituisce ``true`` se esiste un nodo di animazione secondario con il nome specificato.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_remove_node>`

Rimuove un nodo di animazione secondario.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_rename_node:

.. rst-class:: classref-method

|void| **rename_node**\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_rename_node>`

Cambia il nome di un nodo di animazione secondario.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_set_node_position>`

Modifica la posizione di un nodo di animazione secondario.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
