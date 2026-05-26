:github_url: hide

.. _class_Tweener:

Tweener
=======

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AwaitTweener<class_AwaitTweener>`, :ref:`CallbackTweener<class_CallbackTweener>`, :ref:`IntervalTweener<class_IntervalTweener>`, :ref:`MethodTweener<class_MethodTweener>`, :ref:`PropertyTweener<class_PropertyTweener>`, :ref:`SubtweenTweener<class_SubtweenTweener>`

:ref:`Tween<class_Tween>` 使用的所有 Tweener（補間器）的抽象類別。

.. rst-class:: classref-introduction-group

說明
----

Tweener 是執行特定動畫化的工作的物件，例如，在給定的時間，插值一個屬性或呼叫一個方法。\ **Tweener** 不能被手動建立，你需要使用 :ref:`Tween<class_Tween>` 中的專用方法。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Tweener_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tweener_signal_finished>`

Emitted when the **Tweener** has just finished its job or became invalid (e.g. due to a freed object).

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
