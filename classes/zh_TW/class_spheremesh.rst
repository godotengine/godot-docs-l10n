:github_url: hide

.. _class_SphereMesh:

SphereMesh
==========

**繼承：** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

表示球形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。

.. rst-class:: classref-introduction-group

說明
----

表示球形 :ref:`PrimitiveMesh<class_PrimitiveMesh>` 的類。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SphereMesh_property_height>`                   | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`is_hemisphere<class_SphereMesh_property_is_hemisphere>`     | ``false`` |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_SphereMesh_property_radial_segments>` | ``64``    |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SphereMesh_property_radius>`                   | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_SphereMesh_property_rings>`                     | ``32``    |
   +---------------------------+-------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SphereMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_SphereMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

球體的全高。

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_is_hemisphere:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_hemisphere** = ``false`` :ref:`🔗<class_SphereMesh_property_is_hemisphere>`

.. rst-class:: classref-property-setget

- |void| **set_is_hemisphere**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_hemisphere**\ (\ )

如果為 ``true``\ ，則建立一個半球而不是一個完整的球體。

\ **注意：**\ 要得到一個規則的半球，球體的高度和半徑必須相等。

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_SphereMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

球體上的徑向段數。

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_SphereMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

球體半徑.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``32`` :ref:`🔗<class_SphereMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

沿著球體高度的段數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
