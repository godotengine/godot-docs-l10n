:github_url: hide

.. _class_Logger:

Logger
======

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Logger personalizzato per ricevere messaggi dal flusso interno di errori/avvisi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Logger personalizzato per ricevere messaggi dal flusso interno di errori/avvisi. I logger si registrano tramite :ref:`OS.add_logger()<class_OS_method_add_logger>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Logging <../tutorials/scripting/logging>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_log_error<class_Logger_private_method__log_error>`\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_log_message<class_Logger_private_method__log_message>`\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                                                                                                                                                         |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Logger_ErrorType:

.. rst-class:: classref-enumeration

enum **ErrorType**: :ref:`🔗<enum_Logger_ErrorType>`

.. _class_Logger_constant_ERROR_TYPE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_ERROR** = ``0``

Il messaggio ricevuto è un errore.

.. _class_Logger_constant_ERROR_TYPE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_WARNING** = ``1``

Il messaggio ricevuto è un avviso.

.. _class_Logger_constant_ERROR_TYPE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SCRIPT** = ``2``

Il messaggio ricevuto è un errore di script.

.. _class_Logger_constant_ERROR_TYPE_SHADER:

.. rst-class:: classref-enumeration-constant

:ref:`ErrorType<enum_Logger_ErrorType>` **ERROR_TYPE_SHADER** = ``3``

Il messaggio ricevuto è un errore di shader.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Logger_private_method__log_error:

.. rst-class:: classref-method

|void| **_log_error**\ (\ function\: :ref:`String<class_String>`, file\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, code\: :ref:`String<class_String>`, rationale\: :ref:`String<class_String>`, editor_notify\: :ref:`bool<class_bool>`, error_type\: :ref:`int<class_int>`, script_backtraces\: :ref:`Array<class_Array>`\[:ref:`ScriptBacktrace<class_ScriptBacktrace>`\]\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_error>`

Chiamato quando un errore viene registrato. L'errore fornisce la funzione (``function``), il file (``file``) e la riga (``line``) da cui ha avuto origine, nonché il codice (``code``) che ha generato l'errore o una motivazione (``rationale``).

Il tipo di errore, fornito da ``error_type``, è descritto nell'enumerazione :ref:`ErrorType<enum_Logger_ErrorType>`.

Inoltre, ``script_backtraces`` fornisce backtrace per ciascuno dei linguaggi di script. Normalmente, questi conterranno stack frame solo nelle build dell'editor e nelle build di debug. Per abilitarli anche per le build di rilascio, è necessario abilitare :ref:`ProjectSettings.debug/settings/gdscript/always_track_call_stacks<class_ProjectSettings_property_debug/settings/gdscript/always_track_call_stacks>`.

\ **Attenzione:** Questa funzione si può chiamare da più thread diversi, quindi potrebbe essere necessario eseguire i propri blocchi.

\ **Nota:** ``script_backtraces`` non conterrà alcuna variabile catturata, a causa del suo costo proibitivo. Per ottenerle, sarà necessario catturare personalmente i backtrace, dall'interno dei metodi virtuali del **Logger**, attraverso :ref:`Engine.capture_script_backtraces()<class_Engine_method_capture_script_backtraces>`.

\ **Nota:** Registrare gli errori da questo metodo tramite funzioni come :ref:`@GlobalScope.push_error()<class_@GlobalScope_method_push_error>` o :ref:`@GlobalScope.push_warning()<class_@GlobalScope_method_push_warning>` non è supportata, in quanto potrebbe causare una ricorsione infinita. Questi errori appariranno solo nell'output della console.

.. rst-class:: classref-item-separator

----

.. _class_Logger_private_method__log_message:

.. rst-class:: classref-method

|void| **_log_message**\ (\ message\: :ref:`String<class_String>`, error\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_Logger_private_method__log_message>`

Chiamato quando viene registrato un messaggio. Se ``error`` è ``true``, significa che il messaggio era destinato a essere inviato a ``stderr``.

\ **Attenzione:** Questo metodo verrà chiamato da thread diversi dal thread principale, potenzialmente allo stesso tempo, quindi è necessario implementare un meccanismo di sicurezza per i thread, come ad esempio un :ref:`Mutex<class_Mutex>`.

\ **Nota:** Registrare altri messaggi da questo metodo tramite funzioni come :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>` non è supportato, in quanto potrebbe causare una ricorsione infinita. Questi messaggi appariranno solo nell'output della console.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
