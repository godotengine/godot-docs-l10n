:github_url: hide

.. _class_OpenXRCompositionLayer:

OpenXRCompositionLayer
======================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`OpenXRCompositionLayerCylinder<class_OpenXRCompositionLayerCylinder>`, :ref:`OpenXRCompositionLayerEquirect<class_OpenXRCompositionLayerEquirect>`, :ref:`OpenXRCompositionLayerQuad<class_OpenXRCompositionLayerQuad>`

所有 OpenXR 合成层节点的父类。

.. rst-class:: classref-introduction-group

描述
----

合成层允许 XR 合成器通过保留其质量的特殊投影，从而在头戴式设备内显示 2D 视口。这样可以在保持图层的原始分辨率的同时，渲染清晰的文本。

\ **注意：**\ 如果 OpenXR 运行时不支持给定的合成层类型，则可以使用 :ref:`ViewportTexture<class_ViewportTexture>` 生成后备网格，以模拟合成层。

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

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

枚举
----

.. _enum_OpenXRCompositionLayer_Filter:

.. rst-class:: classref-enumeration

enum **Filter**: :ref:`🔗<enum_OpenXRCompositionLayer_Filter>`

.. _class_OpenXRCompositionLayer_constant_FILTER_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_NEAREST** = ``0``

对纹理进行采样时执行最邻近过滤。

.. _class_OpenXRCompositionLayer_constant_FILTER_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_LINEAR** = ``1``

对纹理进行采样时执行线性过滤。

.. _class_OpenXRCompositionLayer_constant_FILTER_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_CUBIC** = ``2``

对纹理进行采样时执行立方过滤。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_MipmapMode:

.. rst-class:: classref-enumeration

enum **MipmapMode**: :ref:`🔗<enum_OpenXRCompositionLayer_MipmapMode>`

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_DISABLED** = ``0``

禁用 Mipmap。

\ **注意：**\ Mipmap 只有在兼容渲染器中能够禁用。

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_NEAREST** = ``1``

使用最接近分辨率的 mipmap。

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_LINEAR** = ``2``

使用最接近分辨率的两个 mipmap 的线性插值。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_Wrap:

.. rst-class:: classref-enumeration

enum **Wrap**: :ref:`🔗<enum_OpenXRCompositionLayer_Wrap>`

.. _class_OpenXRCompositionLayer_constant_WRAP_CLAMP_TO_BORDER:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_CLAMP_TO_BORDER** = ``0``

使用指定的边框颜色限制纹理。

.. _class_OpenXRCompositionLayer_constant_WRAP_CLAMP_TO_EDGE:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_CLAMP_TO_EDGE** = ``1``

使用边缘颜色限制纹理。

.. _class_OpenXRCompositionLayer_constant_WRAP_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_REPEAT** = ``2``

无限重复纹理。

.. _class_OpenXRCompositionLayer_constant_WRAP_MIRRORED_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_MIRRORED_REPEAT** = ``3``

无限重复纹理，每次重复都进行镜像。

.. _class_OpenXRCompositionLayer_constant_WRAP_MIRROR_CLAMP_TO_EDGE:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_MIRROR_CLAMP_TO_EDGE** = ``4``

纹理会进行一次镜像，然后使用边缘颜色进行限制。

\ **注意：**\ 该环绕模式在兼容渲染器中不可用。

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_Swizzle:

.. rst-class:: classref-enumeration

enum **Swizzle**: :ref:`🔗<enum_OpenXRCompositionLayer_Swizzle>`

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_RED:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_RED** = ``0``

将颜色通道映射为红色通道的值。

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_GREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_GREEN** = ``1``

将颜色通道映射为绿色通道的值。

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_BLUE:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_BLUE** = ``2``

将颜色通道映射为蓝色通道的值。

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ALPHA:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ALPHA** = ``3``

将颜色通道映射为 Alpha 通道的值。

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ZERO:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ZERO** = ``4``

将颜色通道映射为零。

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ONE:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ONE** = ``5``

将颜色通道映射为一。

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

属性说明
--------

.. _class_OpenXRCompositionLayer_property_alpha_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alpha_blend** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_alpha_blend>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_alpha_blend**\ (\ )

启用使用其 alpha 通道混合图层的功能。

可以与 :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>` 结合使用，以便为图层提供透明背景。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_android_surface_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **android_surface_size** = ``Vector2i(1024, 1024)`` :ref:`🔗<class_OpenXRCompositionLayer_property_android_surface_size>`

.. rst-class:: classref-property-setget

- |void| **set_android_surface_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_android_surface_size**\ (\ )

如果启用了 :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>`\ ，则为要创建的 Android 表面的大小。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_enable_hole_punch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_hole_punch** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_enable_hole_punch>`

.. rst-class:: classref-property-setget

- |void| **set_enable_hole_punch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_hole_punch**\ (\ )

启用一种称为“打孔”的技术，该技术允许将合成层置于主投影层后面（即将 :ref:`sort_order<class_OpenXRCompositionLayer_property_sort_order>` 设置为负值），同时在 Godot 渲染的所有内容上“打一个洞”，以便该层仍然可见。

这可用于创建合成层与 Godot 渲染的所有内容存在于同一 3D 空间中的幻觉，使对象看起来既从合成层的后面又从合成层的前面经过。

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

合成层上渲染的 :ref:`SubViewport<class_SubViewport>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_protected_content:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **protected_content** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_protected_content>`

.. rst-class:: classref-property-setget

- |void| **set_protected_content**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_protected_content**\ (\ )

如果启用，则 OpenXR 交换链将使用 ``XR_SWAPCHAIN_CREATE_PROTECTED_CONTENT_BIT`` 标志创建，这将保护其内容免受 CPU 访问。

与 Android Surface 一起使用时，这可能允许显示 DRM 内容，并且仅在 Surface 首次创建时生效；之后对该属性的更改将无效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_sort_order:

.. rst-class:: classref-property

:ref:`int<class_int>` **sort_order** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_sort_order>`

.. rst-class:: classref-property-setget

- |void| **set_sort_order**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sort_order**\ (\ )

合成层的排序顺序。数字较大的层显示在数字较小的层之前。

\ **注意：**\ 使用回退网格时无效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_alpha_swizzle** = ``3`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_alpha_swizzle**\ (\ )

交换链状态的 Alpha 通道分量重排值。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_blue_swizzle** = ``2`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_blue_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_blue_swizzle**\ (\ )

交换链状态的蓝色通道分量重排值。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **swapchain_state_border_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

当环绕模式为限制到边界时，使用的交换链状态的边框颜色。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_green_swizzle** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_green_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_green_swizzle**\ (\ )

交换链状态的绿色通道分量重排值。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap:

.. rst-class:: classref-property

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **swapchain_state_horizontal_wrap** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_wrap**\ (\ value\: :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`\ )
- :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **get_horizontal_wrap**\ (\ )

交换链状态的水平环绕模式。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_mag_filter:

.. rst-class:: classref-property

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **swapchain_state_mag_filter** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`\ )
- :ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **get_mag_filter**\ (\ )

交换链状态的放大过滤器。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy:

.. rst-class:: classref-property

:ref:`float<class_float>` **swapchain_state_max_anisotropy** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_max_anisotropy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_anisotropy**\ (\ )

交换链状态的最大各向异性。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_min_filter:

.. rst-class:: classref-property

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **swapchain_state_min_filter** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`\ )
- :ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **get_min_filter**\ (\ )

交换链状态的缩小过滤器。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode:

.. rst-class:: classref-property

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **swapchain_state_mipmap_mode** = ``2`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mipmap_mode**\ (\ value\: :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>`\ )
- :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **get_mipmap_mode**\ (\ )

交换链状态的 mipmap 模式。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_red_swizzle** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_red_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_red_swizzle**\ (\ )

交换链状态的红色通道分量重排值。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap:

.. rst-class:: classref-property

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **swapchain_state_vertical_wrap** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_wrap**\ (\ value\: :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`\ )
- :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **get_vertical_wrap**\ (\ )

交换链状态的垂直环绕模式。

\ **注意：**\ 该属性仅对支持 OpenXR XR_FB_swapchain_update_state OpenGLES/Vulkan 扩展的设备有效。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_use_android_surface:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_android_surface** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_use_android_surface>`

.. rst-class:: classref-property-setget

- |void| **set_use_android_surface**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_android_surface**\ (\ )

如果启用，则会创建 Android 表面（大小为 :ref:`android_surface_size<class_OpenXRCompositionLayer_property_android_surface_size>`\ ），为合成层提供 2D 内容，不使用 :ref:`layer_viewport<class_OpenXRCompositionLayer_property_layer_viewport>`\ 。

如何获取该表面以便应用程序在表面上进行绘制，见 :ref:`get_android_surface()<class_OpenXRCompositionLayer_method_get_android_surface>`\ 。

\ **注意：**\ 仅在 Android 构建上有效。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_OpenXRCompositionLayer_method_get_android_surface:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_android_surface**\ (\ ) :ref:`🔗<class_OpenXRCompositionLayer_method_get_android_surface>`

如果启用了 :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` 并且 OpenXR 已创建 ``android.view.Surface``\ ，则返回代表该表面的 :ref:`JavaObject<class_JavaObject>`\ 。否则返回 ``null``\ 。

\ **注意：**\ 表面只能在活动的 OpenXR 会话中创建。因此，如果 :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` 是在 OpenXR 会话外启用的，就需要等到启动全新的会话才会创建。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **intersects_ray**\ (\ origin\: :ref:`Vector3<class_Vector3>`, direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_OpenXRCompositionLayer_method_intersects_ray>`

返回给定射线与合成层相交的 UV 坐标。\ ``origin`` 和 ``direction`` 必须位于全局空间中。

如果射线不相交，则返回 ``Vector2(-1.0, -1.0)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_method_is_natively_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_natively_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRCompositionLayer_method_is_natively_supported>`

如果 OpenXR 运行时本身支持该合成层类型，则返回 ``true``\ 。

\ **注意：**\ 仅在 OpenXR 会话启动后才会返回准确结果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
