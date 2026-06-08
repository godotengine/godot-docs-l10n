:github_url: hide

.. _class_RenderSceneBuffersConfiguration:

RenderSceneBuffersConfiguration
===============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Налаштування об'єкта, що використовується для налаштування об'єкта :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт конфігурації створюється та заселений рендером на зміну та використання в об'єкті «RenderSceneBuffers».

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Описи властивостей
------------------------------------

.. _class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level:

.. rst-class:: classref-property

:ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **anisotropic_filtering_level** = ``2`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropic_filtering_level**\ (\ value\: :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>`\ )
- :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **get_anisotropic_filtering_level**\ (\ )

Рівень анізотропного фільтра.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_fsr_sharpness:

.. rst-class:: classref-property

:ref:`float<class_float>` **fsr_sharpness** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_fsr_sharpness>`

.. rst-class:: classref-property-setget

- |void| **set_fsr_sharpness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fsr_sharpness**\ (\ )

ФСР Точність, що застосовується, якщо використовується FSR.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_internal_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **internal_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_internal_size>`

.. rst-class:: classref-property-setget

- |void| **set_internal_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_internal_size**\ (\ )

Розмір буфера 3D, що використовується для рендерингу.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_msaa_3d:

.. rst-class:: classref-property

:ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **msaa_3d** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_msaa_3d>`

.. rst-class:: classref-property-setget

- |void| **set_msaa_3d**\ (\ value\: :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`\ )
- :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **get_msaa_3d**\ (\ )

Режим MSAA ми використовуємо для 3D рендерингу.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_render_target:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **render_target** = ``RID()`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_render_target>`

.. rst-class:: classref-property-setget

- |void| **set_render_target**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_render_target**\ (\ )

Мета рендерингу пов'язана з цим буфером.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_scaling_3d_mode:

.. rst-class:: classref-property

:ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **scaling_3d_mode** = ``255`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_scaling_3d_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_3d_mode**\ (\ value\: :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>`\ )
- :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **get_scaling_3d_mode**\ (\ )

Запитаний режим масштабування, за допомогою якого ми збільшуємо/зменшуємо масштаб, якщо :ref:`internal_size<class_RenderSceneBuffersConfiguration_property_internal_size>` та :ref:`target_size<class_RenderSceneBuffersConfiguration_property_target_size>` не рівні.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_screen_space_aa:

.. rst-class:: classref-property

:ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **screen_space_aa** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_screen_space_aa>`

.. rst-class:: classref-property-setget

- |void| **set_screen_space_aa**\ (\ value\: :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>`\ )
- :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **get_screen_space_aa**\ (\ )

Запропоновані екрани AA застосовуються в після обробки.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_target_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **target_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_target_size>`

.. rst-class:: classref-property-setget

- |void| **set_target_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_target_size**\ (\ )

Ціль (пошта) розмір, якщо використовується масштабування.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_mipmap_bias** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mipmap_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_mipmap_bias**\ (\ )

Зсув, застосований до міпмап.

\ **Примітка:** Ця властивість підтримується лише в рендерерах Forward+ та Mobile, але не в рендерері Compatibility. У рендерері Compatibility ця властивість завжди трактується так, ніби її значення встановлено на ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_view_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **view_count** = ``1`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_view_count>`

.. rst-class:: classref-property-setget

- |void| **set_view_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_view_count**\ (\ )

Кількість переглядів, які ми продаємо.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
