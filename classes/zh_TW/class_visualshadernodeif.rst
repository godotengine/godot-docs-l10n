:github_url: hide

.. _class_VisualShaderNodeIf:

VisualShaderNodeIf
==================

**繼承：** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

根據視覺化著色器圖中浮點比較的結果輸出 3D 向量。

.. rst-class:: classref-introduction-group

說明
----

這個視覺化著色器節點有六個輸入連接埠：

- 連接埠 **1** 和連接埠 **2** 提供的是需要比較的兩個浮點數 ``a`` 和 ``b``\ 。

- 連接埠 **3** 是公差，能夠將相似的浮點數認定為相等。

- 連接埠 **4**\ 、\ **5**\ 、\ **6** 是可能的輸出，分別是 ``a == b``\ 、\ ``a > b``\ 、\ ``a < b`` 時的回傳值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
