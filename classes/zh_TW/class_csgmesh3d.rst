:github_url: hide

.. _class_CSGMesh3D:

CSGMesh3D
=========

**繼承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

使用網格資源的 CSG 網格形狀。

.. rst-class:: classref-introduction-group

說明
----

This CSG node allows you to use any mesh resource as a CSG shape, provided it is *manifold*. A manifold shape is closed, does not self-intersect, does not contain internal faces and has no edges that connect to more than two faces. See also :ref:`CSGPolygon3D<class_CSGPolygon3D>` for drawing 2D extruded polygons to be used as CSG nodes.

\ **Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a :ref:`MeshInstance3D<class_MeshInstance3D>` with a :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 CSG 設計關卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_CSGMesh3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGMesh3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用於繪製 CSG 形狀的 :ref:`Material<class_Material>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGMesh3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CSGMesh3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

The :ref:`Mesh<class_Mesh>` resource to use as a CSG shape.

\ **Note:** Some :ref:`Mesh<class_Mesh>` types such as :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PointMesh<class_PointMesh>`, :ref:`QuadMesh<class_QuadMesh>`, and :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` are excluded from the type hint for this property, as these primitives are non-*manifold* and thus not compatible with the CSG algorithm.

\ **Note:** When using an :ref:`ArrayMesh<class_ArrayMesh>`, all vertex attributes except :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` and :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` are left unused. Only :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` and :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` will be passed to the GPU.

\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` is only used to determine which faces require the use of flat shading. By default, CSGMesh will ignore the mesh's vertex normals, recalculate them for each vertex and use a smooth shader. If a flat shader is required for a face, ensure that all vertex normals of the face are approximately equal.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
