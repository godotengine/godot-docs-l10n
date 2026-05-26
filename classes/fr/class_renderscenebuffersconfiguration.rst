:github_url: hide

.. _class_RenderSceneBuffersConfiguration:

RenderSceneBuffersConfiguration
===============================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration object used to setup a :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` object.

.. rst-class:: classref-introduction-group

Description
-----------

This configuration object is created and populated by the render engine on a viewport change and used to (re)configure a :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` object.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` | :ref:`anisotropic_filtering_level<class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level>` | ``2``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                              | :ref:`fsr_sharpness<class_RenderSceneBuffersConfiguration_property_fsr_sharpness>`                             | ``0.0``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                        | :ref:`internal_size<class_RenderSceneBuffersConfiguration_property_internal_size>`                             | ``Vector2i(0, 0)`` |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`                                 | :ref:`msaa_3d<class_RenderSceneBuffersConfiguration_property_msaa_3d>`                                         | ``0``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`RID<class_RID>`                                                                  | :ref:`render_target<class_RenderSceneBuffersConfiguration_property_render_target>`                             | ``RID()``          |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>`               | :ref:`scaling_3d_mode<class_RenderSceneBuffersConfiguration_property_scaling_3d_mode>`                         | ``255``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>`               | :ref:`screen_space_aa<class_RenderSceneBuffersConfiguration_property_screen_space_aa>`                         | ``0``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                        | :ref:`target_size<class_RenderSceneBuffersConfiguration_property_target_size>`                                 | ``Vector2i(0, 0)`` |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                              | :ref:`texture_mipmap_bias<class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias>`                 | ``0.0``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                                                  | :ref:`view_count<class_RenderSceneBuffersConfiguration_property_view_count>`                                   | ``1``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level:

.. rst-class:: classref-property

:ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **anisotropic_filtering_level** = ``2`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropic_filtering_level**\ (\ value\: :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>`\ )
- :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **get_anisotropic_filtering_level**\ (\ )

Niveau du filtrage anisotrope.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_fsr_sharpness:

.. rst-class:: classref-property

:ref:`float<class_float>` **fsr_sharpness** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_fsr_sharpness>`

.. rst-class:: classref-property-setget

- |void| **set_fsr_sharpness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fsr_sharpness**\ (\ )

FSR Sharpness applicable if FSR upscaling is used.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_internal_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **internal_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_internal_size>`

.. rst-class:: classref-property-setget

- |void| **set_internal_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_internal_size**\ (\ )

The size of the 3D render buffer used for rendering.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_msaa_3d:

.. rst-class:: classref-property

:ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **msaa_3d** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_msaa_3d>`

.. rst-class:: classref-property-setget

- |void| **set_msaa_3d**\ (\ value\: :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`\ )
- :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **get_msaa_3d**\ (\ )

The MSAA mode we're using for 3D rendering.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_render_target:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **render_target** = ``RID()`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_render_target>`

.. rst-class:: classref-property-setget

- |void| **set_render_target**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_render_target**\ (\ )

La cible de rendu associée à ces buffers.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_scaling_3d_mode:

.. rst-class:: classref-property

:ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **scaling_3d_mode** = ``255`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_scaling_3d_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_3d_mode**\ (\ value\: :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>`\ )
- :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **get_scaling_3d_mode**\ (\ )

The requested scaling mode with which we upscale/downscale if :ref:`internal_size<class_RenderSceneBuffersConfiguration_property_internal_size>` and :ref:`target_size<class_RenderSceneBuffersConfiguration_property_target_size>` are not equal.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_screen_space_aa:

.. rst-class:: classref-property

:ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **screen_space_aa** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_screen_space_aa>`

.. rst-class:: classref-property-setget

- |void| **set_screen_space_aa**\ (\ value\: :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>`\ )
- :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **get_screen_space_aa**\ (\ )

The requested screen space AA applied in post processing.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_target_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **target_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_target_size>`

.. rst-class:: classref-property-setget

- |void| **set_target_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_target_size**\ (\ )

The target (upscale) size if scaling is used.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_mipmap_bias** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mipmap_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_mipmap_bias**\ (\ )

Bias applied to mipmaps.

\ **Note:** This property is only supported in the Forward+ and Mobile renderers, not Compatibility. In Compatibility, this property is always treated as if it was set to ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_view_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **view_count** = ``1`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_view_count>`

.. rst-class:: classref-property-setget

- |void| **set_view_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_view_count**\ (\ )

Le nombre de vues que nous rendons.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
