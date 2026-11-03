:github_url: hide

.. _class_CapsuleShape2D:

CapsuleShape2D
==============

**繼承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 2D 膠囊形狀。

.. rst-class:: classref-introduction-group

說明
----

2D 膠囊形狀，旨在用於物理學。通常用於為 :ref:`CollisionShape2D<class_CollisionShape2D>` 提供形狀。

\ **效能：**\ **CapsuleShape2D** 可以快速檢查碰撞，但比 :ref:`RectangleShape2D<class_RectangleShape2D>` 和 :ref:`CircleShape2D<class_CircleShape2D>` 慢。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleShape2D_property_height>`         | ``30.0`` |
   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_CapsuleShape2D_property_mid_height>` |          |
   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleShape2D_property_radius>`         | ``10.0`` |
   +---------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CapsuleShape2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``30.0`` :ref:`🔗<class_CapsuleShape2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

膠囊的總高度，包括半圓。

\ **注意：**\ 膠囊的 :ref:`height<class_CapsuleShape2D_property_height>` 必須至少為其 :ref:`radius<class_CapsuleShape2D_property_radius>` 的兩倍。否則，膠囊將變為圓形。如果 :ref:`height<class_CapsuleShape2D_property_height>` 小於 :ref:`radius<class_CapsuleShape2D_property_radius>` 的兩倍，則屬性將調整為有效值。

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape2D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_CapsuleShape2D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

膠囊的高度，不包括兩個半圓。這是膠囊中間矩形部分的高度，即兩個半圓圓心之間的距離。這是對 :ref:`height<class_CapsuleShape2D_property_height>` 的封裝。

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_CapsuleShape2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

膠囊的半徑。

\ **注意：**\ 膠囊的 :ref:`radius<class_CapsuleShape2D_property_radius>` 不能大於其 :ref:`height<class_CapsuleShape2D_property_height>` 的一半。否則，膠囊將變成圓形。如果 :ref:`radius<class_CapsuleShape2D_property_radius>` 大於 :ref:`height<class_CapsuleShape2D_property_height>` 的一半，則屬性將調整為有效值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
