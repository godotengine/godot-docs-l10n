:github_url: hide

.. _class_AnimationRootNode:

AnimationRootNode
=================

**繼承：** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`AnimationNodeAnimation<class_AnimationNodeAnimation>`, :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`

作為包含一段或多段複合動畫之 :ref:`AnimationNode<class_AnimationNode>` 的基底類別。通常用於 :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>`\ 。

.. rst-class:: classref-introduction-group

說明
----

**AnimationRootNode** 是保存完整動畫之 :ref:`AnimationNode<class_AnimationNode>` 的基底類別。完整動畫指 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中 :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` 的輸出，或其他 **AnimationRootNode** 的輸出。可用於 :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` 或其他 **AnimationRootNode**\ 。

內建根節點範例包括：

• :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`\ ：可透過多種模式混合節點。

• :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`\ ：以狀態機樣式設定節點間的混合與過渡。

• :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`\ ：在 **三個** :ref:`AnimationNode<class_AnimationNode>` 之間進行線性混合。

• :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`\ ：在 **兩個** :ref:`AnimationNode<class_AnimationNode>` 之間進行線性混合。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
