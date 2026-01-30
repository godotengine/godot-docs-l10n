:github_url: hide

.. _class_AnimationNodeAdd2:

AnimationNodeAdd2
=================

**繼承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中以加法方式混合兩段動畫。

.. rst-class:: classref-introduction-group

說明
----

可加入 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 的資源。依取值將兩段動畫以加法混合。

若取值大於 ``1.0``\ ，會將「in」端動畫與經放大後連至「add」端的動畫混合。

若取值小於 ``0.0``\ ，則與經反轉後連至「add」端的動畫混合。

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
