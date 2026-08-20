:github_url: hide

.. _class_ScriptEditorBase:

ScriptEditorBase
================

**Eredita:** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Editor di base per la modifica degli script in :ref:`ScriptEditor<class_ScriptEditor>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Editor di base per la modifica degli script in :ref:`ScriptEditor<class_ScriptEditor>`. Non include elementi di documentazione.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_syntax_highlighter<class_ScriptEditorBase_method_add_syntax_highlighter>`\ (\ highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`get_base_editor<class_ScriptEditorBase_method_get_base_editor>`\ (\ ) |const|                                                                                    |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_ScriptEditorBase_signal_edited_script_changed:

.. rst-class:: classref-signal

**edited_script_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_edited_script_changed>`

Emesso dopo la verifica dello script.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_help:

.. rst-class:: classref-signal

**go_to_help**\ (\ what\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_help>`

Emesso quando l'utente richiede una pagina di documentazione specifica.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_go_to_method:

.. rst-class:: classref-signal

**go_to_method**\ (\ script\: :ref:`Object<class_Object>`, method\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_go_to_method>`

Emesso quando l'utente richiede di visualizzare un metodo specifico di uno script, simile a :ref:`request_open_script_at_line<class_ScriptEditorBase_signal_request_open_script_at_line>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_name_changed:

.. rst-class:: classref-signal

**name_changed**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_name_changed>`

Emesso dopo la convalida dello script o quando la risorsa modificata è cambiata.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_replace_in_files_requested:

.. rst-class:: classref-signal

**replace_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_replace_in_files_requested>`

Emesso quando l'utente richiede di trovare e sostituire del testo nel file system.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_help:

.. rst-class:: classref-signal

**request_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_help>`

Emesso quando l'utente richiede aiuto contestuale.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_open_script_at_line:

.. rst-class:: classref-signal

**request_open_script_at_line**\ (\ script\: :ref:`Object<class_Object>`, line\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_open_script_at_line>`

Emesso quando l'utente richiede di visualizzare una riga specifica di uno script, simile a :ref:`go_to_method<class_ScriptEditorBase_signal_go_to_method>`.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_history:

.. rst-class:: classref-signal

**request_save_history**\ (\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_history>`

Emesso quando l'utente effettua un "vai a" contestuale e l'elemento si trova nello stesso script.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_request_save_previous_state:

.. rst-class:: classref-signal

**request_save_previous_state**\ (\ state\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_request_save_previous_state>`

Emesso quando l'utente modifica lo script attuale o sposta il cursore di 10 o più colonne all'interno dello stesso script.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_signal_search_in_files_requested:

.. rst-class:: classref-signal

**search_in_files_requested**\ (\ text\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditorBase_signal_search_in_files_requested>`

Emesso quando l'utente richiede di cercare del testo nel file system.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ScriptEditorBase_method_add_syntax_highlighter:

.. rst-class:: classref-method

|void| **add_syntax_highlighter**\ (\ highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditorBase_method_add_syntax_highlighter>`

Aggiunge un :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` allo script aperto.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditorBase_method_get_base_editor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_base_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditorBase_method_get_base_editor>`

Restituisce il :ref:`Control<class_Control>` sottostante utilizzato per modificare gli script. Per gli script di testo, questo è un :ref:`CodeEdit<class_CodeEdit>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
