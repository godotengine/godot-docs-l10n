:github_url: hide

.. meta::
	:keywords: omni, spot

.. _class_PointLight2D:

PointLight2D
============

**繼承：** :ref:`Light2D<class_Light2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

位置性 2D 光源。

.. rst-class:: classref-introduction-group

說明
----

在 2D 環境中投射光線。此燈的形狀由（通常為灰度）紋理定義。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`2D 燈光和陰影 <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`         | :ref:`height<class_PointLight2D_property_height>`               | ``0.0``           |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`offset<class_PointLight2D_property_offset>`               | ``Vector2(0, 0)`` |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_PointLight2D_property_texture>`             |                   |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`         | :ref:`texture_scale<class_PointLight2D_property_texture_scale>` | ``1.0``           |
   +-----------------------------------+-----------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PointLight2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``0.0`` :ref:`🔗<class_PointLight2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

燈光的高度。與 2D 法線貼圖一起使用。單位為圖元，例如：如果高度為 100，那麼它能夠照亮 100 圖元遠且與該平面成 45° 角的對象。

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_PointLight2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_offset**\ (\ )

燈光的 :ref:`texture<class_PointLight2D_property_texture>` 的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_PointLight2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

用於該燈光外觀的 :ref:`Texture2D<class_Texture2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PointLight2D_property_texture_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_scale** = ``1.0`` :ref:`🔗<class_PointLight2D_property_texture_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texture_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_scale**\ (\ )

:ref:`texture<class_PointLight2D_property_texture>` 的縮放係數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
