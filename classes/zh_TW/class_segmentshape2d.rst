:github_url: hide

.. _class_SegmentShape2D:

SegmentShape2D
==============

**繼承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

2D 線段形狀，旨在用於物理學。

.. rst-class:: classref-introduction-group

說明
----

2D 線段形狀，旨在用於物理學。通常用於為 :ref:`CollisionShape2D<class_CollisionShape2D>` 提供形狀。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`a<class_SegmentShape2D_property_a>` | ``Vector2(0, 0)``  |
   +-------------------------------+-------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`b<class_SegmentShape2D_property_b>` | ``Vector2(0, 10)`` |
   +-------------------------------+-------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SegmentShape2D_property_a:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **a** = ``Vector2(0, 0)`` :ref:`🔗<class_SegmentShape2D_property_a>`

.. rst-class:: classref-property-setget

- |void| **set_a**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_a**\ (\ )

該段的第一點的位置。

.. rst-class:: classref-item-separator

----

.. _class_SegmentShape2D_property_b:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **b** = ``Vector2(0, 10)`` :ref:`🔗<class_SegmentShape2D_property_b>`

.. rst-class:: classref-property-setget

- |void| **set_b**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_b**\ (\ )

該段的第二個點的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
