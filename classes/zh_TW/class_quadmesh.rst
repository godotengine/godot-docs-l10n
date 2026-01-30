:github_url: hide

.. _class_QuadMesh:

QuadMesh
========

**繼承：** :ref:`PlaneMesh<class_PlaneMesh>` **<** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

表示面向相機的正方形網格的類。

.. rst-class:: classref-introduction-group

說明
----

代表正方形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。這個平面網格沒有厚度。預設情況下，這個網格與 X 軸和 Y 軸對齊；這種旋轉方式更適合於使用公告板的材質。\ **QuadMesh** 和 :ref:`PlaneMesh<class_PlaneMesh>` 是等價的，區別是 :ref:`PlaneMesh.orientation<class_PlaneMesh_property_orientation>` 預設為 :ref:`PlaneMesh.FACE_Z<class_PlaneMesh_constant_FACE_Z>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- `3D 檢視埠 GUI 範例 <https://godotengine.org/asset-library/asset/2807>`__

- `2D in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | orientation | ``2`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_orientation>`)      |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                  | size        | ``Vector2(1, 1)`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_size>`) |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
