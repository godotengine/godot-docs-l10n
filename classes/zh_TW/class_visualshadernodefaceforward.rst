:github_url: hide

.. _class_VisualShaderNodeFaceForward:

VisualShaderNodeFaceForward
===========================

**繼承：** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

返回與視覺化著色器圖中的參考向量指向相同方向的向量。

.. rst-class:: classref-introduction-group

說明
----

在著色器語言中翻譯為 ``faceforward(N, I, Nref)``\ 。該函式有三個向量參數。\ ``N``\ ，定向向量，\ ``I``\ ，入射向量，以及\ ``Nref``\ ，參考向量。如果 ``I`` 和 ``Nref`` 的點積小於零，返回值為 ``N``\ 。否則，將返回 ``-N``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
