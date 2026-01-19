:github_url: hide

.. _class_VisualInstance3D:

VisualInstance3D
================

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`Decal<class_Decal>`, :ref:`FogVolume<class_FogVolume>`, :ref:`GeometryInstance3D<class_GeometryInstance3D>`, :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>`, :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>`, :ref:`Light3D<class_Light3D>`, :ref:`LightmapGI<class_LightmapGI>`, :ref:`OccluderInstance3D<class_OccluderInstance3D>`, :ref:`OpenXRVisibilityMask<class_OpenXRVisibilityMask>`, :ref:`ReflectionProbe<class_ReflectionProbe>`, :ref:`RootMotionView<class_RootMotionView>`, :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`, :ref:`VoxelGI<class_VoxelGI>`

Батькам всіх візуальних вузлів 3D.

.. rst-class:: classref-introduction-group

Опис
--------

**VisualInstance3D** використовується для підключення ресурсу до візуального представлення. Усі візуальні 3D вершини успадкуються від **VisualInstance3D**. В цілому, ви не повинні доступу до властивостей **VisualInstance3D** безпосередньо, оскільки вони доступні і керовані вузлами, які спадок від **VisualInstance3D**. **VisualInstance3D** є представленням вершини :ref:`RenderingServer<class_RenderingServer>` екземпляр.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Описи властивостей
------------------------------------

.. _class_VisualInstance3D_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_VisualInstance3D_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layer_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_mask**\ (\ )

Шар(и) рендерингу, на яких намальовано цей **VisualInstance3D**.

Цей об'єкт буде видимим лише для :ref:`Camera3D<class_Camera3D>`, чия маска відсікання включає будь-який із шарів рендерингу, на які встановлено цей **VisualInstance3D**.

Для :ref:`Light3D<class_Light3D>` це можна використовувати для керування тим, на які **VisualInstance3D** впливає певне світло. Для :ref:`GPUParticles3D<class_GPUParticles3D>` це можна використовувати для керування тим, на які частинки впливає певний атрактор. Для :ref:`Decal<class_Decal>` це можна використовувати для керування тим, на які **VisualInstance3D** впливає певна деколь.

Щоб легше налаштувати :ref:`layers<class_VisualInstance3D_property_layers>` за допомогою скрипта, використовуйте :ref:`get_layer_mask_value()<class_VisualInstance3D_method_get_layer_mask_value>` та :ref:`set_layer_mask_value()<class_VisualInstance3D_method_set_layer_mask_value>`.

\ **Примітка:** :ref:`VoxelGI<class_VoxelGI>`, SDFGI та :ref:`LightmapGI<class_LightmapGI>` завжди враховуватимуть усі шари, щоб визначити, що сприяє глобальному освітленню. Якщо це проблема, встановіть для :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` значення :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>` для сіток та для :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` значення :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>` для джерел світла, щоб виключити їх з глобального освітлення.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **sorting_offset** = ``0.0`` :ref:`🔗<class_VisualInstance3D_property_sorting_offset>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sorting_offset**\ (\ )

Сума, за якою буде регулювання глибини цього **VisualInstance3D** при сортування глибини. Використовує такі ж одиниці, як двигун (як правило, лічильники). Налаштуйте його на вищу вартість, виконайте **VisualInstance3D** надійно малюйте зверху інші **VisualInstance3D**, які інакше позиціонуються в одному місці. Для того, щоб забезпечити його завжди малюємо поверх інших об'єктів, розташованих на одному місці, встановіть значення, щоб бути більшою, ніж відстань між цими **VisualInstance3D** та іншими поруч **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_property_sorting_use_aabb_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sorting_use_aabb_center** :ref:`🔗<class_VisualInstance3D_property_sorting_use_aabb_center>`

.. rst-class:: classref-property-setget

- |void| **set_sorting_use_aabb_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sorting_use_aabb_center**\ (\ )

Якщо ``true``, об'єкт сортується на базі центру :ref:`AABB<class_AABB>`. Об'єкт буде відсортовано на основі глобального положення.

\ :ref:`AABB<class_AABB>` центр на основі сортування, як правило, більш точний для моделей 3D. На основі положення замість того, щоб краще контролювати порядок малювання при роботі з :ref:`GPUParticles3D<class_GPUParticles3D>` і :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

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

Повертаємо :ref:`AABB<class_AABB>` (також відомий як обмежена коробка) для цього **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_base:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_base**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_base>`

Повернення ресурсу, пов'язаного з цим **VisualInstance3D**. Наприклад, якщо Node є :ref:`MeshInstance3D<class_MeshInstance3D>`, це поверне RID асоційованої :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_instance**\ (\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_instance>`

Повернення RID цього екземпляра. Цей RID є таким же, як RID, повернуто :ref:`RenderingServer.instance_create()<class_RenderingServer_method_instance_create>`. Цей RID необхідний, якщо ви хочете викликати функції :ref:`RenderingServer<class_RenderingServer>` безпосередньо на цьому **VisualInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_get_layer_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualInstance3D_method_get_layer_mask_value>`

Повертає, чи увімкнено вказаний шар з :ref:`layers<class_VisualInstance3D_property_layers>`, залежно від значення ``layer_number`` від 1 до 20.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_base:

.. rst-class:: classref-method

|void| **set_base**\ (\ base\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_base>`

Встановлює ресурс, який миттєво опрацьовується цим **VisualInstance3D**, який змінює, як працює двигун **VisualInstance3D** під кришкою. Equivalent :ref:`RenderingServer.instance_set_base()<class_RenderingServer_method_instance_set_base>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualInstance3D_method_set_layer_mask_value:

.. rst-class:: classref-method

|void| **set_layer_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_VisualInstance3D_method_set_layer_mask_value>`

На основі ``value``, вмикає або вимикає вказаний шар у :ref:`layers<class_VisualInstance3D_property_layers>`, враховуючи ``layer_number`` від 1 до 20.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
