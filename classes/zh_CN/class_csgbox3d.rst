:github_url: hide

.. _class_CSGBox3D:

CSGBox3D
========

**继承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

CSG 盒子形状。

.. rst-class:: classref-introduction-group

描述
----

此节点允许你创建与 CSG 系统一起使用的盒子。

\ **注意：**\ CSG 节点旨在用于关卡原型设计。与使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 创建 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，创建 CSG 节点具有显着的 CPU 成本。在另一个 CSG 节点中，移动一个 CSG 节点，也会大量消耗 CPU，因此在游戏过程中，应该避免这种情况。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 CSG 设计关卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------+----------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGBox3D_property_material>` |                      |
   +---------------------------------+---------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`   | :ref:`size<class_CSGBox3D_property_size>`         | ``Vector3(1, 1, 1)`` |
   +---------------------------------+---------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CSGBox3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGBox3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用于渲染盒子的材质。

.. rst-class:: classref-item-separator

----

.. _class_CSGBox3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_CSGBox3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

该盒子的宽度、高度和深度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
