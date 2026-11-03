:github_url: hide

.. _class_ConcavePolygonShape2D:

ConcavePolygonShape2D
=====================

**繼承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 2D 多線段形狀。

.. rst-class:: classref-introduction-group

說明
----

一種 2D 折線形狀，用於物理運算。當 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 處於 :ref:`CollisionPolygon2D.BUILD_SEGMENTS<class_CollisionPolygon2D_constant_BUILD_SEGMENTS>` 模式時，會在其內部使用。

作為一組相互連接線段，\ **ConcavePolygonShape2D** 是最自由的可設定的單一 2D 形狀。它可以用於形成任何性質的多邊形，甚至是不封閉區域的形狀。然而，即使相互連接的線段確實封閉了一個區域，\ **ConcavePolygonShape2D** 仍然是\ *中空的*\ ，這常常使其不適用於物理模擬或碰撞檢測。

\ **注意：**\ 當用於碰撞計算時，\ **ConcavePolygonShape2D** 旨在與 :ref:`StaticBody2D<class_StaticBody2D>` 等靜態 :ref:`CollisionShape2D<class_CollisionShape2D>` 節點一起使用，並且對於 :ref:`CharacterBody2D<class_CharacterBody2D>` 或 :ref:`RigidBody2D<class_RigidBody2D>`\ ，在除靜態模式之外的其他模式下可能表現不佳。

\ **警告：**\ 較小的物理物體在快速移動時有機會穿過該形狀。發生這種情況是因為在一影格上，物理物體可能位於形狀的“外部”，而在下一影格上，它可能位於形狀的“內部”。由於\ **ConcavePolygonShape2D** 是中空的，因此它不會檢測到碰撞。

\ **效能：**\ 由於其複雜性， **ConcavePolygonShape2D** 是檢測碰撞最慢的 2D 碰撞形狀。它的使用一般僅限於關卡幾何體。如果折線是閉合的，可以使用 :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` 的 :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` 模式，它會將多邊形分解成凸多邊形；相關說明請參閱 :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` 文件。

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
