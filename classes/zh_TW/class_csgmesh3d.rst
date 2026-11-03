:github_url: hide

.. _class_CSGMesh3D:

CSGMesh3D
=========

**繼承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

使用網格資源的 CSG 網格形狀。

.. rst-class:: classref-introduction-group

說明
----

該 CSG 節點允許你將任何\ *流形*\ 的網格資源用作 CSG 形狀。流形的形狀指的是閉合、不自相交、不包含內部面、沒有連接到兩個面以上的邊。將繪製的 2D 多邊形擠出用作 CSG 節點見 :ref:`CSGPolygon3D<class_CSGPolygon3D>`\ 。

\ **注意：**\ CSG 節點旨在用於關卡原型設計。與使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 建立 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，建立 CSG 節點具有顯著的 CPU 成本。在另一個 CSG 節點中移動 CSG 節點也會大量消耗 CPU，因此在遊戲過程中應該避免這種情況。

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

用作 CSG 形狀的 :ref:`Mesh<class_Mesh>` 資源。

\ **注意：**\ 該屬性的型別提示中排除了 :ref:`PlaneMesh<class_PlaneMesh>`\ 、\ :ref:`PointMesh<class_PointMesh>`\ 、\ :ref:`QuadMesh<class_QuadMesh>`\ 、\ :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` 等 :ref:`Mesh<class_Mesh>` 型別，因為這些圖元非\ *流形*\ ，與 CSG 算法不相容。

\ **注意：**\ 使用 :ref:`ArrayMesh<class_ArrayMesh>` 時，除 :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`\ 、\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` 和 :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` 之外的所有頂點屬性均保持未被使用的狀態。只有 :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` 和 :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` 會被傳遞到 GPU。

\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` 僅被用於確定哪些面需要使用平直著色。預設情況下，CSGMesh 將忽略該網格的頂點法線，為每個頂點重新計算它們並使用一個平滑著色器。如果面需要平直著色器，請確保面的所有頂點法線大致相等。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
