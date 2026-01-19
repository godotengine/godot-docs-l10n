:github_url: hide

.. _class_Mutex:

Mutex
=====

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

二元 :ref:`Semaphore<class_Semaphore>`\ ，用於在多 :ref:`Thread<class_Thread>` 間進行同步。

.. rst-class:: classref-introduction-group

說明
----

A synchronization mutex (mutual exclusion). This is used to synchronize multiple :ref:`Thread<class_Thread>`\ s, and is equivalent to a binary :ref:`Semaphore<class_Semaphore>`. It guarantees that only one thread can access a critical section at a time.

This is a reentrant mutex, meaning that it can be locked multiple times by one thread, provided it also unlocks it as many times.

\ **Warning:** To ensure proper cleanup without crashes or deadlocks, the following conditions must be met:

- When a **Mutex**'s reference count reaches zero and it is therefore destroyed, no threads (including the one on which the destruction will happen) must have it locked.

- When a :ref:`Thread<class_Thread>`'s reference count reaches zero and it is therefore destroyed, it must not have any mutex locked.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用多執行緒 <../tutorials/performance/using_multiple_threads>`

- :doc:`執行緒安全的 API <../tutorials/performance/thread_safe_apis>`

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

鎖定此 **Mutex**\ ，直到被目前所有者解鎖為止。

\ **注意：**\ 如果執行緒已經擁有互斥鎖的所有權，該函式將無阻塞地返回。

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

嘗試鎖定該 **Mutex**\ ，但不會阻塞。成功時返回 ``true``\ ，否則返回 ``false``\ 。

\ **注意：**\ 如果該執行緒已經擁有了該互斥器的所有權，則函式返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

Unlocks this **Mutex**, leaving it to other threads.

\ **Note:** If a thread called :ref:`lock()<class_Mutex_method_lock>` or :ref:`try_lock()<class_Mutex_method_try_lock>` multiple times while already having ownership of the mutex, it must also call :ref:`unlock()<class_Mutex_method_unlock>` the same number of times in order to unlock it correctly.

\ **Warning:** Calling :ref:`unlock()<class_Mutex_method_unlock>` more times than :ref:`lock()<class_Mutex_method_lock>` on a given thread, thus ending up trying to unlock a non-locked mutex, is wrong and may causes crashes or deadlocks.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
