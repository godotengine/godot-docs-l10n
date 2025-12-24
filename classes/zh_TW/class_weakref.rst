:github_url: hide

.. _class_WeakRef:

WeakRef
=======

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放 :ref:`Object<class_Object>`\ 。如果該物件為 :ref:`RefCounted<class_RefCounted>`\ ，則不會影響其引用計數。

.. rst-class:: classref-introduction-group

說明
----

弱引用可以存放 :ref:`RefCounted<class_RefCounted>`\ ，但不會影響其引用計數。可以使用 :ref:`@GlobalScope.weakref()<class_@GlobalScope_method_weakref>` 建立 :ref:`Object<class_Object>` 的弱引用。如果該對象不是引用，弱引用仍然有效，只是對這個物件沒有任何影響。弱引用在多個類的變數相互引用的情況下很有用。如果沒有弱引用，使用這些類可能會導致記憶體洩漏，因為這兩個引用會阻止彼此被釋放。將部分變數設定為弱引用可以防止這種迴圈依賴，讓引用能夠被釋放。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_ref<class_WeakRef_method_get_ref>`\ (\ ) |const| |
   +-------------------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_WeakRef_method_get_ref:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_ref**\ (\ ) |const| :ref:`🔗<class_WeakRef_method_get_ref>`

返回這個弱引用所引用的 :ref:`Object<class_Object>`\ 。如果該物件不復存在，則返回 ``null``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
