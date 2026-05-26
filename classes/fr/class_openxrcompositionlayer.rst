:github_url: hide

.. _class_OpenXRCompositionLayer:

OpenXRCompositionLayer
======================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`OpenXRCompositionLayerCylinder<class_OpenXRCompositionLayerCylinder>`, :ref:`OpenXRCompositionLayerEquirect<class_OpenXRCompositionLayerEquirect>`, :ref:`OpenXRCompositionLayerQuad<class_OpenXRCompositionLayerQuad>`

La classe parente de tous les nœuds de composition de calque OpenXR.

.. rst-class:: classref-introduction-group

Description
-----------

Les calques de composition permettent aux fenêtres d'affichage 2D d'être d'affichés à l'intérieur du casque par le compositeur XR avec des projections spéciales qui conservent leur qualité. Cela permet de rendre le texte clairement tout en gardant le calque à une résolution native.

\ **Note :** Si le runtime OpenXR ne supporte pas le type de calque de composition donné, un maillage de repli peut être généré avec un :ref:`ViewportTexture<class_ViewportTexture>`, afin d'émuler le calque de composition.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`alpha_blend<class_OpenXRCompositionLayer_property_alpha_blend>`                                         | ``false``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                 | :ref:`android_surface_size<class_OpenXRCompositionLayer_property_android_surface_size>`                       | ``Vector2i(1024, 1024)`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`enable_hole_punch<class_OpenXRCompositionLayer_property_enable_hole_punch>`                             | ``false``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`EyeVisibility<enum_OpenXRCompositionLayer_EyeVisibility>` | :ref:`eye_visibility<class_OpenXRCompositionLayer_property_eye_visibility>`                                   | ``0``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`SubViewport<class_SubViewport>`                           | :ref:`layer_viewport<class_OpenXRCompositionLayer_property_layer_viewport>`                                   |                          |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`protected_content<class_OpenXRCompositionLayer_property_protected_content>`                             | ``false``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                           | :ref:`sort_order<class_OpenXRCompositionLayer_property_sort_order>`                                           | ``1``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`             | :ref:`swapchain_state_alpha_swizzle<class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle>`     | ``3``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`             | :ref:`swapchain_state_blue_swizzle<class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle>`       | ``2``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                                       | :ref:`swapchain_state_border_color<class_OpenXRCompositionLayer_property_swapchain_state_border_color>`       | ``Color(0, 0, 0, 0)``    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`             | :ref:`swapchain_state_green_swizzle<class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle>`     | ``1``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`                   | :ref:`swapchain_state_horizontal_wrap<class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap>` | ``0``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`               | :ref:`swapchain_state_mag_filter<class_OpenXRCompositionLayer_property_swapchain_state_mag_filter>`           | ``1``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                                       | :ref:`swapchain_state_max_anisotropy<class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy>`   | ``1.0``                  |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`               | :ref:`swapchain_state_min_filter<class_OpenXRCompositionLayer_property_swapchain_state_min_filter>`           | ``1``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>`       | :ref:`swapchain_state_mipmap_mode<class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode>`         | ``2``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`             | :ref:`swapchain_state_red_swizzle<class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle>`         | ``0``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`                   | :ref:`swapchain_state_vertical_wrap<class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap>`     | ``0``                    |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>`                         | ``false``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`JavaObject<class_JavaObject>` | :ref:`get_android_surface<class_OpenXRCompositionLayer_method_get_android_surface>`\ (\ )                                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`intersects_ray<class_OpenXRCompositionLayer_method_intersects_ray>`\ (\ origin\: :ref:`Vector3<class_Vector3>`, direction\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_natively_supported<class_OpenXRCompositionLayer_method_is_natively_supported>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_OpenXRCompositionLayer_Filter:

.. rst-class:: classref-enumeration

enum **Filter**: :ref:`🔗<enum_OpenXRCompositionLayer_Filter>`

.. _class_OpenXRCompositionLayer_constant_FILTER_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_NEAREST** = ``0``

Effectue un filtrage du plus proche voisin lors de l’échantillonnage de la texture.

.. _class_OpenXRCompositionLayer_constant_FILTER_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_LINEAR** = ``1``

Effectue un filtrage linéaire lors de l’échantillonnage de la texture.

.. _class_OpenXRCompositionLayer_constant_FILTER_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_CUBIC** = ``2``

Effectue un filtrage cubique lors de l’échantillonnage de la texture.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_MipmapMode:

.. rst-class:: classref-enumeration

enum **MipmapMode**: :ref:`🔗<enum_OpenXRCompositionLayer_MipmapMode>`

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_DISABLED** = ``0``

Désactive le mipmapping.

\ **Note :** Le Mipmapping ne peut être désactivé que dans le moteur de rendu Compatibilité.

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_NEAREST** = ``1``

Utilise la mipmap de la résolution la plus proche.

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_LINEAR** = ``2``

Utilise une interpolation linéaire entre les deux mipmaps de la résolution la plus proche.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_Wrap:

.. rst-class:: classref-enumeration

enum **Wrap**: :ref:`🔗<enum_OpenXRCompositionLayer_Wrap>`

.. _class_OpenXRCompositionLayer_constant_WRAP_CLAMP_TO_BORDER:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_CLAMP_TO_BORDER** = ``0``

Borne la texture à sa couleur de bordure spécifiée.

.. _class_OpenXRCompositionLayer_constant_WRAP_CLAMP_TO_EDGE:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_CLAMP_TO_EDGE** = ``1``

Borne la texture à sa couleur de bord.

.. _class_OpenXRCompositionLayer_constant_WRAP_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_REPEAT** = ``2``

Répète la texture infiniment.

.. _class_OpenXRCompositionLayer_constant_WRAP_MIRRORED_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_MIRRORED_REPEAT** = ``3``

Répète la texture infiniment, la retournant à chaque répétition.

.. _class_OpenXRCompositionLayer_constant_WRAP_MIRROR_CLAMP_TO_EDGE:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_MIRROR_CLAMP_TO_EDGE** = ``4``

Retourne la texture une fois et puis borne la texture à sa couleur de bord.

\ **Note :** Ce mode d'enroulement n'est pas disponible dans le moteur de rendu Compatibilité.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_Swizzle:

.. rst-class:: classref-enumeration

enum **Swizzle**: :ref:`🔗<enum_OpenXRCompositionLayer_Swizzle>`

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_RED:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_RED** = ``0``

Associe un canal de couleur à la valeur du canal rouge.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_GREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_GREEN** = ``1``

Associe un canal de couleur à la valeur du canal vert.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_BLUE:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_BLUE** = ``2``

Associe un canal de couleur à la valeur du canal bleu.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ALPHA:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ALPHA** = ``3``

Associe un canal de couleur à la valeur du canal alpha.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ZERO:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ZERO** = ``4``

Associe un canal de couleur à la valeur zéro.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ONE:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ONE** = ``5``

Associe un canal de couleur à la valeur un.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_EyeVisibility:

.. rst-class:: classref-enumeration

enum **EyeVisibility**: :ref:`🔗<enum_OpenXRCompositionLayer_EyeVisibility>`

.. _class_OpenXRCompositionLayer_constant_EYE_VISIBILITY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`EyeVisibility<enum_OpenXRCompositionLayer_EyeVisibility>` **EYE_VISIBILITY_BOTH** = ``0``

The layer is visible to both the left and right eyes.

.. _class_OpenXRCompositionLayer_constant_EYE_VISIBILITY_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`EyeVisibility<enum_OpenXRCompositionLayer_EyeVisibility>` **EYE_VISIBILITY_LEFT** = ``1``

The layer is visible only to the left eye.

.. _class_OpenXRCompositionLayer_constant_EYE_VISIBILITY_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`EyeVisibility<enum_OpenXRCompositionLayer_EyeVisibility>` **EYE_VISIBILITY_RIGHT** = ``2``

The layer is visible only to the right eye.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRCompositionLayer_property_alpha_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alpha_blend** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_alpha_blend>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_alpha_blend**\ (\ )

Permet le mélange du calque en utilisant son canal alpha.

Peut être combiné avec :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` pour donner au calque un fond transparent.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_android_surface_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **android_surface_size** = ``Vector2i(1024, 1024)`` :ref:`🔗<class_OpenXRCompositionLayer_property_android_surface_size>`

.. rst-class:: classref-property-setget

- |void| **set_android_surface_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_android_surface_size**\ (\ )

La taille de la surface Android à créer si :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` est activé.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_enable_hole_punch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_hole_punch** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_enable_hole_punch>`

.. rst-class:: classref-property-setget

- |void| **set_enable_hole_punch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_hole_punch**\ (\ )

Active une technique appelée "hole punching" (litt. perforation de trous), qui permet de mettre le calque de composition derrière le calque de projection principal(c.-à-d. définir :ref:`sort_order<class_OpenXRCompositionLayer_property_sort_order>` à une valeur négative) tout en "perforant un trou" à travers tout ce qui est rendu par Godot afin que le calque soit encore visible.

Cela peut être utilisé pour créer l'illusion que le calque de composition existe dans le même espace 3D que tout ce qui est rendu par Godot, permettant aux objets de passer à la fois derrière ou devant le calque de composition.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_eye_visibility:

.. rst-class:: classref-property

:ref:`EyeVisibility<enum_OpenXRCompositionLayer_EyeVisibility>` **eye_visibility** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_eye_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_eye_visibility**\ (\ value\: :ref:`EyeVisibility<enum_OpenXRCompositionLayer_EyeVisibility>`\ )
- :ref:`EyeVisibility<enum_OpenXRCompositionLayer_EyeVisibility>` **get_eye_visibility**\ (\ )

The eye(s) the composition layer is visible to.

\ **Note:** Not all composition layer types or runtimes support restricting visibility to a single eye.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_layer_viewport:

.. rst-class:: classref-property

:ref:`SubViewport<class_SubViewport>` **layer_viewport** :ref:`🔗<class_OpenXRCompositionLayer_property_layer_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_layer_viewport**\ (\ value\: :ref:`SubViewport<class_SubViewport>`\ )
- :ref:`SubViewport<class_SubViewport>` **get_layer_viewport**\ (\ )

Le :ref:`SubViewport<class_SubViewport>` à rendre sur le calque de composition.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_protected_content:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **protected_content** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_protected_content>`

.. rst-class:: classref-property-setget

- |void| **set_protected_content**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_protected_content**\ (\ )

If enabled, the OpenXR swapchain will be created with the ``XR_SWAPCHAIN_CREATE_PROTECTED_CONTENT_BIT`` flag, which will protect its contents from CPU access.

When used with an Android Surface, this may allow DRM content to be presented, and will only take effect when the Surface is first created; later changes to this property will have no effect.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_sort_order:

.. rst-class:: classref-property

:ref:`int<class_int>` **sort_order** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_sort_order>`

.. rst-class:: classref-property-setget

- |void| **set_sort_order**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sort_order**\ (\ )

L'ordre de tri pour ce calque de composition. Les valeurs plus élevées seront affichées devant les valeurs inférieures.

\ **Note :** Cela n'aura aucun effet si un maillage de repli est utilisé.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_alpha_swizzle** = ``3`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_alpha_swizzle**\ (\ )

La valeur de permutation (swizzle) pour le canal alpha de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_blue_swizzle** = ``2`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_blue_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_blue_swizzle**\ (\ )

La valeur de permutation (swizzle) pour le canal bleu de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **swapchain_state_border_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

La couleur de bordure de l'état de swapchain qui est utilisée lorsque le mode de wrap est limité à la bordure.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_green_swizzle** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_green_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_green_swizzle**\ (\ )

La valeur de permutation (swizzle) pour le canal vert de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap:

.. rst-class:: classref-property

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **swapchain_state_horizontal_wrap** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_wrap**\ (\ value\: :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`\ )
- :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **get_horizontal_wrap**\ (\ )

Le mode de wrap horizontal de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_mag_filter:

.. rst-class:: classref-property

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **swapchain_state_mag_filter** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`\ )
- :ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **get_mag_filter**\ (\ )

Le filtre de grossissement de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy:

.. rst-class:: classref-property

:ref:`float<class_float>` **swapchain_state_max_anisotropy** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_max_anisotropy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_anisotropy**\ (\ )

L'anisotropie maximale de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_min_filter:

.. rst-class:: classref-property

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **swapchain_state_min_filter** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`\ )
- :ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **get_min_filter**\ (\ )

Le filtre de minification de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode:

.. rst-class:: classref-property

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **swapchain_state_mipmap_mode** = ``2`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mipmap_mode**\ (\ value\: :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>`\ )
- :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **get_mipmap_mode**\ (\ )

Le mode de mipmap de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_red_swizzle** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_red_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_red_swizzle**\ (\ )

La valeur de permutation (swizzle) pour le canal rouge de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap:

.. rst-class:: classref-property

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **swapchain_state_vertical_wrap** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_wrap**\ (\ value\: :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`\ )
- :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **get_vertical_wrap**\ (\ )

Le mode de wrap vertical de l'état de la swapchain.

\ **Note :** Cette propriété a seulement un effet sur les appareils qui supportent les extensions OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_use_android_surface:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_android_surface** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_use_android_surface>`

.. rst-class:: classref-property-setget

- |void| **set_use_android_surface**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_android_surface**\ (\ )

Si activé, une surface Android sera créée (avec les dimensions de :ref:`android_surface_size<class_OpenXRCompositionLayer_property_android_surface_size>`) qui fournira le contenu 2D pour le calque de composition, plutôt que d'utiliser :ref:`layer_viewport<class_OpenXRCompositionLayer_property_layer_viewport>`.

Voir :ref:`get_android_surface()<class_OpenXRCompositionLayer_method_get_android_surface>` pour obtenir des informations sur la façon d'obtenir la surface afin que votre application puisse y dessiner.

\ **Note :** Cela ne fonctionnera que dans les compilations Android.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRCompositionLayer_method_get_android_surface:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_android_surface**\ (\ ) :ref:`🔗<class_OpenXRCompositionLayer_method_get_android_surface>`

Renvoie un :ref:`JavaObject<class_JavaObject>` représentant un ``android.view.Surface`` si :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` est activé et OpenXR a créé la surface. Sinon, cela renverra ``null``.

\ **Note :** La surface ne peut être créée que lors d'une session OpenXR active. Donc, si :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` est activé en dehors d'une session OpenXR, elle ne sera pas créée jusqu'à ce qu'une nouvelle session commence entièrement.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **intersects_ray**\ (\ origin\: :ref:`Vector3<class_Vector3>`, direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_OpenXRCompositionLayer_method_intersects_ray>`

Renvoie les coordonnées UV où le rayon donné intersecte avec le calque de composition. ``origin`` et ``direction`` doivent être dans l'espace global.

Renvoie ``Vector2(-1.0, -1.0)`` si le rayon n'intersecte pas.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_method_is_natively_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_natively_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRCompositionLayer_method_is_natively_supported>`

Renvoie ``true`` si le runtime OpenXR prend en charge nativement ce type de calque de composition.

\ **Note :** Cela ne renverra un résultat fiable qu'après que la session OpenXR ait commencé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
