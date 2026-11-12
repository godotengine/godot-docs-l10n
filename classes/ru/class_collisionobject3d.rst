:github_url: hide

.. _class_CollisionObject3D:

CollisionObject3D
=================

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`Area3D<class_Area3D>`, :ref:`PhysicsBody3D<class_PhysicsBody3D>`

Абстрактный базовый класс для трехмерных физических объектов.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный базовый класс для 3D-физических объектов. **CollisionObject3D** может содержать любое количество :ref:`Shape3D<class_Shape3D>` для столкновения. Каждая форма должна быть назначена *владельцу формы*. Владельцы формы не являются узлами и не отображаются в редакторе, но доступны через код с использованием методов ``shape_owner_*``.

\ **Предупреждение:** При неравномерном масштабе этот узел, скорее всего, будет вести себя не так, как ожидалось. Рекомендуется сохранить его масштаб одинаковым по всем осям и вместо этого настроить его форму(ы) столкновения.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Сигналы
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

Выдается, когда указатель мыши входит в любую из форм этого объекта. Требует, чтобы :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`.

\ **Примечание:** Из-за отсутствия непрерывного обнаружения столкновений этот сигнал может не выдаваться в ожидаемом порядке, если мышь движется достаточно быстро, а область **CollisionObject3D** мала. Этот сигнал также может не выдаваться, если другой **CollisionObject3D** перекрывает рассматриваемый **CollisionObject3D**.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_CollisionObject3D_signal_mouse_exited>`

Выдается, когда указатель мыши выходит за пределы всех форм этого объекта. Требует, чтобы :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`.

\ **Примечание:** Из-за отсутствия непрерывного обнаружения столкновений этот сигнал может не выдаваться в ожидаемом порядке, если мышь движется достаточно быстро, а область **CollisionObject3D** мала. Этот сигнал также может не выдаваться, если другой **CollisionObject3D** перекрывает рассматриваемый **CollisionObject3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CollisionObject3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_CollisionObject3D_DisableMode>`

.. _class_CollisionObject3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Когда :ref:`Node.process_mode<class_Node_property_process_mode>` установлен на :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, удалить из моделирования физики, чтобы остановить все физические взаимодействия с этим **CollisionObject3D**.

Автоматически повторно добавляется в моделирование физики, когда :ref:`Node<class_Node>` обрабатывается снова.

.. _class_CollisionObject3D_constant_DISABLE_MODE_MAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_MAKE_STATIC** = ``1``

Когда :ref:`Node.process_mode<class_Node_property_process_mode>` установлен на :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, сделайте тело статичным. Не влияет на :ref:`Area3D<class_Area3D>`. :ref:`PhysicsBody3D<class_PhysicsBody3D>` не может быть подвержен воздействию сил или других тел, пока он статичен.

Автоматически верните :ref:`PhysicsBody3D<class_PhysicsBody3D>` в исходный режим, когда :ref:`Node<class_Node>` обрабатывается снова.

.. _class_CollisionObject3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``2``

Если :ref:`Node.process_mode<class_Node_property_process_mode>` установлен в :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, это не влияет на физическую симуляцию.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

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

Приоритет, используемый для решения столкновений при возникновении проникновения. Чем выше приоритет, тем ниже будет проникновение в объект. Это может быть использовано, например, для предотвращения прорыва игрока через границы уровня.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_CollisionObject3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_CollisionObject3D_DisableMode>`\ )
- :ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **get_disable_mode**\ (\ )

Определяет поведение в физике, когда :ref:`Node.process_mode<class_Node_property_process_mode>` установлен в :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_input_capture_on_drag:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_capture_on_drag** = ``false`` :ref:`🔗<class_CollisionObject3D_property_input_capture_on_drag>`

.. rst-class:: classref-property-setget

- |void| **set_capture_input_on_drag**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_capture_input_on_drag**\ (\ )

Если ``true``, **CollisionObject3D** продолжит получать входные события при перемещении мыши по его фигуре.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_input_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_ray_pickable** = ``true`` :ref:`🔗<class_CollisionObject3D_property_input_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

Если ``true``, этот объект можно выбрать. Можно выбрать, обнаружив вход/выход указателя мыши, и если мышь находится внутри него, сообщать о событиях ввода. Требуется установить хотя бы один бит :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

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

Вызывается, когда указатель мыши входит в любую из фигур этого объекта. Требует, чтобы :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`. Обратите внимание, что перемещение между различными фигурами в пределах одного **CollisionObject3D** не приведет к вызову этой функции.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_private_method__mouse_exit:

.. rst-class:: classref-method

|void| **_mouse_exit**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject3D_private_method__mouse_exit>`

Вызывается, когда указатель мыши покидает все формы этого объекта. Требует, чтобы :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`. Обратите внимание, что перемещение между различными формами в пределах одного **CollisionObject3D** не приведет к вызову этой функции.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_create_shape_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_shape_owner**\ (\ owner\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_CollisionObject3D_method_create_shape_owner>`

Создает нового владельца формы для данного объекта. Возвращает ``owner_id`` нового владельца для дальнейшего использования.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_collision_layer_value>`

Возвращает, включен ли указанный слой :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_collision_mask_value>`

Возвращает, включен ли указанный слой :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_rid>`

Возвращает :ref:`RID<class_RID>` объекта.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_shape_owners:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_shape_owners**\ (\ ) :ref:`🔗<class_CollisionObject3D_method_get_shape_owners>`

Возвращает :ref:`Array<class_Array>` идентификаторов ``owner_id``. Вы можете использовать эти идентификаторы в других методах, которые принимают ``owner_id`` в качестве аргумента.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_is_shape_owner_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_disabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_is_shape_owner_disabled>`

Если ``true``, владелец фигуры и его фигуры отключены.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_remove_shape_owner:

.. rst-class:: classref-method

|void| **remove_shape_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_remove_shape_owner>`

Удаляет указанного владельца фигуры.

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

Возвращает ``owner_id`` заданной фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_add_shape:

.. rst-class:: classref-method

|void| **shape_owner_add_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape3D<class_Shape3D>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_add_shape>`

Добавляет :ref:`Shape3D<class_Shape3D>` к владельцу фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_clear_shapes:

.. rst-class:: classref-method

|void| **shape_owner_clear_shapes**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_clear_shapes>`

Удаляет все фигуры у владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_owner:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **shape_owner_get_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_owner>`

Возвращает родительский объект указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **shape_owner_get_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape>`

Возвращает :ref:`Shape3D<class_Shape3D>` с указанным идентификатором от указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_count**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape_count>`

Возвращает количество фигур, содержащихся в заданном владельце фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_index**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape_index>`

Возвращает дочерний индекс :ref:`Shape3D<class_Shape3D>` с указанным идентификатором от указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **shape_owner_get_transform**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_transform>`

Возвращает :ref:`Transform3D<class_Transform3D>` владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_remove_shape:

.. rst-class:: classref-method

|void| **shape_owner_remove_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_remove_shape>`

Удаляет фигуру у указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_set_disabled:

.. rst-class:: classref-method

|void| **shape_owner_set_disabled**\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_set_disabled>`

Если ``true``, отключает владельца данной фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_set_transform:

.. rst-class:: classref-method

|void| **shape_owner_set_transform**\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_set_transform>`

Устанавливает :ref:`Transform3D<class_Transform3D>` для данного владельца формы.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
