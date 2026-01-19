:github_url: hide

.. _class_XRVRS:

XRVRS
=====

**繼承：** :ref:`Object<class_Object>`

Helper class for XR interfaces that generates VRS images.

.. rst-class:: classref-introduction-group

說明
----

This class is used by various XR interfaces to generate VRS textures that can be used to speed up rendering.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_min_radius<class_XRVRS_property_vrs_min_radius>`       | ``20.0``               |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`vrs_render_region<class_XRVRS_property_vrs_render_region>` | ``Rect2i(0, 0, 0, 0)`` |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_strength<class_XRVRS_property_vrs_strength>`           | ``1.0``                |
   +-----------------------------+------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`make_vrs_texture<class_XRVRS_method_make_vrs_texture>`\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_XRVRS_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_XRVRS_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

The minimum radius around the focal point where full quality is guaranteed if VRS is used as a percentage of screen size.

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_render_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **vrs_render_region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_XRVRS_property_vrs_render_region>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_render_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_vrs_render_region**\ (\ )

The render region that the VRS texture will be scaled to when generated.

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_XRVRS_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

The strength used to calculate the VRS density map. The greater this value, the more noticeable VRS is.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_XRVRS_method_make_vrs_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_vrs_texture**\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_XRVRS_method_make_vrs_texture>`

Generates the VRS texture based on a render ``target_size`` adjusted by our VRS tile size. For each eyes focal point passed in ``eye_foci`` a layer is created. Focal point should be in NDC.

The result will be cached, requesting a VRS texture with unchanged parameters and settings will return the cached RID.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
