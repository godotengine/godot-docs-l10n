:github_url: hide

.. _class_MethodTweener:

MethodTweener
=============

**繼承：** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

對抽象值進行插值，並將其提供給一個持續呼叫的方法。

.. rst-class:: classref-introduction-group

說明
----

**MethodTweener** 類似於 :ref:`CallbackTweener<class_CallbackTweener>` 和 :ref:`PropertyTweener<class_PropertyTweener>` 的組合，會將插值後的值作為呼叫方法時的參數。更多用法資訊請參閱 :ref:`Tween.tween_method()<class_Tween_method_tween_method>`\ 。

\ **注意：**\ 建立 **MethodTweener** 的唯一正確方法是 :ref:`Tween.tween_method()<class_Tween_method_tween_method>`\ 。任何手動建立的 **MethodTweener** 都無法正常工作。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_delay<class_MethodTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ )                        |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_ease<class_MethodTweener_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_trans<class_MethodTweener_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_MethodTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MethodTweener_method_set_delay>`

設定該 **MethodTweener** 開始插值的時間，單位為秒。預設無延遲。

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_MethodTweener_method_set_ease>`

設定所使用的緩動型別 :ref:`EaseType<enum_Tween_EaseType>`\ 。如果沒有設定，則使用包含這個 Tweener 的 :ref:`Tween<class_Tween>` 的預設緩動型別。

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_MethodTweener_method_set_trans>`

設定所使用的過渡型別 :ref:`TransitionType<enum_Tween_TransitionType>`\ 。如果沒有設定，則使用包含這個 Tweener 的 :ref:`Tween<class_Tween>` 的預設過渡型別。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
