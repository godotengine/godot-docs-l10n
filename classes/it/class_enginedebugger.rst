:github_url: hide

.. _class_EngineDebugger:

EngineDebugger
==============

**Eredita:** :ref:`Object<class_Object>`

Espone il debugger interno.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

L'**EngineDebugger** gestisce la comunicazione tra l'editor e il gioco in esecuzione. È attivo nel gioco in esecuzione. I messaggi possono essere inviati e ricevuti tramite esso. Gestisce anche i profiler.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_breakpoints<class_EngineDebugger_method_clear_breakpoints>`\ (\ )                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`debug<class_EngineDebugger_method_debug>`\ (\ can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ )                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_depth<class_EngineDebugger_method_get_depth>`\ (\ ) |const|                                                                                                                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_lines_left<class_EngineDebugger_method_get_lines_left>`\ (\ ) |const|                                                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_capture<class_EngineDebugger_method_has_capture>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_profiler<class_EngineDebugger_method_has_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`insert_breakpoint<class_EngineDebugger_method_insert_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ )                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_active<class_EngineDebugger_method_is_active>`\ (\ )                                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_breakpoint<class_EngineDebugger_method_is_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) |const|                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_profiling<class_EngineDebugger_method_is_profiling>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_skipping_breakpoints<class_EngineDebugger_method_is_skipping_breakpoints>`\ (\ ) |const|                                                                                                                                 |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`line_poll<class_EngineDebugger_method_line_poll>`\ (\ )                                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`profiler_add_frame_data<class_EngineDebugger_method_profiler_add_frame_data>`\ (\ name\: :ref:`StringName<class_StringName>`, data\: :ref:`Array<class_Array>`\ )                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`profiler_enable<class_EngineDebugger_method_profiler_enable>`\ (\ name\: :ref:`StringName<class_StringName>`, enable\: :ref:`bool<class_bool>`, arguments\: :ref:`Array<class_Array>` = []\ )                               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`register_message_capture<class_EngineDebugger_method_register_message_capture>`\ (\ name\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ )                                               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`register_profiler<class_EngineDebugger_method_register_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`, profiler\: :ref:`EngineProfiler<class_EngineProfiler>`\ )                                                 |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`remove_breakpoint<class_EngineDebugger_method_remove_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ )                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`script_debug<class_EngineDebugger_method_script_debug>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`, can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`send_message<class_EngineDebugger_method_send_message>`\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`\ )                                                                                      |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_depth<class_EngineDebugger_method_set_depth>`\ (\ depth\: :ref:`int<class_int>`\ )                                                                                                                                      |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_lines_left<class_EngineDebugger_method_set_lines_left>`\ (\ lines\: :ref:`int<class_int>`\ )                                                                                                                            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`unregister_message_capture<class_EngineDebugger_method_unregister_message_capture>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`unregister_profiler<class_EngineDebugger_method_unregister_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EngineDebugger_method_clear_breakpoints:

.. rst-class:: classref-method

|void| **clear_breakpoints**\ (\ ) :ref:`🔗<class_EngineDebugger_method_clear_breakpoints>`

Cancella tutti i punti d'interruzione.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_debug:

.. rst-class:: classref-method

|void| **debug**\ (\ can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EngineDebugger_method_debug>`

Avvia un'interruzione di debug nell'esecuzione dello script, specificando facoltativamente se il programma può continuare in base a ``can_continue`` e se l'interruzione è dovuta a un punto d'interruzione.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_depth**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_get_depth>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce la profondità di debug attuale.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_get_lines_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_lines_left**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_get_lines_left>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Restituisce il numero di righe che rimangono.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_has_capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_capture**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_has_capture>`

Restituisce ``true`` se una cattura con il nome fornito è presente altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_has_profiler:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_profiler**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_has_profiler>`

Restituisce ``true`` se un profiler con il nome fornito è presente altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_insert_breakpoint:

.. rst-class:: classref-method

|void| **insert_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_insert_breakpoint>`

Inserisce un nuovo punto d'interruzione con la sorgente (``source``) e righe (``line``) fornite.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) :ref:`🔗<class_EngineDebugger_method_is_active>`

Restituisce ``true`` se il debugger è attivo altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_breakpoint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EngineDebugger_method_is_breakpoint>`

Restituisce ``true`` se la sorgente (``source``) e riga (``line``) rappresentano un punto d'interruzione esistente.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_profiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_profiling**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_is_profiling>`

Restituisce ``true`` se un profiler con il nome fornito è presente e attivo altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_skipping_breakpoints:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_skipping_breakpoints**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_is_skipping_breakpoints>`

Restituisce ``true`` se il debugger sta saltando i punti d'interruzione altrimenti ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_line_poll:

.. rst-class:: classref-method

|void| **line_poll**\ (\ ) :ref:`🔗<class_EngineDebugger_method_line_poll>`

Forza un ciclo di elaborazione degli eventi del debugger. Lo scopo di questo metodo è di elaborare gli eventi ogni tanto quando lo script potrebbe essere troppo occupato, in modo che sia possibile individuare bug come i cicli infiniti.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_profiler_add_frame_data:

.. rst-class:: classref-method

|void| **profiler_add_frame_data**\ (\ name\: :ref:`StringName<class_StringName>`, data\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EngineDebugger_method_profiler_add_frame_data>`

Chiama il chiamabile ``add`` del profiler con il nome ``name`` e ``data`` specificati.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_profiler_enable:

.. rst-class:: classref-method

|void| **profiler_enable**\ (\ name\: :ref:`StringName<class_StringName>`, enable\: :ref:`bool<class_bool>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EngineDebugger_method_profiler_enable>`

Chiama il chiamabile ``toggle`` del profiler con il nome ``name`` e ``arguments`` specificati. Abilita/disabilita lo stesso profiler in base all'argomento ``enable``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_register_message_capture:

.. rst-class:: classref-method

|void| **register_message_capture**\ (\ name\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EngineDebugger_method_register_message_capture>`

Registra una cattura di messaggio con il nome ``name``. Se ``name`` è "my_message", i messaggi che iniziano con "my_message:" saranno chiamati con il chiamabile fornito.

Il chiamabile deve accettare una stringa di messaggio e un array di dati come argomenti. Il chiamabile deve restituire ``true`` se il messaggio viene riconosciuto.

\ **Nota:** Il chiamabile riceverà il messaggio con il prefisso rimosso, a differenza di :ref:`EditorDebuggerPlugin._capture()<class_EditorDebuggerPlugin_private_method__capture>`. Consulta la descrizione di :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>` per un esempio.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_register_profiler:

.. rst-class:: classref-method

|void| **register_profiler**\ (\ name\: :ref:`StringName<class_StringName>`, profiler\: :ref:`EngineProfiler<class_EngineProfiler>`\ ) :ref:`🔗<class_EngineDebugger_method_register_profiler>`

Registra un profiler con il nome ``name`` specificato. Vedi :ref:`EngineProfiler<class_EngineProfiler>` per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_remove_breakpoint:

.. rst-class:: classref-method

|void| **remove_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_remove_breakpoint>`

Rimuove un punto d'interruzione con la sorgente (``source``) e riga (``line``) fornite.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_script_debug:

.. rst-class:: classref-method

|void| **script_debug**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`, can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EngineDebugger_method_script_debug>`

Avvia un'interruzione di debug nell'esecuzione dello script, specificando facoltativamente se il programma può continuare in base a ``can_continue`` e se l'interruzione è dovuta a un punto d'interruzione.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_send_message:

.. rst-class:: classref-method

|void| **send_message**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EngineDebugger_method_send_message>`

Invia un messaggio con la stringa ``message`` e l'array ``data``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_set_depth:

.. rst-class:: classref-method

|void| **set_depth**\ (\ depth\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EngineDebugger_method_set_depth>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Imposta la profondità di debug attuale.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_set_lines_left:

.. rst-class:: classref-method

|void| **set_lines_left**\ (\ lines\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EngineDebugger_method_set_lines_left>`

**Sperimentale:** Questo metodo potrebbe essere cambiato o rimosso in versioni future.

Imposta le righe di debug attuali che rimangono.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_unregister_message_capture:

.. rst-class:: classref-method

|void| **unregister_message_capture**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_unregister_message_capture>`

Annulla la registrazione della cattura di messaggio con il nome ``name``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_unregister_profiler:

.. rst-class:: classref-method

|void| **unregister_profiler**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_unregister_profiler>`

Annulla la registrazione di un profiler con il nome ``name``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
