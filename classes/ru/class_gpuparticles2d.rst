:github_url: hide

.. _class_GPUParticles2D:

GPUParticles2D
==============

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Двумерный излучатель частиц.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел 2D-частиц, используемый для создания различных систем частиц и эффектов. **GPUParticles2D** содержит излучатель, который генерирует некоторое количество частиц с заданной скоростью.

Используйте свойство :ref:`process_material<class_GPUParticles2D_property_process_material>`, чтобы добавить :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` для настройки внешнего вида и поведения частиц. В качестве альтернативы вы можете добавить :ref:`ShaderMaterial<class_ShaderMaterial>`, который будет применен ко всем частицам.

2D-частицы могут опционально сталкиваться с узлами :ref:`LightOccluder2D<class_LightOccluder2D>`, но они не сталкиваются с узлами :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Системы частиц (2D) <../tutorials/2d/particle_systems_2d>`

- `Демонстрация 2D-частиц <https://godotengine.org/asset-library/asset/2724>`__

- `2D Dodge The Creeps Demo (использует GPUParticles2D для следа позади игрока) <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`amount<class_GPUParticles2D_property_amount>`                                         | ``8``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`                             | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`collision_base_size<class_GPUParticles2D_property_collision_base_size>`               | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` | :ref:`draw_order<class_GPUParticles2D_property_draw_order>`                                 | ``1``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`emitting<class_GPUParticles2D_property_emitting>`                                     | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`explosiveness<class_GPUParticles2D_property_explosiveness>`                           | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>`                                   | ``30``                          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`fract_delta<class_GPUParticles2D_property_fract_delta>`                               | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`interp_to_end<class_GPUParticles2D_property_interp_to_end>`                           | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`interpolate<class_GPUParticles2D_property_interpolate>`                               | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`lifetime<class_GPUParticles2D_property_lifetime>`                                     | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`local_coords<class_GPUParticles2D_property_local_coords>`                             | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`one_shot<class_GPUParticles2D_property_one_shot>`                                     | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`preprocess<class_GPUParticles2D_property_preprocess>`                                 | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Material<class_Material>`                 | :ref:`process_material<class_GPUParticles2D_property_process_material>`                     |                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`randomness<class_GPUParticles2D_property_randomness>`                                 | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`seed<class_GPUParticles2D_property_seed>`                                             | ``0``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`speed_scale<class_GPUParticles2D_property_speed_scale>`                               | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>`                               | ``NodePath("")``                |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Texture2D<class_Texture2D>`               | :ref:`texture<class_GPUParticles2D_property_texture>`                                       |                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>`                           | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`trail_lifetime<class_GPUParticles2D_property_trail_lifetime>`                         | ``0.3``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>` | ``4``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`                         | ``8``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>`                         | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Rect2<class_Rect2>`                       | :ref:`visibility_rect<class_GPUParticles2D_property_visibility_rect>`                       | ``Rect2(-100, -100, 200, 200)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`capture_rect<class_GPUParticles2D_method_capture_rect>`\ (\ ) |const|                                                                                                                                                                                          |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`convert_from_particles<class_GPUParticles2D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`emit_particle<class_GPUParticles2D_method_emit_particle>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_particles_process<class_GPUParticles2D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0\ )                                                                       |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`restart<class_GPUParticles2D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_GPUParticles2D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles2D_signal_finished>`

Вызывается, когда все активные частицы завершили обработку. Чтобы немедленно перезапустить цикл испускания, вызовите :ref:`restart()<class_GPUParticles2D_method_restart>`.

Этот сигнал никогда не вызывается, когда :ref:`one_shot<class_GPUParticles2D_property_one_shot>` отключен, так как частицы будут испускаться и обрабатываться непрерывно.

\ **Примечание:** Для эмиттеров :ref:`one_shot<class_GPUParticles2D_property_one_shot>`, поскольку частицы вычисляются на GPU, может быть короткий период после получения сигнала, в течение которого установка :ref:`emitting<class_GPUParticles2D_property_emitting>` на ``true`` не перезапустит цикл испускания. Эта задержка устраняется путем вызова :ref:`restart()<class_GPUParticles2D_method_restart>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_GPUParticles2D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles2D_DrawOrder>`

.. _class_GPUParticles2D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Частицы рисуются в порядке испускания.

.. _class_GPUParticles2D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Частицы рисуются в порядке оставшегося времени жизни. Другими словами, частица с наибольшим временем жизни рисуется спереди.

.. _class_GPUParticles2D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

Частицы рисуются в обратном порядке оставшегося времени жизни. Другими словами, частица с наименьшим временем жизни рисуется спереди.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles2D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles2D_EmitFlags>`

.. _class_GPUParticles2D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

Частица стартует в указанной позиции.

.. _class_GPUParticles2D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

Частица начинается с указанного поворота и масштаба.

.. _class_GPUParticles2D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

Частица стартует с заданным вектором скорости, который определяет направление и скорость излучения.

.. _class_GPUParticles2D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

Частица начинается с указанного цвета.

.. _class_GPUParticles2D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

Частица начинается с указанных данных ``CUSTOM``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GPUParticles2D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles2D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Количество частиц, испускаемых за один цикл испускания. Эффективная скорость испускания равна ``(amount * amount_ratio) / life`` частиц в секунду. Более высокие значения увеличат требования к графическому процессору, даже если не все частицы видны в данный момент времени или если :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` уменьшено.

\ **Примечание:** Изменение этого значения приведет к перезапуску системы частиц. Чтобы избежать этого, измените :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

Соотношение частиц, которые должны быть фактически испущены. Если установлено значение ниже ``1.0``, это установит количество испускаемых частиц за время жизни на ``amount * amount_ratio``. В отличие от изменения :ref:`amount<class_GPUParticles2D_property_amount>`, изменение :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` во время испускания не влияет на уже испущенные частицы и не приводит к перезапуску системы частиц. :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` можно использовать для создания эффектов, которые заставляют количество испускаемых частиц меняться со временем.

\ **Примечание:** Уменьшение :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` не дает выигрыша в производительности, поскольку ресурсы должны быть выделены и обработаны для общего :ref:`amount<class_GPUParticles2D_property_amount>` частиц независимо от :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`. Если вы не собираетесь изменять количество испускаемых частиц во время испускания частиц, убедитесь, что :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` установлено на ``1`` и вместо этого измените :ref:`amount<class_GPUParticles2D_property_amount>` по своему усмотрению.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

Множитель радиуса столкновения частиц. ``1.0`` соответствует размеру спрайта. Если частицы кажутся тонущими в земле при столкновении, увеличьте это значение. Если частицы кажутся плавающими при столкновении, уменьшите это значение. Действует только если :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` равен :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` или :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`.

\ **Примечание:** Частицы всегда имеют сферическую форму столкновения.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **draw_order** = ``1`` :ref:`🔗<class_GPUParticles2D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **get_draw_order**\ (\ )

Порядок отрисовки частиц.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles2D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Если ``true``, частицы испускаются. :ref:`emitting<class_GPUParticles2D_property_emitting>` можно использовать для запуска и остановки испускания частиц. Однако, если :ref:`one_shot<class_GPUParticles2D_property_one_shot>` равно ``true``, установка :ref:`emitting<class_GPUParticles2D_property_emitting>` в ``true`` не перезапустит цикл испускания, пока все активные частицы не закончат обработку. Используйте сигнал :ref:`finished<class_GPUParticles2D_signal_finished>`, чтобы получать уведомления, как только все активные частицы закончат обработку.

\ **Примечание:** Для испускателей :ref:`one_shot<class_GPUParticles2D_property_one_shot>`, из-за того, что частицы вычисляются на GPU, может быть короткий период после получения сигнала :ref:`finished<class_GPUParticles2D_signal_finished>`, в течение которого установка этого значения в ``true`` не перезапустит цикл испускания.

\ **Совет:** Если вашему испускателю :ref:`one_shot<class_GPUParticles2D_property_one_shot>` необходимо немедленно возобновить испускание частиц после получения сигнала :ref:`finished<class_GPUParticles2D_signal_finished>`, рассмотрите возможность вызова :ref:`restart()<class_GPUParticles2D_method_restart>` вместо установки :ref:`emitting<class_GPUParticles2D_property_emitting>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Насколько быстро выбрасываются частицы в цикле эмиссии. Если больше ``0``, то будет разрыв в эмиссии до начала следующего цикла.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles2D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

Частота кадров системы частиц зафиксирована на значении. Например, изменение значения на 2 заставит частицы рендериться со скоростью 2 кадра в секунду. Обратите внимание, что это не замедляет симуляцию самой системы частиц.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles2D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Если ``true``, то выполняется дробный расчет дельты, который обеспечивает более плавный эффект отображения частиц.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

Заставляет все частицы в этом узле интерполироваться к концу своего жизненного цикла.

\ **Примечание:** Это работает только при использовании с :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`. Это необходимо вручную реализовать для шейдеров пользовательских процессов.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles2D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

Включает интерполяцию частиц, которая делает движение частиц более плавным, когда их :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` ниже частоты обновления экрана.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

Количество времени, в течение которого каждая частица будет существовать (в секундах). Эффективная скорость эмиссии равна ``(amount * amount_ratio) / lifetime`` частиц в секунду.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles2D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Если ``true``, частицы используют координатное пространство родительского узла (известное как локальные координаты). Это заставит частицы двигаться и вращаться вдоль узла **GPUParticles2D** (и его родителей) при его перемещении или повороте. Если ``false``, частицы используют глобальные координаты; они не будут двигаться или вращаться вдоль узла **GPUParticles2D** (и его родителей) при его перемещении или повороте.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles2D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Если ``true``, происходит только один цикл эмиссии. Если установить ``true`` во время цикла, эмиссия прекратится в конце цикла.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Система частиц запускается так, как будто она уже работала столько секунд.

\ **Примечание:** Это может быть очень затратно, если установлено большое число, так как это требует запуска шейдера частиц количество раз, равное :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` (или 30, если :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` равен 0) для каждой секунды. В крайних случаях это может даже привести к сбою графического процессора из-за объема работы, выполненной за один кадр.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles2D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

:ref:`Material<class_Material>` для обработки частиц. Может быть :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` или :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Коэффициент случайности времени жизни излучения.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles2D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Устанавливает случайное семя, используемое системой частиц. Действует только если :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Коэффициент масштабирования скорости работы системы частиц. Значение ``0`` может использоваться для остановки частиц.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles2D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

Путь к другому узлу **GPUParticles2D**, который будет использоваться как субэмиттер (см. :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`). Субэмиттеры можно использовать для достижения таких эффектов, как фейерверк, искры при столкновении, пузыри, лопающиеся в каплях воды, и многое другое.

\ **Примечание:** Когда задан :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>`, целевой узел **GPUParticles2D** больше не будет испускать частицы самостоятельно.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_GPUParticles2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Текстура частиц. Если ``null``, частицы будут квадратами размером 1×1 пиксель.

\ **Примечание:** Чтобы использовать текстуру флипбука/атласа спрайтов, назначьте новый :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` свойству :ref:`CanvasItem.material<class_CanvasItem_property_material>` **GPUParticles2D**, затем включите :ref:`CanvasItemMaterial.particles_animation<class_CanvasItemMaterial_property_particles_animation>` и установите :ref:`CanvasItemMaterial.particles_anim_h_frames<class_CanvasItemMaterial_property_particles_anim_h_frames>`, :ref:`CanvasItemMaterial.particles_anim_v_frames<class_CanvasItemMaterial_property_particles_anim_v_frames>` и :ref:`CanvasItemMaterial.particles_anim_loop<class_CanvasItemMaterial_property_particles_anim_loop>` для соответствия текстуре флипбука/атласа спрайтов.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles2D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

Если ``true``, включает следы частиц с использованием системы скиннинга сетки.

\ **Примечание:** В отличие от :ref:`GPUParticles3D<class_GPUParticles3D>`, количество секций и подразделений следа задается свойствами :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>` и :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles2D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

Количество времени, которое должен представлять след частицы (в секундах). Действует только если :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_section_subdivisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_section_subdivisions** = ``4`` :ref:`🔗<class_GPUParticles2D_property_trail_section_subdivisions>`

.. rst-class:: classref-property-setget

- |void| **set_trail_section_subdivisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_section_subdivisions**\ (\ )

Количество подразделений, используемых для рендеринга следа частиц. Более высокие значения могут привести к более плавным кривым следа за счет производительности из-за повышенной сложности сетки. См. также :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`. Действует только если :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_sections** = ``8`` :ref:`🔗<class_GPUParticles2D_property_trail_sections>`

.. rst-class:: classref-property-setget

- |void| **set_trail_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_sections**\ (\ )

Количество секций, используемых для рендеринга следа частиц. Более высокие значения могут привести к более плавным кривым следа за счет производительности из-за повышенной сложности сетки. См. также :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`. Действует только если :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles2D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Если ``true``, частицы будут использовать одно и то же семя для каждой симуляции, используя семя, определенное в :ref:`seed<class_GPUParticles2D_property_seed>`. Это полезно в ситуациях, когда визуальный результат должен быть согласованным между повторами, например, при использовании режима Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_visibility_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **visibility_rect** = ``Rect2(-100, -100, 200, 200)`` :ref:`🔗<class_GPUParticles2D_property_visibility_rect>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_visibility_rect**\ (\ )

:ref:`Rect2<class_Rect2>`, который определяет область узла, которая должна быть видна на экране, чтобы система частиц была активной.

Увеличьте прямоугольник, если частицы внезапно появляются/исчезают, когда узел входит/выходит из экрана. :ref:`Rect2<class_Rect2>` можно увеличить с помощью кода или с помощью инструмента редактора **Particles → Generate Visibility Rect**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GPUParticles2D_method_capture_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **capture_rect**\ (\ ) |const| :ref:`🔗<class_GPUParticles2D_method_capture_rect>`

Возвращает прямоугольник, содержащий позиции всех существующих частиц.

\ **Примечание:** При использовании потокового рендеринга этот метод синхронизирует поток рендеринга. Частый его вызов может негативно сказаться на производительности.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles2D_method_convert_from_particles>`

Устанавливает свойства этого узла в соответствии с заданным узлом :ref:`CPUParticles2D<class_CPUParticles2D>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles2D_method_emit_particle>`

Выпускает одну частицу. Применяются ли ``xform``, ``velocity``, ``color`` и ``custom``, зависит от значения ``flags``. См. :ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>`.

ParticleProcessMaterial по умолчанию перезапишет ``color`` и будет использовать содержимое ``custom`` как ``(rotation, age, animation, life)``.

\ **Примечание:** :ref:`emit_particle()<class_GPUParticles2D_method_emit_particle>` поддерживается только в методах рендеринга Forward+ и Mobile, но не Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0\ ) :ref:`🔗<class_GPUParticles2D_method_request_particles_process>`

Requests the particles to process for extra process time during a single frame.

\ ``process_time`` defines the time that the particles will process while emitting is on. ``process_time_residual`` defines the time that particles will process with emitting turned off for the simulation. When combined with :ref:`speed_scale<class_GPUParticles2D_property_speed_scale>` set to ``0.0``, this is useful to be able to seek a particle system timeline.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles2D_method_restart>`

Перезапускает цикл испускания частиц, очищая существующие частицы. Чтобы избежать исчезновения частиц из области просмотра, дождитесь сигнала :ref:`finished<class_GPUParticles2D_signal_finished>` перед вызовом.

\ **Примечание:** Сигнал :ref:`finished<class_GPUParticles2D_signal_finished>` испускается только эмиттерами :ref:`one_shot<class_GPUParticles2D_property_one_shot>`.

Если ``keep_seed`` равен ``true``, текущее случайное начальное число будет сохранено. Полезно для поиска и воспроизведения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
