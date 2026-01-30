:github_url: hide

.. _class_PlaneMesh:

PlaneMesh
=========

**繼承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`QuadMesh<class_QuadMesh>`

表示平面 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。

.. rst-class:: classref-introduction-group

說明
----

代表平面 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。這個扁平的網格沒有厚度。預設情況下，這個網格與 X 和 Z 軸對齊；這樣的旋轉並不適用於公告板材質。對於公告板材質，請將 :ref:`orientation<class_PlaneMesh_property_orientation>` 改為 :ref:`FACE_Z<class_PlaneMesh_constant_FACE_Z>`\ 。

\ **注意：**\ 使用較大且有紋理的 **PlaneMesh**\ （例如地板）時，你可能在使用某些相機角度時會遇到 UV 抖動的問題。要解決這個問題，請增大 :ref:`subdivide_depth<class_PlaneMesh_property_subdivide_depth>` 和 :ref:`subdivide_width<class_PlaneMesh_property_subdivide_width>`\ ，直到無法再察覺到 UV 抖動。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                  | :ref:`center_offset<class_PlaneMesh_property_center_offset>`     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | :ref:`orientation<class_PlaneMesh_property_orientation>`         | ``1``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector2<class_Vector2>`                  | :ref:`size<class_PlaneMesh_property_size>`                       | ``Vector2(2, 2)``    |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                          | :ref:`subdivide_depth<class_PlaneMesh_property_subdivide_depth>` | ``0``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                          | :ref:`subdivide_width<class_PlaneMesh_property_subdivide_width>` | ``0``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_PlaneMesh_Orientation:

.. rst-class:: classref-enumeration

enum **Orientation**: :ref:`🔗<enum_PlaneMesh_Orientation>`

.. _class_PlaneMesh_constant_FACE_X:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_X** = ``0``

**PlaneMesh** 將面向 X 軸正方向。

.. _class_PlaneMesh_constant_FACE_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_Y** = ``1``

**PlaneMesh** 將面向 Y 軸正方向。與 Godot 3.x 中 **PlaneMesh** 的行為一致。

.. _class_PlaneMesh_constant_FACE_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_Z** = ``2``

**PlaneMesh** 將面向 Z 軸正方向。與 Godot 3.x 中 QuadMesh 的行為一致。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PlaneMesh_property_center_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PlaneMesh_property_center_offset>`

.. rst-class:: classref-property-setget

- |void| **set_center_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_offset**\ (\ )

生成平面的偏移量。可用於粒子。

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_PlaneMesh_Orientation>` **orientation** = ``1`` :ref:`🔗<class_PlaneMesh_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_PlaneMesh_Orientation>`\ )
- :ref:`Orientation<enum_PlaneMesh_Orientation>` **get_orientation**\ (\ )

Direction that the **PlaneMesh** is facing.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(2, 2)`` :ref:`🔗<class_PlaneMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

生成平面的大小。

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_PlaneMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

沿 Z 軸細分的次數。

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_PlaneMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

沿 X 軸細分的次數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
