:github_url: hide

.. _class_WorldBoundaryShape3D:

WorldBoundaryShape3D
====================

**继承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 3D 空间边界（半空间）形状。

.. rst-class:: classref-introduction-group

描述
----

3D 世界边界形状，应当用于物理用途。\ **WorldBoundaryShape3D** 本质上和无限平面类似，能够强制所有物理体都保持在它的上方。哪个方向是“上方”由该平面 :ref:`plane<class_WorldBoundaryShape3D_property_plane>` 的法线确定，这个方向在编辑器中由平面上方的一条线表示。用例是无限的平坦地面。

\ **注意：**\ 在项目设置中将物理引擎设为 **Jolt Physics**\ （\ :ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>`\ ）时，\ **WorldBoundaryShape3D** 的大小有限（以形状原点为中心），可以通过 :ref:`ProjectSettings.physics/jolt_physics_3d/limits/world_boundary_shape_size<class_ProjectSettings_property_physics/jolt_physics_3d/limits/world_boundary_shape_size>` 调整。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------+-----------------------+
   | :ref:`Plane<class_Plane>` | :ref:`plane<class_WorldBoundaryShape3D_property_plane>` | ``Plane(0, 1, 0, 0)`` |
   +---------------------------+---------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_WorldBoundaryShape3D_property_plane:

.. rst-class:: classref-property

:ref:`Plane<class_Plane>` **plane** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_WorldBoundaryShape3D_property_plane>`

.. rst-class:: classref-property-setget

- |void| **set_plane**\ (\ value\: :ref:`Plane<class_Plane>`\ )
- :ref:`Plane<class_Plane>` **get_plane**\ (\ )

该 **WorldBoundaryShape3D** 用于碰撞的 :ref:`Plane<class_Plane>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
