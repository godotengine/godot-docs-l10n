:github_url: hide

.. _class_Timer:

Timer
=====

**繼承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

倒數計時器。

.. rst-class:: classref-introduction-group

說明
----

**Timer** 即計時器節點，是一種倒計時器，也是引擎中最簡單的處理基於時間的邏輯的方法。計時器在等待 :ref:`wait_time<class_Timer_property_wait_time>` 結束後就會發出 :ref:`timeout<class_Timer_signal_timeout>` 訊號。

計時器進入場景樹時，可以使用 :ref:`start()<class_Timer_method_start>` 手動啟動。如果 :ref:`autostart<class_Timer_property_autostart>` 為 ``true``\ ，計時器節點也會自動啟動。

可以在編輯器中新增並設定計時器節點，無需編寫特別多的程式碼。計時器發出的 :ref:`timeout<class_Timer_signal_timeout>` 訊號可以在編輯器的“訊號”面板中連接：

::

    func _on_timer_timeout():
        print("是時候表演真正的技術了！")

\ **注意：**\ 如果只想建立一次性的計時器，不想實例化節點，請使用 :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`\ 。

\ **注意：**\ 除非 :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` 為 ``true``\ ，否則計時器會受到 :ref:`Engine.time_scale<class_Engine_property_time_scale>` 的影響。時間縮放值越大，計時器結束得越早。計時器的處理頻率取決於影格率或 :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`autostart<class_Timer_property_autostart>`                 | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`one_shot<class_Timer_property_one_shot>`                   | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`paused<class_Timer_property_paused>`                       |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` | :ref:`process_callback<class_Timer_property_process_callback>`   | ``1``     |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`time_left<class_Timer_property_time_left>`                 |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`wait_time<class_Timer_property_wait_time>`                 | ``1.0``   |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stopped<class_Timer_method_is_stopped>`\ (\ ) |const|                          |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`start<class_Timer_method_start>`\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop<class_Timer_method_stop>`\ (\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Timer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_Timer_signal_timeout>`

當計時器計時完成時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Timer_TimerProcessCallback:

.. rst-class:: classref-enumeration

enum **TimerProcessCallback**: :ref:`🔗<enum_Timer_TimerProcessCallback>`

.. _class_Timer_constant_TIMER_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_PHYSICS** = ``0``

在物理處理影格中更新計時器（見 :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`\ ）。

.. _class_Timer_constant_TIMER_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_IDLE** = ``1``

在處理（渲染）影格中更新計時器（見 :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Timer_property_autostart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autostart** = ``false`` :ref:`🔗<class_Timer_property_autostart>`

.. rst-class:: classref-property-setget

- |void| **set_autostart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autostart**\ (\ )

若爲 ``true``\ ，計時器會在進入場景樹時自動啟動。

\ **注意：** 計時器進入場景樹後，此屬性會自動設定爲 ``false``\ 。

\ **注意：** 計時器在編輯器中執行時，此屬性沒有任何效果。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_ignore_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_time_scale** = ``false`` :ref:`🔗<class_Timer_property_ignore_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_time_scale**\ (\ )

如果為 ``true``\ ，則計時器會忽略 :ref:`Engine.time_scale<class_Engine_property_time_scale>`\ ，使用真實經過的時間進行更新。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_Timer_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_shot**\ (\ )

如果為 ``true``\ ，則計時器將在完成時停止。否則預設情況下會自動重新啟動。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** :ref:`🔗<class_Timer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

如果為 ``true``\ ，則計時器處於暫停狀態。即便呼叫了 :ref:`start()<class_Timer_method_start>`\ ，處於暫停狀態的計時器也不會進行處理，必須將這個屬性設回 ``false`` 才會繼續。另見 :ref:`stop()<class_Timer_method_stop>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_process_callback:

.. rst-class:: classref-property

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Timer_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_timer_process_callback**\ (\ value\: :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>`\ )
- :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **get_timer_process_callback**\ (\ )

指定計時器在主循環的哪個時間點進行更新。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_Timer_property_time_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_time_left**\ (\ )

計時器的剩餘時間，單位為秒。如果計時器處於停止狀態，則始終為 ``0``\ 。

\ **注意：**\ 這個屬性是只讀的，無法進行修改。基於的是 :ref:`wait_time<class_Timer_property_wait_time>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_wait_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **wait_time** = ``1.0`` :ref:`🔗<class_Timer_property_wait_time>`

.. rst-class:: classref-property-setget

- |void| **set_wait_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wait_time**\ (\ )

計時器完成計時所需的時間，單位為秒。這個屬性也可以在每次呼叫 :ref:`start()<class_Timer_method_start>` 時設定。

\ **注意：**\ 計時器的處理只能在物理影格或處理影格進行一次（取決於 :ref:`process_callback<class_Timer_property_process_callback>`\ ）。如果影格率不穩定，則計時完成所需的時間也可能不一致，等待時間小於 ``0.05`` 秒左右的情況下尤為明顯。如果計時器非常短，建議自己編寫程式碼，不要使用 **Timer** 節點。計時器還會受到 :ref:`Engine.time_scale<class_Engine_property_time_scale>` 的影響。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Timer_method_is_stopped:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stopped**\ (\ ) |const| :ref:`🔗<class_Timer_method_is_stopped>`

如果定時器處於停止狀態或尚未啟動，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) :ref:`🔗<class_Timer_method_start>`

如果計時器尚未啟動，則啟動或重設計時器。如果計時器不在場景樹中則會失敗。如果 ``time_sec`` 大於 ``0``\ ，則會將其用於 :ref:`wait_time<class_Timer_property_wait_time>`\ 。

\ **注意：**\ 這個方法不會恢復已暫停的定時器。見 :ref:`paused<class_Timer_property_paused>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Timer_method_stop>`

停止計時器。另見 :ref:`paused<class_Timer_property_paused>`\ 。與 :ref:`start()<class_Timer_method_start>` 不同，計時器不在場景樹中時可以安全地呼叫該方法。

\ **注意：**\ 呼叫 :ref:`stop()<class_Timer_method_stop>` 不會發出 :ref:`timeout<class_Timer_signal_timeout>` 訊號，因為計時器並未超時。如果需要訊號，請在呼叫 :ref:`stop()<class_Timer_method_stop>` 後使用 ``$Timer.timeout.emit()`` 手動發出。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
