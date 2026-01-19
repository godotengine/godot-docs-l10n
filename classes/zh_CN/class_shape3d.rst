:github_url: hide

.. _class_Shape3D:

Shape3D
=======

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`BoxShape3D<class_BoxShape3D>`, :ref:`CapsuleShape3D<class_CapsuleShape3D>`, :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, :ref:`CylinderShape3D<class_CylinderShape3D>`, :ref:`HeightMapShape3D<class_HeightMapShape3D>`, :ref:`SeparationRayShape3D<class_SeparationRayShape3D>`, :ref:`SphereShape3D<class_SphereShape3D>`, :ref:`WorldBoundaryShape3D<class_WorldBoundaryShape3D>`

用于物理碰撞的 3D 形状的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

所有 3D 形状的抽象基类，针对物理使用设计。

\ **性能：**\ 对图元形状进行碰撞检测很快，尤其是 :ref:`SphereShape3D<class_SphereShape3D>`\ 。\ :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` 和 :ref:`HeightMapShape3D<class_HeightMapShape3D>` 较慢，\ :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` 最慢。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理介绍 <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_Shape3D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape3D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

该形状的的自定义求解器偏差。定义了强制接触分离涉及到这个形状时，物体会做出多大的反应。

设为 ``0.0`` 时，使用的默认值为 :ref:`ProjectSettings.physics/3d/solver/default_contact_bias<class_ProjectSettings_property_physics/3d/solver/default_contact_bias>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Shape3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_Shape3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

该形状的碰撞边距。Godot Physics 中未使用。

碰撞边距允许通过在形状周围添加额外的外壳来使碰撞检测更有效。当物体重叠的部分超过其边距时，碰撞算法的成本会更高，所以边距的数值越高对性能越好，但代价是边缘的精度会降低，因为会让边缘的锐度降低。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Shape3D_method_get_debug_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_debug_mesh**\ (\ ) :ref:`🔗<class_Shape3D_method_get_debug_mesh>`

返回用于绘制此 **Shape3D** 的调试碰撞的 :ref:`ArrayMesh<class_ArrayMesh>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
