:github_url: hide

.. _class_WorkerThreadPool:

WorkerThreadPool
================

**继承：** :ref:`Object<class_Object>`

单例，启动时会分配一些 :ref:`Thread<class_Thread>`\ ，可以将任务卸载到这些线程中执行。

.. rst-class:: classref-introduction-group

描述
----

**WorkerThreadPool** 单例在项目启动时会分配一组 :ref:`Thread<class_Thread>`\ （称作工作线程）并提供将任务卸载至这些线程上执行的方法。这样就能够简化多线程的使用，不必创建 :ref:`Thread<class_Thread>`\ 。

任务里放置的是要让线程执行的 :ref:`Callable<class_Callable>`\ 。\ **WorkerThreadPool** 既可以创建常规任务也可以创建分组任务，常规任务由单个工作线程执行，而分组任务可以分布在多个工作线程执行。分组任务会多次执行同一个 :ref:`Callable<class_Callable>`\ ，可用于遍历大量的元素，例如场景中的敌人。

以下是将开销很大的函数卸载到工作线程执行的例子：


.. tabs::

 .. code-tab:: gdscript

    var enemies = [] # 用敌人填充的数组。

    func process_enemy_ai(enemy_index):
        var processed_enemy = enemies[enemy_index]
        # 开销很大的逻辑……

    func _process(delta):
        var task_id = WorkerThreadPool.add_group_task(process_enemy_ai, enemies.size())
        # 其他代码……
        WorkerThreadPool.wait_for_group_task_completion(task_id)
        # 要求敌人 AI 已经处理完毕的其他代码。

 .. code-tab:: csharp

    private List<Node> _enemies = new List<Node>(); // 用敌人填充的数组。

    private void ProcessEnemyAI(int enemyIndex)
    {
        Node processedEnemy = _enemies[enemyIndex];
        // 开销很大的逻辑……
    }

    public override void _Process(double delta)
    {
        long taskId = WorkerThreadPool.AddGroupTask(Callable.From<int>(ProcessEnemyAI), _enemies.Count);
        // 其他代码……
        WorkerThreadPool.WaitForGroupTaskCompletion(taskId);
        // 要求敌人 AI 已经处理完毕的其他代码。
    }



以上代码要求 ``enemies`` 数组中的元素个数在多线程部分执行时保持不变。

\ **注意：**\ 如果分布到多个线程执行的任务在计算方面的开销并不大，那么使用这个单例可能对性能有负面影响。

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

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`add_group_task<class_WorkerThreadPool_method_add_group_task>`\ (\ action\: :ref:`Callable<class_Callable>`, elements\: :ref:`int<class_int>`, tasks_needed\: :ref:`int<class_int>` = -1, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`add_task<class_WorkerThreadPool_method_add_task>`\ (\ action\: :ref:`Callable<class_Callable>`, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ )                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_caller_group_id<class_WorkerThreadPool_method_get_caller_group_id>`\ (\ ) |const|                                                                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_caller_task_id<class_WorkerThreadPool_method_get_caller_task_id>`\ (\ ) |const|                                                                                                                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_group_processed_element_count<class_WorkerThreadPool_method_get_group_processed_element_count>`\ (\ group_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_group_task_completed<class_WorkerThreadPool_method_is_group_task_completed>`\ (\ group_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_task_completed<class_WorkerThreadPool_method_is_task_completed>`\ (\ task_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`wait_for_group_task_completion<class_WorkerThreadPool_method_wait_for_group_task_completion>`\ (\ group_id\: :ref:`int<class_int>`\ )                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`wait_for_task_completion<class_WorkerThreadPool_method_wait_for_task_completion>`\ (\ task_id\: :ref:`int<class_int>`\ )                                                                                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_WorkerThreadPool_method_add_group_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_group_task**\ (\ action\: :ref:`Callable<class_Callable>`, elements\: :ref:`int<class_int>`, tasks_needed\: :ref:`int<class_int>` = -1, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_group_task>`

将 ``action`` 添加为分组任务，让多个工作线程执行。该 :ref:`Callable<class_Callable>` 的调用次数由 ``elements`` 决定，第一个调用的线程使用 ``0`` 作为参数，后续执行时会将其加 1，直到变为 ``element - 1``\ 。

任务分布的线程数由 ``tasks_needed`` 定义，默认值 ``-1`` 表示分布到所有工作线程。\ ``high_priority`` 决定的是任务具有高优先级还是低优先级（默认）。你还可以选择提供 ``description`` 作为描述信息，方便调试。

返回分组任务 ID，可用于其他方法。

\ **警告：**\ 每个任务都必须在某处使用 :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` 或 :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` 等待完成，从而清理任务中分配的资源。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_add_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_task**\ (\ action\: :ref:`Callable<class_Callable>`, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_task>`

将 ``action`` 添加为分组任务，让单个工作线程执行。\ ``high_priority`` 决定的是任务具有高优先级还是低优先级（默认）。你还可以选择提供 ``description`` 作为描述信息，方便调试。

返回任务 ID，可用于其他方法。

\ **警告：**\ 每个任务都必须在某处使用 :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` 或 :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` 等待完成，从而清理任务中分配的资源。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_group_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_group_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_group_id>`

返回调用该方法的当前线程的任务组 ID，如果无效或当前线程不属于任何任务组，则返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_task_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_task_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_task_id>`

返回调用该方法的当前线程的任务 ID，如果任务是组任务、无效或当前线程不属于线程池（例如为主线程），则返回 ``-1``\ 。

任务可以用该方法获取其自身的任务 ID 或确定当前代码是否在工作线程池中运行。

\ **注意：**\ 分组任务有其自己的 ID，因此该方法对于分组任务将返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_group_processed_element_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_processed_element_count**\ (\ group_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_group_processed_element_count>`

返回具有给定 ID 的分组任务的 :ref:`Callable<class_Callable>` 已经被工作线程执行的次数。

\ **注意：**\ 线程已经开始执行 :ref:`Callable<class_Callable>` 但尚未完成的情况不计算在内。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_group_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_group_task_completed**\ (\ group_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_group_task_completed>`

如果 ID 对应的分组任务已完成，则返回 ``true``\ 。

\ **注意：**\ 只应该在添加分组任务之后、等待完成之前调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_task_completed**\ (\ task_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_task_completed>`

如果 ID 对应的任务已完成，则返回 ``true``\ 。

\ **注意：**\ 只应该在添加分组任务之后、等待完成之前调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_wait_for_group_task_completion:

.. rst-class:: classref-method

|void| **wait_for_group_task_completion**\ (\ group_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WorkerThreadPool_method_wait_for_group_task_completion>`

在具有给定 ID 的分组任务完成前暂停调用这个方法的线程。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_wait_for_task_completion:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait_for_task_completion**\ (\ task_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WorkerThreadPool_method_wait_for_task_completion>`

暂停调用该方法的线程，直到给定 ID 对应的任务完成。

如果能够成功等待任务，则返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

如果不存在与传入 ID 对应的任务（可能已被等待或处理），则返回 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ 。

如果其他正在执行的任务调用了该方法，并且由于任务调度的原因，存在死锁的可能性（例如，要等待的任务可能位于调用堆栈中的较低级别，因此不能继续），则返回 :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>`\ 。这是比较高级的情况，只有任务之间存在依赖关系（在当前实现中，棘手的情况是尝试等待较旧任务的任务）时才会出现。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
