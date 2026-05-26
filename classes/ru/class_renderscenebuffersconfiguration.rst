:github_url: hide

.. _class_RenderSceneBuffersConfiguration:

RenderSceneBuffersConfiguration
===============================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Объект конфигурации, используемый для настройки объекта :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот объект конфигурации создается и заполняется движком рендеринга при изменении области просмотра и используется для (пере)настройки объекта :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Описания свойств
--------------------------------

.. _class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level:

.. rst-class:: classref-property

:ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **anisotropic_filtering_level** = ``2`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropic_filtering_level**\ (\ value\: :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>`\ )
- :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **get_anisotropic_filtering_level**\ (\ )

Уровень анизотропного фильтра.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_fsr_sharpness:

.. rst-class:: classref-property

:ref:`float<class_float>` **fsr_sharpness** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_fsr_sharpness>`

.. rst-class:: classref-property-setget

- |void| **set_fsr_sharpness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fsr_sharpness**\ (\ )

Резкость FSR применима, если используется масштабирование FSR.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_internal_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **internal_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_internal_size>`

.. rst-class:: classref-property-setget

- |void| **set_internal_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_internal_size**\ (\ )

Размер буфера 3D-рендеринга, используемого для рендеринга.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_msaa_3d:

.. rst-class:: classref-property

:ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **msaa_3d** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_msaa_3d>`

.. rst-class:: classref-property-setget

- |void| **set_msaa_3d**\ (\ value\: :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`\ )
- :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **get_msaa_3d**\ (\ )

Режим MSAA, который мы используем для 3D-рендеринга.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_render_target:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **render_target** = ``RID()`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_render_target>`

.. rst-class:: classref-property-setget

- |void| **set_render_target**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_render_target**\ (\ )

Цель рендеринга, связанная с этим буфером.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_scaling_3d_mode:

.. rst-class:: classref-property

:ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **scaling_3d_mode** = ``255`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_scaling_3d_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_3d_mode**\ (\ value\: :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>`\ )
- :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **get_scaling_3d_mode**\ (\ )

Запрошенный режим масштабирования, с помощью которого мы увеличиваем/уменьшаем масштаб, если :ref:`internal_size<class_RenderSceneBuffersConfiguration_property_internal_size>` и :ref:`target_size<class_RenderSceneBuffersConfiguration_property_target_size>` не равны.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_screen_space_aa:

.. rst-class:: classref-property

:ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **screen_space_aa** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_screen_space_aa>`

.. rst-class:: classref-property-setget

- |void| **set_screen_space_aa**\ (\ value\: :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>`\ )
- :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **get_screen_space_aa**\ (\ )

Запрошенное экранное пространство AA применяется при постобработке.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_target_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **target_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_target_size>`

.. rst-class:: classref-property-setget

- |void| **set_target_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_target_size**\ (\ )

Целевой (увеличенный) размер, если используется масштабирование.

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

Количество просмотров, которые мы обрабатываем.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
