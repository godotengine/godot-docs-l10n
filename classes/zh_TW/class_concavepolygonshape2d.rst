:github_url: hide

.. _class_ConcavePolygonShape2D:

ConcavePolygonShape2D
=====================

**繼承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 2D 多線段形狀。

.. rst-class:: classref-introduction-group

說明
----

A 2D polyline shape, intended for use in physics. Used internally in :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` when it's in :ref:`CollisionPolygon2D.BUILD_SEGMENTS<class_CollisionPolygon2D_constant_BUILD_SEGMENTS>` mode.

Being just a collection of interconnected line segments, **ConcavePolygonShape2D** is the most freely configurable single 2D shape. It can be used to form polygons of any nature, or even shapes that don't enclose an area. However, **ConcavePolygonShape2D** is *hollow* even if the interconnected line segments do enclose an area, which often makes it unsuitable for physics or detection.

\ **Note:** When used for collision, **ConcavePolygonShape2D** is intended to work with static :ref:`CollisionShape2D<class_CollisionShape2D>` nodes like :ref:`StaticBody2D<class_StaticBody2D>` and will likely not behave well for :ref:`CharacterBody2D<class_CharacterBody2D>`\ s or :ref:`RigidBody2D<class_RigidBody2D>`\ s in a mode other than Static.

\ **Warning:** Physics bodies that are small have a chance to clip through this shape when moving fast. This happens because on one frame, the physics body may be on the "outside" of the shape, and on the next frame it may be "inside" it. **ConcavePolygonShape2D** is hollow, so it won't detect a collision.

\ **Performance:** Due to its complexity, **ConcavePolygonShape2D** is the slowest 2D collision shape to check collisions against. Its use should generally be limited to level geometry. If the polyline is closed, :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`'s :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` mode can be used, which decomposes the polygon into convex ones; see :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`'s documentation for instructions.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`segments<class_ConcavePolygonShape2D_property_segments>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ConcavePolygonShape2D_property_segments:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **segments** = ``PackedVector2Array()`` :ref:`🔗<class_ConcavePolygonShape2D_property_segments>`

.. rst-class:: classref-property-setget

- |void| **set_segments**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_segments**\ (\ )

頂點陣列，構成 **ConcavePolygonShape2D** 的線段。該（長度能被二整除的）陣列自然兩兩群組（每組代表一條線段）；每組都由一條線段的起點和終點構成。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
