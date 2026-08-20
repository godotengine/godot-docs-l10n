:github_url: hide

.. _class_EditorDebuggerSession:

EditorDebuggerSession
=====================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una classe per interagire con il debugger dell'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe non può essere istanziata direttamente e bisogna recuperarla tramite un :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`.

Puoi aggiungere schede all'interfaccia utente della sessione tramite :ref:`add_session_tab()<class_EditorDebuggerSession_method_add_session_tab>`, inviare messaggi tramite :ref:`send_message()<class_EditorDebuggerSession_method_send_message>` e commutare gli :ref:`EngineProfiler<class_EngineProfiler>` tramite :ref:`toggle_profiler()<class_EditorDebuggerSession_method_toggle_profiler>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_session_tab<class_EditorDebuggerSession_method_add_session_tab>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                         |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_active<class_EditorDebuggerSession_method_is_active>`\ (\ )                                                                                                                              |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_breaked<class_EditorDebuggerSession_method_is_breaked>`\ (\ )                                                                                                                            |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_debuggable<class_EditorDebuggerSession_method_is_debuggable>`\ (\ )                                                                                                                      |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`remove_session_tab<class_EditorDebuggerSession_method_remove_session_tab>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                   |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`send_message<class_EditorDebuggerSession_method_send_message>`\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>` = []\ )                                          |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_breakpoint<class_EditorDebuggerSession_method_set_breakpoint>`\ (\ path\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )               |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`toggle_profiler<class_EditorDebuggerSession_method_toggle_profiler>`\ (\ profiler\: :ref:`String<class_String>`, enable\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>` = []\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_EditorDebuggerSession_signal_breaked:

.. rst-class:: classref-signal

**breaked**\ (\ can_debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_signal_breaked>`

Emesso quando l'istanza remota allegata entra in uno stato di interruzione. Se ``can_debug`` è ``true``, l'istanza remota entrerà nel ciclo di debug.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_continued:

.. rst-class:: classref-signal

**continued**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_continued>`

Emesso quando l'istanza remota allegata esce dallo stato di interruzione.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_started:

.. rst-class:: classref-signal

**started**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_started>`

Emesso quando un'istanza remota viene collegata a questa sessione (ovvero quando la sessione diventa attiva).

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_stopped:

.. rst-class:: classref-signal

**stopped**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_stopped>`

Emesso quando un'istanza remota viene scollegata da questa sessione (ovvero la sessione diventa inattiva).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorDebuggerSession_method_add_session_tab:

.. rst-class:: classref-method

|void| **add_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_add_session_tab>`

Aggiunge il ``control`` specificato all'interfaccia utente della sessione di debug nel pannello inferiore Debugger. Il nome del nodo ``control`` sarà usato come titolo della scheda.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_active>`

Restituisce ``true`` se la sessione di debug è attualmente attaccata a un'istanza remota.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_breaked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_breaked**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_breaked>`

Restituisce ``true`` se l'istanza remota collegata è attualmente nel ciclo di debug.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_debuggable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_debuggable**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_debuggable>`

Restituisce ``true`` se l'istanza remota collegata può essere sottoposta a debug.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_remove_session_tab:

.. rst-class:: classref-method

|void| **remove_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_remove_session_tab>`

Rimuove il ``control`` specificato dall'interfaccia utente della sessione di debug nel pannello inferiore Debugger.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_send_message:

.. rst-class:: classref-method

|void| **send_message**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_send_message>`

Invia il messaggio ``message`` all'istanza remota allegata, passando facoltativamente anche ``data``. Vedi :ref:`EngineDebugger<class_EngineDebugger>` per informazioni su come recuperare tali messaggi.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_set_breakpoint:

.. rst-class:: classref-method

|void| **set_breakpoint**\ (\ path\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_set_breakpoint>`

Abilita o disabilita un punto d'interruzione specifico in base a ``enabled``, aggiornando di conseguenza il pannello dei punti d'interruzione dell'editor.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_toggle_profiler:

.. rst-class:: classref-method

|void| **toggle_profiler**\ (\ profiler\: :ref:`String<class_String>`, enable\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_toggle_profiler>`

Commuta il ``profiler`` specificato sull'istanza remota allegata, passando facoltativamente anche ``data``. Consulta :ref:`EngineProfiler<class_EngineProfiler>` per maggiori dettagli.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
