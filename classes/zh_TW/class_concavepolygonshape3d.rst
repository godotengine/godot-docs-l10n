:github_url: hide

.. _class_ConcavePolygonShape3D:

ConcavePolygonShape3D
=====================

**繼承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 3D 三角網格形狀。

.. rst-class:: classref-introduction-group

說明
----

一種用於物理模擬的 3D 三角網格形狀。通常用於為 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形狀。

作為一組相互連接的三角形， **ConcavePolygonShape3D** 是最自由的可設定的單一 3D 形狀。它可以用於形成任何性質的多面體，甚至是不封閉體積的形狀。然而，即使相互連接的三角形封閉了一個體積， :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 仍然是\ *中空*\ 的，這常常使其不適用於物理模擬或碰撞檢測。

\ **注意：**\ 當用於碰撞計算時， **ConcavePolygonShape3D** 旨在與 :ref:`StaticBody3D<class_StaticBody3D>` 等靜態 :ref:`CollisionShape3D<class_CollisionShape3D>` 節點一起使用 。並且對於 :ref:`CharacterBody3D<class_CharacterBody3D>` 或 :ref:`RigidBody3D<class_RigidBody3D>`\ ，在除靜態模式之外的其他模式下可能表現不佳。

\ **警告：**\ 較小的物理物體在快速移動時有機會穿過該形狀。發生這種情況是因為在一影格上，物理物體可能位於形狀的“外部”，而在下一影格上，它可能位於形狀的“內部”。由於\ **ConcavePolygonShape3D** 是中空的，因此它不會檢測到碰撞。

\ **效能：**\ 由於其複雜性， **ConcavePolygonShape3D** 是檢測碰撞最慢的 3D 碰撞形狀。它的使用一般僅限於關卡幾何體。對於凸幾何體，應使用 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 。對於需要凹碰撞的動態物體，可以使用多個 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 通過凸分解來表示其碰撞；相關說明請參閱 :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 文件。

.. rst-class:: classref-introduction-group

教學
----

- `3D 物理測試示範 <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`backface_collision<class_ConcavePolygonShape3D_property_backface_collision>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_ConcavePolygonShape3D_method_get_faces>`\ (\ ) |const|                                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_faces<class_ConcavePolygonShape3D_method_set_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ConcavePolygonShape3D_property_backface_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **backface_collision** = ``false`` :ref:`🔗<class_ConcavePolygonShape3D_property_backface_collision>`

.. rst-class:: classref-property-setget

- |void| **set_backface_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_backface_collision_enabled**\ (\ )

如果設定為 ``true``\ ，則碰撞會發生在凹形面的兩側。否則，它們只會沿著面法線發生。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ConcavePolygonShape3D_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_ConcavePolygonShape3D_method_get_faces>`

以頂點陣列的形式返回三角網格形狀中的面。該（長度能被三整除的）陣列自然三三分組；每組中的三個頂點定義一個三角形。

.. rst-class:: classref-item-separator

----

.. _class_ConcavePolygonShape3D_method_set_faces:

.. rst-class:: classref-method

|void| **set_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_ConcavePolygonShape3D_method_set_faces>`

根據頂點陣列設定三角網格形狀的面。\ ``faces`` 陣列應更多由若干三元組構成，每三個頂點定義一個三角形。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
