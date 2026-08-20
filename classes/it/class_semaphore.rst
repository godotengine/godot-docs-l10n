:github_url: hide

.. _class_Semaphore:

Semaphore
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un meccanismo di sincronizzazione utilizzato per controllare l'accesso a una risorsa condivisa dai :ref:`Thread<class_Thread>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un semaforo di sincronizzazione che può essere utilizzato per sincronizzare più :ref:`Thread<class_Thread>`. Inizializzato a zero alla creazione. Per una versione binaria, vedi :ref:`Mutex<class_Mutex>`.

\ **Attenzione:** I semafori devono essere utilizzati con attenzione per evitare i deadlock.

\ **Attenzione:** Per garantire che il sistema operativo sia in grado di eseguire una pulizia corretta (nessun crash, nessun deadlock), devono essere soddisfatte queste condizioni:

- Quando il conteggio dei riferimenti di un **Semaphore** raggiunge zero e viene quindi distrutto, nessun thread deve essere in attesa su di esso.

- Quando il conteggio dei riferimenti di un :ref:`Thread<class_Thread>` raggiunge zero e viene quindi distrutto, non deve essere in attesa di alcun semaforo.

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

   +-------------------------+-----------------------------------------------------------------------------------+
   | |void|                  | :ref:`post<class_Semaphore_method_post>`\ (\ count\: :ref:`int<class_int>` = 1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`try_wait<class_Semaphore_method_try_wait>`\ (\ )                            |
   +-------------------------+-----------------------------------------------------------------------------------+
   | |void|                  | :ref:`wait<class_Semaphore_method_wait>`\ (\ )                                    |
   +-------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Semaphore_method_post:

.. rst-class:: classref-method

|void| **post**\ (\ count\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_Semaphore_method_post>`

Abbassa il **Semaphore**, consentendo l'ingresso di un altro thread, o più se ``count`` è specificato.

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_try_wait:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_wait**\ (\ ) :ref:`🔗<class_Semaphore_method_try_wait>`

Come :ref:`wait()<class_Semaphore_method_wait>`, ma non blocca l'esecuzione, quindi se il valore è zero, fallisce immediatamente e restituisce ``false``. Se è diverso da zero, restituisce ``true`` per segnalare il successo.

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_wait:

.. rst-class:: classref-method

|void| **wait**\ (\ ) :ref:`🔗<class_Semaphore_method_wait>`

Attende il **Semaphore**, se il suo valore è zero, e blocca l'esecuzione finché non diventa diverso da zero.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
