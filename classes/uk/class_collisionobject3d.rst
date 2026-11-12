:github_url: hide

.. _class_CollisionObject3D:

CollisionObject3D
=================

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`Area3D<class_Area3D>`, :ref:`PhysicsBody3D<class_PhysicsBody3D>`

Абстрактний базовий клас для об'єктів фізики 3D.

.. rst-class:: classref-introduction-group

Опис
--------

Абстрактний базовий клас для об'єктів фізики 3D. **CollisionObject3D** може утримувати будь-яку кількість :ref:`Shape3D<class_Shape3D>` для зіткнення. Кожна форма повинна бути призначена * для власника *. Власники форм не мають вузлів і не з'являються в редакторі, але доступні за допомогою коду за допомогою методів ``shape_owner_*``.

\ **Попередження:** З неоднорідною шкалою, цей вузол, ймовірно, не буде поводитися як очікується. Консервувати свою вагову вагу на всіх осях і відрегулювати форму зіткнення.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`             | ``1``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>`               | ``1``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                              | :ref:`collision_priority<class_CollisionObject3D_property_collision_priority>`       | ``1.0``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`DisableMode<enum_CollisionObject3D_DisableMode>` | :ref:`disable_mode<class_CollisionObject3D_property_disable_mode>`                   | ``0``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                | :ref:`input_capture_on_drag<class_CollisionObject3D_property_input_capture_on_drag>` | ``false`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                | :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>`       | ``true``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_input_event<class_CollisionObject3D_private_method__input_event>`\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, event\: :ref:`InputEvent<class_InputEvent>`, event_position\: :ref:`Vector3<class_Vector3>`, normal\: :ref:`Vector3<class_Vector3>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_enter<class_CollisionObject3D_private_method__mouse_enter>`\ (\ ) |virtual|                                                                                                                                                                                                                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_exit<class_CollisionObject3D_private_method__mouse_exit>`\ (\ ) |virtual|                                                                                                                                                                                                                     |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`create_shape_owner<class_CollisionObject3D_method_create_shape_owner>`\ (\ owner\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_layer_value<class_CollisionObject3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                             |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_mask_value<class_CollisionObject3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                           | :ref:`get_rid<class_CollisionObject3D_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_shape_owners<class_CollisionObject3D_method_get_shape_owners>`\ (\ )                                                                                                                                                                                                                             |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_shape_owner_disabled<class_CollisionObject3D_method_is_shape_owner_disabled>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                     |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_shape_owner<class_CollisionObject3D_method_remove_shape_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_layer_value<class_CollisionObject3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_mask_value<class_CollisionObject3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                                                                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_find_owner<class_CollisionObject3D_method_shape_find_owner>`\ (\ shape_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_add_shape<class_CollisionObject3D_method_shape_owner_add_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape3D<class_Shape3D>`\ )                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_clear_shapes<class_CollisionObject3D_method_shape_owner_clear_shapes>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                     | :ref:`shape_owner_get_owner<class_CollisionObject3D_method_shape_owner_get_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`                   | :ref:`shape_owner_get_shape<class_CollisionObject3D_method_shape_owner_get_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_count<class_CollisionObject3D_method_shape_owner_get_shape_count>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                             |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_index<class_CollisionObject3D_method_shape_owner_get_shape_index>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`shape_owner_get_transform<class_CollisionObject3D_method_shape_owner_get_transform>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_remove_shape<class_CollisionObject3D_method_shape_owner_remove_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ )                                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_disabled<class_CollisionObject3D_method_shape_owner_set_disabled>`\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                                                                                                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_transform<class_CollisionObject3D_method_shape_owner_set_transform>`\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_CollisionObject3D_signal_input_event:

.. rst-class:: classref-signal

**input_event**\ (\ camera\: :ref:`Node<class_Node>`, event\: :ref:`InputEvent<class_InputEvent>`, event_position\: :ref:`Vector3<class_Vector3>`, normal\: :ref:`Vector3<class_Vector3>`, shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_signal_input_event>`

Emitted when an unhandled input event occurs. Requires :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` to be ``true`` and at least one :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` bit to be set. See :ref:`_input_event()<class_CollisionObject3D_private_method__input_event>` for details.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_CollisionObject3D_signal_mouse_entered>`

Видається, коли вказівник миші потрапляє на будь-яку з фігур цього об'єкта. Потрібно, щоб :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` мав значення ``true`` і був встановлений принаймні один біт :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`.

\ **Примітка:** Через відсутність безперервного виявлення зіткнень цей сигнал може бути виданий не в очікуваному порядку, якщо миша рухається досить швидко, а область **CollisionObject3D** невелика. Цей сигнал також може не видаватися, якщо інший **CollisionObject3D** перекриває даний **CollisionObject3D**.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_CollisionObject3D_signal_mouse_exited>`

Видається, коли вказівник миші виходить за межі всіх фігур цього об'єкта. Потрібно, щоб :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` мав значення ``true`` і був встановлений принаймні один біт :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`.

\ **Примітка:** Через відсутність безперервного виявлення зіткнень цей сигнал може бути виданий не в очікуваному порядку, якщо миша рухається досить швидко, а область **CollisionObject3D** невелика. Цей сигнал також може не видаватися, якщо інший **CollisionObject3D** перекриває даний **CollisionObject3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CollisionObject3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_CollisionObject3D_DisableMode>`

.. _class_CollisionObject3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Коли :ref:`Node.process_mode<class_Node_property_process_mode>` встановлено на :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, видалити з фізичної симуляції, щоб зупинити всі фізичні взаємодії з цим **CollisionObject3D**.

Автоматично повторно додається до фізичної симуляції, коли :ref:`Node<class_Node>` обробляється знову.

.. _class_CollisionObject3D_constant_DISABLE_MODE_MAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_MAKE_STATIC** = ``1``

Коли :ref:`Node.process_mode<class_Node_property_process_mode>` встановлено у :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, зробити тіло статичним. Не впливає на :ref:`Area3D<class_Area3D>`. На :ref:`PhysicsBody3D<class_PhysicsBody3D>` не можуть впливати сили або інші тіла, поки воно статичне.

Автоматично повертати :ref:`PhysicsBody3D<class_PhysicsBody3D>` до початкового режиму при повторній обробці :ref:`Node<class_Node>`.

.. _class_CollisionObject3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``2``

Коли :ref:`Node.process_mode<class_Node_property_process_mode>` встановлюється на :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, не впливає на фізичне моделювання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CollisionObject3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CollisionObject3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

The physics layers this CollisionObject3D **is in**. Collision objects can exist in one or more of 32 different layers. See also :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>`. For an easier way to change this value from a script, see :ref:`set_collision_layer_value()<class_CollisionObject3D_method_set_collision_layer_value>`.

\ **Note:** Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CollisionObject3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The physics layers this CollisionObject3D **scans**. Collision objects can scan one or more of 32 different layers. See also :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`. For an easier way to change this value from a script, see :ref:`set_collision_mask_value()<class_CollisionObject3D_method_set_collision_mask_value>`.

\ **Note:** Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CollisionObject3D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

Пріоритет, який використовується для вирішення співвідношенні при виникненні проникнення. Чим вище пріоритет, тим нижче проникнення в об'єкт буде. Цей приклад можна використовувати для запобігання розбиття гравця за кордонами рівня.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_CollisionObject3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_CollisionObject3D_DisableMode>`\ )
- :ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **get_disable_mode**\ (\ )

Визначає поведінку у фізиці, коли :ref:`Node.process_mode<class_Node_property_process_mode>` встановлено на :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_input_capture_on_drag:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_capture_on_drag** = ``false`` :ref:`🔗<class_CollisionObject3D_property_input_capture_on_drag>`

.. rst-class:: classref-property-setget

- |void| **set_capture_input_on_drag**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_capture_input_on_drag**\ (\ )

Якщо ``true``, то **CollisionObject3D** продовжить отримувати вхідні події, оскільки миша перетягується через свої форми.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_input_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_ray_pickable** = ``true`` :ref:`🔗<class_CollisionObject3D_property_input_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

Якщо ``true``, цей об'єкт підбирається. Підбірний об'єкт може виявити вхід/зняття мишки, і якщо миша всередині неї, звітувати вхідні події. Вимагає принаймні один :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` трохи встановити.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CollisionObject3D_private_method__input_event:

.. rst-class:: classref-method

|void| **_input_event**\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, event\: :ref:`InputEvent<class_InputEvent>`, event_position\: :ref:`Vector3<class_Vector3>`, normal\: :ref:`Vector3<class_Vector3>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject3D_private_method__input_event>`

Detects unhandled mouse and touch :ref:`InputEvent<class_InputEvent>`\ s through ``event`` when they happen while hovering over the object. Gesture events are not detected. ``camera`` is the :ref:`Camera3D<class_Camera3D>` that the event originated in (for cameras inside viewports other than the main one to be detected, the parent :ref:`Viewport.physics_object_picking<class_Viewport_property_physics_object_picking>` needs to be set to ``true``). ``event_position`` is the position hit by a raycast from the camera to the mouse, in global space. ``normal`` is the normal vector of the surface at that point in world space. ``shape_idx`` is the index of the detected shape from :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

See also :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, :ref:`shape_find_owner()<class_CollisionObject3D_method_shape_find_owner>`, and :ref:`shape_owner_get_owner()<class_CollisionObject3D_method_shape_owner_get_owner>`.

\ **Note:** :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` events are triggered if the drag events started while hovering the object, or when the object is in the path of the drag event.

\ **Note:** :ref:`_input_event()<class_CollisionObject3D_private_method__input_event>` requires :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` to be ``true`` and at least one :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` bit to be set.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_private_method__mouse_enter:

.. rst-class:: classref-method

|void| **_mouse_enter**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject3D_private_method__mouse_enter>`

Викликається, коли вказівник миші потрапляє на будь-яку з фігур цього об'єкта. Вимагає, щоб :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` було ``true`` і принаймні один біт :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` було встановлено. Зауважте, що переміщення між різними фігурами у межах одного **CollisionObject3D** не призведе до виклику цієї функції.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_private_method__mouse_exit:

.. rst-class:: classref-method

|void| **_mouse_exit**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject3D_private_method__mouse_exit>`

Викликається, коли вказівник миші виходить за межі всіх фігур цього об'єкта. Вимагає, щоб :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` було ``true`` і принаймні один біт :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` було встановлено. Зауважте, що переміщення між різними фігурами у межах одного **CollisionObject3D** не призведе до виклику цієї функції.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_create_shape_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_shape_owner**\ (\ owner\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_CollisionObject3D_method_create_shape_owner>`

Створення нового власника форми для даного об'єкта. ``owner_id`` нового власника для майбутнього посилання.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_collision_layer_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_collision_mask_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_rid>`

Повернення об'єкта :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_shape_owners:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_shape_owners**\ (\ ) :ref:`🔗<class_CollisionObject3D_method_get_shape_owners>`

Повертаємо вашу увагу на те, що ``owner_id`` ідентифікатори. Ви можете використовувати ці ids в інших методах, які приймають ``owner_id`` як аргумент.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_is_shape_owner_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_disabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_is_shape_owner_disabled>`

Якщо ``true``, власник форми та його форма вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_remove_shape_owner:

.. rst-class:: classref-method

|void| **remove_shape_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_remove_shape_owner>`

Знімає задану форму власника.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject3D_method_set_collision_layer_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`, given a ``layer_number`` between 1 and 32. This simplifies editing this **CollisionObject3D**'s collision layer compared to assigning the :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` property directly.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject3D_method_set_collision_mask_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>`, given a ``layer_number`` between 1 and 32. This simplifies editing this **CollisionObject3D**'s collision mask compared to assigning the :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>` property directly.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_find_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_find_owner**\ (\ shape_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_find_owner>`

Повертаємо ``owner_id`` даної форми.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_add_shape:

.. rst-class:: classref-method

|void| **shape_owner_add_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape3D<class_Shape3D>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_add_shape>`

Додавання :ref:`Shape3D<class_Shape3D>` до власника форми.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_clear_shapes:

.. rst-class:: classref-method

|void| **shape_owner_clear_shapes**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_clear_shapes>`

Видаліть всі форми від власника форми.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_owner:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **shape_owner_get_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_owner>`

Повертає батьківський об'єкт власника даної форми.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **shape_owner_get_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape>`

Повернення :ref:`Shape3D<class_Shape3D>` з заданим ідентифікатором від даної форми власника.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_count**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape_count>`

Повертаємо кількість форм, вказаних форм.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_index**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape_index>`

Повертає індекс дитини :ref:`Shape3D<class_Shape3D>` з заданим ідентифікатором від даної форми власника.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **shape_owner_get_transform**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_transform>`

Повертає форму власника :ref:`Transform3D<class_Transform3D>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_remove_shape:

.. rst-class:: classref-method

|void| **shape_owner_remove_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_remove_shape>`

Видаліть форму з даної форми власника.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_set_disabled:

.. rst-class:: classref-method

|void| **shape_owner_set_disabled**\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_set_disabled>`

Якщо ``true``, відключає задану форму власника.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_set_transform:

.. rst-class:: classref-method

|void| **shape_owner_set_transform**\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_set_transform>`

Налаштовує :ref:`Transform3D<class_Transform3D>` даної форми власника.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
