:github_url: hide

.. _class_CSGMesh3D:

CSGMesh3D
=========

**继承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

使用网格资源的 CSG 网格形状。

.. rst-class:: classref-introduction-group

描述
----

该 CSG 节点允许你将任何\ *流形*\ 的网格资源用作 CSG 形状。流形的形状指的是闭合、不自相交、不包含内部面、没有连接到两个面以上的边。将绘制的 2D 多边形挤出用作 CSG 节点见 :ref:`CSGPolygon3D<class_CSGPolygon3D>`\ 。

\ **注意：**\ CSG 节点旨在用于关卡原型设计。与使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 创建 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，创建 CSG 节点具有显着的 CPU 成本。在另一个 CSG 节点中移动 CSG 节点也会大量消耗 CPU，因此在游戏过程中应该避免这种情况。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 CSG 设计关卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGMesh3D_property_material>` |
   +---------------------------------+----------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`         | :ref:`mesh<class_CSGMesh3D_property_mesh>`         |
   +---------------------------------+----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CSGMesh3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGMesh3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用于绘制 CSG 形状的 :ref:`Material<class_Material>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGMesh3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CSGMesh3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

用作 CSG 形状的 :ref:`Mesh<class_Mesh>` 资源。

\ **注意：**\ 该属性的类型提示中排除了 :ref:`PlaneMesh<class_PlaneMesh>`\ 、\ :ref:`PointMesh<class_PointMesh>`\ 、\ :ref:`QuadMesh<class_QuadMesh>`\ 、\ :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` 等 :ref:`Mesh<class_Mesh>` 类型，因为这些图元非\ *流形*\ ，与 CSG 算法不兼容。

\ **注意：**\ 使用 :ref:`ArrayMesh<class_ArrayMesh>` 时，除 :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`\ 、\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` 和 :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` 之外的所有顶点属性均保持未被使用的状态。只有 :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` 和 :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` 会被传递到 GPU。

\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` 仅被用于确定哪些面需要使用平直着色。默认情况下，CSGMesh 将忽略该网格的顶点法线，为每个顶点重新计算它们并使用一个平滑着色器。如果面需要平直着色器，请确保面的所有顶点法线大致相等。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
