:github_url: hide

.. _class_Thread:

Thread
======

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

进程中的执行单元。

.. rst-class:: classref-introduction-group

描述
----

A unit of execution in a process. Can run methods on :ref:`Object<class_Object>`\ s simultaneously. The use of synchronization via :ref:`Mutex<class_Mutex>` or :ref:`Semaphore<class_Semaphore>` is advised if working with shared objects.

\ **Warning:** To ensure proper cleanup without crashes or deadlocks, when a **Thread**'s reference count reaches zero and it is therefore destroyed, the following conditions must be met:

- It must not have any :ref:`Mutex<class_Mutex>` objects locked.

- It must not be waiting on any :ref:`Semaphore<class_Semaphore>` objects.

- :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` should have been called on it.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用多线程 <../tutorials/performance/using_multiple_threads>`

- :doc:`线程安全的 API <../tutorials/performance/thread_safe_apis>`

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

方法
----

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

枚举
----

.. _enum_Thread_Priority:

.. rst-class:: classref-enumeration

enum **Priority**: :ref:`🔗<enum_Thread_Priority>`

.. _class_Thread_constant_PRIORITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_LOW** = ``0``

线程以比正常情况下更低的优先级运行。

.. _class_Thread_constant_PRIORITY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_NORMAL** = ``1``

具有标准优先级的线程。

.. _class_Thread_constant_PRIORITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_HIGH** = ``2``

以比正常情况更高的优先级运行的线程。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Thread_method_get_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id**\ (\ ) |const| :ref:`🔗<class_Thread_method_get_id>`

返回当前 **Thread** 的 ID，能够在所有线程中唯一标识该线程。如果该 **Thread** 尚未运行，或者已经调用过 :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`\ ，则返回空字符串。

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_alive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_alive**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_alive>`

如果这个 **Thread** 当前正在运行，则返回 ``true``\ 。可用于确定调用 :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` 是否可以不阻塞调用的线程。

要检查 **Thread** 是否可被并入，请使用 :ref:`is_started()<class_Thread_method_is_started>`\ 。

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

如果此 **Thread** 已启动，则返回 ``true``\ 。一旦开始，这将返回 ``true`` ，直到它使用 :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` 加入。要检查 **Thread** 是否仍在执行其任务，请使用 :ref:`is_alive()<class_Thread_method_is_alive>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_set_thread_safety_checks_enabled:

.. rst-class:: classref-method

|void| **set_thread_safety_checks_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Thread_method_set_thread_safety_checks_enabled>`

设置是否应该\ **在当前线程**\ 执行线程安全检查，这些检查在一般是在某些类（例如 :ref:`Node<class_Node>`\ ）的方法中进行的。

每个线程的默认值是启用（就像将 ``true`` 传给 ``enabled`` 调用一样）。

这些检查是保守的。也就是说，只有在引擎能够确保安全时才会认为该调用是线程安全的，检查通过（因此允许进行调用）。

因此，某些情况下用于可能会想要将其禁用（让 ``enabled`` 为 ``false``\ ），允许某些操作。此时引擎不再保护这些对象的线程安全，（通过使用 :ref:`Mutex<class_Mutex>` 等方法来）确保线程安全就是用户自己的责任了。

\ **注意：**\ 这是引擎的高阶用法。建议只有在你知道自己在做什么，并且没有其他更安全的方法时才使用这个方法。

\ **注意：**\ 可用于任意 **Thread** 对象中执行的脚本，或者提交至 :ref:`WorkerThreadPool<class_WorkerThreadPool>` 的任务。\ :ref:`Node<class_Node>` 分组处理时执行的代码不适用，这种情况下会始终执行检查。

\ **注意：**\ 即使是在 :ref:`WorkerThreadPool<class_WorkerThreadPool>` 任务中禁用了检查，也不需要在结束后将其重新启用。引擎会帮你去启用。

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) :ref:`🔗<class_Thread_method_start>`

启动一个调用 ``callable`` 的新 **Thread**\ 。

如果该方法需要一些参数，可以使用 :ref:`Callable.bind()<class_Callable_method_bind>` 传递它们。

\ **Thread** 的 ``priority`` 可以通过传递 :ref:`Priority<enum_Thread_Priority>` 枚举中的值来更改。

成功时返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，失败时返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_wait_to_finish:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **wait_to_finish**\ (\ ) :ref:`🔗<class_Thread_method_wait_to_finish>`

合并该 **Thread** 并等待其完成。返回传入 :ref:`start()<class_Thread_method_start>` 的 :ref:`Callable<class_Callable>` 的输出。

应该在你想要获取该 **Thread** 所调用的方法的返回值时使用，或者在释放包含该 **Thread** 的实例前使用。

要确定调用时是否不会阻塞调用线程，请检查 :ref:`is_alive()<class_Thread_method_is_alive>` 是否为 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
