:github_url: hide

.. _class_Mutex:

Mutex
=====

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un :ref:`Semaphore<class_Semaphore>` binario per la sincronizzazione di più :ref:`Thread<class_Thread>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un mutex di sincronizzazione (mutua esclusione). Serve per sincronizzare più :ref:`Thread<class_Thread>` ed è equivalente a un :ref:`Semaphore<class_Semaphore>` binario. Garantisce che solo un thread alla volta possa accedere a una sezione critica.

Questo è un mutex rientrante, il che significa che può essere bloccato più volte da un thread, a condizione che lo sblocchi altrettante volte.

\ **Attenzione:** Per garantire una pulizia corretta senza arresti anomali o deadlock, devono essere soddisfatte le seguenti condizioni:

- Quando il conteggio dei riferimenti di un **Mutex** raggiunge zero e viene quindi distrutto, nessun thread (incluso quello su cui avverrà la distruzione) deve averlo bloccato.

- Quando il conteggio dei riferimenti di un :ref:`Thread<class_Thread>` raggiunge zero e viene quindi distrutto, non deve avere alcun mutex bloccato.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di più thread <../tutorials/performance/using_multiple_threads>`

- :doc:`Le API thread-safe <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------+
   | |void|                  | :ref:`lock<class_Mutex_method_lock>`\ (\ )         |
   +-------------------------+----------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`try_lock<class_Mutex_method_try_lock>`\ (\ ) |
   +-------------------------+----------------------------------------------------+
   | |void|                  | :ref:`unlock<class_Mutex_method_unlock>`\ (\ )     |
   +-------------------------+----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

Blocca questo **Mutex**, blocca finché non viene sbloccato dal proprietario attuale.

\ **Nota:** Questa funzione restituisce senza bloccare se il thread ha già il possesso del mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

Tenta di bloccare questo **Mutex**, ma non blocca. Restituisce ``true`` in caso di successo, altrimenti ``false``.

\ **Nota:** Questa funzione restituisce ``true`` se il thread ha già il possesso del mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

Sblocca questo **Mutex**, lasciandolo ad altri thread.

\ **Nota:** Se un thread chiama :ref:`lock()<class_Mutex_method_lock>` o :ref:`try_lock()<class_Mutex_method_try_lock>` più volte pur avendo già il possesso del mutex, deve anche chiamare :ref:`unlock()<class_Mutex_method_unlock>` lo stesso numero di volte per sbloccarlo correttamente.

\ **Attenzione:** Chiamare :ref:`unlock()<class_Mutex_method_unlock>` più volte di :ref:`lock()<class_Mutex_method_lock>` su un determinato thread, finendo così per tentare di sbloccare un mutex non bloccato, è sbagliato e può causare crash o deadlock.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
