:github_url: hide

.. _class_CylinderMesh:

CylinderMesh
============

**繼承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

表示圓柱形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。

.. rst-class:: classref-introduction-group

說明
----

表示圓柱形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。通過將 :ref:`top_radius<class_CylinderMesh_property_top_radius>` 或 :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>` 屬性設定為 ``0.0``\ ，這個類可以用來建立圓錐體。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>`     | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>`           | ``true`` |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_CylinderMesh_property_cap_top>`                 | ``true`` |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`height<class_CylinderMesh_property_height>`                   | ``2.0``  |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_CylinderMesh_property_radial_segments>` | ``64``   |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_CylinderMesh_property_rings>`                     | ``4``    |
   +---------------------------+---------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`top_radius<class_CylinderMesh_property_top_radius>`           | ``0.5``  |
   +---------------------------+---------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CylinderMesh_property_bottom_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **bottom_radius** = ``0.5`` :ref:`🔗<class_CylinderMesh_property_bottom_radius>`

.. rst-class:: classref-property-setget

- |void| **set_bottom_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bottom_radius**\ (\ )

圓柱體的底部半徑。如果設定為 ``0.0``\ ，則不會生成底面，呈圓錐狀。另見 :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_CylinderMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

如果為 ``true``\ ，則在圓柱體底部生成一個蓋子。這可以設定為 ``false`` 以在相機從未看到蓋子時加速生成和算繪。另見 :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>`\ 。

\ **注意：**\ 如果 :ref:`bottom_radius<class_CylinderMesh_property_bottom_radius>` 為 ``0.0``\ ，即使 :ref:`cap_bottom<class_CylinderMesh_property_cap_bottom>` 為 ``true``\ ，蓋子生成也會始終被跳過。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_CylinderMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

如果為 ``true``\ ，則在圓柱體頂部生成一個蓋子。這可以設定為 ``false`` 以在相機從未看到蓋子時加速生成和算繪。另見 :ref:`top_radius<class_CylinderMesh_property_top_radius>`\ 。

\ **注意：**\ 如果 :ref:`top_radius<class_CylinderMesh_property_top_radius>` 為 ``0.0``\ ，即使 :ref:`cap_top<class_CylinderMesh_property_cap_top>` 為 ``true``\ ，蓋子生成也會始終被跳過。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CylinderMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

圓柱體的全高。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_CylinderMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

圓柱體上的徑向段數。更高的值會生成更細緻的圓柱體或圓錐體，但以性能為代價。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``4`` :ref:`🔗<class_CylinderMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

沿圓柱體的高度的邊緣環的數量。除非使用著色器或程式網格工具來更改頂點資料，否則更改 :ref:`rings<class_CylinderMesh_property_rings>` 不會影響顯示，\ :ref:`rings<class_CylinderMesh_property_rings>` 應保持其預設值。較高的值會產生更多的細分，這可用於使用著色器或程式式網格工具建立更平滑的顯示效果，但以性能為代價。

.. rst-class:: classref-item-separator

----

.. _class_CylinderMesh_property_top_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **top_radius** = ``0.5`` :ref:`🔗<class_CylinderMesh_property_top_radius>`

.. rst-class:: classref-property-setget

- |void| **set_top_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_top_radius**\ (\ )

圓柱體的頂部半徑。如果設定為 ``0.0``\ ，則不會生成頂面，呈圓錐狀。另見 :ref:`cap_top<class_CylinderMesh_property_cap_top>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
