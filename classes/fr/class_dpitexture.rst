:github_url: hide

.. _class_DPITexture:

DPITexture
==========

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An automatically scalable :ref:`Texture2D<class_Texture2D>` based on an SVG image.

.. rst-class:: classref-introduction-group

Description
-----------

An automatically scalable :ref:`Texture2D<class_Texture2D>` based on an SVG image. **DPITexture**\ s are used to automatically re-rasterize icons and other texture based UI theme elements to match viewport scale and font oversampling. See also :ref:`ProjectSettings.display/window/stretch/mode<class_ProjectSettings_property_display/window/stretch/mode>` ("canvas_items" mode) and :ref:`Viewport.oversampling_override<class_Viewport_property_oversampling_override>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`base_scale<class_DPITexture_property_base_scale>`             | ``1.0``                                                                                |
   +-------------------------------------+---------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_map<class_DPITexture_property_color_map>`               | ``{}``                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`fix_alpha_border<class_DPITexture_property_fix_alpha_border>` | ``false``                                                                              |
   +-------------------------------------+---------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`premult_alpha<class_DPITexture_property_premult_alpha>`       | ``false``                                                                              |
   +-------------------------------------+---------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | resource_local_to_scene                                             | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------------------+---------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`saturation<class_DPITexture_property_saturation>`             | ``1.0``                                                                                |
   +-------------------------------------+---------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DPITexture<class_DPITexture>` | :ref:`create_from_string<class_DPITexture_method_create_from_string>`\ (\ source\: :ref:`String<class_String>`, scale\: :ref:`float<class_float>` = 1.0, saturation\: :ref:`float<class_float>` = 1.0, color_map\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`               | :ref:`get_scaled_rid<class_DPITexture_method_get_scaled_rid>`\ (\ ) |const|                                                                                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`get_source<class_DPITexture_method_get_source>`\ (\ ) |const|                                                                                                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_size_override<class_DPITexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_source<class_DPITexture_method_set_source>`\ (\ source\: :ref:`String<class_String>`\ )                                                                                                                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_DPITexture_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_DPITexture_property_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_base_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_base_scale**\ (\ )

Échelle de la texture. ``1.0`` est la taille SVG originale. Des valeurs plus élevées résultent en une image plus grande.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_property_color_map:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_map** = ``{}`` :ref:`🔗<class_DPITexture_property_color_map>`

.. rst-class:: classref-property-setget

- |void| **set_color_map**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_color_map**\ (\ )

If set, remaps texture colors according to :ref:`Color<class_Color>`-:ref:`Color<class_Color>` map.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_property_fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fix_alpha_border** = ``false`` :ref:`🔗<class_DPITexture_property_fix_alpha_border>`

.. rst-class:: classref-property-setget

- |void| **set_fix_alpha_border**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fix_alpha_border**\ (\ )

If ``true``, puts pixels of the same surrounding color in transition from transparent to opaque areas. For textures displayed with bilinear filtering, this helps to reduce the outline effect when exporting images from an image editor.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_property_premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **premult_alpha** = ``false`` :ref:`🔗<class_DPITexture_property_premult_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_premult_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_premult_alpha**\ (\ )

An alternative to fixing darkened borders with :ref:`fix_alpha_border<class_DPITexture_property_fix_alpha_border>` is to use premultiplied alpha. By enabling this option, the texture will be converted to this format. A premultiplied alpha texture requires specific materials to be displayed correctly:

- In 2D, a :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` will need to be created and configured to use the :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` blend mode on :ref:`CanvasItem<class_CanvasItem>`\ s that use this texture. In custom ``canvas_item`` shaders, ``render_mode blend_premul_alpha;`` should be used.

- In 3D, a :ref:`BaseMaterial3D<class_BaseMaterial3D>` will need to be created and configured to use the :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` blend mode on materials that use this texture. In custom ``spatial`` shaders, ``render_mode blend_premul_alpha;`` should be used.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_property_saturation:

.. rst-class:: classref-property

:ref:`float<class_float>` **saturation** = ``1.0`` :ref:`🔗<class_DPITexture_property_saturation>`

.. rst-class:: classref-property-setget

- |void| **set_saturation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_saturation**\ (\ )

Redéfinit la saturation de la texture.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_DPITexture_method_create_from_string:

.. rst-class:: classref-method

:ref:`DPITexture<class_DPITexture>` **create_from_string**\ (\ source\: :ref:`String<class_String>`, scale\: :ref:`float<class_float>` = 1.0, saturation\: :ref:`float<class_float>` = 1.0, color_map\: :ref:`Dictionary<class_Dictionary>` = {}\ ) |static| :ref:`🔗<class_DPITexture_method_create_from_string>`

Creates a new **DPITexture** and initializes it by allocating and setting the SVG data to ``source``.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_get_scaled_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_scaled_rid**\ (\ ) |const| :ref:`🔗<class_DPITexture_method_get_scaled_rid>`

Returns the :ref:`RID<class_RID>` of the texture rasterized to match the oversampling of the currently drawn canvas item.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_get_source:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source**\ (\ ) |const| :ref:`🔗<class_DPITexture_method_get_source>`

Returns this SVG texture's source code.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_DPITexture_method_set_size_override>`

Redimensionne la texture aux dimensions spécifiées.

.. rst-class:: classref-item-separator

----

.. _class_DPITexture_method_set_source:

.. rst-class:: classref-method

|void| **set_source**\ (\ source\: :ref:`String<class_String>`\ ) :ref:`🔗<class_DPITexture_method_set_source>`

Sets this SVG texture's source code.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
