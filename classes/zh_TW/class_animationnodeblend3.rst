:github_url: hide

.. _class_AnimationNodeBlend3:

AnimationNodeBlend3
===================

**繼承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中以線性方式混合三段動畫中的兩段。

.. rst-class:: classref-introduction-group

說明
----

可加入 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的資源。依取值在線性方式下從三段動畫中挑選兩段進行混合。

本節點有三個輸入：

- 基底動畫

- 當取值為負時混合的「-blend」動畫

- 當取值為正時混合的「+blend」動畫

一般混合值應位於 ``[-1.0, 1.0]`` 區間；若超出此範圍會得到放大效果，但此時使用 :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>` 更佳。

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
