:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMeshInstance3D:

MultiMeshInstance3D
===================

**继承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

实例化 :ref:`MultiMesh<class_MultiMesh>` 的节点。

.. rst-class:: classref-introduction-group

描述
----

**MultiMeshInstance3D** 是专用于实例化基于 :ref:`MultiMesh<class_MultiMesh>` 资源的 :ref:`GeometryInstance3D<class_GeometryInstance3D>` 的节点。

适用于优化大量给定网格实例的渲染（例如森林中的树木或草丛）。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`使用 MultiMesh 进行优化 <../tutorials/performance/using_multimesh>`

- :doc:`使用 MultiMeshInstance 动画化数千条鱼 <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`MultiMesh<class_MultiMesh>` | :ref:`multimesh<class_MultiMeshInstance3D_property_multimesh>` |
   +-----------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MultiMeshInstance3D_property_multimesh:

.. rst-class:: classref-property

:ref:`MultiMesh<class_MultiMesh>` **multimesh** :ref:`🔗<class_MultiMeshInstance3D_property_multimesh>`

.. rst-class:: classref-property-setget

- |void| **set_multimesh**\ (\ value\: :ref:`MultiMesh<class_MultiMesh>`\ )
- :ref:`MultiMesh<class_MultiMesh>` **get_multimesh**\ (\ )

将在 **MultiMeshInstance3D** 的所有实例之间，使用和共享的 :ref:`MultiMesh<class_MultiMesh>` 资源。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
