:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**繼承：** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在 :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` 中以加法方式混合三段動畫中的兩段。

.. rst-class:: classref-introduction-group

說明
----

A resource to add to an :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Blends two animations out of three additively out of three based on the amount value.

This animation node has three inputs:

- The base animation to add to

- A "-add" animation to blend with when the blend amount is negative

- A "+add" animation to blend with when the blend amount is positive

If the absolute value of the amount is greater than ``1.0``, the animation connected to "in" port is blended with the amplified animation connected to "-add"/"+add" port.

\ **Note:** The signs are only used to distinguish ports, and additive blending occurs based on absolute values always, meaning the animation of a "-add" port does not subtract from the animation of an "in" port.

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
