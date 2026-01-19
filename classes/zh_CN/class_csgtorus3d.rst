:github_url: hide

.. _class_CSGTorus3D:

CSGTorus3D
==========

**继承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

CSG 圆环形状。

.. rst-class:: classref-introduction-group

描述
----

该节点允许创建与 CSG 系统一起使用的环面。

\ **注意：**\ CSG 节点旨在用于关卡原型设计。与使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 创建 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，创建 CSG 节点具有显著的 CPU 成本。在另一个 CSG 节点中，移动一个 CSG 节点，也会大量消耗 CPU，因此在游戏过程中，应该避免这种情况。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 CSG 设计关卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>`       | :ref:`inner_radius<class_CSGTorus3D_property_inner_radius>` | ``0.5``  |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGTorus3D_property_material>`         |          |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>`       | :ref:`outer_radius<class_CSGTorus3D_property_outer_radius>` | ``1.0``  |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`int<class_int>`           | :ref:`ring_sides<class_CSGTorus3D_property_ring_sides>`     | ``6``    |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`int<class_int>`           | :ref:`sides<class_CSGTorus3D_property_sides>`               | ``8``    |
   +---------------------------------+-------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`         | :ref:`smooth_faces<class_CSGTorus3D_property_smooth_faces>` | ``true`` |
   +---------------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CSGTorus3D_property_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_radius** = ``0.5`` :ref:`🔗<class_CSGTorus3D_property_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_radius**\ (\ )

圆环的内半径。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGTorus3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用于渲染圆环的材质。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_outer_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_radius** = ``1.0`` :ref:`🔗<class_CSGTorus3D_property_outer_radius>`

.. rst-class:: classref-property-setget

- |void| **set_outer_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_radius**\ (\ )

圆环的外半径。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_ring_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **ring_sides** = ``6`` :ref:`🔗<class_CSGTorus3D_property_ring_sides>`

.. rst-class:: classref-property-setget

- |void| **set_ring_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ring_sides**\ (\ )

构造每个圆环的边缘的数量。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **sides** = ``8`` :ref:`🔗<class_CSGTorus3D_property_sides>`

.. rst-class:: classref-property-setget

- |void| **set_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sides**\ (\ )

构成圆环的切片数。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``true`` :ref:`🔗<class_CSGTorus3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

如果 ``true`` 设置圆环的法线以提供平滑效果，则使圆环看起来是圆形的。如果为 ``false``\ ，则圆环将具有平坦的阴影表现。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
