:github_url: hide

.. _class_TriangleMesh:

TriangleMesh
============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於高效、無物理互動查詢的三角形幾何體。

.. rst-class:: classref-introduction-group

說明
----

在三角形幾何體周圍建立一個包圍體積層次（Bounding Volume Hierarchy，BVH）樹結構。

三角形 BVH 樹可以用於高效的互動查詢，無需涉及物理引擎。

例如，在編輯器工具中可以用來根據滑鼠游標位置選擇具有複雜形狀的物件。

\ **效能：**\ 為複雜幾何體建立 BVH 樹是一個緩慢的過程，最好在後台執行緒中進行。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`create_from_faces<class_TriangleMesh_method_create_from_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_TriangleMesh_method_get_faces>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                 | :ref:`intersect_ray<class_TriangleMesh_method_intersect_ray>`\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                 | :ref:`intersect_segment<class_TriangleMesh_method_intersect_segment>`\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TriangleMesh_method_create_from_faces:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **create_from_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_TriangleMesh_method_create_from_faces>`

根據面陣列建立 BVH 樹。輸入的 ``faces`` 陣列中的每三個頂點代表一個三角形（面）。

如果樹成功建置則回傳 ``true``\ ，否則回傳 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_TriangleMesh_method_get_faces>`

回傳幾何體中所有面的副本。陣列中每三個頂點代表一個三角形（面）。

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_ray>`

檢測與射線的交點，射線從 ``begin`` 開始，朝向 ``dir``\ ，無限延伸。

如果與某個三角形存在交點，則回傳一個 :ref:`Dictionary<class_Dictionary>`\ ，其中包含以下欄位：

\ ``position``\ ：相交三角形上的位置。

\ ``normal``\ ：相交三角形的法線。

\ ``face_index``\ ：相交三角形的索引。

如果不存在交點則回傳空 :ref:`Dictionary<class_Dictionary>`\ 。

另見 :ref:`intersect_segment()<class_TriangleMesh_method_intersect_segment>`\ ，與此方法類似，但使用的是線段，長度有限。

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_segment:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_segment**\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_segment>`

檢測與線段的交點，線段從 ``begin`` 開始，到 ``end`` 結束。

如果與某個三角形存在交點，則回傳一個 :ref:`Dictionary<class_Dictionary>`\ ，其中包含以下欄位：

\ ``position``\ ：相交三角形上的位置。

\ ``normal``\ ：相交三角形的法線。

\ ``face_index``\ ：相交三角形的索引。

如果不存在交點則回傳空 :ref:`Dictionary<class_Dictionary>`\ 。

另見 :ref:`intersect_ray()<class_TriangleMesh_method_intersect_ray>`\ ，與此方法類似，但使用的是射線，長度無限。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
