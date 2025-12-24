:github_url: hide

.. _class_Mutex:

Mutex
=====

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

二元 :ref:`Semaphore<class_Semaphore>`\ ，用於在多 :ref:`Thread<class_Thread>` 間進行同步。

.. rst-class:: classref-introduction-group

說明
----

同步互斥器（mutex 來源於 mutual exclusion，即互斥）。可用於在多 :ref:`Thread<class_Thread>` 間進行同步，等價於二元 :ref:`Semaphore<class_Semaphore>`\ 。能夠確保同時只有一個執行緒能夠存取臨界區。

這是一種可重入的互斥器，也就是說同一個執行緒能夠將其多次上鎖，只要也進行相同次數的解鎖即可。

\ **警告：**\ 互斥器必須謹慎使用才能避免鎖死。

\ **警告：**\ 為了能夠正確清理，避免當機和鎖死，必須滿足以下條件：

- **Mutex** 的引用計數到達零，將被銷毀時，必須沒有執行緒將其鎖定（包括發生解構的執行緒）。

- :ref:`Thread<class_Thread>` 的引用計數達到零，將被銷毀時，必須沒有鎖定任何互斥器。

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

解鎖該 **Mutex**\ ，將其留給其他執行緒。

\ **注意：**\ 如果一個執行緒在已經擁有互斥器的情況下多次呼叫 :ref:`lock()<class_Mutex_method_lock>` 或 :ref:`try_lock()<class_Mutex_method_try_lock>`\ ，則也必須呼叫相同次數的 :ref:`unlock()<class_Mutex_method_unlock>` 才能正確解鎖。

\ **警告：**\ 在給定的執行緒中呼叫 :ref:`unlock()<class_Mutex_method_unlock>` 的次數超過呼叫 :ref:`lock()<class_Mutex_method_lock>` 的次數，導致嘗試解鎖未加鎖的互斥器，是錯誤的行為，可能引起當機和鎖死。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
