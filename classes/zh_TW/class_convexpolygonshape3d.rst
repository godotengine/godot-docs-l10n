:github_url: hide

.. _class_ConvexPolygonShape3D:

ConvexPolygonShape3D
====================

**繼承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 3D 凸多面體形狀。

.. rst-class:: classref-introduction-group

說明
----

3D 凸多面體形狀，旨在用於物理。常用來為 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形狀。

\ **ConvexPolygonShape3D** 是\ *實心*\ 的，與空心的 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 不同，如果物件完全位於其內部，也能夠偵測到碰撞。因此更適於偵測和物理。

\ **凸分解：**\ 凹多面體可以拆分為多個凸多面體。這樣就能夠讓動態物理體擁有複雜的凹碰撞（以消耗效能為代價），做法是使用多個 **ConvexPolygonShape3D** 節點。要根據網格生成凸分解，請選中 :ref:`MeshInstance3D<class_MeshInstance3D>` 節點，前往出現在視埠上方的 **Mesh** 功能表，然後選擇\ **建立多個凸碰撞同級**\ 。或者也可以在腳本中呼叫 :ref:`MeshInstance3D.create_multiple_convex_collisions()<class_MeshInstance3D_method_create_multiple_convex_collisions>`\ ，在運作時執行分解。

\ **效能：**\ **ConvexPolygonShape3D** 檢查碰撞的速度比 :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 要快，但比 :ref:`SphereShape3D<class_SphereShape3D>`\ 、\ :ref:`BoxShape3D<class_BoxShape3D>` 等基本碰撞形狀要慢。通常應該僅限於中等大小的物件，在無法使用基本形狀精確表示碰撞時使用。

.. rst-class:: classref-introduction-group

教學
----

- `3D 物理測試示範 <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`points<class_ConvexPolygonShape3D_property_points>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ConvexPolygonShape3D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **points** = ``PackedVector3Array()`` :ref:`🔗<class_ConvexPolygonShape3D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_points**\ (\ )

形成凸多邊形的 3D 點列表。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
