:github_url: hide

.. _class_EditorSelection:

EditorSelection
===============

**Eredita:** :ref:`Object<class_Object>`

Gestisce la selezione di SceneTree nell'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto gestisce la selezione del SceneTree nell'editor.

\ **Nota:** Questa classe non dovrebbe essere istanziata direttamente. Invece, accedi al singleton tramite :ref:`EditorInterface.get_selection()<class_EditorInterface_method_get_selection>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`add_node<class_EditorSelection_method_add_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                 |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`clear<class_EditorSelection_method_clear>`\ (\ )                                                       |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_selected_nodes<class_EditorSelection_method_get_selected_nodes>`\ (\ )                             |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_top_selected_nodes<class_EditorSelection_method_get_top_selected_nodes>`\ (\ )                     |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_transformable_selected_nodes<class_EditorSelection_method_get_transformable_selected_nodes>`\ (\ ) |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`remove_node<class_EditorSelection_method_remove_node>`\ (\ node\: :ref:`Node<class_Node>`\ )           |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_EditorSelection_signal_selection_changed:

.. rst-class:: classref-signal

**selection_changed**\ (\ ) :ref:`🔗<class_EditorSelection_signal_selection_changed>`

Emesso quando cambia la selezione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorSelection_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorSelection_method_add_node>`

Aggiunge un nodo alla selezione.

\ **Nota:** Il nodo appena selezionato non verrà modificato automaticamente nell'ispettore. Se si desidera modificare un nodo, usa :ref:`EditorInterface.edit_node()<class_EditorInterface_method_edit_node>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_EditorSelection_method_clear>`

Cancella la selezione.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_selected_nodes>`

Restituisce la lista dei nodi selezionati.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_top_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_top_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_top_selected_nodes>`

Restituisce solo l'elenco dei nodi selezionati più in alto, escludendo eventuali nodi figlio. Questo è utile per eseguire operazioni di trasformazione (spostamento, rotazione, ecc.).

Ad esempio, se esiste un nodo A con un nodo figlio B e un nodo fratello C, selezionandoli tutti e tre questo metodo restituirà solo A e C. La modifica della trasformazione globale di A influirà sulla trasformazione globale di B, quindi non è necessario modificare B separatamente.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_transformable_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_transformable_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_transformable_selected_nodes>`

**Deprecato:** Use :ref:`get_top_selected_nodes()<class_EditorSelection_method_get_top_selected_nodes>` instead.

Restituisce solo l'elenco dei nodi selezionati più in alto, escludendo eventuali nodi figlio. Questo è utile per eseguire operazioni di trasformazione (spostamento, rotazione, ecc.). Vedi :ref:`get_top_selected_nodes()<class_EditorSelection_method_get_top_selected_nodes>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorSelection_method_remove_node>`

Rimuove un nodo dalla selezione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
