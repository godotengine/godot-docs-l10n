:github_url: hide

.. _class_Shape3D:

Shape3D
=======

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`BoxShape3D<class_BoxShape3D>`, :ref:`CapsuleShape3D<class_CapsuleShape3D>`, :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, :ref:`CylinderShape3D<class_CylinderShape3D>`, :ref:`HeightMapShape3D<class_HeightMapShape3D>`, :ref:`SeparationRayShape3D<class_SeparationRayShape3D>`, :ref:`SphereShape3D<class_SphereShape3D>`, :ref:`WorldBoundaryShape3D<class_WorldBoundaryShape3D>`

用於物理碰撞的 3D 形狀的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

所有 3D 形狀的抽象基底類別，針對物理使用設計。

\ **性能：**\ 對圖元形狀進行碰撞偵測很快，尤其是 :ref:`SphereShape3D<class_SphereShape3D>`\ 。\ :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 和 :ref:`HeightMapShape3D<class_HeightMapShape3D>` 較慢，\ :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 最慢。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape3D_property_custom_solver_bias>` | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`margin<class_Shape3D_property_margin>`                         | ``0.04`` |
   +---------------------------+----------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>` | :ref:`get_debug_mesh<class_Shape3D_method_get_debug_mesh>`\ (\ ) |
   +-----------------------------------+------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Shape3D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape3D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

The shape's custom solver bias. Defines how much bodies react to enforce contact separation when this shape is involved.

When set to ``0``, the default value from :ref:`ProjectSettings.physics/3d/solver/default_contact_bias<class_ProjectSettings_property_physics/3d/solver/default_contact_bias>` is used.

\ **Note:** :ref:`custom_solver_bias<class_Shape3D_property_custom_solver_bias>` is only effective when using GodotPhysics3D. It has no effect when using Jolt Physics.

.. rst-class:: classref-item-separator

----

.. _class_Shape3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_Shape3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

該形狀的碰撞邊距。Godot Physics 中未使用。

碰撞邊距允許通過在形狀周圍新增額外的外殼來使碰撞偵測更有效。當物體重疊的部分超過其邊距時，碰撞演算法的成本會更高，所以邊距的數值越高對性能越好，但代價是邊緣的精度會降低，因為會讓邊緣的銳度降低。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Shape3D_method_get_debug_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_debug_mesh**\ (\ ) :ref:`🔗<class_Shape3D_method_get_debug_mesh>`

返回用於繪製此 **Shape3D** 的除錯碰撞的 :ref:`ArrayMesh<class_ArrayMesh>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
