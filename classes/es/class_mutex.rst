:github_url: hide

.. _class_Mutex:

Mutex
=====

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un :ref:`Semaphore<class_Semaphore>` binario para la sincronización de múltiples :ref:`Thread<class_Thread>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A synchronization mutex (mutual exclusion). This is used to synchronize multiple :ref:`Thread<class_Thread>`\ s, and is equivalent to a binary :ref:`Semaphore<class_Semaphore>`. It guarantees that only one thread can access a critical section at a time.

This is a reentrant mutex, meaning that it can be locked multiple times by one thread, provided it also unlocks it as many times.

\ **Warning:** To ensure proper cleanup without crashes or deadlocks, the following conditions must be met:

- When a **Mutex**'s reference count reaches zero and it is therefore destroyed, no threads (including the one on which the destruction will happen) must have it locked.

- When a :ref:`Thread<class_Thread>`'s reference count reaches zero and it is therefore destroyed, it must not have any mutex locked.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando múltiples hilos <../tutorials/performance/using_multiple_threads>`

- :doc:`APIs thread safe <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

Locks this **Mutex**, blocks until it is unlocked by the current owner.

\ **Note:** This function returns without blocking if the thread already has ownership of the mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

Intenta bloquear este **Mutex** sin bloquear el hilo. Devuelve ``true`` si se logra adquirir el mutex y ``false`` en caso contrario.

\ **Nota:** Esta función también devuelve ``true`` si el hilo ya posee el mutex.

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

Unlocks this **Mutex**, leaving it to other threads.

\ **Note:** If a thread called :ref:`lock()<class_Mutex_method_lock>` or :ref:`try_lock()<class_Mutex_method_try_lock>` multiple times while already having ownership of the mutex, it must also call :ref:`unlock()<class_Mutex_method_unlock>` the same number of times in order to unlock it correctly.

\ **Warning:** Calling :ref:`unlock()<class_Mutex_method_unlock>` more times than :ref:`lock()<class_Mutex_method_lock>` on a given thread, thus ending up trying to unlock a non-locked mutex, is wrong and may causes crashes or deadlocks.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
