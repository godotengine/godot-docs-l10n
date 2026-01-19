:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMesh:

MultiMesh
=========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Обеспечивает высокопроизводительную отрисовку сетки несколько раз с использованием GPU-экземпляров.

.. rst-class:: classref-introduction-group

Описание
----------------

MultiMesh обеспечивает низкоуровневое создание экземпляров сетки. Отрисовка тысяч узлов :ref:`MeshInstance3D<class_MeshInstance3D>` может быть медленной, поскольку каждый объект отправляется в графический процессор, а затем отрисовывается индивидуально.

MultiMesh намного быстрее, поскольку он может рисовать тысячи экземпляров за один вызов отрисовки, что приводит к меньшим накладным расходам API.

Недостатком является то, что если экземпляры находятся слишком далеко друг от друга, производительность может снизиться, поскольку каждый экземпляр всегда будет отображаться (они пространственно индексируются как один для всего объекта).

Поскольку экземпляры могут иметь любое поведение, AABB, используемый для видимости, должен быть предоставлен пользователем.

\ **Примечание:** MultiMesh — это один объект, поэтому применяется то же ограничение на максимальное количество источников света на объект. Это означает, что после того, как максимальное количество источников света будет использовано одним или несколькими экземплярами, остальные экземпляры MultiMesh **не** получат никакого освещения.

\ **Примечание:** Blend Shapes будут игнорироваться, если используются в MultiMesh.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использовать MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`Оптимизация с использованием мультисеток <../tutorials/performance/using_multimesh>`

- :doc:`Анимация тысяч рыб с помощью MultiMeshInstance <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`                            | :ref:`buffer<class_MultiMesh_property_buffer>`                                               | ``PackedFloat32Array()``   |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`                                | :ref:`color_array<class_MultiMesh_property_color_array>`                                     |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                                                        | :ref:`custom_aabb<class_MultiMesh_property_custom_aabb>`                                     | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`                                | :ref:`custom_data_array<class_MultiMesh_property_custom_data_array>`                         |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                                          | :ref:`instance_count<class_MultiMesh_property_instance_count>`                               | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Mesh<class_Mesh>`                                                        | :ref:`mesh<class_MultiMesh_property_mesh>`                                                   |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` | :ref:`physics_interpolation_quality<class_MultiMesh_property_physics_interpolation_quality>` | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                            | :ref:`transform_2d_array<class_MultiMesh_property_transform_2d_array>`                       |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`                            | :ref:`transform_array<class_MultiMesh_property_transform_array>`                             |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`TransformFormat<enum_MultiMesh_TransformFormat>`                         | :ref:`transform_format<class_MultiMesh_property_transform_format>`                           | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`use_colors<class_MultiMesh_property_use_colors>`                                       | ``false``                  |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`use_custom_data<class_MultiMesh_property_use_custom_data>`                             | ``false``                  |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                                          | :ref:`visible_instance_count<class_MultiMesh_property_visible_instance_count>`               | ``-1``                     |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`               | :ref:`get_aabb<class_MultiMesh_method_get_aabb>`\ (\ ) |const|                                                                                                                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`get_instance_color<class_MultiMesh_method_get_instance_color>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`get_instance_custom_data<class_MultiMesh_method_get_instance_custom_data>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_instance_transform<class_MultiMesh_method_get_instance_transform>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_instance_transform_2d<class_MultiMesh_method_get_instance_transform_2d>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`reset_instance_physics_interpolation<class_MultiMesh_method_reset_instance_physics_interpolation>`\ (\ instance\: :ref:`int<class_int>`\ )                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`reset_instances_physics_interpolation<class_MultiMesh_method_reset_instances_physics_interpolation>`\ (\ )                                                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_buffer_interpolated<class_MultiMesh_method_set_buffer_interpolated>`\ (\ buffer_curr\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, buffer_prev\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_color<class_MultiMesh_method_set_instance_color>`\ (\ instance\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_custom_data<class_MultiMesh_method_set_instance_custom_data>`\ (\ instance\: :ref:`int<class_int>`, custom_data\: :ref:`Color<class_Color>`\ )                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_transform<class_MultiMesh_method_set_instance_transform>`\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_transform_2d<class_MultiMesh_method_set_instance_transform_2d>`\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_MultiMesh_TransformFormat:

.. rst-class:: classref-enumeration

enum **TransformFormat**: :ref:`🔗<enum_MultiMesh_TransformFormat>`

.. _class_MultiMesh_constant_TRANSFORM_2D:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **TRANSFORM_2D** = ``0``

Используйте это при использовании 2D-преобразований.

.. _class_MultiMesh_constant_TRANSFORM_3D:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **TRANSFORM_3D** = ``1``

Используйте это при использовании 3D-преобразований.

.. rst-class:: classref-item-separator

----

.. _enum_MultiMesh_PhysicsInterpolationQuality:

.. rst-class:: classref-enumeration

enum **PhysicsInterpolationQuality**: :ref:`🔗<enum_MultiMesh_PhysicsInterpolationQuality>`

.. _class_MultiMesh_constant_INTERP_QUALITY_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **INTERP_QUALITY_FAST** = ``0``

Всегда выполняйте интерполяцию с использованием Basis lerping, что в некоторых ситуациях может приводить к появлению артефактов деформации.

.. _class_MultiMesh_constant_INTERP_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **INTERP_QUALITY_HIGH** = ``1``

По возможности пытайтесь выполнить интерполяцию с использованием Basis slerping (сферической линейной интерполяции), в противном случае прибегните к lerping.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_MultiMesh_property_buffer:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **buffer** = ``PackedFloat32Array()`` :ref:`🔗<class_MultiMesh_property_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_buffer**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_buffer**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_color_array:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **color_array** :ref:`🔗<class_MultiMesh_property_color_array>`

**Устарело:** Accessing this property is very slow. Use :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>` and :ref:`get_instance_color()<class_MultiMesh_method_get_instance_color>` instead.

Массив, содержащий каждый :ref:`Color<class_Color>`, используемый всеми экземплярами этой сетки.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_MultiMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Пользовательский AABB для этого ресурса MultiMesh. Установка этого вручную предотвращает дорогостоящие перерасчеты AABB во время выполнения.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_custom_data_array:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **custom_data_array** :ref:`🔗<class_MultiMesh_property_custom_data_array>`

**Устарело:** Accessing this property is very slow. Use :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>` and :ref:`get_instance_custom_data()<class_MultiMesh_method_get_instance_custom_data>` instead.

Массив, содержащий каждое пользовательское значение данных, используемое всеми экземплярами этой сетки, как :ref:`PackedColorArray<class_PackedColorArray>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_instance_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_count** = ``0`` :ref:`🔗<class_MultiMesh_property_instance_count>`

.. rst-class:: classref-property-setget

- |void| **set_instance_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_count**\ (\ )

Количество экземпляров, которые будут отрисованы. Это очищает и (изменяет) размер буферов. Установка формата данных или флагов после этого не даст никакого эффекта.

По умолчанию отрисовываются все экземпляры, но вы можете ограничить это с помощью :ref:`visible_instance_count<class_MultiMesh_property_visible_instance_count>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MultiMesh_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

:ref:`Mesh<class_Mesh>` ресурс для создания экземпляра.

Внешний вид отдельных экземпляров можно изменить с помощью :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>` и :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_physics_interpolation_quality:

.. rst-class:: classref-property

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **physics_interpolation_quality** = ``0`` :ref:`🔗<class_MultiMesh_property_physics_interpolation_quality>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_quality**\ (\ value\: :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>`\ )
- :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **get_physics_interpolation_quality**\ (\ )

Выберите, следует ли использовать метод интерполяции, который благоприятствует скорости или качеству.

При использовании низких физических тикрейтов (обычно ниже 20) или высоких скоростей вращения объектов вы можете получить лучшие результаты с настройкой высокого качества.

\ **Примечание:** Высокое качество не равно низкому качеству. За исключением особых случаев, упомянутых выше, качество должно быть сопоставимо с высоким качеством.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_2d_array:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **transform_2d_array** :ref:`🔗<class_MultiMesh_property_transform_2d_array>`

**Устарело:** Accessing this property is very slow. Use :ref:`set_instance_transform_2d()<class_MultiMesh_method_set_instance_transform_2d>` and :ref:`get_instance_transform_2d()<class_MultiMesh_method_get_instance_transform_2d>` instead.

Массив, содержащий каждое значение :ref:`Transform2D<class_Transform2D>`, используемое всеми экземплярами этой сетки, как :ref:`PackedVector2Array<class_PackedVector2Array>`. Каждое преобразование делится на 3 значения :ref:`Vector2<class_Vector2>`, соответствующих ``x``, ``y`` и ``origin`` преобразований.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_array:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **transform_array** :ref:`🔗<class_MultiMesh_property_transform_array>`

**Устарело:** Accessing this property is very slow. Use :ref:`set_instance_transform()<class_MultiMesh_method_set_instance_transform>` and :ref:`get_instance_transform()<class_MultiMesh_method_get_instance_transform>` instead.

Массив, содержащий каждое значение :ref:`Transform3D<class_Transform3D>`, используемое всеми экземплярами этой сетки, как :ref:`PackedVector3Array<class_PackedVector3Array>`. Каждое преобразование делится на 4 значения :ref:`Vector3<class_Vector3>`, соответствующих ``x``, ``y``, ``z`` и ``origin`` преобразований.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_format:

.. rst-class:: classref-property

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **transform_format** = ``0`` :ref:`🔗<class_MultiMesh_property_transform_format>`

.. rst-class:: classref-property-setget

- |void| **set_transform_format**\ (\ value\: :ref:`TransformFormat<enum_MultiMesh_TransformFormat>`\ )
- :ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **get_transform_format**\ (\ )

Формат преобразования, используемый для преобразования сетки, либо 2D, либо 3D.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_use_colors:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_colors** = ``false`` :ref:`🔗<class_MultiMesh_property_use_colors>`

.. rst-class:: classref-property-setget

- |void| **set_use_colors**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_colors**\ (\ )

Если ``true``, **MultiMesh** будет использовать данные о цвете (см. :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>`). Может быть установлено только тогда, когда :ref:`instance_count<class_MultiMesh_property_instance_count>` равно ``0`` или меньше. Это означает, что вам нужно вызвать этот метод перед установкой количества экземпляров или временно сбросить его до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_use_custom_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_custom_data** = ``false`` :ref:`🔗<class_MultiMesh_property_use_custom_data>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_data**\ (\ )

Если ``true``, **MultiMesh** будет использовать пользовательские данные (см. :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>`). Может быть установлено только тогда, когда :ref:`instance_count<class_MultiMesh_property_instance_count>` равно ``0`` или меньше. Это означает, что вам нужно вызвать этот метод перед установкой количества экземпляров или временно сбросить его до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_visible_instance_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **visible_instance_count** = ``-1`` :ref:`🔗<class_MultiMesh_property_visible_instance_count>`

.. rst-class:: classref-property-setget

- |void| **set_visible_instance_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_visible_instance_count**\ (\ )

Ограничивает количество отрисовываемых экземпляров, -1 отрисовывает все экземпляры. Изменение этого значения не изменяет размеры буферов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MultiMesh_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_MultiMesh_method_get_aabb>`

Возвращает ограничивающую рамку, выровненную по оси видимости, в локальном пространстве.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_instance_color**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_color>`

Получает цветовой множитель конкретного экземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_custom_data:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_instance_custom_data**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_custom_data>`

Возвращает пользовательские данные, заданные для конкретного экземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_instance_transform**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_transform>`

Возвращает :ref:`Transform3D<class_Transform3D>` определенного экземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_transform_2d:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_instance_transform_2d**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_transform_2d>`

Возвращает :ref:`Transform2D<class_Transform2D>` определенного экземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_reset_instance_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_instance_physics_interpolation**\ (\ instance\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiMesh_method_reset_instance_physics_interpolation>`

При использовании *физической интерполяции* эта функция позволяет предотвратить интерполяцию на экземпляре в текущем такте физики. 

Это позволяет мгновенно перемещать экземпляры и обычно должно использоваться при первоначальном размещении экземпляра, такого как пуля, чтобы предотвратить графические сбои.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_reset_instances_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_instances_physics_interpolation**\ (\ ) :ref:`🔗<class_MultiMesh_method_reset_instances_physics_interpolation>`

При использовании *физической интерполяции* эта функция позволяет предотвратить интерполяцию для всех экземпляров в текущем физическом такте.

Это позволяет мгновенно перемещать все экземпляры и обычно должно использоваться при первоначальном размещении экземпляров во избежание графических сбоев.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_buffer_interpolated:

.. rst-class:: classref-method

|void| **set_buffer_interpolated**\ (\ buffer_curr\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, buffer_prev\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MultiMesh_method_set_buffer_interpolated>`

Альтернатива установке свойства :ref:`buffer<class_MultiMesh_property_buffer>`, которое можно использовать с *физической интерполяцией*. Этот метод принимает два массива и может устанавливать данные для текущего и предыдущего тика за один раз. Рендерер будет автоматически интерполировать данные в каждом кадре.

Это полезно в ситуациях, когда порядок экземпляров может меняться от тика к тику физики, например, в системах частиц.

Когда порядок экземпляров согласован, более простую альтернативу установки :ref:`buffer<class_MultiMesh_property_buffer>` все еще можно использовать с интерполяцией.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_color:

.. rst-class:: classref-method

|void| **set_instance_color**\ (\ instance\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_color>`

Устанавливает цвет определенного экземпляра путем *умножения* существующих цветов вершин сетки. Это позволяет использовать различную цветовую тонировку для каждого экземпляра.

\ **Примечание:** Каждый компонент хранится в 32 битах в методах рендеринга Forward+ и Mobile, но упакован в 16 бит в методе рендеринга Compatibility.

Чтобы цвет вступил в силу, убедитесь, что :ref:`use_colors<class_MultiMesh_property_use_colors>` имеет значение ``true`` на **MultiMesh** и :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` имеет значение ``true`` на материале. Если вы собираетесь установить абсолютный цвет вместо тонировки, убедитесь, что цвет альбедо материала установлен на чистый белый (``Color(1, 1, 1)``).

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_custom_data:

.. rst-class:: classref-method

|void| **set_instance_custom_data**\ (\ instance\: :ref:`int<class_int>`, custom_data\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_custom_data>`

Устанавливает пользовательские данные для определенного экземпляра. ``custom_data`` — это тип :ref:`Color<class_Color>`, содержащий только 4 числа с плавающей точкой.

\ **Примечание:** Каждое число хранится в 32 битах в методах рендеринга Forward+ и Mobile, но упаковано в 16 бит в методе рендеринга Compatibility.

Для использования пользовательских данных убедитесь, что :ref:`use_custom_data<class_MultiMesh_property_use_custom_data>` имеет значение ``true``.

Эти пользовательские данные экземпляра должны быть доступны вручную в вашем пользовательском шейдере с помощью ``INSTANCE_CUSTOM``.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_transform:

.. rst-class:: classref-method

|void| **set_instance_transform**\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_transform>`

Устанавливает :ref:`Transform3D<class_Transform3D>` для определенного экземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_transform_2d:

.. rst-class:: classref-method

|void| **set_instance_transform_2d**\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_transform_2d>`

Устанавливает :ref:`Transform2D<class_Transform2D>` для определенного экземпляра.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
