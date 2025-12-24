:github_url: hide

.. _class_TubeTrailMesh:

TubeTrailMesh
=============

**繼承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表直管狀的 :ref:`PrimitiveMesh<class_PrimitiveMesh>`\ ，寬度可變。

.. rst-class:: classref-introduction-group

說明
----

**TubeTrailMesh** 代表直管狀的網格，寬度可變。管身由若干圓柱形分區構成，每個分區的長度 :ref:`section_length<class_TubeTrailMesh_property_section_length>` 和環數 :ref:`section_rings<class_TubeTrailMesh_property_section_rings>` 都是一致的。會沿著管身的總長度對 :ref:`curve<class_TubeTrailMesh_property_curve>` 取樣，這樣該曲線就確定了管子半徑沿長度的變化方式。

這個基本網格通常用於粒子拖尾。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`3D 粒子拖尾 <../tutorials/3d/particles/trails>`

- :doc:`粒子系統（3D） <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_bottom<class_TubeTrailMesh_property_cap_bottom>`         | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`cap_top<class_TubeTrailMesh_property_cap_top>`               | ``true`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`Curve<class_Curve>` | :ref:`curve<class_TubeTrailMesh_property_curve>`                   |          |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`radial_steps<class_TubeTrailMesh_property_radial_steps>`     | ``8``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_TubeTrailMesh_property_radius>`                 | ``0.5``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`section_length<class_TubeTrailMesh_property_section_length>` | ``0.2``  |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`section_rings<class_TubeTrailMesh_property_section_rings>`   | ``3``    |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`sections<class_TubeTrailMesh_property_sections>`             | ``5``    |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TubeTrailMesh_property_cap_bottom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_bottom** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_cap_bottom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_bottom**\ (\ )

如果為 ``true`` ，則在管子的底部生成蓋子。如果相機永遠不可能見到蓋子，那麼設定為 ``false`` 可以加快生成和算繪的速度。

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_cap_top:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cap_top** = ``true`` :ref:`🔗<class_TubeTrailMesh_property_cap_top>`

.. rst-class:: classref-property-setget

- |void| **set_cap_top**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cap_top**\ (\ )

如果為 ``true`` ，則在管子的頂部生成蓋子。如果相機永遠不可能見到蓋子，那麼設定為 ``false`` 可以加快生成和算繪的速度。

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve** :ref:`🔗<class_TubeTrailMesh_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve**\ (\ )

Determines the radius of the tube along its length. The radius of a particular section ring is obtained by multiplying the baseline :ref:`radius<class_TubeTrailMesh_property_radius>` by the value of this curve at the given distance. For values smaller than ``0``, the faces will be inverted. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radial_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_steps** = ``8`` :ref:`🔗<class_TubeTrailMesh_property_radial_steps>`

.. rst-class:: classref-property-setget

- |void| **set_radial_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_steps**\ (\ )

管身的面數。例如，取值 ``5`` 表示管身為五邊形。值越高，管身細節越高，代價是犧牲性能。

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_TubeTrailMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

管身的基礎半徑。將該半徑與給定距離下 :ref:`curve<class_TubeTrailMesh_property_curve>` 的取值相乘，就得到了某個分區中某個環的半徑。

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **section_length** = ``0.2`` :ref:`🔗<class_TubeTrailMesh_property_section_length>`

.. rst-class:: classref-property-setget

- |void| **set_section_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_section_length**\ (\ )

管身分區的長度。

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_section_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **section_rings** = ``3`` :ref:`🔗<class_TubeTrailMesh_property_section_rings>`

.. rst-class:: classref-property-setget

- |void| **set_section_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_section_rings**\ (\ )

分區中環的數量。每個環都會對 :ref:`curve<class_TubeTrailMesh_property_curve>` 進行取樣，從而決定其半徑。值越高，管身細節越高，代價是犧牲性能。

.. rst-class:: classref-item-separator

----

.. _class_TubeTrailMesh_property_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **sections** = ``5`` :ref:`🔗<class_TubeTrailMesh_property_sections>`

.. rst-class:: classref-property-setget

- |void| **set_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sections**\ (\ )

管身分區總數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
