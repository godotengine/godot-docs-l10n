:github_url: hide

.. _class_CSGSphere3D:

CSGSphere3D
===========

**继承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

CSG 球形形状。

.. rst-class:: classref-introduction-group

描述
----

该节点允许创建与 CSG 系统一起使用的球体。

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

   +---------------------------------+--------------------------------------------------------------------+----------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGSphere3D_property_material>`               |          |
   +---------------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`           | :ref:`radial_segments<class_CSGSphere3D_property_radial_segments>` | ``12``   |
   +---------------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`       | :ref:`radius<class_CSGSphere3D_property_radius>`                   | ``0.5``  |
   +---------------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`           | :ref:`rings<class_CSGSphere3D_property_rings>`                     | ``6``    |
   +---------------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`         | :ref:`smooth_faces<class_CSGSphere3D_property_smooth_faces>`       | ``true`` |
   +---------------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CSGSphere3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGSphere3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用于渲染球体的材质。

.. rst-class:: classref-item-separator

----

.. _class_CSGSphere3D_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``12`` :ref:`🔗<class_CSGSphere3D_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

球体的垂直切片数。

.. rst-class:: classref-item-separator

----

.. _class_CSGSphere3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CSGSphere3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

球体的半径。

.. rst-class:: classref-item-separator

----

.. _class_CSGSphere3D_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``6`` :ref:`🔗<class_CSGSphere3D_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

球体的水平切片数。

.. rst-class:: classref-item-separator

----

.. _class_CSGSphere3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``true`` :ref:`🔗<class_CSGSphere3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

如果为 ``true``\ ，则将球体的法线设置为具有平滑效果，使球体看起来是圆形的。如果为 ``false``\ ，则球体将具有平坦的阴影表现。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
