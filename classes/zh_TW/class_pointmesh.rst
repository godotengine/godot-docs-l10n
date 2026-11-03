:github_url: hide

.. _class_PointMesh:

PointMesh
=========

**繼承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

單點圖元網格。

.. rst-class:: classref-introduction-group

說明
----

**PointMesh** 由一個點構成的基本網格。這個點不取決於三角形，而是作為螢幕上的一個矩形來渲染，大小是固定的。旨在用於粒子系統，但也可以作為固定大小公告板精靈的輕量級渲染方法（例如在點雲中使用）。

為了顯示，單點網格必須使用具有點大小的材質。點的大小可以在著色器中通過內建的 ``POINT_SIZE`` 存取，也可以在 :ref:`BaseMaterial3D<class_BaseMaterial3D>` 中設定 :ref:`BaseMaterial3D.use_point_size<class_BaseMaterial3D_property_use_point_size>` 並通過變數 :ref:`BaseMaterial3D.point_size<class_BaseMaterial3D_property_point_size>` 存取。

\ **注意：**\ 使用單點網格時，會忽略平時能夠影響頂點的屬性，包括 :ref:`BaseMaterial3D.billboard_mode<class_BaseMaterial3D_property_billboard_mode>`\ 、\ :ref:`BaseMaterial3D.grow<class_BaseMaterial3D_property_grow>`\ 、\ :ref:`BaseMaterial3D.cull_mode<class_BaseMaterial3D_property_cull_mode>` 等。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
