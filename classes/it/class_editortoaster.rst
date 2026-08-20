:github_url: hide

.. _class_EditorToaster:

EditorToaster
=============

**Eredita:** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Gestisce le notifiche toast all'interno dell'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto gestisce la funzionalità e la visualizzazione delle notifiche toast all'interno dell'editor, assicurando che avvisi opportuni e informativi siano presentati agli utenti.

\ **Nota:** Questa classe non dovrebbe essere istanziata direttamente. Invece, accedi al singleton tramite :ref:`EditorInterface.get_editor_toaster()<class_EditorInterface_method_get_editor_toaster>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`push_toast<class_EditorToaster_method_push_toast>`\ (\ message\: :ref:`String<class_String>`, severity\: :ref:`Severity<enum_EditorToaster_Severity>` = 0, tooltip\: :ref:`String<class_String>` = ""\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorToaster_Severity:

.. rst-class:: classref-enumeration

enum **Severity**: :ref:`🔗<enum_EditorToaster_Severity>`

.. _class_EditorToaster_constant_SEVERITY_INFO:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_INFO** = ``0``

Il toast verrà visualizzato con una severità INFO.

.. _class_EditorToaster_constant_SEVERITY_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_WARNING** = ``1``

Il toast verrà visualizzato con una severità WARNING (Avviso) e ha un colore corrispondente.

.. _class_EditorToaster_constant_SEVERITY_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_ERROR** = ``2``

Il toast verrà visualizzato con una severità ERROR (errore) e ha un colore corrispondente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorToaster_method_push_toast:

.. rst-class:: classref-method

|void| **push_toast**\ (\ message\: :ref:`String<class_String>`, severity\: :ref:`Severity<enum_EditorToaster_Severity>` = 0, tooltip\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorToaster_method_push_toast>`

Invia una notifica toast all'editor affinché la visualizzi.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
