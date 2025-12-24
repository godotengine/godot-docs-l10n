:github_url: hide

.. _class_CSGPrimitive3D:

CSGPrimitive3D
==============

**繼承：** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`CSGBox3D<class_CSGBox3D>`, :ref:`CSGCylinder3D<class_CSGCylinder3D>`, :ref:`CSGMesh3D<class_CSGMesh3D>`, :ref:`CSGPolygon3D<class_CSGPolygon3D>`, :ref:`CSGSphere3D<class_CSGSphere3D>`, :ref:`CSGTorus3D<class_CSGTorus3D>`

CSG 圖元的基底類別。

.. rst-class:: classref-introduction-group

說明
----

各種 CSG 圖元的父類，包含了它們所需的公共程式碼和功能。無法直接使用這個類，請使用繼承它的各種類。

\ **注意：**\ CSG 節點旨在用於關卡原型設計。與使用 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 建立 :ref:`MeshInstance3D<class_MeshInstance3D>` 相比，建立 CSG 節點具有顯著的 CPU 成本。在一個 CSG 節點中移動另一個 CSG 節點也會產生顯著的 CPU 消耗，所以應當在遊戲過程中避免進行類似的操作。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 CSG 設計關卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`flip_faces<class_CSGPrimitive3D_property_flip_faces>` | ``false`` |
   +-------------------------+-------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CSGPrimitive3D_property_flip_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_faces** = ``false`` :ref:`🔗<class_CSGPrimitive3D_property_flip_faces>`

.. rst-class:: classref-property-setget

- |void| **set_flip_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_faces**\ (\ )

如果設定，則每個三角形中頂點的順序會顛倒，從而導致繪製網格的背面。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
