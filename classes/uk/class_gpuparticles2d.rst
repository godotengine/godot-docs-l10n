:github_url: hide

.. _class_GPUParticles2D:

GPUParticles2D
==============

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Емітатор частинок 2D.

.. rst-class:: classref-introduction-group

Опис
--------

2D використовується для створення різних систем частинок і ефектів. **GPUParticles2D** містить випромінювач, який генерує певну кількість частинок при даній швидкості.

Використовуйте власність :ref:`process_material<class_GPUParticles2D_property_process_material>` для додавання :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` для налаштування зовнішнього вигляду частинок і поведінки. Крім того, ви можете додати :ref:`ShaderMaterial<class_ShaderMaterial>`, який буде застосовуватися до всіх частинок.

2D частинки можуть необов'язково зв'язатися з :ref:`LightOccluder2D<class_LightOccluder2D>`, але вони не збігаються з :ref:`PhysicsBody2D<class_PhysicsBody2D>` вершинами.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Системи частинок (2D) <../tutorials/2d/particle_systems_2d>`

- `2D Демотація частинок <https://godotengine.org/asset-library/asset/2724>`__

- `2D Dodge The Creeps Demo (використовує GPUPaarticle2D для стежки за гравця) <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Сигнали
--------------

.. _class_GPUParticles2D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles2D_signal_finished>`

Випромінюється, коли всі активні частинки закінчили обробку. Щоб негайно перезапустити цикл викидів, викличте :ref:`restart()<class_GPUParticles2D_method_restart>`. 

Цей сигнал ніколи не випромінюється, коли :ref:`one_shot<class_GPUParticles2D_property_one_shot>` вимкнено, оскільки частинки випромінюються та обробляються постійно. 

\ **Примітка:** Для випромінювачів :ref:`one_shot<class_GPUParticles2D_property_one_shot>`, через те, що частинки обчислюються графічним процесором, може бути короткий період після отримання сигналу, протягом якого налаштування :ref:`emitting<class_GPUParticles2D_property_emitting>` на ``true`` не перезапустить цикл випромінювання. Цю затримку можна уникнути шляхом виклику :ref:`restart()<class_GPUParticles2D_method_restart>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_GPUParticles2D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles2D_DrawOrder>`

.. _class_GPUParticles2D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Терміни нараховуються в порядку, передбаченому.

.. _class_GPUParticles2D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Терміни нараховуються в порядку денного життя. Іншими словами, частинка з найвищим терміном придатна на фронті.

.. _class_GPUParticles2D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

Терміни нараховуються у зворотному порядку решти життя. Іншими словами, частинка з найнижчим терміном наноситься на передній.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles2D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles2D_EmitFlags>`

.. _class_GPUParticles2D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

На вказаному положенні стартує частинка.

.. _class_GPUParticles2D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

Частка починається з вказаного обертання і ваги.

.. _class_GPUParticles2D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

Частинка починається з вказаного вектора швидкості, який визначає напрямок викидів і швидкість.

.. _class_GPUParticles2D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

Стіч починається з вказаного кольору.

.. _class_GPUParticles2D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

Наклад починається з вказаних ``CUSTOM`` даних.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GPUParticles2D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles2D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Кількість частинок для випромінювання в одному циклі випромінювання. Ефективна швидкість емісії ``(amount * amount_ratio) / життя`` частинки на секунду. Більші значення підвищать вимоги до GPU, навіть якщо не всі частинки видимі в обумовлений час або якщо знизився кількість пам'яті.

\ **Примітка:** Зміна цього значення призведе до перезавантаження системи частинок. Щоб уникнути цього, змініть :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` замість.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

Співвідношення частинок, які насправді повинні бути введеними. Якщо встановити значення нижче ``1.0``, це буде встановлено кількість вживаних частинок протягом усього життя ``amount * кількість_ratio``. На відміну від зміни :ref:`amount<class_GPUParticles2D_property_amount>`, зміни :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` при випромінюванні не впливає вже наявні частинки і не викликає системи частинок для перезавантаження. :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` може бути використана для створення ефектів, які роблять число вживаних частинок варіюватися з часом.

\ **Примітка:** Зменшення :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` не має допомоги продуктивності, так як ресурси повинні бути виділені і оброблені для всього :ref:`amount<class_GPUParticles2D_property_amount>` частинок незалежно від :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`. Якщо ви не маєте намір змінити кількість частинок, які випромінюються, тоді як частинки випромінюють, переконайтеся, що :ref:`кількість_ratio<class_GPUParticles2D_property_кількість_ratio>` встановлюється до ``1`` і змініть :ref:`amount<class_GPUParticles2D_property_amount>` до вашої кришки замість.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

Multiplier для радіусу зіткнення частинок. ``1.0`` відповідає розміру спрайта. Якщо з'являються частинки, щоб мити в грунт, коли з'єднання, збільшити це значення. Якщо частинки з'являються до плавлення при співвідношенні, знижують це значення. Тільки ефективний, якщо :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` є :ref:`ParticleProcessMaterial. COLLISION_RIGID<class_ParticleProcessMaterial_constant_ COLLISION_RIGID>` або :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`.

\ **Примітки:** Завжди мають сферичну форму зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **draw_order** = ``1`` :ref:`🔗<class_GPUParticles2D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **get_draw_order**\ (\ )

Порядок малювання частинок.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles2D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Якщо ``true``, частинки вдаються. ``пам'ятне випромінювання`` може бути використаний для запуску та припинення частинок з випромінювання. Однак, якщо :ref:`one_shot<class_GPUParticles2D_property_one_shot>` є ``true`` налаштування :ref:`emitting<class_GPUParticles2D_property_emitting>` до ``true`` не перезапустити цикл викидів, якщо всі активні частинки закінчилися обробки. Використовуйте :ref:`finished<class_GPUParticles2D_signal_finished>` сигнал, який буде повідомлено один раз, коли всі активні обробки частинок.

\ **Примітка:** Для :ref:`one_shot<class_GPUParticles2D_property_one_shot>` випромінювачів, через частинки, що комп'ютерні на GPU, може бути короткий період після отримання сигналу :ref:`finished<class_GPUParticles2D_signal_finished>`, під час якого налаштування цього ``true`` не буде перезапустити цикл емісії.

\ **Підказка:** Якщо ваш :ref:`one_shot<class_GPUParticles2D_property_one_shot>` випромінювач повинен негайно перезапустити частинки після отримання сигналу, розгляньте виклик :ref:`restart()<class_GPUParticles2D_method_restart>` замість налаштування :ref:`emitting<class_GPUParticles2D_property_emitting>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Як швидко викидаються частинки в циклі емісії. Якщо більше ``0``, з'явиться проміжок викидів до наступного циклу.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles2D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

Швидкість рами частинок фіксується до значення. Наприклад, зміна значення до 2 призведе до зменшення частинок на 2 кадри на другий. Зверніть увагу, що це не уповільнює моделювання самої системи частинок.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles2D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Якщо ``true``, результати розрахунку дробової дельти, яка має ефект відображення гладких частинок.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

Причини всіх частинок в цій вершині, щоб міжполятися до кінця їх життя.

\ **Примітка:** Це тільки працює при використанні :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`. Необхідно вручну втілювати шейкери на замовлення.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles2D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

Вмикає інтерполяцію частинок, що робить рух частинок плавнішим, коли їхній :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` нижчий за частоту оновлення екрана.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

Кількість часу кожної частинки буде існувати (в секундах). Ефективна швидкість емісії `` (amount * amount_ratio) / термін служби`` частинки на секунду.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles2D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Якщо ``true``, частинки використовують координаційний простір материнської вершини (відомі як локальні координати). Це спричинить частинки для переміщення і обертання вздовж вузла **GPUParticles2D** (і його батьки), коли він переміщається або обертається. Якщо ``false``, частинки використовують глобальні координати; вони не рухаються або обертаються вздовж вузла **GPUParticles2D** (і його батьки), коли він переміщається або обертається.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles2D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Якщо ``true``, виникає лише один цикл викидів. Якщо встановити ``true`` під час циклу, емісія буде припинена в кінці циклу.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Система частинок запускається так, ніби вона вже працювала стільки секунд. 

\ **Примітка:** Це може бути дуже дорогим, якщо встановлено велике число, оскільки це вимагає запуску шейдера частинок кількість разів, що дорівнює :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` (або 30, якщо :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` дорівнює 0) за кожну секунду. У крайніх випадках це може навіть призвести до збою GPU через обсяг роботи, виконаної в одному кадрі.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles2D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

:ref:`Material<class_Material>` для обробки частинок. Може бути :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` або :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Відносність термінів життя емісії.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles2D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Встановлює випадкове початкове число, яке використовується системою частинок. Ефективно, лише якщо :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Співвідношення швидкості масштабування частинок. Значення ``0`` можна використовувати для паузи частинок.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles2D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

Шлях до іншої **GPUParticles2D** вершина, яка буде використовуватися як підеміттер (див. :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`). Для досягнення ефектів, таких як феєрверки, іскри на зіткненні, бульбашки, що тиснуть на краплі води, і багато іншого.

\ **Примітка:** Коли :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>` встановлюється, ціль **GPUParticles2D** вузол більше не буде випромінювати частинки самостійно.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_GPUParticles2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Текстура частинок. Якщо ``null``, частинки будуть квадрати розміром 1×1 пікселів.

\ **Примітка:** Щоб використовувати текстуру flipbook, призначте новий :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` до **GPUParticles2D** :ref:`CanvasItem.material<class_CanvasItem_property_material>`, потім увімкніть :ref:`CanvasItemMaterial.paarticle_animation<class_CanvasItemMaterial_property_paarticle_animation>` і встановіть :ref:`CanvasItemMaterial.article_anim_h_frames<class_CanvasItemMaterial_property_article_anim_h_frames>`, :ref:`CanvasItemMaterial.paarticle_anim_v_frames<class_CanvasItemMaterial_property_paarticle_anim_v_frames>`, і :ref:`CanvasItemMaterial.article_anim_loop<class_CanvasItemMaterial_property_article_anim_loop>`, щоб відповідати текстурі фліпбук.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles2D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

Якщо ``true``, активує траєкторії частинок за допомогою системи обшивки сітки.

\ **Примітка:** На відміну від :ref:`GPUParticles3D<class_GPUParticles3D>`, кількість секцій та підрозділів стежки встановлюється за допомогою властивостей :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>` та :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles2D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

Кількість часу слід представляти частинку (в секундах). ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_section_subdivisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_section_subdivisions** = ``4`` :ref:`🔗<class_GPUParticles2D_property_trail_section_subdivisions>`

.. rst-class:: classref-property-setget

- |void| **set_trail_section_subdivisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_section_subdivisions**\ (\ )

Кількість підрозділів, які використовують для рендерингу частинок. Більші значення можуть призвести до гладких кривих причепів, за вартістю виконання за рахунок підвищеної складності сітки. Дивись також :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>`. ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_sections** = ``8`` :ref:`🔗<class_GPUParticles2D_property_trail_sections>`

.. rst-class:: classref-property-setget

- |void| **set_trail_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_sections**\ (\ )

Кількість секцій для використання для рендерингу частинок. Більші значення можуть призвести до гладких кривих причепів, за вартістю виконання за рахунок підвищеної складності сітки. Дивись також :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>`. ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles2D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Якщо ``true``, частинки використовуватимуть той самий сімпл для кожної симуляції, використовуючи сімпл, визначений у :ref:`seed<class_GPUParticles2D_property_seed>`. Це корисно у ситуаціях, коли візуальний результат має бути однаковим у всіх відтвореннях, наприклад, при використанні режиму Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_visibility_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **visibility_rect** = ``Rect2(-100, -100, 200, 200)`` :ref:`🔗<class_GPUParticles2D_property_visibility_rect>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_visibility_rect**\ (\ )

:ref:`Rect2<class_Rect2>`, що визначає область вершини, яка повинна бути видима на екрані для системи частинок, щоб бути активним.

Виростити ct, якщо частинки раптом з'являються / з'являються, коли вершина надходить / виводить екран. :ref:`Rect2<class_Rect2>` може бути вирощений за допомогою коду або з **Пачастини → Генерувати Visibility Rect** редактор інструмент.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GPUParticles2D_method_capture_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **capture_rect**\ (\ ) |const| :ref:`🔗<class_GPUParticles2D_method_capture_rect>`

Повертає прямокутник, що містить позиції всіх наявних частинок.

\ **Примітка:** При використанні різьбового рендерингу цей метод синхронізує рендерингову нитку. Викликання часто може мати негативний вплив на продуктивність.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles2D_method_convert_from_particles>`

Налаштовує властивості цього вузла, щоб відповідати даній :ref:`CPUParticles2D<class_CPUParticles2D>` вершині.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles2D_method_emit_particle>`

Випромінює одну частинку. Чи застосовуються ``xform``, ``velocity``, ``color`` і ``custom``, залежить від значення ``flags``. Див. :ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>`. 

За замовчуванням ParticleProcessMaterial перезапише ``color`` і використає вміст ``custom`` як ``(rotation, age, animation, lifetime)``. 

\ **Примітка:** :ref:`emit_particle()<class_GPUParticles2D_method_emit_particle>` підтримується лише методами візуалізації Forward+ і Mobile, а не Compatibility.

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

Перезапускає цикл викиду частинок, очищаючи існуючі частинки. Щоб уникнути зникнення частинок із вікна перегляду, дочекайтеся сигналу :ref:`finished<class_GPUParticles2D_signal_finished>` перед викликом. 

\ **Примітка:** Сигнал :ref:`finished<class_GPUParticles2D_signal_finished>` випромінюють лише випромінювачі :ref:`one_shot<class_GPUParticles2D_property_one_shot>`. 

Якщо ``keep_seed`` має значення ``true``, поточне випадкове початкове число буде збережено. Корисно для пошуку та відтворення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
