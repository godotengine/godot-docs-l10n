:github_url: hide

.. _class_Path2D:

Path2D
======

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

包含一個 :ref:`Curve2D<class_Curve2D>` 路徑，供 :ref:`PathFollow2D<class_PathFollow2D>` 節點遵循。

.. rst-class:: classref-introduction-group

說明
----

可以讓 :ref:`PathFollow2D<class_PathFollow2D>` 子節點沿著 :ref:`Curve2D<class_Curve2D>` 移動。有關用法的更多資訊，請參閱 :ref:`PathFollow2D<class_PathFollow2D>`\ 。

\ **注意：**\ 該路徑被認為是相對於移動的節點（\ :ref:`PathFollow2D<class_PathFollow2D>` 的子節點）。因此，曲線通常以零向量（\ ``(0,0)``\ ）開始。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+
   | :ref:`Curve2D<class_Curve2D>` | :ref:`curve<class_Path2D_property_curve>` |
   +-------------------------------+-------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Path2D_property_curve:

.. rst-class:: classref-property

:ref:`Curve2D<class_Curve2D>` **curve** :ref:`🔗<class_Path2D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve2D<class_Curve2D>`\ )
- :ref:`Curve2D<class_Curve2D>` **get_curve**\ (\ )

描述路徑的 :ref:`Curve2D<class_Curve2D>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
