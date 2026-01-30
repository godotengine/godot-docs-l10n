:github_url: hide

.. _class_SceneTreeTimer:

SceneTreeTimer
==============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一次性計時器。

.. rst-class:: classref-introduction-group

說明
----

由場景樹管理的一次性計時器，會在完成時發出 :ref:`timeout<class_SceneTreeTimer_signal_timeout>`\ 。另見 :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`\ 。

與 :ref:`Timer<class_Timer>` 不同，它不需要產生實體節點。常用於建立一次性的延遲計時器，如下面的例子所示：


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("計時開始。")
        await get_tree().create_timer(1.0).timeout
        print("計時結束。")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("計時開始。");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("計時結束。");
    }



達到時間後，會釋放對該計時器的引用。如果要保留該計時器，你可以保持對它的引用。見 :ref:`RefCounted<class_RefCounted>`\ 。

\ **注意：**\ 對計時器的處理發生在目前影格的所有節點節後，即節點的 :ref:`Node._process()<class_Node_private_method__process>` 方法是在計時器之前呼叫的（如果 :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>` 的 ``process_in_physics`` 為 ``true``\ 則為 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ ）。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`time_left<class_SceneTreeTimer_property_time_left>` |
   +---------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_SceneTreeTimer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_SceneTreeTimer_signal_timeout>`

當計時器到 0 時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SceneTreeTimer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_SceneTreeTimer_property_time_left>`

.. rst-class:: classref-property-setget

- |void| **set_time_left**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_left**\ (\ )

剩餘時間（單位為秒）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
