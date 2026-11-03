:github_url: hide

.. _class_Semaphore:

Semaphore
=========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

同步機制，用於控制對 :ref:`Thread<class_Thread>` 之間共用資源的存取。

.. rst-class:: classref-introduction-group

說明
----

同步機制，用於控制對 :ref:`Thread<class_Thread>` 之間共用資源的存取。建立時初始化為零。二元版本見 :ref:`Mutex<class_Mutex>`\ 。

\ **警告：**\ 訊號量必須謹慎使用，防止鎖死。

\ **警告：**\ 為了確保作業系統能夠執行正確的清理（避免當機和思索），必須滿足以下條件：

- **Semaphore** 的引用計數變為零，導致銷毀時，沒有執行緒在等待該訊號量。

- :ref:`Thread<class_Thread>` 的引用計數變為零，導致銷毀時，沒有在等待任何訊號量。

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

方法說明
--------

.. _class_Semaphore_method_post:

.. rst-class:: classref-method

|void| **post**\ (\ count\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_Semaphore_method_post>`

降低 **Semaphore**\ ，額外允許一個執行緒進入，如果指定了 ``count`` 則可以是更多執行緒。

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_try_wait:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **try_wait**\ (\ ) :ref:`🔗<class_Semaphore_method_try_wait>`

與 :ref:`wait()<class_Semaphore_method_wait>` 類似，但不會阻塞，所以如果值為零，則會立即失敗並返回 ``false``\ 。如果非零，則返回 ``true`` 以報告成功。

.. rst-class:: classref-item-separator

----

.. _class_Semaphore_method_wait:

.. rst-class:: classref-method

|void| **wait**\ (\ ) :ref:`🔗<class_Semaphore_method_wait>`

等待該 **Semaphore**\ ，如果它的值為零，則阻塞到變為非零為止。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
