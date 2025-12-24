:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMeshInstance3D:

MultiMeshInstance3D
===================

**繼承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

產生實體 :ref:`MultiMesh<class_MultiMesh>` 的節點。

.. rst-class:: classref-introduction-group

說明
----

:ref:`MultiMeshInstance2D<class_MultiMeshInstance2D>` 是專用於產生實體基於 :ref:`MultiMesh<class_MultiMesh>` 資源的 :ref:`GeometryInstance3D<class_GeometryInstance3D>` 的節點。

適用於優化大量給定網格實例的算繪（例如森林中的樹木或草叢）。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`使用 MultiMesh 進行優化 <../tutorials/performance/using_multimesh>`

- :doc:`使用 MultiMeshInstance 動畫化數千條魚 <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`MultiMesh<class_MultiMesh>` | :ref:`multimesh<class_MultiMeshInstance3D_property_multimesh>` |
   +-----------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_MultiMeshInstance3D_property_multimesh:

.. rst-class:: classref-property

:ref:`MultiMesh<class_MultiMesh>` **multimesh** :ref:`🔗<class_MultiMeshInstance3D_property_multimesh>`

.. rst-class:: classref-property-setget

- |void| **set_multimesh**\ (\ value\: :ref:`MultiMesh<class_MultiMesh>`\ )
- :ref:`MultiMesh<class_MultiMesh>` **get_multimesh**\ (\ )

將在 **MultiMeshInstance3D** 的所有實例之間，使用和共用的 :ref:`MultiMesh<class_MultiMesh>` 資源。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
