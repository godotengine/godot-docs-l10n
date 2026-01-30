:github_url: hide

.. _class_WorldBoundaryShape3D:

WorldBoundaryShape3D
====================

**繼承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於物理碰撞的 3D 空間邊界（半空間）形狀。

.. rst-class:: classref-introduction-group

說明
----

A 3D world boundary shape, intended for use in physics. **WorldBoundaryShape3D** works like an infinite plane that forces all physics bodies to stay above it. The :ref:`plane<class_WorldBoundaryShape3D_property_plane>`'s normal determines which direction is considered as "above" and in the editor, the line over the plane represents this direction. It can for example be used for endless flat floors.

\ **Note:** When the physics engine is set to **Jolt Physics** in the project settings (:ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>`), **WorldBoundaryShape3D** has a finite size (centered at the shape's origin). It can be adjusted by changing :ref:`ProjectSettings.physics/jolt_physics_3d/limits/world_boundary_shape_size<class_ProjectSettings_property_physics/jolt_physics_3d/limits/world_boundary_shape_size>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------+-----------------------+
   | :ref:`Plane<class_Plane>` | :ref:`plane<class_WorldBoundaryShape3D_property_plane>` | ``Plane(0, 1, 0, 0)`` |
   +---------------------------+---------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_WorldBoundaryShape3D_property_plane:

.. rst-class:: classref-property

:ref:`Plane<class_Plane>` **plane** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_WorldBoundaryShape3D_property_plane>`

.. rst-class:: classref-property-setget

- |void| **set_plane**\ (\ value\: :ref:`Plane<class_Plane>`\ )
- :ref:`Plane<class_Plane>` **get_plane**\ (\ )

該 **WorldBoundaryShape3D** 用於碰撞的 :ref:`Plane<class_Plane>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
