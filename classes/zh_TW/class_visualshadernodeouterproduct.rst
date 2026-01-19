:github_url: hide

.. _class_VisualShaderNodeOuterProduct:

VisualShaderNodeOuterProduct
============================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

計算視覺化著色器圖中兩個向量的外積。

.. rst-class:: classref-introduction-group

說明
----

``OuterProduct`` 將第一個參數 ``c`` 作為列向量（有一列的矩陣），將第二個參數 ``r`` 作為行向量（有一行的矩陣），進行線性代數矩陣乘法 ``c * r``\ 。產生一個矩陣，其行數是 ``c`` 的分量數，其列數是 ``r`` 的分量數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
