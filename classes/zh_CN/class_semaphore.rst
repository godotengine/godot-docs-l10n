:github_url: hide

.. _class_Semaphore:

Semaphore
=========

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

同步机制，用于控制对 :ref:`Thread<class_Thread>` 之间共享资源的访问。

.. rst-class:: classref-introduction-group

描述
----

同步机制，用于控制对 :ref:`Thread<class_Thread>` 之间共享资源的访问。创建时初始化为零。二元版本见 :ref:`Mutex<class_Mutex>`\ 。

\ **警告：**\ 信号量必须谨慎使用，防止死锁。

\ **警告：**\ 为了确保操作系统能够执行正确的清理（避免崩溃和思索），必须满足以下条件：

- **Semaphore** 的引用计数变为零，导致销毁时，没有线程在等待该信号量。

- :ref:`Thread<class_Thread>` 的引用计数变为零，导致销毁时，没有在等待任何信号量。

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

方法说明
--------

.. _class_Semaphore_method_post:

.. rst-class:: classref-method

|void| **post**\ (\ count\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_Semaphore_method_post>`

降低 **Semaphore**\ ，额外允许一个线程进入，如果指定了 ``count`` 则可以是更多线程。

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_try_wait:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_wait**\ (\ ) :ref:`🔗<class_Semaphore_method_try_wait>`

与 :ref:`wait()<class_Semaphore_method_wait>` 类似，但不会阻塞，所以如果值为零，则会立即失败并返回 ``false``\ 。如果非零，则返回 ``true`` 以报告成功。

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_wait:

.. rst-class:: classref-method

|void| **wait**\ (\ ) :ref:`🔗<class_Semaphore_method_wait>`

等待该 **Semaphore**\ ，如果它的值为零，则阻塞到变为非零为止。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
