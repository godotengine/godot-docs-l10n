:github_url: hide

.. _class_ResourceImporterSVG:

ResourceImporterSVG
===================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un archivo SVG como una textura automáticamente escalable para usar en elementos de la IU y renderizado 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este importador importa recursos :ref:`DPITexture<class_DPITexture>`. Véase también :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` y :ref:`ResourceImporterImage<class_ResourceImporterImage>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterSVG_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_base_scale>`

Escala de la textura. ``1.0`` es el tamaño original del SVG. Valores más altos dan como resultado una imagen más grande.

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

Si es ``true``, utiliza compresión sin pérdida para la fuente SVG.

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

Sobrescribe la saturación de la textura.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
