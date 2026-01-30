:github_url: hide

.. _class_SkeletonModification2DStackHolder:

SkeletonModification2DStackHolder
=================================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放並執行 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 的修改器。

.. rst-class:: classref-introduction-group

說明
----

這種 :ref:`SkeletonModification2D<class_SkeletonModification2D>` 可以存放對 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 的引用，讓你能夠對單個 :ref:`Skeleton2D<class_Skeleton2D>` 使用多個修改器堆疊。

\ **注意：**\ :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` 中所存放的修改器只有在各自的執行模式與 SkeletonModification2DStackHolder 的執行模式配對時才會執行。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_held_modification_stack<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`\ (\ ) |const|                                                                                          |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_held_modification_stack<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SkeletonModification2DStackHolder_method_get_held_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_held_modification_stack**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`

返回該修改器中存放的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DStackHolder_method_set_held_modification_stack:

.. rst-class:: classref-method

|void| **set_held_modification_stack**\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`

設定該修改器中存放的 :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ 。這個修改器堆疊會在該修改器執行時執行。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
