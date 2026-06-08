:github_url: hide

.. _class_Thread:

Thread
======

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un unità di esecuzione in un processo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'unità di esecuzione in un processo. Può eseguire metodi sui :ref:`Object<class_Object>` simultaneamente. Si consiglia di utilizzare la sincronizzazione tramite :ref:`Mutex<class_Mutex>` o :ref:`Semaphore<class_Semaphore>` se si lavora con oggetti condivisi.

\ **Avviso:** Per garantire una pulizia corretta senza crash o deadlock, quando il conteggio dei riferimenti di un **Thread** raggiunge zero e viene quindi distrutto, devono essere soddisfatte le seguenti condizioni:

- Non deve avere alcun oggetto :ref:`Mutex<class_Mutex>` bloccato.

- Non deve essere in attesa di alcun oggetto :ref:`Semaphore<class_Semaphore>`.

- Si sarebbe dovuto richiamare :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` su di esso.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di più thread <../tutorials/performance/using_multiple_threads>`

- :doc:`Le API thread-safe <../tutorials/performance/thread_safe_apis>`

- `Demo di voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_id<class_Thread_method_get_id>`\ (\ ) |const|                                                                                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_alive<class_Thread_method_is_alive>`\ (\ ) |const|                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_main_thread<class_Thread_method_is_main_thread>`\ (\ ) |static|                                                                        |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_started<class_Thread_method_is_started>`\ (\ ) |const|                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_thread_safety_checks_enabled<class_Thread_method_set_thread_safety_checks_enabled>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start<class_Thread_method_start>`\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`wait_to_finish<class_Thread_method_wait_to_finish>`\ (\ )                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Thread_Priority:

.. rst-class:: classref-enumeration

enum **Priority**: :ref:`🔗<enum_Thread_Priority>`

.. _class_Thread_constant_PRIORITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_LOW** = ``0``

Un thread in esecuzione con una priorità inferiore al normale.

.. _class_Thread_constant_PRIORITY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_NORMAL** = ``1``

Un thread con una priorità normale.

.. _class_Thread_constant_PRIORITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_HIGH** = ``2``

Un thread in esecuzione con una priorità superiore al normale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Thread_method_get_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id**\ (\ ) |const| :ref:`🔗<class_Thread_method_get_id>`

Restituisce l'ID del **Thread** attuale, identificandolo in modo univoco tra tutti i thread. Se il **Thread** non è stato avviato o se è stato chiamato :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`, restituisce una stringa vuota.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_alive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_alive**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_alive>`

Restituisce ``true`` se questo **Thread** sta attualmente eseguendo la funzione fornita. Ciò è utile per determinare se :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` può essere chiamato senza bloccare il thread chiamante.

Per verificare se un **Thread** è unibile, usa :ref:`is_started()<class_Thread_method_is_started>`.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_main_thread:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_main_thread**\ (\ ) |static| :ref:`🔗<class_Thread_method_is_main_thread>`

Returns ``true`` if the thread this method was called from is the main thread.

\ **Note:** This is a static method and isn't associated with a specific **Thread** object.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_started:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_started**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_started>`

Restituisce ``true`` se questo **Thread** è stato avviato. Una volta avviato, restituirà ``true`` finché non verrà unito usando :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`. Per controllare se un **Thread** sta ancora eseguendo la sua attività, usa :ref:`is_alive()<class_Thread_method_is_alive>`.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_set_thread_safety_checks_enabled:

.. rst-class:: classref-method

|void| **set_thread_safety_checks_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Thread_method_set_thread_safety_checks_enabled>`

Imposta se i controlli di sicurezza dei thread che il motore esegue normalmente nei metodi di determinate classi (ad esempio, :ref:`Node<class_Node>`) devono essere eseguiti **sul thread attuale**.

L'impostazione predefinita, per ogni thread, è che siano abilitati (come se fossero chiamati con ``enabled`` che è ``true``).

Tali controlli sono prudenti. Ciò significa che riusciranno a considerare una chiamata thread-safe (e quindi consentiranno che venga eseguita) solo se il motore può garantire tale sicurezza.

Per questo motivo, potrebbero esserci casi in cui l'utente potrebbe volerli disabilitare (``enabled`` che è ``false``) per consentire nuovamente determinate operazioni. In questo modo, diventa la responsabilità dell'utente garantire la sicurezza dei thread (ad esempio, tramite :ref:`Mutex<class_Mutex>`) per quegli oggetti che sono altrimenti protetti dal motore.

\ **Nota:** Questo è un utilizzo avanzato del motore. Si consiglia di usarlo solo se si sa cosa si sta facendo e non esiste un modo più sicuro.

\ **Nota:** Questo è utile per gli script in esecuzione su oggetti **Thread** arbitrari o attività inviate al :ref:`WorkerThreadPool<class_WorkerThreadPool>`. Non si applica al codice in esecuzione durante l'elaborazione di gruppo dei :ref:`Node<class_Node>`, in cui i controlli saranno sempre eseguiti.

\ **Nota:** Anche nel caso in cui i controlli siano stati disabilitati in un'attività del :ref:`WorkerThreadPool<class_WorkerThreadPool>`, non è necessario riabilitarli alla fine. Lo farà il motore.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) :ref:`🔗<class_Thread_method_start>`

Avvia un nuovo **Thread** che chiama ``callable``.

Se il chiamabile accetta alcuni argomenti, puoi passarli tramite :ref:`Callable.bind()<class_Callable_method_bind>`.

Il ``priority`` del **Thread** può essere modificato passando un valore dall'enumerazione :ref:`Priority<enum_Thread_Priority>`.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo o :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` in caso di fallimento.

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_wait_to_finish:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **wait_to_finish**\ (\ ) :ref:`🔗<class_Thread_method_wait_to_finish>`

Unisce il **Thread** e attende che termini. Restituisce il risultato del :ref:`Callable<class_Callable>` passato a :ref:`start()<class_Thread_method_start>`.

Dovrebbe essere usato quando si desidera recuperare il valore restituito dal metodo chiamato dal **Thread** o prima di liberare l'istanza che contiene il **Thread**.

Per determinare se questo può essere chiamato senza bloccare il thread chiamante, controllare se :ref:`is_alive()<class_Thread_method_is_alive>` è ``false``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
