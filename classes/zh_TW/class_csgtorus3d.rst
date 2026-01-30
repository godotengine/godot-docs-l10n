:github_url: hide

.. _class_CSGTorus3D:

CSGTorus3D
==========

**繼承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

CSG 圓環形狀。

.. rst-class:: classref-introduction-group

說明
----

該節點允許建立與 CSG 系均勻起使用的環面。

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

屬性說明
--------

.. _class_CSGTorus3D_property_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_radius** = ``0.5`` :ref:`🔗<class_CSGTorus3D_property_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_radius**\ (\ )

圓環的內半徑。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGTorus3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用於算繪圓環的材質。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_outer_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_radius** = ``1.0`` :ref:`🔗<class_CSGTorus3D_property_outer_radius>`

.. rst-class:: classref-property-setget

- |void| **set_outer_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_radius**\ (\ )

圓環的外半徑。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_ring_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **ring_sides** = ``6`` :ref:`🔗<class_CSGTorus3D_property_ring_sides>`

.. rst-class:: classref-property-setget

- |void| **set_ring_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_ring_sides**\ (\ )

建構每個圓環的邊緣的數量。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **sides** = ``8`` :ref:`🔗<class_CSGTorus3D_property_sides>`

.. rst-class:: classref-property-setget

- |void| **set_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sides**\ (\ )

構成圓環的切片數。

.. rst-class:: classref-item-separator

----

.. _class_CSGTorus3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``true`` :ref:`🔗<class_CSGTorus3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

如果 ``true`` 設定圓環的法線以提供平滑效果，則使圓環看起來是圓形的。如果為 ``false``\ ，則圓環將具有平坦的陰影表現。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
