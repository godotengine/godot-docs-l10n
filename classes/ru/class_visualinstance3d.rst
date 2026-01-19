:github_url: hide

.. _class_VisualInstance3D:

VisualInstance3D
================

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`Decal<class_Decal>`, :ref:`FogVolume<class_FogVolume>`, :ref:`GeometryInstance3D<class_GeometryInstance3D>`, :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>`, :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>`, :ref:`Light3D<class_Light3D>`, :ref:`LightmapGI<class_LightmapGI>`, :ref:`OccluderInstance3D<class_OccluderInstance3D>`, :ref:`OpenXRVisibilityMask<class_OpenXRVisibilityMask>`, :ref:`ReflectionProbe<class_ReflectionProbe>`, :ref:`RootMotionView<class_RootMotionView>`, :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`, :ref:`VoxelGI<class_VoxelGI>`

Родительский элемент всех визуальных 3D-узлов.

.. rst-class:: classref-introduction-group

Описание
----------------

**VisualInstance3D** используется для подключения ресурса к визуальному представлению. Все визуальные 3D-узлы наследуются от **VisualInstance3D**. В общем случае не следует обращаться к свойствам **VisualInstance3D** напрямую, поскольку к ним обращаются и управляют узлы, наследующие от **VisualInstance3D**. **VisualInstance3D** — это представление узла экземпляра :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`layers<class_VisualInstance3D_property_layers>`                                   | ``1``   |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`sorting_offset<class_VisualInstance3D_property_sorting_offset>`                   | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+
   | :ref:`bool<class_bool>`   | :ref:`sorting_use_aabb_center<class_VisualInstance3D_property_sorting_use_aabb_center>` |         |
   +---------------------------+-----------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`_get_aabb<class_VisualInstance3D_private_method__get_aabb>`\ (\ ) |virtual| |const|                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`get_aabb<class_VisualInstance3D_method_get_aabb>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_base<class_VisualInstance3D_method_get_base>`\ (\ ) |const|                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_instance<class_VisualInstance3D_method_get_instance>`\ (\ ) |const|                                                                                |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_layer_mask_value<class_VisualInstance3D_method_get_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_base<class_VisualInstance3D_method_set_base>`\ (\ base\: :ref:`RID<class_RID>`\ )                                                                  |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_layer_mask_value<class_VisualInstance3D_method_set_layer_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualInstance3D_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_VisualInstance3D_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layer_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_mask**\ (\ )

Слои рендеринга, на которых нарисован этот **VisualInstance3D**.

Этот объект будет виден только для :ref:`Camera3D<class_Camera3D>`, чья маска отбраковки включает любой из слоев рендеринга, на который установлен этот **VisualInstance3D**.

Для :ref:`Light3D<class_Light3D>` это можно использовать для управления тем, на какие **VisualInstance3D** влияет определенный свет. Для :ref:`GPUParticles3D<class_GPUParticles3D>` это можно использовать для управления тем, на какие частицы влияет определенный аттрактор. Для :ref:`Decal<class_Decal>` это можно использовать для управления тем, на какие **VisualInstance3D** влияет определенный декаль.

Чтобы упростить настройку :ref:`layers<class_VisualInstance3D_property_layers>` с помощью скрипта, используйте :ref:`get_layer_mask_value()<class_VisualInstance3D_method_get_layer_mask_value>` и :ref:`set_layer_mask_value()<class_VisualInstance3D_method_set_layer_mask_value>`.

\ **Примечание:** :ref:`VoxelGI<class_VoxelGI>`, SDFGI и :ref:`LightmapGI<class_LightmapGI>` всегда будут учитывать все слои, чтобы определить, что влияет на глобальное освещение. Если это проблема, установите :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` на :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>` для сеток и :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` на :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>` для источников света, чтобы исключить их из глобального освещения.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **sorting_offset** = ``0.0`` :ref:`🔗<class_VisualInstance3D_property_sorting_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sorting_offset**\ (\ )

Величина, на которую будет скорректирована глубина этого **VisualInstance3D** при сортировке по глубине. Использует те же единицы, что и движок (обычно это метры). Если настроить его на большее значение, **VisualInstance3D** будет надежно рисовать поверх других **VisualInstance3D**, которые в противном случае расположены в том же месте. Чтобы гарантировать, что он всегда рисует поверх других объектов вокруг него (не расположенных в том же месте), установите значение больше расстояния между этим **VisualInstance3D** и другими близлежащими **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_use_aabb_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sorting_use_aabb_center** :ref:`🔗<class_VisualInstance3D_property_sorting_use_aabb_center>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_use_aabb_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sorting_use_aabb_center**\ (\ )

Если ``true``, объект сортируется на основе центра :ref:`AABB<class_AABB>`. В противном случае объект будет сортироваться на основе глобальной позиции.

Сортировка на основе центра :ref:`AABB<class_AABB>` обычно более точна для 3D-моделей. Сортировка на основе позиции вместо этого позволяет лучше контролировать порядок рисования при работе с :ref:`GPUParticles3D<class_GPUParticles3D>` и :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VisualInstance3D_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |const| :ref:`🔗<class_VisualInstance3D_private_method__get_aabb>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_aabb>`

Возвращает :ref:`AABB<class_AABB>` (также известный как ограничивающий прямоугольник) для этого **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_base:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_base**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_base>`

Возвращает RID ресурса, связанного с этим **VisualInstance3D**. Например, если Node — это :ref:`MeshInstance3D<class_MeshInstance3D>`, это вернет RID связанного :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_instance**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_instance>`

Возвращает RID этого экземпляра. Этот RID совпадает с RID, возвращаемым :ref:`RenderingServer.instance_create()<class_RenderingServer_method_instance_create>`. Этот RID необходим, если вы хотите вызывать функции :ref:`RenderingServer<class_RenderingServer>` непосредственно на этом **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_layer_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_layer_mask_value>`

Возвращает, включен ли указанный слой из :ref:`layers<class_VisualInstance3D_property_layers>`, учитывая ``layer_number`` от 1 до 20.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_base:

.. rst-class:: classref-method

|void| **set_base**\ (\ base\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_base>`

Устанавливает ресурс, который инстанцируется этим **VisualInstance3D**, что изменяет то, как движок обрабатывает **VisualInstance3D** под капотом. Эквивалентно :ref:`RenderingServer.instance_set_base()<class_RenderingServer_method_instance_set_base>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_layer_mask_value:

.. rst-class:: classref-method

|void| **set_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_layer_mask_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`layers<class_VisualInstance3D_property_layers>` при заданном ``layer_number`` от 1 до 20.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
