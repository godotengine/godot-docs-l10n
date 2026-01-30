:github_url: hide

.. _class_SubtweenTweener:

SubtweenTweener
===============

**繼承：** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Runs a :ref:`Tween<class_Tween>` nested within another :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

說明
----

**SubtweenTweener** is used to execute a :ref:`Tween<class_Tween>` as one step in a sequence defined by another :ref:`Tween<class_Tween>`. See :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` for more usage information.

\ **Note:** :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` is the only correct way to create **SubtweenTweener**. Any **SubtweenTweener** created manually will not function correctly.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`set_delay<class_SubtweenTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SubtweenTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SubtweenTweener_method_set_delay>`

Sets the time in seconds after which the **SubtweenTweener** will start running the subtween. By default there's no delay.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
