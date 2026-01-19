:github_url: hide

.. _class_OpenXRCompositionLayer:

OpenXRCompositionLayer
======================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`OpenXRCompositionLayerCylinder<class_OpenXRCompositionLayerCylinder>`, :ref:`OpenXRCompositionLayerEquirect<class_OpenXRCompositionLayerEquirect>`, :ref:`OpenXRCompositionLayerQuad<class_OpenXRCompositionLayerQuad>`

Паризький клас всіх шарових вузлів OpenXR.

.. rst-class:: classref-introduction-group

Опис
--------

Складові шари дозволяють 2D переглядатипорти, які відображаються всередині гарнітури композитором XR через спеціальні проекції, які зберігають їх якість. Це дозволяє надати чіткий текст, зберігаючи шар на рідній роздільній здатності.

\ **Примітка:** Якщо пусковий час OpenXR не підтримує тип даної композиції, сітчаста сіточка може бути створена за допомогою :ref:`ViewportTexture<class_ViewportTexture>`, для того, щоб емульувати шар композиції.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`alpha_blend<class_OpenXRCompositionLayer_property_alpha_blend>`                                         | ``false``                |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2i<class_Vector2i>`                           | :ref:`android_surface_size<class_OpenXRCompositionLayer_property_android_surface_size>`                       | ``Vector2i(1024, 1024)`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`enable_hole_punch<class_OpenXRCompositionLayer_property_enable_hole_punch>`                             | ``false``                |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`SubViewport<class_SubViewport>`                     | :ref:`layer_viewport<class_OpenXRCompositionLayer_property_layer_viewport>`                                   |                          |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`protected_content<class_OpenXRCompositionLayer_property_protected_content>`                             | ``false``                |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                                     | :ref:`sort_order<class_OpenXRCompositionLayer_property_sort_order>`                                           | ``1``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`       | :ref:`swapchain_state_alpha_swizzle<class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle>`     | ``3``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`       | :ref:`swapchain_state_blue_swizzle<class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle>`       | ``2``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                                 | :ref:`swapchain_state_border_color<class_OpenXRCompositionLayer_property_swapchain_state_border_color>`       | ``Color(0, 0, 0, 0)``    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`       | :ref:`swapchain_state_green_swizzle<class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle>`     | ``1``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`             | :ref:`swapchain_state_horizontal_wrap<class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap>` | ``0``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`         | :ref:`swapchain_state_mag_filter<class_OpenXRCompositionLayer_property_swapchain_state_mag_filter>`           | ``1``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                                 | :ref:`swapchain_state_max_anisotropy<class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy>`   | ``1.0``                  |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`         | :ref:`swapchain_state_min_filter<class_OpenXRCompositionLayer_property_swapchain_state_min_filter>`           | ``1``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` | :ref:`swapchain_state_mipmap_mode<class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode>`         | ``2``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`       | :ref:`swapchain_state_red_swizzle<class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle>`         | ``0``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`             | :ref:`swapchain_state_vertical_wrap<class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap>`     | ``0``                    |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>`                         | ``false``                |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

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

Переліки
----------------

.. _enum_OpenXRCompositionLayer_Filter:

.. rst-class:: classref-enumeration

enum **Filter**: :ref:`🔗<enum_OpenXRCompositionLayer_Filter>`

.. _class_OpenXRCompositionLayer_constant_FILTER_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_NEAREST** = ``0``

Виконайте фільтрацію найближчих сусідів під час вибірки текстури.

.. _class_OpenXRCompositionLayer_constant_FILTER_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_LINEAR** = ``1``

Виконуйте лінійну фільтрацію під час семплування текстури.

.. _class_OpenXRCompositionLayer_constant_FILTER_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **FILTER_CUBIC** = ``2``

Виконайте кубічну фільтрацію під час семплування текстури.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_MipmapMode:

.. rst-class:: classref-enumeration

enum **MipmapMode**: :ref:`🔗<enum_OpenXRCompositionLayer_MipmapMode>`

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_DISABLED** = ``0``

Вимкнути MIP-мапінг.

\ **Примітка:** MIP-мапінг можна вимкнути лише в рендерері сумісності.

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_NEAREST** = ``1``

Використовуйте міп-карту найближчої роздільної здатності.

.. _class_OpenXRCompositionLayer_constant_MIPMAP_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **MIPMAP_MODE_LINEAR** = ``2``

Використайте лінійну інтерполяцію двох міп-карт найближчої роздільної здатності.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_Wrap:

.. rst-class:: classref-enumeration

enum **Wrap**: :ref:`🔗<enum_OpenXRCompositionLayer_Wrap>`

.. _class_OpenXRCompositionLayer_constant_WRAP_CLAMP_TO_BORDER:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_CLAMP_TO_BORDER** = ``0``

Закріпіть текстуру до її заданого кольору межі.

.. _class_OpenXRCompositionLayer_constant_WRAP_CLAMP_TO_EDGE:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_CLAMP_TO_EDGE** = ``1``

Закріпіть текстуру за кольором її краю.

.. _class_OpenXRCompositionLayer_constant_WRAP_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_REPEAT** = ``2``

Повторюйте текстуру нескінченно.

.. _class_OpenXRCompositionLayer_constant_WRAP_MIRRORED_REPEAT:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_MIRRORED_REPEAT** = ``3``

Повторюйте текстуру нескінченно, відображаючи її на кожному повторі.

.. _class_OpenXRCompositionLayer_constant_WRAP_MIRROR_CLAMP_TO_EDGE:

.. rst-class:: classref-enumeration-constant

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **WRAP_MIRROR_CLAMP_TO_EDGE** = ``4``

Одноразово віддзеркаліть текстуру, а потім закріпіть її за кольором краю.

\ **Примітка:** Цей режим обтікання недоступний у рендерері сумісності.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRCompositionLayer_Swizzle:

.. rst-class:: classref-enumeration

enum **Swizzle**: :ref:`🔗<enum_OpenXRCompositionLayer_Swizzle>`

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_RED:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_RED** = ``0``

Зіставляє колірний канал зі значенням червоного каналу.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_GREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_GREEN** = ``1``

Зіставляє колірний канал зі значенням зеленого каналу.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_BLUE:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_BLUE** = ``2``

Зіставляє колірний канал зі значенням синього каналу.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ALPHA:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ALPHA** = ``3``

Зіставляє колірний канал зі значенням альфа-каналу.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ZERO:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ZERO** = ``4``

Зіставляє колірний канал зі значенням нуль.

.. _class_OpenXRCompositionLayer_constant_SWIZZLE_ONE:

.. rst-class:: classref-enumeration-constant

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **SWIZZLE_ONE** = ``5``

Зіставляє колірний канал зі значенням одиниці.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRCompositionLayer_property_alpha_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **alpha_blend** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_alpha_blend>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_alpha_blend**\ (\ )

Дозволяє змішувати шар за допомогою його альфа-каналу.

Можна поєднувати з :ref:`Viewport.transparent_bg<class_Viewport_property_transparent_bg>`, щоб надати шару прозорий фон.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_android_surface_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **android_surface_size** = ``Vector2i(1024, 1024)`` :ref:`🔗<class_OpenXRCompositionLayer_property_android_surface_size>`

.. rst-class:: classref-property-setget

- |void| **set_android_surface_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_android_surface_size**\ (\ )

Розмір поверхні Android для створення, якщо ввімкнено :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_enable_hole_punch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_hole_punch** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_enable_hole_punch>`

.. rst-class:: classref-property-setget

- |void| **set_enable_hole_punch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_hole_punch**\ (\ )

Увімкнено методику «пробивання свердловини», що дозволяє покласти шар композиції за основним проекційним шаром (тобто налаштування :ref:`sort_order<class_OpenXRCompositionLayer_property_sort_order>` до негативного значення), при цьому «пробиваючи отвір» через все, що надає Godot, щоб шар ще був видимим.

Це може бути використаний для створення ілюзії, що шар композиції існує в тому ж просторі 3D, оскільки все, що дає Godot, що дозволяє об'єктам, щоб з'явитися, щоб пройти обидва за або перед шаром композиції.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_layer_viewport:

.. rst-class:: classref-property

:ref:`SubViewport<class_SubViewport>` **layer_viewport** :ref:`🔗<class_OpenXRCompositionLayer_property_layer_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_layer_viewport**\ (\ value\: :ref:`SubViewport<class_SubViewport>`\ )
- :ref:`SubViewport<class_SubViewport>` **get_layer_viewport**\ (\ )

:ref:`SubViewport<class_SubViewport>` для рендерингу на шар композиції.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_protected_content:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **protected_content** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_protected_content>`

.. rst-class:: classref-property-setget

- |void| **set_protected_content**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_protected_content**\ (\ )

Якщо ввімкнено, ланцюжок обміну OpenXR буде створено з прапорцем ``XR_SWAPCHAIN_CREATE_PROTECTED_CONTENT_BIT``, який захистить його вміст від доступу процесора.

Під час використання з Android Surface це може дозволити відображення контенту DRM і набуде чинності лише під час першого створення Surface; пізніші зміни цієї властивості не матимуть жодного ефекту.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_sort_order:

.. rst-class:: classref-property

:ref:`int<class_int>` **sort_order** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_sort_order>`

.. rst-class:: classref-property-setget

- |void| **set_sort_order**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sort_order**\ (\ )

Сортувати за цим шаром композиції. Більші числа будуть показані перед нижніми номерами.

\ **Примітка:** Це не має ефекту, якщо використовується сітчаста сіточка.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_alpha_swizzle** = ``3`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_alpha_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_alpha_swizzle**\ (\ )

Значення swizzle для альфа-каналу стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan для OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_blue_swizzle** = ``2`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_blue_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_blue_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_blue_swizzle**\ (\ )

Значення swizzle для синього каналу стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan від OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **swapchain_state_border_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

Колір межі стану swapchain, який використовується, коли режим обгортання притискається до межі.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan від OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_green_swizzle** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_green_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_green_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_green_swizzle**\ (\ )

Значення swizzle для зеленого каналу стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan для OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap:

.. rst-class:: classref-property

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **swapchain_state_horizontal_wrap** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_horizontal_wrap>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_wrap**\ (\ value\: :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`\ )
- :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **get_horizontal_wrap**\ (\ )

Режим горизонтального перенесення стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan для OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_mag_filter:

.. rst-class:: classref-property

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **swapchain_state_mag_filter** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`\ )
- :ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **get_mag_filter**\ (\ )

Фільтр збільшення стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan від OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy:

.. rst-class:: classref-property

:ref:`float<class_float>` **swapchain_state_max_anisotropy** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_max_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_max_anisotropy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_anisotropy**\ (\ )

Максимальна анізотропія стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan від OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_min_filter:

.. rst-class:: classref-property

:ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **swapchain_state_min_filter** = ``1`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`Filter<enum_OpenXRCompositionLayer_Filter>`\ )
- :ref:`Filter<enum_OpenXRCompositionLayer_Filter>` **get_min_filter**\ (\ )

Фільтр мініфікації стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan від OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode:

.. rst-class:: classref-property

:ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **swapchain_state_mipmap_mode** = ``2`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_mipmap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mipmap_mode**\ (\ value\: :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>`\ )
- :ref:`MipmapMode<enum_OpenXRCompositionLayer_MipmapMode>` **get_mipmap_mode**\ (\ )

Режим mipmap стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan від OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle:

.. rst-class:: classref-property

:ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **swapchain_state_red_swizzle** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_red_swizzle>`

.. rst-class:: classref-property-setget

- |void| **set_red_swizzle**\ (\ value\: :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>`\ )
- :ref:`Swizzle<enum_OpenXRCompositionLayer_Swizzle>` **get_red_swizzle**\ (\ )

Значення swizzle для червоного каналу стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan від OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap:

.. rst-class:: classref-property

:ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **swapchain_state_vertical_wrap** = ``0`` :ref:`🔗<class_OpenXRCompositionLayer_property_swapchain_state_vertical_wrap>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_wrap**\ (\ value\: :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>`\ )
- :ref:`Wrap<enum_OpenXRCompositionLayer_Wrap>` **get_vertical_wrap**\ (\ )

Режим вертикального перенесення стану swapchain.

\ **Примітка:** Ця властивість впливає лише на пристрої, що підтримують розширення OpenGLES/Vulkan для OpenXR XR_FB_swapchain_update_state.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_property_use_android_surface:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_android_surface** = ``false`` :ref:`🔗<class_OpenXRCompositionLayer_property_use_android_surface>`

.. rst-class:: classref-property-setget

- |void| **set_use_android_surface**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_android_surface**\ (\ )

Якщо ввімкнено, буде створено поверхню Android (з розмірами від :ref:`android_surface_size<class_OpenXRCompositionLayer_property_android_surface_size>`), яка забезпечить 2D-вміст для шару композиції, а не за допомогою :ref:`layer_viewport<class_OpenXRCompositionLayer_property_layer_viewport>`. 

Перегляньте :ref:`get_android_surface()<class_OpenXRCompositionLayer_method_get_android_surface>`, щоб отримати інформацію про те, як отримати поверхню, щоб ваша програма могла її малювати. 

\ **Примітка.** Це працюватиме лише у збірках Android.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRCompositionLayer_method_get_android_surface:

.. rst-class:: classref-method

:ref:`JavaObject<class_JavaObject>` **get_android_surface**\ (\ ) :ref:`🔗<class_OpenXRCompositionLayer_method_get_android_surface>`

Повертає :ref:`JavaObject<class_JavaObject>`, що представляє ``android.view.Surface``, якщо ввімкнено :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` і OpenXR створив поверхню. В іншому випадку це поверне ``null``. 

\ **Примітка.** Поверхню можна створити лише під час активного сеансу OpenXR. Отже, якщо :ref:`use_android_surface<class_OpenXRCompositionLayer_property_use_android_surface>` увімкнено поза сеансом OpenXR, він не буде створений, доки повністю не розпочнеться новий сеанс.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **intersects_ray**\ (\ origin\: :ref:`Vector3<class_Vector3>`, direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_OpenXRCompositionLayer_method_intersects_ray>`

Повертає UV-координати перетину заданого променя з композиційним шаром. ``origin`` та ``direction`` мають бути в глобальному просторі.

Повертає ``Vector2(-1.0, -1.0)``, якщо промінь не перетинається.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayer_method_is_natively_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_natively_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRCompositionLayer_method_is_natively_supported>`

Повертає ``true``, якщо середовище виконання OpenXR оригінально підтримує цей тип шару композиції.

\ **Примітка:** це поверне точний результат лише після початку сеансу OpenXR.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
