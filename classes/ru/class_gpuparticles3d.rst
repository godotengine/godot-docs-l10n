:github_url: hide

.. _class_GPUParticles3D:

GPUParticles3D
==============

**Наследует:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D-излучатель частиц.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел 3D-частиц, используемый для создания различных систем частиц и эффектов. **GPUParticles3D** содержит эмиттер, который генерирует некоторое количество частиц с заданной скоростью.

Используйте :ref:`process_material<class_GPUParticles3D_property_process_material>`, чтобы добавить :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` для настройки внешнего вида и поведения частиц. В качестве альтернативы вы можете добавить :ref:`ShaderMaterial<class_ShaderMaterial>`, который будет применен ко всем частицам.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Системы частиц (3D) <../tutorials/3d/particles/index>`

- :doc:`Управление тысячами рыб с помощью частиц <../tutorials/performance/vertex_animation/controlling_thousands_of_fish>`

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`amount<class_GPUParticles3D_property_amount>`                                                 | ``8``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`                                     | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`collision_base_size<class_GPUParticles3D_property_collision_base_size>`                       | ``0.01``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`                                                | :ref:`draw_order<class_GPUParticles3D_property_draw_order>`                                         | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_1<class_GPUParticles3D_property_draw_pass_1>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_2<class_GPUParticles3D_property_draw_pass_2>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_3<class_GPUParticles3D_property_draw_pass_3>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_4<class_GPUParticles3D_property_draw_pass_4>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`draw_passes<class_GPUParticles3D_property_draw_passes>`                                       | ``1``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Skin<class_Skin>`                                                                        | :ref:`draw_skin<class_GPUParticles3D_property_draw_skin>`                                           |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`emitting<class_GPUParticles3D_property_emitting>`                                             | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`explosiveness<class_GPUParticles3D_property_explosiveness>`                                   | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>`                                           | ``30``                        |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`fract_delta<class_GPUParticles3D_property_fract_delta>`                                       | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`interp_to_end<class_GPUParticles3D_property_interp_to_end>`                                   | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`interpolate<class_GPUParticles3D_property_interpolate>`                                       | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`lifetime<class_GPUParticles3D_property_lifetime>`                                             | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`local_coords<class_GPUParticles3D_property_local_coords>`                                     | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`one_shot<class_GPUParticles3D_property_one_shot>`                                             | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`preprocess<class_GPUParticles3D_property_preprocess>`                                         | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Material<class_Material>`                                                                | :ref:`process_material<class_GPUParticles3D_property_process_material>`                             |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`randomness<class_GPUParticles3D_property_randomness>`                                         | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`seed<class_GPUParticles3D_property_seed>`                                                     | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`speed_scale<class_GPUParticles3D_property_speed_scale>`                                       | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                                | :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>`                                       | ``NodePath("")``              |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>`                                   | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`trail_lifetime<class_GPUParticles3D_property_trail_lifetime>`                                 | ``0.3``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>`                                      | :ref:`transform_align<class_GPUParticles3D_property_transform_align>`                               | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>`           | :ref:`transform_align_axis<class_GPUParticles3D_property_transform_align_axis>`                     |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` | :ref:`transform_align_channel_filter<class_GPUParticles3D_property_transform_align_channel_filter>` |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>`                                 | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>`                                                                        | :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>`                               | ``AABB(-4, -4, -4, 8, 8, 8)`` |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`capture_aabb<class_GPUParticles3D_method_capture_aabb>`\ (\ ) |const|                                                                                                                                                                                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`convert_from_particles<class_GPUParticles3D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`emit_particle<class_GPUParticles3D_method_emit_particle>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>` | :ref:`get_draw_pass_mesh<class_GPUParticles3D_method_get_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`request_particles_process<class_GPUParticles3D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ )                                                                     |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`restart<class_GPUParticles3D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_draw_pass_mesh<class_GPUParticles3D_method_set_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_GPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles3D_signal_finished>`

Вызывается, когда все активные частицы завершили обработку. Чтобы немедленно перезапустить цикл испускания, вызовите :ref:`restart()<class_GPUParticles3D_method_restart>`.

Этот сигнал никогда не вызывается, когда :ref:`one_shot<class_GPUParticles3D_property_one_shot>` отключен, так как частицы будут испускаться и обрабатываться непрерывно.

\ **Примечание:** Для эмиттеров :ref:`one_shot<class_GPUParticles3D_property_one_shot>`, поскольку частицы вычисляются на GPU, может быть короткий период после получения сигнала, в течение которого установка :ref:`emitting<class_GPUParticles3D_property_emitting>` на ``true`` не перезапустит цикл испускания. Эта задержка устраняется путем вызова :ref:`restart()<class_GPUParticles3D_method_restart>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_GPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles3D_DrawOrder>`

.. _class_GPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Частицы рисуются в порядке испускания.

.. _class_GPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Частицы рисуются в порядке оставшегося времени жизни. Другими словами, частица с наибольшим временем жизни рисуется спереди.

.. _class_GPUParticles3D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

Частицы рисуются в обратном порядке оставшегося времени жизни. Другими словами, частица с наименьшим временем жизни рисуется спереди.

.. _class_GPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``3``

Частицы рисуются в порядке глубины.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles3D_EmitFlags>`

.. _class_GPUParticles3D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

Частица стартует в указанной позиции.

.. _class_GPUParticles3D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

Частица начинается с указанного поворота и масштаба.

.. _class_GPUParticles3D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

Частица стартует с заданным вектором скорости, который определяет направление и скорость излучения.

.. _class_GPUParticles3D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

Частица начинается с указанного цвета.

.. _class_GPUParticles3D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

Частица начинается с указанных данных ``CUSTOM``.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_TransformAlign:

.. rst-class:: classref-enumeration

enum **TransformAlign**: :ref:`🔗<enum_GPUParticles3D_TransformAlign>`

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_DISABLED** = ``0``

Do not align particle transforms relative to the camera or velocity.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD** = ``1``

Align each particle's Z axis to face the camera.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Y_TO_VELOCITY** = ``2``

Align each particle's Y axis to the velocity vector.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY** = ``3``

Align each particle's Z axis to face the camera and Y axis to the velocity vector.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_LOCAL_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_LOCAL_BILLBOARD** = ``4``

Align each particle's Z axis to face the camera, while preserving a given axis (X or Y).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_GPUParticles3D_constant_MAX_DRAW_PASSES:

.. rst-class:: classref-constant

**MAX_DRAW_PASSES** = ``4`` :ref:`🔗<class_GPUParticles3D_constant_MAX_DRAW_PASSES>`

Максимальное поддерживаемое количество проходов рисования.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Количество частиц, испускаемых за один цикл испускания. Эффективная скорость испускания равна ``(amount * amount_ratio) / life`` частиц в секунду. Более высокие значения увеличат требования к графическому процессору, даже если не все частицы видны в данный момент времени или если :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` уменьшено.

\ **Примечание:** Изменение этого значения приведет к перезапуску системы частиц. Чтобы избежать этого, измените :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

Соотношение частиц, которые должны быть фактически испущены. Если установлено значение ниже ``1.0``, это установит количество испускаемых частиц за время жизни на ``amount * amount_ratio``. В отличие от изменения :ref:`amount<class_GPUParticles3D_property_amount>`, изменение :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` во время испускания не влияет на уже испущенные частицы и не приводит к перезапуску системы частиц. :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` можно использовать для создания эффектов, которые заставляют количество испускаемых частиц меняться со временем.

\ **Примечание:** Уменьшение :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` не дает выигрыша в производительности, поскольку ресурсы должны быть выделены и обработаны для общего :ref:`amount<class_GPUParticles3D_property_amount>` частиц независимо от :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`. Если вы не собираетесь изменять количество испускаемых частиц во время испускания частиц, убедитесь, что :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` установлено на ``1`` и вместо этого измените :ref:`amount<class_GPUParticles3D_property_amount>` по своему усмотрению.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``0.01`` :ref:`🔗<class_GPUParticles3D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

Диаметр основания для столкновения частиц в метрах. Если частицы кажутся тонущими в земле при столкновении, увеличьте это значение. Если частицы кажутся плавающими при столкновении, уменьшите это значение. Действует только если :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` равен :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` или :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`.

\ **Примечание:** Частицы всегда имеют сферическую форму столкновения.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_GPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Порядок отрисовки частиц.

\ **Примечание:** :ref:`DRAW_ORDER_INDEX<class_GPUParticles3D_constant_DRAW_ORDER_INDEX>` — единственный параметр, поддерживающий векторы движения для эффектов типа TAA. Рекомендуется использовать этот порядок отрисовки, если частицы непрозрачны, чтобы исправить артефакты двоения.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_1:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_1** :ref:`🔗<class_GPUParticles3D_property_draw_pass_1>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

:ref:`Mesh<class_Mesh>`, который рисуется для первого прохода рисования.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_2:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_2** :ref:`🔗<class_GPUParticles3D_property_draw_pass_2>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

:ref:`Mesh<class_Mesh>`, который рисуется для второго прохода рисования.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_3:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_3** :ref:`🔗<class_GPUParticles3D_property_draw_pass_3>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

:ref:`Mesh<class_Mesh>`, который рисуется для третьего прохода рисования.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_4:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_4** :ref:`🔗<class_GPUParticles3D_property_draw_pass_4>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

:ref:`Mesh<class_Mesh>`, который рисуется для четвертого прохода рисования.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_passes:

.. rst-class:: classref-property

:ref:`int<class_int>` **draw_passes** = ``1`` :ref:`🔗<class_GPUParticles3D_property_draw_passes>`

.. rst-class:: classref-property-setget

- |void| **set_draw_passes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_draw_passes**\ (\ )

Количество проходов отрисовки при рендеринге частиц.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **draw_skin** :ref:`🔗<class_GPUParticles3D_property_draw_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Если ``true``, частицы испускаются. :ref:`emitting<class_GPUParticles3D_property_emitting>` можно использовать для запуска и остановки испускания частиц. Однако, если :ref:`one_shot<class_GPUParticles3D_property_one_shot>` равно ``true``, установка :ref:`emitting<class_GPUParticles3D_property_emitting>` в ``true`` не перезапустит цикл испускания, пока все активные частицы не закончат обработку. Используйте сигнал :ref:`finished<class_GPUParticles3D_signal_finished>`, чтобы получать уведомления, как только все активные частицы закончат обработку.

\ **Примечание:** Для испускателей :ref:`one_shot<class_GPUParticles3D_property_one_shot>`, из-за того, что частицы вычисляются на GPU, может быть короткий период после получения сигнала :ref:`finished<class_GPUParticles3D_signal_finished>`, в течение которого установка этого значения в ``true`` не перезапустит цикл испускания.

\ **Совет:** Если вашему испускателю :ref:`one_shot<class_GPUParticles3D_property_one_shot>` необходимо немедленно возобновить испускание частиц после получения сигнала :ref:`finished<class_GPUParticles3D_signal_finished>`, рассмотрите возможность вызова :ref:`restart()<class_GPUParticles3D_method_restart>` вместо установки :ref:`emitting<class_GPUParticles3D_property_emitting>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Соотношение времени между каждым выбросом. Если ``0``, частицы выбрасываются непрерывно. Если ``1``, все частицы выбрасываются одновременно.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

Частота кадров системы частиц зафиксирована на значении. Например, изменение значения на 2 заставит частицы рендериться со скоростью 2 кадра в секунду. Обратите внимание, что это не замедляет симуляцию самой системы частиц.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Если ``true``, то выполняется дробный расчет дельты, который обеспечивает более плавный эффект отображения частиц.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

Заставляет все частицы в этом узле интерполироваться к концу своего жизненного цикла.

\ **Примечание:** Это работает только при использовании с :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`. Это необходимо вручную реализовать для шейдеров пользовательских процессов.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles3D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

Включает интерполяцию частиц, которая делает движение частиц более плавным, когда их :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` ниже частоты обновления экрана.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

Количество времени, в течение которого каждая частица будет существовать (в секундах). Эффективная скорость эмиссии равна ``(amount * amount_ratio) / lifetime`` частиц в секунду.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Если ``true``, частицы используют координатное пространство родительского узла (известное как локальные координаты). Это заставит частицы двигаться и вращаться вдоль узла **GPUParticles3D** (и его родителей) при его перемещении или повороте. Если ``false``, частицы используют глобальные координаты; они не будут двигаться или вращаться вдоль узла **GPUParticles3D** (и его родителей) при его перемещении или повороте.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Если ``true``, будет испущено количество частиц, равное :ref:`amount<class_GPUParticles3D_property_amount>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Количество времени для предварительной обработки частиц перед началом анимации. Позволяет запустить анимацию через некоторое время после того, как частицы начали испускаться.

\ **Примечание:** Это может быть очень затратно, если установлено большое число, так как это требует запуска шейдера частиц количество раз, равное :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` (или 30, если :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` равен 0) для каждой секунды. В крайних случаях это может даже привести к сбою графического процессора из-за объема работы, проделанной за один кадр.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles3D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

:ref:`Material<class_Material>` для обработки частиц. Может быть :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` или :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Коэффициент случайности излучения.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Устанавливает случайное семя, используемое системой частиц. Действует только если :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Коэффициент масштабирования скорости. Значение ``0`` может использоваться для остановки частиц.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles3D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

Путь к другому узлу **GPUParticles3D**, который будет использоваться как субэмиттер (см. :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`). Субэмиттеры можно использовать для достижения таких эффектов, как фейерверк, искры при столкновении, пузыри, лопающиеся в каплях воды, и многое другое.

\ **Примечание:** Когда задан :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>`, целевой узел **GPUParticles3D** больше не будет испускать частицы самостоятельно.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles3D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

Если ``true``, включает следы частиц с использованием системы скиннинга сетки. Разработано для работы с :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` и :ref:`TubeTrailMesh<class_TubeTrailMesh>`.

\ **Примечание:** :ref:`BaseMaterial3D.use_particle_trails<class_BaseMaterial3D_property_use_particle_trails>` также должно быть включено в материале сетки частиц. В противном случае установка :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` на ``true`` не даст никакого эффекта.

\ **Примечание:** В отличие от :ref:`GPUParticles2D<class_GPUParticles2D>`, количество секций и подразделений следа задается в свойствах :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` или :ref:`TubeTrailMesh<class_TubeTrailMesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles3D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

Количество времени, которое должен представлять след частицы (в секундах). Действует только если :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align:

.. rst-class:: classref-property

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **transform_align** = ``0`` :ref:`🔗<class_GPUParticles3D_property_transform_align>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align**\ (\ value\: :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>`\ )
- :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **get_transform_align**\ (\ )

The alignment of particles. Use this for billboarding and aligning to velocity.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align_axis:

.. rst-class:: classref-property

:ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>` **transform_align_axis** :ref:`🔗<class_GPUParticles3D_property_transform_align_axis>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align_axis**\ (\ value\: :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>`\ )
- :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>` **get_transform_align_axis**\ (\ )

When using transform align local billboard, which axis to use for the billboarding. Supports only X or Y.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align_channel_filter:

.. rst-class:: classref-property

:ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` **transform_align_channel_filter** :ref:`🔗<class_GPUParticles3D_property_transform_align_channel_filter>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align_channel_filter**\ (\ value\: :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>`\ )
- :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` **get_transform_align_channel_filter**\ (\ )

In the case of billboarded particles, which custom channel to read from to calculate their angle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Если ``true``, частицы будут использовать одно и то же семя для каждой симуляции, используя семя, определенное в :ref:`seed<class_GPUParticles3D_property_seed>`. Это полезно в ситуациях, когда визуальный результат должен быть согласованным между повторами, например, при использовании режима Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(-4, -4, -4, 8, 8, 8)`` :ref:`🔗<class_GPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

:ref:`AABB<class_AABB>`, который определяет область узла, которая должна быть видна на экране, чтобы система частиц была активной. :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` добавляется на каждую из осей AABB. Столкновения и притяжение частиц будут происходить только в этой области.

Увеличьте поле, если частицы внезапно появляются/исчезают, когда узел входит/выходит из экрана. :ref:`AABB<class_AABB>` можно увеличить с помощью кода или с помощью инструмента редактора **Частицы → Сгенерировать AABB**.

\ **Примечание:** :ref:`visible_aabb<class_GPUParticles3D_property_visible_aabb>` переопределяется :ref:`GeometryInstance3D.custom_aabb<class_GeometryInstance3D_property_custom_aabb>`, если это свойство установлено на значение, отличное от значения по умолчанию.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_GPUParticles3D_method_capture_aabb>`

Возвращает выровненный по осям ограничивающий прямоугольник, содержащий все частицы, активные в текущем кадре.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles3D_method_convert_from_particles>`

Устанавливает свойства этого узла в соответствии с заданным узлом :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles3D_method_emit_particle>`

Выпускает одну частицу. Применяются ли ``xform``, ``velocity``, ``color`` и ``custom``, зависит от значения ``flags``. См. :ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>`.

ParticleProcessMaterial по умолчанию перезапишет ``color`` и будет использовать содержимое ``custom`` как ``(rotation, age, animation, life)``.

\ **Примечание:** :ref:`emit_particle()<class_GPUParticles3D_method_emit_particle>` поддерживается только в методах рендеринга Forward+ и Mobile, но не Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_get_draw_pass_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticles3D_method_get_draw_pass_mesh>`

Возвращает :ref:`Mesh<class_Mesh>`, который нарисован по индексу ``pass``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_GPUParticles3D_method_request_particles_process>`

Requests the particles to process for extra process time during a single frame.

\ ``process_time`` defines the time that the particles will process while emitting is on. ``process_time_residual`` defines the time that particles will process with emitting turned off for the simulation. When combined with :ref:`speed_scale<class_GPUParticles3D_property_speed_scale>` set to ``0.0``, this is useful to be able to seek a particle system timeline.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles3D_method_restart>`

Перезапускает цикл испускания частиц, очищая существующие частицы. Чтобы избежать исчезновения частиц из области просмотра, дождитесь сигнала :ref:`finished<class_GPUParticles3D_signal_finished>` перед вызовом.

\ **Примечание:** Сигнал :ref:`finished<class_GPUParticles3D_signal_finished>` испускается только эмиттерами :ref:`one_shot<class_GPUParticles3D_property_one_shot>`.

Если ``keep_seed`` равен ``true``, текущее случайное начальное число будет сохранено. Полезно для поиска и воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_set_draw_pass_mesh:

.. rst-class:: classref-method

|void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_GPUParticles3D_method_set_draw_pass_mesh>`

Устанавливает :ref:`Mesh<class_Mesh>`, который рисуется по индексу ``pass``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
