:github_url: hide

.. _class_PolygonOccluder3D:

PolygonOccluder3D
=================

**繼承：** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

平面 2D 多邊形形狀，用於 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的遮擋剔除。

.. rst-class:: classref-introduction-group

說明
----

**PolygonOccluder3D** 儲存的是多邊形形狀，可用於引擎的遮擋剔除系統。在編輯器中選中具有 **PolygonOccluder3D** 的 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 時，3D 視口的頂部會出現用於新增/移除頂點的編輯器。所有的頂點都必須在相同的 2D 平面中放置，也就是說，使用單個 **PolygonOccluder3D** 是無法任意建立 3D 形狀的。要將任意 3D 形狀作為遮擋器，請改用 :ref:`ArrayOccluder3D<class_ArrayOccluder3D>` 或 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的烘焙功能。

設定遮擋剔除的步驟見 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的文件。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`遮擋剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_PolygonOccluder3D_property_polygon>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PolygonOccluder3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_PolygonOccluder3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

用於遮擋剔除的多邊形。既可以是凸多邊形，也可以是凹多邊形，但只有讓頂點的數量盡可能地少，才能夠讓性能最大化。

多邊形必須\ *不存在*\ 相交的線。否則三角形化會失敗（同時會輸出錯誤資訊）。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
