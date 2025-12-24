:github_url: hide

.. _class_Occluder3D:

Occluder3D
==========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`ArrayOccluder3D<class_ArrayOccluder3D>`, :ref:`BoxOccluder3D<class_BoxOccluder3D>`, :ref:`PolygonOccluder3D<class_PolygonOccluder3D>`, :ref:`QuadOccluder3D<class_QuadOccluder3D>`, :ref:`SphereOccluder3D<class_SphereOccluder3D>`

用於與 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 中的遮擋剔除一起使用的遮擋物形狀資源。

.. rst-class:: classref-introduction-group

說明
----

**Occluder3D** 儲存一個遮擋器形狀，可供引擎的遮擋剔除系統使用。

有關設定遮擋剔除的說明，請參閱 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的文件。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`遮擋剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_indices<class_Occluder3D_method_get_indices>`\ (\ ) |const|   |
   +-----------------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vertices<class_Occluder3D_method_get_vertices>`\ (\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Occluder3D_method_get_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ ) |const| :ref:`🔗<class_Occluder3D_method_get_indices>`

返回該遮擋器形狀的頂點索引。

.. rst-class:: classref-item-separator

----

.. _class_Occluder3D_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_Occluder3D_method_get_vertices>`

返回該遮擋器形狀的頂點位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
