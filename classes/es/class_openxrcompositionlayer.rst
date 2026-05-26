:github_url: hide

.. _class_OpenXRCompositionLayer:

OpenXRCompositionLayer
======================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`OpenXRCompositionLayerCylinder<class_OpenXRCompositionLayerCylinder>`, :ref:`OpenXRCompositionLayerEquirect<class_OpenXRCompositionLayerEquirect>`, :ref:`OpenXRCompositionLayerQuad<class_OpenXRCompositionLayerQuad>`

The parent class of all OpenXR composition layer nodes.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Composition layers allow 2D viewports to be displayed inside of the headset by the XR compositor through special projections that retain their quality. This allows for rendering clear text while keeping the layer at a native resolution.

\ **Note:** If the OpenXR runtime doesn't support the given composition layer type, a fallback mesh can be generated with a :ref:`ViewportTexture<class_ViewportTexture>`, in order to emulate the composition layer.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_OpenXRCompositionLayer_Filter:

.. rst-class:: classref-enumeration

enum **Filter**: :ref:`🔗<enum_OpenXRCompositionLayer_Filter>`

.. _class_OpenXRCompositionLayer_constant_FILTER_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_NEAREST** = ``0``

Realiza un filtrado de vecino más cercano al muestrear la textura.

.. _class_OpenXRCompositionLayer_constant_FILTER_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_LINEAR** = ``1``

Realiza un filtrado lineal al muestrear la textura.

.. _class_OpenXRCompositionLayer_constant_FILTER_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_CUBIC** = ``2``

Realiza un filtrado cúbico al muestrear la textura.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_MipmapMode:

.. rst-class:: classref-enumeration

enum **MipmapMode**: :ref:`🔗<enum_OpenXRCompositionLayer_MipmapMode>`

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_DISABLED** = ``0``

Desactiva el mipmapping.

\ **Nota:** El mipmapping solo se puede desactivar en el renderizador de Compatibilidad.

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_NEAREST** = ``1``

Usa el mipmap de la resolución más cercana.

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_LINEAR** = ``2``

Usa la interpolación lineal de los dos mipmaps de la resolución más cercana.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_Wrap:

.. rst-class:: classref-enumeration

enum **Wrap**: :ref:`🔗<enum_OpenXRCompositionLayer_Wrap>`

.. _class_OpenXRCompositionLayer_constant_WRAP_CLAMP_TO_BORDER:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_CLAMP_TO_BORDER** = ``0``

Fija la textura al color de borde especificado.

.. _class_OpenXRCompositionLayer_constant_WRAP_CLAMP_TO_EDGE:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_CLAMP_TO_EDGE** = ``1``

Fijar la textura a su color de borde.

.. _class_OpenXRCompositionLayer_constant_WRAP_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_REPEAT** = ``2``

Repite la textura infinitamente.

.. _class_OpenXRCompositionLayer_constant_WRAP_MIRRORED_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_MIRRORED_REPEAT** = ``3``

Repite la textura infinitamente, reflejándola en cada repetición.

.. _class_OpenXRCompositionLayer_constant_WRAP_MIRROR_CLAMP_TO_EDGE:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_MIRROR_CLAMP_TO_EDGE** = ``4``

Refleja la textura una vez y luego fija la textura al color de su borde.

\ **Nota:** Este modo de ajuste no está disponible en el renderizador de Compatibilidad.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_Swizzle:

.. rst-class:: classref-enumeration

enum **Swizzle**: :ref:`🔗<enum_OpenXRCompositionLayer_Swizzle>`

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_RED:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_RED** = ``0``

Mapea un canal de color al valor del canal rojo.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_GREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_GREEN** = ``1``

Mapea un canal de color al valor del canal verde.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_BLUE:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_BLUE** = ``2``

Mapea un canal de color al valor del canal azul.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ALPHA:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ALPHA** = ``3``

Mapea un canal de color al valor del canal alfa.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ZERO:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ZERO** = ``4``

Mapea un canal de color al valor de cero.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ONE:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ONE** = ``5``

Mapea un canal de color al valor de uno.

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRCompositionLayer_property_alpha_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alpha_blend** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_alpha_blend>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_alpha_blend**\ (\ )

Enables the blending the layer using its alpha channel.

Can be combined with :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` to give the layer a transparent background.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_android_surface_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **android_surface_size** = ``Vector2i(1024, 1024)`` :ref:`🔗<class_OpenXRCompositionLayer_property_android_surface_size>`

.. rst-class:: classref-property-setget

- |void| **set_android_surface_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_android_surface_size**\ (\ )

The size of the Android surface to create if :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` is enabled.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_enable_hole_punch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_hole_punch** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_enable_hole_punch>`

.. rst-class:: classref-property-setget

- |void| **set_enable_hole_punch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_hole_punch**\ (\ )

Enables a technique called "hole punching", which allows putting the composition layer behind the main projection layer (i.e. setting :ref:`sort_order<class_OpenXRCompositionLayer_property_sort_order>` to a negative value) while "punching a hole" through everything rendered by Godot so that the layer is still visible.

This can be used to create the illusion that the composition layer exists in the same 3D space as everything rendered by Godot, allowing objects to appear to pass both behind or in front of the composition layer.

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

El :ref:`SubViewport<class_SubViewport>` para renderizar en la capa de composición.

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

El orden de clasificación de esta capa de composición. Los números más altos se mostrarán delante de los más bajos.

\ **Nota:** Esto no tendrá efecto si se utiliza una malla de respaldo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_alpha_swizzle** = ``3`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_alpha_swizzle**\ (\ )

The swizzle value for the alpha channel of the swapchain state.

\ **Note:** This property only has an effect on devices that support the OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan extensions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_blue_swizzle** = ``2`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_blue_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_blue_swizzle**\ (\ )

The swizzle value for the blue channel of the swapchain state.

\ **Note:** This property only has an effect on devices that support the OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan extensions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **swapchain_state_border_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

El color del borde del estado de la cadena de intercambio que se utiliza cuando el modo de ajuste se fija al borde.

\ **Nota:** Esta propiedad solo tiene efecto en los dispositivos que admiten las extensiones OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_green_swizzle** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_green_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_green_swizzle**\ (\ )

The swizzle value for the green channel of the swapchain state.

\ **Note:** This property only has an effect on devices that support the OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan extensions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap:

.. rst-class:: classref-property

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **swapchain_state_horizontal_wrap** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_wrap**\ (\ value\: :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`\ )
- :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **get_horizontal_wrap**\ (\ )

El modo de ajuste horizontal del estado de la cadena de intercambio.

\ **Nota:** Esta propiedad solo tiene efecto en los dispositivos que admiten las extensiones OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_mag_filter:

.. rst-class:: classref-property

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **swapchain_state_mag_filter** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`\ )
- :ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **get_mag_filter**\ (\ )

El filtro de magnificación del estado de la cadena de intercambio.

\ **Nota:** Esta propiedad solo tiene efecto en los dispositivos que soportan las extensiones OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy:

.. rst-class:: classref-property

:ref:`float<class_float>` **swapchain_state_max_anisotropy** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_max_anisotropy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_anisotropy**\ (\ )

La anisotropía máxima del estado de la cadena de intercambio.

\ **Nota:** Esta propiedad solo tiene efecto en los dispositivos que soportan las extensiones OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_min_filter:

.. rst-class:: classref-property

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **swapchain_state_min_filter** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`\ )
- :ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **get_min_filter**\ (\ )

The minification filter of the swapchain state.

\ **Note:** This property only has an effect on devices that support the OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan extensions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode:

.. rst-class:: classref-property

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **swapchain_state_mipmap_mode** = ``2`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mipmap_mode**\ (\ value\: :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>`\ )
- :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **get_mipmap_mode**\ (\ )

El modo mipmap del estado de la cadena de intercambio.

\ **Nota:** Esta propiedad solo tiene efecto en los dispositivos que admiten las extensiones OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_red_swizzle** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_red_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_red_swizzle**\ (\ )

The swizzle value for the red channel of the swapchain state.

\ **Note:** This property only has an effect on devices that support the OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan extensions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap:

.. rst-class:: classref-property

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **swapchain_state_vertical_wrap** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_wrap**\ (\ value\: :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`\ )
- :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **get_vertical_wrap**\ (\ )

The vertical wrap mode of the swapchain state.

\ **Note:** This property only has an effect on devices that support the OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan extensions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_use_android_surface:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_android_surface** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_use_android_surface>`

.. rst-class:: classref-property-setget

- |void| **set_use_android_surface**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_android_surface**\ (\ )

Si está habilitado, se creará una superficie de Android (con las dimensiones de :ref:`android_surface_size<class_OpenXRCompositionLayer_property_android_surface_size>`) que proporcionará el contenido 2D para la capa de composición, en lugar de utilizar :ref:`layer_viewport<class_OpenXRCompositionLayer_property_layer_viewport>`.

Véase :ref:`get_android_surface()<class_OpenXRCompositionLayer_method_get_android_surface>` para obtener información sobre cómo obtener la superficie para que tu aplicación pueda dibujar en ella.

\ **Nota:** Esto solo funcionará en compilaciones de Android.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRCompositionLayer_method_get_android_surface:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_android_surface**\ (\ ) :ref:`🔗<class_OpenXRCompositionLayer_method_get_android_surface>`

Returns a :ref:`JavaObject<class_JavaObject>` representing an ``android.view.Surface`` if :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` is enabled and OpenXR has created the surface. Otherwise, this will return ``null``.

\ **Note:** The surface can only be created during an active OpenXR session. So, if :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` is enabled outside of an OpenXR session, it won't be created until a new session fully starts.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **intersects_ray**\ (\ origin\: :ref:`Vector3<class_Vector3>`, direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_OpenXRCompositionLayer_method_intersects_ray>`

Returns UV coordinates where the given ray intersects with the composition layer. ``origin`` and ``direction`` must be in global space.

Returns ``Vector2(-1.0, -1.0)`` if the ray doesn't intersect.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_method_is_natively_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_natively_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRCompositionLayer_method_is_natively_supported>`

Returns ``true`` if the OpenXR runtime natively supports this composition layer type.

\ **Note:** This will only return an accurate result after the OpenXR session has started.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
