:github_url: hide

.. _class_QuadOccluder3D:

QuadOccluder3D
==============

**繼承：** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 遮擋剔除的扁平平面形狀。

.. rst-class:: classref-introduction-group

說明
----

**QuadOccluder3D** 儲存的是一個扁平的平面形狀，可以用於引擎的遮擋剔除系統。如果你需要自訂正方形的形狀，請參閱 :ref:`PolygonOccluder3D<class_PolygonOccluder3D>`\ 。

設定遮擋剔除的說明見 :ref:`OccluderInstance3D<class_OccluderInstance3D>` 的文件。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`遮擋剔除 <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_QuadOccluder3D_property_size>` | ``Vector2(1, 1)`` |
   +-------------------------------+-------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_QuadOccluder3D_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(1, 1)`` :ref:`🔗<class_QuadOccluder3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

該四邊形的大小，使用 3D 單位。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
