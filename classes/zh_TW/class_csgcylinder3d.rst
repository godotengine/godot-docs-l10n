:github_url: hide

.. _class_CSGCylinder3D:

CSGCylinder3D
=============

**繼承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

CSG 圓柱形狀。

.. rst-class:: classref-introduction-group

說明
----

此節點允許你建立與 CSG 系均勻起使用的圓柱體（或圓錐體）。

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

   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`cone<class_CSGCylinder3D_property_cone>`                 | ``false`` |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`       | :ref:`height<class_CSGCylinder3D_property_height>`             | ``2.0``   |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGCylinder3D_property_material>`         |           |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`       | :ref:`radius<class_CSGCylinder3D_property_radius>`             | ``0.5``   |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`sides<class_CSGCylinder3D_property_sides>`               | ``8``     |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`smooth_faces<class_CSGCylinder3D_property_smooth_faces>` | ``true``  |
   +---------------------------------+----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CSGCylinder3D_property_cone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cone** = ``false`` :ref:`🔗<class_CSGCylinder3D_property_cone>`

.. rst-class:: classref-property-setget

- |void| **set_cone**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cone**\ (\ )

如果為 ``true``\ ，則建立圓錐，僅在一側套用 :ref:`radius<class_CSGCylinder3D_property_radius>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CSGCylinder3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

圓柱體的高度。

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGCylinder3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用於算繪圓柱體的材質。

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CSGCylinder3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

圓柱體的半徑。

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **sides** = ``8`` :ref:`🔗<class_CSGCylinder3D_property_sides>`

.. rst-class:: classref-property-setget

- |void| **set_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sides**\ (\ )

圓柱體的邊數越多，圓柱體的細節越多。

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``true`` :ref:`🔗<class_CSGCylinder3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

如果為 ``true``\ ，則將圓柱體的法線設定為具有平滑效果，使圓柱體看起來是圓形的。如果為 ``false``\ ，則圓柱體將具有平坦的陰影表現。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
