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

\ **注意：**\ 如果分佈到多個執行緒執行的工作在計算方面的開銷並不大，那麼使用這個單例可能對效能有負面影響。

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

將 ``action`` 新增為分組任務，讓多個工作執行緒執行。該 :ref:`Callable<class_Callable>` 的呼叫次數由 ``elements`` 決定，第一個呼叫的執行緒使用 ``0`` 作為參數，後續執行時會將其加 1，直到變為 ``element - 1``\ 。

任務分布的執行緒數由 ``tasks_needed`` 定義，預設值 ``-1`` 表示分布到所有工作執行緒。\ ``high_priority`` 決定的是任務具有高優先級還是低優先級（預設）。你還可以選擇提供 ``description`` 作為描述資訊，方便除錯。

回傳分組任務 ID，可用於其他方法。

\ **警告：**\ 每個任務都必須在某處使用 :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` 或 :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` 等待完成，從而清理任務中分配的資源。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_add_task:

.. rst-class:: classref-method

:ref:`int<class_int>` **add_task**\ (\ action\: :ref:`Callable<class_Callable>`, high_priority\: :ref:`bool<class_bool>` = false, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WorkerThreadPool_method_add_task>`

將 ``action`` 新增為分組任務，讓單個工作執行緒執行。\ ``high_priority`` 決定的是任務具有高優先級還是低優先級（預設）。你還可以選擇提供 ``description`` 作為描述資訊，方便除錯。

回傳任務 ID，可用於其他方法。

\ **警告：**\ 每個任務都必須在某處使用 :ref:`wait_for_task_completion()<class_WorkerThreadPool_method_wait_for_task_completion>` 或 :ref:`wait_for_group_task_completion()<class_WorkerThreadPool_method_wait_for_group_task_completion>` 等待完成，從而清理任務中分配的資源。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_group_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_group_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_group_id>`

回傳呼叫該方法的目前執行緒的任務組 ID，如果無效或目前執行緒不屬於任何任務組，則回傳 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_get_caller_task_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_caller_task_id**\ (\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_get_caller_task_id>`

回傳呼叫該方法的目前執行緒的任務 ID，如果任務是組任務、無效或目前執行緒不屬於執行緒池（例如為主執行緒），則回傳 ``-1``\ 。

任務可以用該方法取得其自身的任務 ID 或確定目前程式碼是否在工作執行緒池中執行。

\ **注意：**\ 分組任務有其自己的 ID，因此該方法對於分組任務將回傳 ``-1``\ 。

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

如果 ID 對應的分組任務已完成，則回傳 ``true``\ 。

\ **注意：**\ 只應該在新增分組任務之後、等待完成之前呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_WorkerThreadPool_method_is_task_completed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_task_completed**\ (\ task_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WorkerThreadPool_method_is_task_completed>`

如果 ID 對應的任務已完成，則回傳 ``true``\ 。

\ **注意：**\ 只應該在新增分組任務之後、等待完成之前呼叫該方法。

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

暫停呼叫該方法的執行緒，直到給定 ID 對應的任務完成。

如果能夠成功等待任務，則回傳 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ 。

如果不存在與傳入 ID 對應的任務（可能已被等待或處理），則回傳 :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`\ 。

如果其他正在執行的任務呼叫了該方法，並且由於任務調度的原因，存在死鎖的可能性（例如，要等待的任務可能位於呼叫堆疊中的較低層級，因此不能繼續），則回傳 :ref:`@GlobalScope.ERR_BUSY<class_@GlobalScope_constant_ERR_BUSY>`\ 。這是比較進階的情況，只有任務之間存在相依性關係（在目前實作中，棘手的情況是嘗試等待較舊任務的任務）時才會出現。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
