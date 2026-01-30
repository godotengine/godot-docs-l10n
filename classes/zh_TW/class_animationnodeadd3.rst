:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**繼承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中以加法方式混合三段動畫中的兩段。

.. rst-class:: classref-introduction-group

說明
----

可加入 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的資源。依取值從三段動畫中挑選兩段進行加法混合。

本節點有三個輸入：

- 作為基底的動畫（in）

- 當取值為負時混合的「-add」動畫

- 當取值為正時混合的「+add」動畫

若取值的絕對值大於 ``1.0``\ ，會將「in」端動畫與放大後的「-add」或「+add」端動畫混合。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 AnimationTree <../tutorials/animation/animation_tree>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
