:github_url: hide

.. _class_CSGSphere3D:

CSGSphere3D
===========

**繼承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

CSG 球形形狀。

.. rst-class:: classref-introduction-group

說明
----

該節點允許建立與 CSG 系均勻起使用的球體。

\ **注意：**\ CSG 節點旨在用於關卡原型設計。與使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 建立 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，建立 CSG 節點具有顯著的 CPU 成本。在另一個 CSG 節點中，移動一個 CSG 節點，也會大量消耗 CPU，因此在遊戲過程中，應該避免這種情況。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 CSG 設計關卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_CSGSphere3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGSphere3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用於渲染球體的材質。

.. rst-class:: classref-item-separator

----

.. _class_CSGSphere3D_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``12`` :ref:`🔗<class_CSGSphere3D_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

球體的垂直切片數。

.. rst-class:: classref-item-separator

----

.. _class_CSGSphere3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CSGSphere3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

球體的半徑。

.. rst-class:: classref-item-separator

----

.. _class_CSGSphere3D_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``6`` :ref:`🔗<class_CSGSphere3D_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

球體的水平切片數。

.. rst-class:: classref-item-separator

----

.. _class_CSGSphere3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``true`` :ref:`🔗<class_CSGSphere3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

如果為 ``true``\ ，則將球體的法線設定為具有平滑效果，使球體看起來是圓形的。如果為 ``false``\ ，則球體將具有平坦的陰影表現。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
