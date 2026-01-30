:github_url: hide

.. _class_CurveXYZTexture:

CurveXYZTexture
===============

**繼承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

一維紋理，其中紅色、綠色和藍色通道分別對應 3 條曲線上的點。

.. rst-class:: classref-introduction-group

說明
----

A 1D texture where the red, green, and blue color channels correspond to points on 3 unit :ref:`Curve<class_Curve>` resources. Compared to using separate :ref:`CurveTexture<class_CurveTexture>`\ s, this further simplifies the task of saving curves as image files.

If you only need to store one curve within a single texture, use :ref:`CurveTexture<class_CurveTexture>` instead. See also :ref:`GradientTexture1D<class_GradientTexture1D>` and :ref:`GradientTexture2D<class_GradientTexture2D>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_x<class_CurveXYZTexture_property_curve_x>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_y<class_CurveXYZTexture_property_curve_y>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`curve_z<class_CurveXYZTexture_property_curve_z>` |                                                                                        |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | resource_local_to_scene                                | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`width<class_CurveXYZTexture_property_width>`     | ``256``                                                                                |
   +---------------------------+--------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CurveXYZTexture_property_curve_x:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_x** :ref:`🔗<class_CurveXYZTexture_property_curve_x>`

.. rst-class:: classref-property-setget

- |void| **set_curve_x**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_x**\ (\ )

The :ref:`Curve<class_Curve>` that is rendered onto the texture's red channel. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_curve_y:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_y** :ref:`🔗<class_CurveXYZTexture_property_curve_y>`

.. rst-class:: classref-property-setget

- |void| **set_curve_y**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_y**\ (\ )

The :ref:`Curve<class_Curve>` that is rendered onto the texture's green channel. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_curve_z:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **curve_z** :ref:`🔗<class_CurveXYZTexture_property_curve_z>`

.. rst-class:: classref-property-setget

- |void| **set_curve_z**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_curve_z**\ (\ )

The :ref:`Curve<class_Curve>` that is rendered onto the texture's blue channel. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CurveXYZTexture_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``256`` :ref:`🔗<class_CurveXYZTexture_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

紋理寬度（單位為圖元）。較大的值能夠更好地表示高頻資料（例如方向的突變），但會增加生成時間和記憶體佔用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
