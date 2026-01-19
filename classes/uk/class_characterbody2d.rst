:github_url: hide

.. _class_CharacterBody2D:

CharacterBody2D
===============

**Успадковує:** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Двовимірне фізичне тіло, спеціалізоване для персонажів, які переміщуються за сценарієм.

.. rst-class:: classref-introduction-group

Опис
--------

**CharacterBody2D** — це спеціалізований клас для фізичних тіл, які призначені для керування користувачем. На них зовсім не впливає фізика, але вони впливають на інші фізичні тіла на своєму шляху. Вони в основному використовуються для забезпечення API високого рівня для переміщення об’єктів із виявленням стін і схилів (методу :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`) на додаток до загального виявлення зіткнень, що забезпечується :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>`. Це робить його корисним для фізичних тіл із широким набором конфігурацій, які повинні рухатися певним чином і стикатися зі світом, як це часто буває з персонажами, керованими користувачем.

Для ігрових об’єктів, які не потребують складного виявлення руху чи зіткнень, наприклад рухомих платформ, :ref:`AnimatableBody2D<class_AnimatableBody2D>` простіше налаштувати.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- :doc:`Вирішення проблем з фізики <../tutorials/physics/troubleshooting_physics_issues>`

- :doc:`Кінематичний персонаж (2D) <../tutorials/physics/kinematic_character_2d>`

- :doc:`Використання CharacterBody2D <../tutorials/physics/using_character_body_2d>`

- `Демонстрація двовимірного кінематичного персонажа <https://godotengine.org/asset-library/asset/2719>`__

- `Демонстрація 2D-платформера <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_block_on_wall<class_CharacterBody2D_property_floor_block_on_wall>`     | ``true``           |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_constant_speed<class_CharacterBody2D_property_floor_constant_speed>`   | ``false``          |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`             | ``0.7853982``      |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_snap_length<class_CharacterBody2D_property_floor_snap_length>`         | ``1.0``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_stop_on_slope<class_CharacterBody2D_property_floor_stop_on_slope>`     | ``true``           |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                        | :ref:`max_slides<class_CharacterBody2D_property_max_slides>`                       | ``4``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`MotionMode<enum_CharacterBody2D_MotionMode>`           | :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>`                     | ``0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_floor_layers<class_CharacterBody2D_property_platform_floor_layers>` | ``4294967295``     |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` | :ref:`platform_on_leave<class_CharacterBody2D_property_platform_on_leave>`         | ``0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_wall_layers<class_CharacterBody2D_property_platform_wall_layers>`   | ``0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                    | :ref:`safe_margin<class_CharacterBody2D_property_safe_margin>`                     | ``0.08``           |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`slide_on_ceiling<class_CharacterBody2D_property_slide_on_ceiling>`           | ``true``           |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`up_direction<class_CharacterBody2D_property_up_direction>`                   | ``Vector2(0, -1)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`velocity<class_CharacterBody2D_property_velocity>`                           | ``Vector2(0, 0)``  |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                    | :ref:`wall_min_slide_angle<class_CharacterBody2D_property_wall_min_slide_angle>`   | ``0.2617994``      |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`apply_floor_snap<class_CharacterBody2D_method_apply_floor_snap>`\ (\ )                                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_floor_angle<class_CharacterBody2D_method_get_floor_angle>`\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_floor_normal<class_CharacterBody2D_method_get_floor_normal>`\ (\ ) |const|                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_last_motion<class_CharacterBody2D_method_get_last_motion>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision2D<class_KinematicCollision2D>` | :ref:`get_last_slide_collision<class_CharacterBody2D_method_get_last_slide_collision>`\ (\ )                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_platform_velocity<class_CharacterBody2D_method_get_platform_velocity>`\ (\ ) |const|                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_position_delta<class_CharacterBody2D_method_get_position_delta>`\ (\ ) |const|                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_real_velocity<class_CharacterBody2D_method_get_real_velocity>`\ (\ ) |const|                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision2D<class_KinematicCollision2D>` | :ref:`get_slide_collision<class_CharacterBody2D_method_get_slide_collision>`\ (\ slide_idx\: :ref:`int<class_int>`\ )                             |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`get_slide_collision_count<class_CharacterBody2D_method_get_slide_collision_count>`\ (\ ) |const|                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_wall_normal<class_CharacterBody2D_method_get_wall_normal>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling<class_CharacterBody2D_method_is_on_ceiling>`\ (\ ) |const|                                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling_only<class_CharacterBody2D_method_is_on_ceiling_only>`\ (\ ) |const|                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor<class_CharacterBody2D_method_is_on_floor>`\ (\ ) |const|                                                                        |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor_only<class_CharacterBody2D_method_is_on_floor_only>`\ (\ ) |const|                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall<class_CharacterBody2D_method_is_on_wall>`\ (\ ) |const|                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall_only<class_CharacterBody2D_method_is_on_wall_only>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`move_and_slide<class_CharacterBody2D_method_move_and_slide>`\ (\ )                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CharacterBody2D_MotionMode:

.. rst-class:: classref-enumeration

enum **MotionMode**: :ref:`🔗<enum_CharacterBody2D_MotionMode>`

.. _class_CharacterBody2D_constant_MOTION_MODE_GROUNDED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **MOTION_MODE_GROUNDED** = ``0``

Застосовуйте, коли актуальні поняття стін, стелі та підлоги. У цьому режимі рух тіла буде реагувати на схили (прискорення/уповільнення). Цей режим підходить для односторонніх ігор, таких як платформери.

.. _class_CharacterBody2D_constant_MOTION_MODE_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **MOTION_MODE_FLOATING** = ``1``

Застосовують, коли немає поняття підлоги або стелі. Про всі зіткнення повідомлятиметься як ``on_wall``. У цьому режимі, коли ви ковзаєте, швидкість завжди буде постійною. Цей режим підходить для ігор зверху вниз.

.. rst-class:: classref-item-separator

----

.. _enum_CharacterBody2D_PlatformOnLeave:

.. rst-class:: classref-enumeration

enum **PlatformOnLeave**: :ref:`🔗<enum_CharacterBody2D_PlatformOnLeave>`

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_ADD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_VELOCITY** = ``0``

Додайте останню швидкість платформи до :ref:`velocity<class_CharacterBody2D_property_velocity>`, коли залишаєте рухому платформу.

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY** = ``1``

Додайте останню швидкість платформи до :ref:`velocity<class_CharacterBody2D_property_velocity>`, коли залишаєте рухому платформу, але будь-який рух вниз ігнорується. Корисно зберігати повну висоту стрибка, навіть коли платформа рухається вниз.

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_DO_NOTHING:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_DO_NOTHING** = ``2``

Нічого не робити, залишаючи платформу.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CharacterBody2D_property_floor_block_on_wall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_block_on_wall** = ``true`` :ref:`🔗<class_CharacterBody2D_property_floor_block_on_wall>`

.. rst-class:: classref-property-setget

- |void| **set_floor_block_on_wall_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_block_on_wall_enabled**\ (\ )

Якщо ``true``, тіло зможе рухатися лише по підлозі. Ця опція дозволяє уникнути ходіння по стінах, але дозволить ковзати вздовж них.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_constant_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_constant_speed** = ``false`` :ref:`🔗<class_CharacterBody2D_property_floor_constant_speed>`

.. rst-class:: classref-property-setget

- |void| **set_floor_constant_speed_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_constant_speed_enabled**\ (\ )

Якщо ``false`` (за замовчуванням), тіло рухатиметься швидше на схилах вниз і повільніше на схилах угору.

Якщо ``true``, тіло завжди рухатиметься на землі з однаковою швидкістю незалежно від нахилу. Зауважте, що вам потрібно використовувати :ref:`floor_snap_length<class_CharacterBody2D_property_floor_snap_length>`, щоб триматися вздовж схилу вниз із постійною швидкістю.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_max_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_max_angle** = ``0.7853982`` :ref:`🔗<class_CharacterBody2D_property_floor_max_angle>`

.. rst-class:: classref-property-setget

- |void| **set_floor_max_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_max_angle**\ (\ )

Максимальний кут (у радіанах), при якому схил усе ще вважається підлогою (або стелею), а не стіною, під час виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. Стандартне значення дорівнює 45 градусам.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_snap_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_snap_length** = ``1.0`` :ref:`🔗<class_CharacterBody2D_property_floor_snap_length>`

.. rst-class:: classref-property-setget

- |void| **set_floor_snap_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_snap_length**\ (\ )

Встановлює відстань замикання. Якщо встановлено значення, відмінне від ``0.0``, під час виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` тіло залишається прикріпленим до нахилів. Вектор примикання визначається заданою відстанню вздовж напрямку, протилежного :ref:`up_direction<class_CharacterBody2D_property_up_direction>`.

Поки вектор замикання контактує з землею, а тіло рухається проти :ref:`up_direction<class_CharacterBody2D_property_up_direction>`, тіло залишатиметься прикріпленим до поверхні. Прив’язка не застосовується, якщо тіло рухається вздовж :ref:`up_direction<class_CharacterBody2D_property_up_direction>`, тобто воно має вертикальну зростаючу швидкість, тому воно зможе відірватися від землі під час стрибка або коли тіло щось штовхає вгору. Якщо ви хочете застосувати прив’язку без урахування швидкості, використовуйте :ref:`apply_floor_snap()<class_CharacterBody2D_method_apply_floor_snap>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_stop_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_stop_on_slope** = ``true`` :ref:`🔗<class_CharacterBody2D_property_floor_stop_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_floor_stop_on_slope_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_stop_on_slope_enabled**\ (\ )

Якщо ``true``, тіло не ковзатиме по схилах під час виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`, коли тіло стоїть на місці.

Якщо ``false``, тіло ковзатиме по схилах підлоги, коли :ref:`velocity<class_CharacterBody2D_property_velocity>` прикладає силу вниз.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_max_slides:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_slides** = ``4`` :ref:`🔗<class_CharacterBody2D_property_max_slides>`

.. rst-class:: classref-property-setget

- |void| **set_max_slides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_slides**\ (\ )

Максимальна кількість разів, коли тіло може змінити напрямок, перш ніж воно зупиниться, під час виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. Має бути більше нуля.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_motion_mode:

.. rst-class:: classref-property

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **motion_mode** = ``0`` :ref:`🔗<class_CharacterBody2D_property_motion_mode>`

.. rst-class:: classref-property-setget

- |void| **set_motion_mode**\ (\ value\: :ref:`MotionMode<enum_CharacterBody2D_MotionMode>`\ )
- :ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **get_motion_mode**\ (\ )

Встановлює режим руху, який визначає поведінку :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_floor_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_floor_layers** = ``4294967295`` :ref:`🔗<class_CharacterBody2D_property_platform_floor_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_floor_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_floor_layers**\ (\ )

Шари зіткнення, які будуть включені для виявлення тіл підлоги, які діятимуть як рухомі платформи, за якими слідуватиме **CharacterBody2D**. За замовчуванням усі тіла підлоги виявляються та поширюють свою швидкість.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_on_leave:

.. rst-class:: classref-property

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **platform_on_leave** = ``0`` :ref:`🔗<class_CharacterBody2D_property_platform_on_leave>`

.. rst-class:: classref-property-setget

- |void| **set_platform_on_leave**\ (\ value\: :ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>`\ )
- :ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **get_platform_on_leave**\ (\ )

Встановлює поведінку, яка застосовуватиметься, коли ви залишаєте рухому платформу. За замовчуванням, для фізичної точності, при відході від останньої платформи застосовується швидкість.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_wall_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_wall_layers** = ``0`` :ref:`🔗<class_CharacterBody2D_property_platform_wall_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_wall_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_wall_layers**\ (\ )

Шари зіткнення, які будуть включені для виявлення тіл стін, які діятимуть як рухомі платформи, за якими слідуватиме **CharacterBody2D**. За замовчуванням усі стіни ігноруються.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_margin** = ``0.08`` :ref:`🔗<class_CharacterBody2D_property_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_safe_margin**\ (\ )

Додатковий запас, який використовується для відновлення зіткнення під час виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`.

Якщо тіло знаходиться принаймні так близько до іншого тіла, воно вважатиме, що вони стикаються, і буде відштовхнуто, перш ніж здійснити фактичний рух.

Більше значення означає, що він більш гнучкий для виявлення зіткнень, що допомагає постійно виявляти стіни та підлоги.

Нижче значення змушує алгоритм зіткнення використовувати точніше виявлення, тому його можна використовувати у випадках, які особливо вимагають точності, наприклад, у дуже низькому масштабі, щоб уникнути видимого тремтіння, або для стабільності зі стеком тіл символів.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_slide_on_ceiling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_ceiling** = ``true`` :ref:`🔗<class_CharacterBody2D_property_slide_on_ceiling>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_ceiling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_slide_on_ceiling_enabled**\ (\ )

Якщо ``true``, під час стрибка до стелі тіло буде ковзати, якщо ``false``, воно зупиниться і впаде вертикально.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_up_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **up_direction** = ``Vector2(0, -1)`` :ref:`🔗<class_CharacterBody2D_property_up_direction>`

.. rst-class:: classref-property-setget

- |void| **set_up_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_up_direction**\ (\ )

Вектор, спрямований вгору, використовується для визначення того, що є стіною, а що — підлогою (або стелею) під час виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. За замовчуванням :ref:`Vector2.UP<class_Vector2_constant_UP>`. Оскільки вектор буде нормалізовано, він не може дорівнювати :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`, якщо ви хочете, щоб усі зіткнення повідомлялися як стіни, розгляньте можливість використання :ref:`MOTION_MODE_FLOATING<class_CharacterBody2D_constant_MOTION_MODE_FLOATING>` як :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_CharacterBody2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

Поточний вектор швидкості в пікселях за секунду, який використовується та змінюється під час викликів :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`.

\ **Примітка:** Поширеною помилкою є встановлення для цієї властивості значення бажаної швидкості, помноженої на ``delta``, що створює вектор руху в пікселях.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_wall_min_slide_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wall_min_slide_angle** = ``0.2617994`` :ref:`🔗<class_CharacterBody2D_property_wall_min_slide_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wall_min_slide_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wall_min_slide_angle**\ (\ )

Мінімальний кут (у радіанах), під яким тіло може ковзати при зустрічі зі стіною. Значення за замовчуванням дорівнює 15 градусам. Ця властивість впливає на рух лише тоді, коли :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>` має значення :ref:`MOTION_MODE_FLOATING<class_CharacterBody2D_constant_MOTION_MODE_FLOATING>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CharacterBody2D_method_apply_floor_snap:

.. rst-class:: classref-method

|void| **apply_floor_snap**\ (\ ) :ref:`🔗<class_CharacterBody2D_method_apply_floor_snap>`

Дозволяє вручну притискати підлогу незалежно від швидкості руху тіла. Ця функція нічого не робить, коли :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` повертає ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_floor_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_floor_angle**\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_floor_angle>`

Повертає кут зіткнення підлоги в останній точці зіткнення відповідно до ``up_direction``, який за замовчуванням дорівнює :ref:`Vector2.UP<class_Vector2_constant_UP>`. Це значення завжди позитивне й дійсне лише після виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` і коли :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` повертає ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_floor_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_floor_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_floor_normal>`

Повертає нормаль зіткнення підлоги в останній точці зіткнення. Дійсний лише після виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` і коли :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` повертає ``true``.

\ **Попередження:** нормаль до зіткнення не завжди збігається з нормаллю до поверхні.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_last_motion:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_last_motion**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_last_motion>`

Повертає останній рух, застосований до **CharacterBody2D** під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. Рух можна розділити на кілька рухів, коли відбувається ковзання, і цей метод повертає останній, що корисно для отримання поточного напрямку руху.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_last_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision2D<class_KinematicCollision2D>` **get_last_slide_collision**\ (\ ) :ref:`🔗<class_CharacterBody2D_method_get_last_slide_collision>`

Повертає :ref:`KinematicCollision2D<class_KinematicCollision2D>`, якщо відбулося зіткнення. Повернене значення містить інформацію про останнє зіткнення, яке сталося під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. Повертає ``null``, якщо зіткнення не відбулося. Див. також :ref:`get_slide_collision()<class_CharacterBody2D_method_get_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_platform_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_platform_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_platform_velocity>`

Повертає лінійну швидкість платформи в точці останнього зіткнення. Дійсний лише після виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_position_delta:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_position_delta**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_position_delta>`

Повертає переміщення (дельта позиції), яке відбулося під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_real_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_real_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_real_velocity>`

Повертає поточну реальну швидкість з моменту останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. Наприклад, коли ви піднімаєтесь на схил, ви рухатиметеся по діагоналі, навіть якщо швидкість горизонтальна. Цей метод повертає діагональний рух, на відміну від :ref:`velocity<class_CharacterBody2D_property_velocity>`, який повертає запитувану швидкість.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision2D<class_KinematicCollision2D>` **get_slide_collision**\ (\ slide_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CharacterBody2D_method_get_slide_collision>`

Повертає :ref:`KinematicCollision2D<class_KinematicCollision2D>`, який містить інформацію про зіткнення, що сталося під час останнього виклику методу ``move_and_slide``. Оскільки тіло може зіткнутися кілька разів за один виклик методу ``move_and_slide``, необхідно вказати індекс зіткнення в діапазоні від 0 до (:ref:`get_slide_collision_count()<class_CharacterBody2D_method_get_slide_collision_count>` - 1). Див. також :ref:`get_last_slide_collision()<class_CharacterBody2D_method_get_last_slide_collision>`.

\ **Приклад:** Переберіть зіткнення за допомогою циклу ``for``:


.. tabs::

 .. code-tab:: gdscript

    for i in get_slide_collision_count():
        var collision = get_slide_collision(i)
        print("Collided with: ", collision.get_collider().name)

 .. code-tab:: csharp

    for (int i = 0; i < GetSlideCollisionCount(); i++)
    {
        KinematicCollision2D collision = GetSlideCollision(i);
        GD.Print("Collided with: ", (collision.GetCollider() as Node).Name);
    }



.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_slide_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_slide_collision_count**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_slide_collision_count>`

Повертає кількість разів, коли тіло зіткнулося та змінило напрямок під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_wall_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_wall_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_wall_normal>`

Повертає нормаль зіткнення стіни в останній точці зіткнення. Дійсний лише після виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` і коли :ref:`is_on_wall()<class_CharacterBody2D_method_is_on_wall>` повертає ``true``.

\ **Попередження:** нормаль до зіткнення не завжди збігається з нормаллю до поверхні.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_ceiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_ceiling>`

Повертає ``true``, якщо тіло зіткнулося зі стелею під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. В іншому випадку повертає ``false``. :ref:`up_direction<class_CharacterBody2D_property_up_direction>` і :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>` використовуються для визначення того, чи є поверхня «стелею» чи ні.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_ceiling_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_ceiling_only>`

Повертає ``true``, якщо тіло зіткнулося лише зі стелею під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. В іншому випадку повертає ``false``. :ref:`up_direction<class_CharacterBody2D_property_up_direction>` і :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>` використовуються для визначення того, чи є поверхня «стелею» чи ні.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_floor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_floor>`

Повертає ``true``, якщо тіло зіткнулося з підлогою під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. В іншому випадку повертає ``false``. :ref:`up_direction<class_CharacterBody2D_property_up_direction>` і :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>` використовуються для визначення того, чи є поверхня «підлогою» чи ні.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_floor_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_floor_only>`

Повертає ``true``, якщо тіло зіткнулося лише з підлогою під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. В іншому випадку повертає ``false``. :ref:`up_direction<class_CharacterBody2D_property_up_direction>` і :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>` використовуються для визначення того, чи є поверхня «підлогою» чи ні.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_wall:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_wall>`

Повертає ``true``, якщо тіло зіткнулося зі стіною під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. В іншому випадку повертає ``false``. :ref:`up_direction<class_CharacterBody2D_property_up_direction>` і :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>` використовуються для визначення того, чи є поверхня «стіною» чи ні.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_wall_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_wall_only>`

Повертає ``true``, якщо тіло зіткнулося лише зі стіною під час останнього виклику :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. В іншому випадку повертає ``false``. :ref:`up_direction<class_CharacterBody2D_property_up_direction>` і :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>` використовуються для визначення того, чи є поверхня «стіною» чи ні.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_move_and_slide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **move_and_slide**\ (\ ) :ref:`🔗<class_CharacterBody2D_method_move_and_slide>`

Переміщує тіло на основі :ref:`velocity<class_CharacterBody2D_property_velocity>`. Якщо тіло зіштовхується з іншим, воно буде ковзати по іншому тілу (за замовчуванням тільки на підлозі), а не зупинятися відразу. Якщо інше тіло є **CharacterBody2D** або :ref:`RigidBody2D<class_RigidBody2D>`, воно також буде піддаватися впливу руху іншого тіла. Ви можете використовувати це для створення рухомих і обертових платформ або для того, щоб вузли штовхали інші вузли.

Цей метод слід використовувати в :ref:`Node._physics_process()<class_Node_private_method__physics_process>` (або в методі, що викликається :ref:`Node._physics_process()<class_Node_private_method__physics_process>`), оскільки він автоматично використовує значення ``delta`` фізичного кроку в обчисленнях. В іншому випадку симуляція буде працювати з неправильною швидкістю.

Змінює ``член velocity``, якщо відбулося зіткнення ковзання. Щоб отримати останнє зіткнення, викличте :ref:`get_last_slide_collision()<class_CharacterBody2D_method_get_last_slide_collision>`, для детальної інформації про зіткнення, що відбулися, використовуйте :ref:`get_slide_collision()<class_CharacterBody2D_method_get_slide_collision>`.

Коли тіло торкається рухомої платформи, швидкість платформи автоматично додається до руху тіла. Якщо зіткнення відбувається через рух платформи, воно завжди буде першим у зіткненнях ковзання.

Загальна поведінка та доступні властивості змінюються відповідно до :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>`.

Повертає ``true``, якщо тіло зіткнулося, інакше повертає ``false``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
