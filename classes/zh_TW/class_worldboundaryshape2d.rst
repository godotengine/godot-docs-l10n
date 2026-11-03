:github_url: hide

.. _class_WorldBoundaryShape2D:

WorldBoundaryShape2D
====================

**繼承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 2D 空間邊界（半平面）形狀。

.. rst-class:: classref-introduction-group

說明
----

2D 世界邊界形狀，應當用於物理用途。\ **WorldBoundaryShape2D** 本質上和無限直線類似，能夠強制所有物理體都保持在它的上方。哪個方向是“上方”由該直線的法線確定，這個方向在編輯器中由直線上方的一條段線表示。用例是無限的平坦地面。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`     | :ref:`distance<class_WorldBoundaryShape2D_property_distance>` | ``0.0``            |
   +-------------------------------+---------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`normal<class_WorldBoundaryShape2D_property_normal>`     | ``Vector2(0, -1)`` |
   +-------------------------------+---------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_WorldBoundaryShape2D_property_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance** = ``0.0`` :ref:`🔗<class_WorldBoundaryShape2D_property_distance>`

.. rst-class:: classref-property-setget

- |void| **set_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance**\ (\ )

從原點到直線的距離，沿 :ref:`normal<class_WorldBoundaryShape2D_property_normal>` 方向（根據其方向和大小）。原點到直線實際距離的絕對值可以用 ``abs(distance) / normal.length()`` 計算。

在直線 ``ax + by = d`` 的標量方程中，這是 ``d``\ ，而 ``(a, b)`` 座標由 :ref:`normal<class_WorldBoundaryShape2D_property_normal>` 屬性工作表示。

.. rst-class:: classref-item-separator

----

.. _class_WorldBoundaryShape2D_property_normal:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **normal** = ``Vector2(0, -1)`` :ref:`🔗<class_WorldBoundaryShape2D_property_normal>`

.. rst-class:: classref-property-setget

- |void| **set_normal**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_normal**\ (\ )

該直線的法線，通常是一個單位向量。它的方向表示非碰撞半平面。可以是任意長度，但不能為零。預設為 :ref:`Vector2.UP<class_Vector2_constant_UP>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
