:github_url: hide

.. _class_WorkerThreadPool:

WorkerThreadPool
================

**繼承：** :ref:`Object<class_Object>`

單例，啟動時會分配一些 :ref:`Thread<class_Thread>`\ ，可以將工作解除安裝到這些執行緒中執行。

.. rst-class:: classref-introduction-group

說明
----

**WorkerThreadPool** 單例在專案啟動時會分配一組 :ref:`Thread<class_Thread>`\ （稱作工作執行緒）並提供將工作解除安裝至這些執行緒上執行的方法。這樣就能夠簡化多執行緒的使用，不必建立 :ref:`Thread<class_Thread>`\ 。

工作裡放置的是要讓執行緒執行的 :ref:`Callable<class_Callable>`\ 。\ **WorkerThreadPool** 既可以建立常規任務也可以建立群組工作，常規工作由單個工作執行緒執行，而群組工作可以分佈在多個工作執行緒執行。群組工作會多次執行同一個 :ref:`Callable<class_Callable>`\ ，可用於走訪大量的元素，例如場景中的敵人。

以下是將開銷很大的函式解除安裝到工作執行緒執行的例子：


.. tabs::

 .. code-tab:: gdscript

    var enemies = [] # 用敵人填充的陣列。

    func process_enemy_ai(enemy_index):
        var processed_enemy = enemies[enemy_index]
        # 開銷很大的邏輯……

    func _process(delta):
        var task_id = WorkerThreadPool.add_group_task(process_enemy_ai, enemies.size())
        # 其他程式碼……
        WorkerThreadPool.wait_for_group_task_completion(task_id)
        # 要求敵人 AI 已經處理完畢的其他程式碼。

 .. code-tab:: csharp

    private List<Node> _enemies = new List<Node>(); // 用敵人填充的陣列。

    private void ProcessEnemyAI(int enemyIndex)
    {
        Node processedEnemy = _enemies[enemyIndex];
        // 開銷很大的邏輯……
    }

    public override void _Process(double delta)
    {
        long taskId = WorkerThreadPool.AddGroupTask(Callable.From<int>(ProcessEnemyAI), _enemies.Count);
        // 其他程式碼……
        WorkerThreadPool.WaitForGroupTaskCompletion(taskId);
        // 要求敵人 AI 已經處理完畢的其他程式碼。
    }



以上程式碼要求 ``enemies`` 陣列中的元素個數在多執行緒部分執行時保持不變。

\ **注意：**\ 如果分佈到多個執行緒執行的工作在計算方面的開銷並不大，那麼使用這個單例可能對性能有負面影響。

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

方法說明
--------

.. _class_WorkerThreadPool_method_add_group_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_group_task**\ (\ action\: :ref:`Callable<class_Callable>`, elements\: :ref:`int<class_int>`, tasks_needed\: :ref:`int<class_int>` = -1, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_group_task>`

Adds ``action`` as a group task to be executed by the worker threads. The :ref:`Callable<class_Callable>` will be called a number of times based on ``elements``, with the first thread calling it with the value ``0`` as a parameter, and each consecutive execution incrementing this value by 1 until it reaches ``element - 1``.

The number of threads the task is distributed to is defined by ``tasks_needed``, where the default value ``-1`` means it is distributed to all worker threads. ``high_priority`` determines if the task has a high priority or a low priority (default). You can optionally provide a ``description`` to help with debugging.

Returns a group task ID that can be used by other methods.

\ **Warning:** Every task must be waited for completion using :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` or :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` at some point so that any allocated resources inside the task can be cleaned up.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_add_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_task**\ (\ action\: :ref:`Callable<class_Callable>`, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_task>`

Adds ``action`` as a task to be executed by a worker thread. ``high_priority`` determines if the task has a high priority or a low priority (default). You can optionally provide a ``description`` to help with debugging.

Returns a task ID that can be used by other methods.

\ **Warning:** Every task must be waited for completion using :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` or :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` at some point so that any allocated resources inside the task can be cleaned up.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_group_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_group_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_group_id>`

Returns the task group ID of the current thread calling this method, or ``-1`` if invalid or the current thread is not part of a task group.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_task_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_task_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_task_id>`

Returns the task ID of the current thread calling this method, or ``-1`` if the task is a group task, invalid or the current thread is not part of the thread pool (e.g. the main thread).

Can be used by a task to get its own task ID, or to determine whether the current code is running inside the worker thread pool.

\ **Note:** Group tasks have their own IDs, so this method will return ``-1`` for group tasks.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_group_processed_element_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_processed_element_count**\ (\ group_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_group_processed_element_count>`

返回具有給定 ID 的群組工作的 :ref:`Callable<class_Callable>` 已經被工作執行緒執行的次數。

\ **注意：**\ 執行緒已經開始執行 :ref:`Callable<class_Callable>` 但尚未完成的情況不計算在內。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_group_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_group_task_completed**\ (\ group_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_group_task_completed>`

Returns ``true`` if the group task with the given ID is completed.

\ **Note:** You should only call this method between adding the group task and awaiting its completion.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_task_completed**\ (\ task_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_task_completed>`

Returns ``true`` if the task with the given ID is completed.

\ **Note:** You should only call this method between adding the task and awaiting its completion.

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_wait_for_group_task_completion:

.. rst-class:: classref-method

|void| **wait_for_group_task_completion**\ (\ group_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WorkerThreadPool_method_wait_for_group_task_completion>`

在具有給定 ID 的群組工作完成前暫停呼叫這個方法的執行緒。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_wait_for_task_completion:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **wait_for_task_completion**\ (\ task_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WorkerThreadPool_method_wait_for_task_completion>`

Pauses the thread that calls this method until the task with the given ID is completed.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` if the task could be successfully awaited.

Returns :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if a task with the passed ID does not exist (maybe because it was already awaited and disposed of).

Returns :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>` if the call is made from another running task and, due to task scheduling, there's potential for deadlocking (e.g., the task to await may be at a lower level in the call stack and therefore can't progress). This is an advanced situation that should only matter when some tasks depend on others (in the current implementation, the tricky case is a task trying to wait on an older one).

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
