:github_url: hide

.. _class_Thread:

Thread
======

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

程序中的執行單元。

.. rst-class:: classref-introduction-group

說明
----

A unit of execution in a process. Can run methods on :ref:`Object<class_Object>`\ s simultaneously. The use of synchronization via :ref:`Mutex<class_Mutex>` or :ref:`Semaphore<class_Semaphore>` is advised if working with shared objects.

\ **Warning:** To ensure proper cleanup without crashes or deadlocks, when a **Thread**'s reference count reaches zero and it is therefore destroyed, the following conditions must be met:

- It must not have any :ref:`Mutex<class_Mutex>` objects locked.

- It must not be waiting on any :ref:`Semaphore<class_Semaphore>` objects.

- :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` should have been called on it.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用多執行緒 <../tutorials/performance/using_multiple_threads>`

- :doc:`執行緒安全的 API <../tutorials/performance/thread_safe_apis>`

- `3D 體素示範 <https://godotengine.org/asset-library/asset/2755>`__

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

列舉
----

.. _enum_Thread_Priority:

.. rst-class:: classref-enumeration

enum **Priority**: :ref:`🔗<enum_Thread_Priority>`

.. _class_Thread_constant_PRIORITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_LOW** = ``0``

執行緒以比正常情況下更低的優先順序運作。

.. _class_Thread_constant_PRIORITY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_NORMAL** = ``1``

具有標準優先順序的執行緒。

.. _class_Thread_constant_PRIORITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`Priority<enum_Thread_Priority>` **PRIORITY_HIGH** = ``2``

以比正常情況更高的優先順序運作的執行緒。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Thread_method_get_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id**\ (\ ) |const| :ref:`🔗<class_Thread_method_get_id>`

返回目前 **Thread** 的 ID，能夠在所有執行緒中唯一標識該執行緒。如果該 **Thread** 尚未運作，或者已經呼叫過 :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>`\ ，則返回空字串。

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_is_alive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_alive**\ (\ ) |const| :ref:`🔗<class_Thread_method_is_alive>`

如果這個 **Thread** 目前正在運作，則返回 ``true``\ 。可用於確定呼叫 :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` 是否可以不阻塞呼叫的執行緒。

要檢查 **Thread** 是否可被併入，請使用 :ref:`is_started()<class_Thread_method_is_started>`\ 。

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

如果此 **Thread** 已啟動，則返回 ``true``\ 。一旦開始，這將返回 ``true`` ，直到它使用 :ref:`wait_to_finish()<class_Thread_method_wait_to_finish>` 加入。要檢查 **Thread** 是否仍在執行其工作，請使用 :ref:`is_alive()<class_Thread_method_is_alive>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_set_thread_safety_checks_enabled:

.. rst-class:: classref-method

|void| **set_thread_safety_checks_enabled**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Thread_method_set_thread_safety_checks_enabled>`

設定是否應該\ **在目前執行緒**\ 執行執行緒安全檢查，這些檢查在一般是在某些類（例如 :ref:`Node<class_Node>`\ ）的方法中進行的。

每個執行緒的預設值是啟用（就像將 ``true`` 傳給 ``enabled`` 呼叫一樣）。

這些檢查是保守的。也就是說，只有在引擎能夠確保安全時才會認為該呼叫是執行緒安全的，檢查通過（因此允許進行呼叫）。

因此，某些情況下用於可能會想要將其禁用（讓 ``enabled`` 為 ``false``\ ），允許某些操作。此時引擎不再保護這些物件的執行緒安全，（通過使用 :ref:`Mutex<class_Mutex>` 等方法來）確保執行緒安全就是使用者自己的責任了。

\ **注意：**\ 這是引擎的高階用法。建議只有在你知道自己在做什麼，並且沒有其他更安全的方法時才使用這個方法。

\ **注意：**\ 可用於任意 **Thread** 物件中執行的腳本，或者提交至 :ref:`WorkerThreadPool<class_WorkerThreadPool>` 的工作。\ :ref:`Node<class_Node>` 群組處理時執行的程式碼不適用，這種情況下會始終執行檢查。

\ **注意：**\ 即使是在 :ref:`WorkerThreadPool<class_WorkerThreadPool>` 工作中禁用了檢查，也不需要在結束後將其重新啟用。引擎會幫你去啟用。

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start**\ (\ callable\: :ref:`Callable<class_Callable>`, priority\: :ref:`Priority<enum_Thread_Priority>` = 1\ ) :ref:`🔗<class_Thread_method_start>`

啟動一個呼叫 ``callable`` 的新 **Thread**\ 。

如果該方法需要一些參數，可以使用 :ref:`Callable.bind()<class_Callable_method_bind>` 傳遞它們。

\ **Thread** 的 ``priority`` 可以通過傳遞 :ref:`Priority<enum_Thread_Priority>` 列舉中的值來更改。

成功時返回 :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>`\ ，失敗時返回 :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Thread_method_wait_to_finish:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **wait_to_finish**\ (\ ) :ref:`🔗<class_Thread_method_wait_to_finish>`

合併該 **Thread** 並等待其完成。返回傳入 :ref:`start()<class_Thread_method_start>` 的 :ref:`Callable<class_Callable>` 的輸出。

應該在你想要獲取該 **Thread** 所呼叫的方法的返回值時使用，或者在釋放包含該 **Thread** 的實例前使用。

要確定呼叫時是否不會阻塞呼叫執行緒，請檢查 :ref:`is_alive()<class_Thread_method_is_alive>` 是否為 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
