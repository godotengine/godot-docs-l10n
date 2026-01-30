:github_url: hide

.. _class_ConvexPolygonShape2D:

ConvexPolygonShape2D
====================

**繼承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 2D 凸多邊形形狀。

.. rst-class:: classref-introduction-group

說明
----

2D 凸多邊形形狀，旨在用於物理。\ :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 為 ``BUILD_SOLIDS`` 模式時內部會使用這個類。

\ **ConvexPolygonShape2D** 是\ *實心*\ 的，與空心的 :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` 不同，如果物件完全位於其內部，也能夠偵測到碰撞。因此更適於偵測和物理。

\ **凸分解：**\ 凹多邊形可以拆分為多個凸多邊形。這樣就能夠讓動態物理體擁有複雜的凹碰撞（以消耗性能為代價），做法是使用多個 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 節點，或者使用 ``BUILD_SOLIDS`` 模式的 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 節點。要根據精靈生成碰撞多邊形，請選中 :ref:`Sprite2D<class_Sprite2D>` 節點，前往出現在視口上方的 **Sprite2D** 功能表，然後選擇\ **建立 Polygon2D 同級**\ 。

\ **性能：**\ **ConvexPolygonShape2D** 檢查碰撞的速度比 :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` 要快，但比 :ref:`CircleShape2D<class_CircleShape2D>`\ 、\ :ref:`RectangleShape2D<class_RectangleShape2D>` 等基本碰撞形狀要慢。通常應該僅限於中等大小的物件，在無法使用基本形狀精確表示碰撞時使用。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_ConvexPolygonShape2D_property_points>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_point_cloud<class_ConvexPolygonShape2D_method_set_point_cloud>`\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ConvexPolygonShape2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_ConvexPolygonShape2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

該多邊形構成凸包的頂點列表。順時針順序或逆時針順序都有可能。

\ **警告：**\ 請務必將這個屬性設定為能夠形成凸包的頂點列表。可以使用 :ref:`set_point_cloud()<class_ConvexPolygonShape2D_method_set_point_cloud>` 從任意頂點集生成凸包。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ConvexPolygonShape2D_method_set_point_cloud:

.. rst-class:: classref-method

|void| **set_point_cloud**\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_ConvexPolygonShape2D_method_set_point_cloud>`

根據提供的點集，使用凸包演算法分配 :ref:`points<class_ConvexPolygonShape2D_property_points>` 屬性，移除所有不必要的點。詳見 :ref:`Geometry2D.convex_hull()<class_Geometry2D_method_convex_hull>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
