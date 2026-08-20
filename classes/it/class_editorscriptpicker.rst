:github_url: hide

.. _class_EditorScriptPicker:

EditorScriptPicker
==================

**Eredita:** :ref:`EditorResourcePicker<class_EditorResourcePicker>` **<** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Il controllo dell'editor Godot per selezionare la proprietà ``script`` di un :ref:`Node<class_Node>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Simile a :ref:`EditorResourcePicker<class_EditorResourcePicker>` questo nodo :ref:`Control<class_Control>` è utilizzato nel pannello Ispettore nell'editor, ma solo per modificare la proprietà ``script`` di un :ref:`Node<class_Node>`. Le opzioni predefinite per la creazione di nuove risorse di tutti i sottotipi possibili sono sostituite da pulsanti dedicati che aprono la finestra di dialogo "Allega script al nodo". Può essere utilizzato con :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` per ricreare lo stesso comportamento.

\ **Nota:** È necessario impostare lo :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` affinché le voci del menu contestuale personalizzato funzionino.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------+
   | :ref:`Node<class_Node>` | :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` |
   +-------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_EditorScriptPicker_property_script_owner:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **script_owner** :ref:`🔗<class_EditorScriptPicker_property_script_owner>`

.. rst-class:: classref-property-setget

- |void| **set_script_owner**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_script_owner**\ (\ )

Il :ref:`Node<class_Node>` proprietario della proprietà script che contiene la risorsa modificata.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
