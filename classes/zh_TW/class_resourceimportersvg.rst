:github_url: hide

.. _class_ResourceImporterSVG:

ResourceImporterSVG
===================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports an SVG file as an automatically scalable texture for use in UI elements and 2D rendering.

.. rst-class:: classref-introduction-group

說明
----

This importer imports :ref:`DPITexture<class_DPITexture>` resources. See also :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` and :ref:`ResourceImporterImage<class_ResourceImporterImage>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`base_scale<class_ResourceImporterSVG_property_base_scale>`             | ``1.0``   |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_map<class_ResourceImporterSVG_property_color_map>`               | ``{}``    |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterSVG_property_compress>`                 | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`fix_alpha_border<class_ResourceImporterSVG_property_fix_alpha_border>` | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`premult_alpha<class_ResourceImporterSVG_property_premult_alpha>`       | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`saturation<class_ResourceImporterSVG_property_saturation>`             | ``1.0``   |
   +-------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterSVG_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_base_scale>`

Texture scale. ``1.0`` is the original SVG size. Higher values result in a larger image.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_color_map:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_map** = ``{}`` :ref:`🔗<class_ResourceImporterSVG_property_color_map>`

If set, remaps texture colors according to :ref:`Color<class_Color>`-:ref:`Color<class_Color>` map.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterSVG_property_compress>`

If ``true``, uses lossless compression for the SVG source.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fix_alpha_border** = ``false`` :ref:`🔗<class_ResourceImporterSVG_property_fix_alpha_border>`

If ``true``, puts pixels of the same surrounding color in transition from transparent to opaque areas. For textures displayed with bilinear filtering, this helps to reduce the outline effect when exporting images from an image editor.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterSVG_property_premult_alpha>`

An alternative to fixing darkened borders with :ref:`fix_alpha_border<class_ResourceImporterSVG_property_fix_alpha_border>` is to use premultiplied alpha. By enabling this option, the texture will be converted to this format. A premultiplied alpha texture requires specific materials to be displayed correctly:

- In 2D, a :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` will need to be created and configured to use the :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` blend mode on :ref:`CanvasItem<class_CanvasItem>`\ s that use this texture. In custom ``canvas_item`` shaders, ``render_mode blend_premul_alpha;`` should be used.

- In 3D, a :ref:`BaseMaterial3D<class_BaseMaterial3D>` will need to be created and configured to use the :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` blend mode on materials that use this texture. In custom ``spatial`` shaders, ``render_mode blend_premul_alpha;`` should be used.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_saturation:

.. rst-class:: classref-property

:ref:`float<class_float>` **saturation** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_saturation>`

Overrides texture saturation.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
