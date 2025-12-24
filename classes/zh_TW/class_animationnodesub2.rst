:github_url: hide

.. _class_AnimationNodeSub2:

AnimationNodeSub2
=================

**繼承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中以減法方式混合兩段動畫。

.. rst-class:: classref-introduction-group

說明
----

新增至 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的資源。依據指定數值，以減法方式混合兩段動畫。

此節點通常用於預先計算，抵銷 :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` 或 :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>` 中「新增」動畫來源所帶來的額外姿勢。

一般情況下，混合值應位於 ``[0.0, 1.0]`` 區間；若超出此範圍，則可用於放大或反轉動畫。

\ **注意：** 由於變換矩陣不符合交換律，這與在 :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` 使用負值的效果不同。\ **AnimationNodeSub2** 會從左側乘上反向動畫的變換矩陣，而負值的 :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` 則從右側相乘。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`動畫樹 <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
