:github_url: hide

.. _class_CSGPrimitive3D:

CSGPrimitive3D
==============

**继承：** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`CSGBox3D<class_CSGBox3D>`, :ref:`CSGCylinder3D<class_CSGCylinder3D>`, :ref:`CSGMesh3D<class_CSGMesh3D>`, :ref:`CSGPolygon3D<class_CSGPolygon3D>`, :ref:`CSGSphere3D<class_CSGSphere3D>`, :ref:`CSGTorus3D<class_CSGTorus3D>`

CSG 图元的基类。

.. rst-class:: classref-introduction-group

描述
----

各种 CSG 图元的父类，包含了它们所需的公共代码和功能。无法直接使用这个类，请使用继承它的各种类。

\ **注意：**\ CSG 节点旨在用于关卡原型设计。与使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 创建 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，创建 CSG 节点具有显著的 CPU 成本。在一个 CSG 节点中移动另一个 CSG 节点也会产生显著的 CPU 消耗，所以应当在游戏过程中避免进行类似的操作。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 CSG 设计关卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`flip_faces<class_CSGPrimitive3D_property_flip_faces>` | ``false`` |
   +-------------------------+-------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CSGPrimitive3D_property_flip_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_faces** = ``false`` :ref:`🔗<class_CSGPrimitive3D_property_flip_faces>`

.. rst-class:: classref-property-setget

- |void| **set_flip_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_faces**\ (\ )

如果设置，则每个三角形中顶点的顺序会颠倒，从而导致绘制网格的背面。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
