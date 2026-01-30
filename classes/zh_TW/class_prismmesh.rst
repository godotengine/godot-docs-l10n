:github_url: hide

.. _class_PrismMesh:

PrismMesh
=========

**繼承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

表示棱柱形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。

.. rst-class:: classref-introduction-group

說明
----

表示棱柱形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`left_to_right<class_PrismMesh_property_left_to_right>`       | ``0.5``              |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_PrismMesh_property_size>`                         | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_depth<class_PrismMesh_property_subdivide_depth>`   | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_height<class_PrismMesh_property_subdivide_height>` | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_width<class_PrismMesh_property_subdivide_width>`   | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PrismMesh_property_left_to_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **left_to_right** = ``0.5`` :ref:`🔗<class_PrismMesh_property_left_to_right>`

.. rst-class:: classref-property-setget

- |void| **set_left_to_right**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_left_to_right**\ (\ )

上邊緣沿 X 軸的位移。0.0 將邊緣定位在左下邊緣的正上方。

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_PrismMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

棱鏡的大小。

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

沿 Z 軸新增的邊迴圈數。

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_height** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_height>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_height**\ (\ )

沿 Y 軸新增的邊迴圈數。

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

沿 X 軸新增的邊迴圈數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
