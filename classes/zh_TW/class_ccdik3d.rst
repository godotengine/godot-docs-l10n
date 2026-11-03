:github_url: hide

.. _class_CCDIK3D:

CCDIK3D
=======

**繼承：** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基於旋轉的循環座標下降反向動力學求解器。

.. rst-class:: classref-introduction-group

說明
----

**CCDIK3D** 是一種基於旋轉的反向動力學算法，即使在關節大幅旋轉的情況下也能實現快速有效的追蹤。它特別適用於有限制的鏈，與 :ref:`FABRIK3D<class_FABRIK3D>` 相比，它能提供更平滑、更穩定的目標追蹤。

由此產生的繞前向向量的扭轉將始終與之前的姿態保持一致。

\ **注意：**\ 當目標靠近根部時，可能會導致不自然的運動，包括關節翻轉和振蕩。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
