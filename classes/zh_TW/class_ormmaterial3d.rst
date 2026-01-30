:github_url: hide

.. _class_ORMMaterial3D:

ORMMaterial3D
=============

**繼承：** :ref:`BaseMaterial3D<class_BaseMaterial3D>` **<** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

基於物理的算繪（PBR）材質，可以套用於 3D 物件，可以使用 ORM 紋理。

.. rst-class:: classref-introduction-group

說明
----

ORMMaterial3D 的屬性繼承自 :ref:`BaseMaterial3D<class_BaseMaterial3D>`\ 。與 :ref:`StandardMaterial3D<class_StandardMaterial3D>` 不同，ORMMaterial3D 對環境光遮蔽、粗糙度和金屬度貼圖使用單一紋理，稱為 ORM 紋理。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`標準 3D 材質與 ORM 3D 材質 <../tutorials/3d/standard_material_3d>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
