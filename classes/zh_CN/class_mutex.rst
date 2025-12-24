:github_url: hide

.. _class_Mutex:

Mutex
=====

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

二元 :ref:`Semaphore<class_Semaphore>`\ ，用于在多 :ref:`Thread<class_Thread>` 间进行同步。

.. rst-class:: classref-introduction-group

描述
----

同步互斥器（mutex 来源于 mutual exclusion，即互斥）。可用于在多 :ref:`Thread<class_Thread>` 间进行同步，等价于二元 :ref:`Semaphore<class_Semaphore>`\ 。能够确保同时只有一个线程能够访问临界区。

这是一种可重入的互斥器，也就是说同一个线程能够将其多次上锁，只要也进行相同次数的解锁即可。

\ **警告：**\ 互斥器必须谨慎使用才能避免死锁。

\ **警告：**\ 为了能够正确清理，避免崩溃和死锁，必须满足以下条件：

- **Mutex** 的引用计数到达零，将被销毁时，必须没有线程将其锁定（包括发生析构的线程）。

- :ref:`Thread<class_Thread>` 的引用计数达到零，将被销毁时，必须没有锁定任何互斥器。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用多线程 <../tutorials/performance/using_multiple_threads>`

- :doc:`线程安全的 API <../tutorials/performance/thread_safe_apis>`

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

方法说明
--------

.. _class_Mutex_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_Mutex_method_lock>`

锁定此 **Mutex**\ ，直到被当前所有者解锁为止。

\ **注意：**\ 如果线程已经拥有互斥锁的所有权，该函数将无阻塞地返回。

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_try_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_lock**\ (\ ) :ref:`🔗<class_Mutex_method_try_lock>`

尝试锁定该 **Mutex**\ ，但不会阻塞。成功时返回 ``true``\ ，否则返回 ``false``\ 。

\ **注意：**\ 如果该线程已经拥有了该互斥器的所有权，则函数返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Mutex_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_Mutex_method_unlock>`

解锁该 **Mutex**\ ，将其留给其他线程。

\ **注意：**\ 如果一个线程在已经拥有互斥器的情况下多次调用 :ref:`lock()<class_Mutex_method_lock>` 或 :ref:`try_lock()<class_Mutex_method_try_lock>`\ ，则也必须调用相同次数的 :ref:`unlock()<class_Mutex_method_unlock>` 才能正确解锁。

\ **警告：**\ 在给定的线程中调用 :ref:`unlock()<class_Mutex_method_unlock>` 的次数超过调用 :ref:`lock()<class_Mutex_method_lock>` 的次数，导致尝试解锁未加锁的互斥器，是错误的行为，可能引起崩溃和死锁。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
