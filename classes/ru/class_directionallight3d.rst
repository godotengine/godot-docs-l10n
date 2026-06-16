:github_url: hide

.. meta::
	:keywords: sun

.. _class_DirectionalLight3D:

DirectionalLight3D
==================

**Наследует:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Направленный свет с расстояния, например, от Солнца.

.. rst-class:: classref-introduction-group

Описание
----------------

Направленный источник света — это тип узла :ref:`Light3D<class_Light3D>`, моделирующий бесконечное число параллельных лучей, покрывающих всю сцену. Он используется для источников света высокой интенсивности, расположенных далеко от сцены, для моделирования солнечного или лунного света.

Свет излучается в направлении -Z глобального базиса узла. Для невращающегося источника света это означает, что свет излучается вперёд, освещая переднюю сторону трёхмерной модели (см. :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` и :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`). Положение узла игнорируется; для определения направления света используется только базис.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `3D свет и тени <../tutorials/3d/lights_and_shadows.html#directional-light>`__

- :doc:`Поддельное глобальное освещение <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`directional_shadow_blend_splits<class_DirectionalLight3D_property_directional_shadow_blend_splits>` | ``false`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>`     | ``0.8``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` | ``100.0`` |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` | :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>`                 | ``2``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>` | ``20.0``  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>`           | ``0.1``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>`           | ``0.2``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>`           | ``0.5``   |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`       | :ref:`sky_mode<class_DirectionalLight3D_property_sky_mode>`                                               | ``0``     |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_DirectionalLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_DirectionalLight3D_ShadowMode>`

.. _class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_ORTHOGONAL** = ``0``

Визуализирует всю карту теней сцены с ортогональной точки зрения. Это самый быстрый режим направленных теней. Может привести к более размытым теням на близких объектах.

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_2_SPLITS** = ``1``

Разделяет вид усеченной пирамиды на 2 области, каждая со своей собственной картой теней. Этот режим теней является компромиссом между :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>` и :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>` с точки зрения производительности.

.. _class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **SHADOW_PARALLEL_4_SPLITS** = ``2``

Разделяет вид усеченной пирамиды на 4 области, каждая со своей собственной картой теней. Это самый медленный режим направленной тени.

.. rst-class:: classref-item-separator

----

.. _enum_DirectionalLight3D_SkyMode:

.. rst-class:: classref-enumeration

enum **SkyMode**: :ref:`🔗<enum_DirectionalLight3D_SkyMode>`

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_AND_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_AND_SKY** = ``0``

Делает свет видимым как при освещении сцены, так и при визуализации неба.

.. _class_DirectionalLight3D_constant_SKY_MODE_LIGHT_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_LIGHT_ONLY** = ``1``

Делает свет видимым только в освещении сцены (включая прямое освещение и глобальное освещение). При использовании этого режима свет не будет виден из шейдеров неба.

.. _class_DirectionalLight3D_constant_SKY_MODE_SKY_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **SKY_MODE_SKY_ONLY** = ``2``

Делает свет видимым только для шейдеров неба. При использовании этого режима свет не будет отбрасывать свет на сцену (ни через прямое освещение, ни через глобальное освещение), но к нему можно получить доступ через шейдеры неба. Это может быть полезно, например, когда вы хотите управлять эффектами неба, не освещая сцену (например, во время ночного цикла).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_DirectionalLight3D_property_directional_shadow_blend_splits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional_shadow_blend_splits** = ``false`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_blend_splits>`

.. rst-class:: classref-property-setget

- |void| **set_blend_splits**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_blend_splits_enabled**\ (\ )

Если ``true``, детализация теней жертвуется в обмен на более плавные переходы между разделениями. Включение разделения смешивания теней также имеет умеренные затраты производительности. Это игнорируется, когда :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` равно :ref:`SHADOW_ORTHOGONAL<class_DirectionalLight3D_constant_SHADOW_ORTHOGONAL>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_fade_start:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_fade_start** = ``0.8`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_fade_start>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Пропорция :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`, в которой тень начинает исчезать. В :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` тень исчезнет. Значение по умолчанию — это баланс между плавным исчезновением и видимостью тени на расстоянии. Если камера движется быстро, а :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` низкое, рассмотрите возможность уменьшения :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` ниже ``0.8``, чтобы сделать переходы тени менее заметными. С другой стороны, если вы настроили :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>` так, чтобы покрыть всю сцену, вы можете установить :ref:`directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>` на ``1.0``, чтобы предотвратить исчезновение тени на расстоянии (вместо этого она внезапно обрежется).

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_max_distance** = ``100.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Максимальное расстояние для разделения теней. Увеличение этого значения сделает направленные тени видимыми с большего расстояния, за счет снижения общей детализации теней и производительности (поскольку больше объектов должны быть включены в рендеринг направленных теней).

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **directional_shadow_mode** = ``2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_DirectionalLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

Алгоритм рендеринга тени света.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_pancake_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_pancake_size** = ``20.0`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_pancake_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Устанавливает размер направленного блина тени. Блин смещает начало усеченной пирамиды тени, чтобы обеспечить более высокое эффективное разрешение глубины для тени. Однако большой размер блина может привести к появлению артефактов в тенях крупных объектов, которые находятся близко к краю пирамиды. Уменьшение размера блина может помочь. Установка размера на ``0`` отключает эффект блина.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_1:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_1** = ``0.1`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_1>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Расстояние от камеры до точки разделения тени 1. Относительно :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Используется только тогда, когда :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` равно :ref:`SHADOW_PARALLEL_2_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_2_SPLITS>` или :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_2:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_2** = ``0.2`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_2>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Расстояние от теневого разделения 1 до разделения 2. Относительно :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Используется только когда :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` равен :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_directional_shadow_split_3:

.. rst-class:: classref-property

:ref:`float<class_float>` **directional_shadow_split_3** = ``0.5`` :ref:`🔗<class_DirectionalLight3D_property_directional_shadow_split_3>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Расстояние от точки разделения тени 2 до точки разделения 3. Относительно :ref:`directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Используется только тогда, когда :ref:`directional_shadow_mode<class_DirectionalLight3D_property_directional_shadow_mode>` равен :ref:`SHADOW_PARALLEL_4_SPLITS<class_DirectionalLight3D_constant_SHADOW_PARALLEL_4_SPLITS>`.

.. rst-class:: classref-item-separator

----

.. _class_DirectionalLight3D_property_sky_mode:

.. rst-class:: classref-property

:ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **sky_mode** = ``0`` :ref:`🔗<class_DirectionalLight3D_property_sky_mode>`

.. rst-class:: classref-property-setget

- |void| **set_sky_mode**\ (\ value\: :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>`\ )
- :ref:`SkyMode<enum_DirectionalLight3D_SkyMode>` **get_sky_mode**\ (\ )

Виден ли этот **DirectionalLight3D** на небе, на сцене или и на небе, и на сцене.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
