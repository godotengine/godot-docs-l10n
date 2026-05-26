:github_url: hide

.. _class_CollisionObject2D:

CollisionObject2D
=================

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`Area2D<class_Area2D>`, :ref:`PhysicsBody2D<class_PhysicsBody2D>`

Абстрактный базовый класс для 2D физических объектов.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный базовый класс для 2D-объектов физики. **CollisionObject2D** может содержать любое количество :ref:`Shape2D<class_Shape2D>` для столкновения. Каждая форма должна быть назначена *владельцу формы*. Владельцы формы не являются узлами и не отображаются в редакторе, но доступны через код с использованием методов ``shape_owner_*``.

\ **Примечание:** Поддерживаются только столкновения между объектами в пределах одного холста (холст :ref:`Viewport<class_Viewport>` или :ref:`CanvasLayer<class_CanvasLayer>`). Поведение столкновений между объектами в разных холстах не определено.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`       | ``1``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>`         | ``1``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                              | :ref:`collision_priority<class_CollisionObject2D_property_collision_priority>` | ``1.0``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`DisableMode<enum_CollisionObject2D_DisableMode>` | :ref:`disable_mode<class_CollisionObject2D_property_disable_mode>`             | ``0``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                                | :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>`         | ``true`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_input_event<class_CollisionObject2D_private_method__input_event>`\ (\ viewport\: :ref:`Viewport<class_Viewport>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_enter<class_CollisionObject2D_private_method__mouse_enter>`\ (\ ) |virtual|                                                                                                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_exit<class_CollisionObject2D_private_method__mouse_exit>`\ (\ ) |virtual|                                                                                                                               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_shape_enter<class_CollisionObject2D_private_method__mouse_shape_enter>`\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual|                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_shape_exit<class_CollisionObject2D_private_method__mouse_shape_exit>`\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual|                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`create_shape_owner<class_CollisionObject2D_method_create_shape_owner>`\ (\ owner\: :ref:`Object<class_Object>`\ )                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_layer_value<class_CollisionObject2D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_mask_value<class_CollisionObject2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                           | :ref:`get_rid<class_CollisionObject2D_method_get_rid>`\ (\ ) |const|                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`get_shape_owner_one_way_collision_direction<class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_shape_owner_one_way_collision_margin<class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_shape_owners<class_CollisionObject2D_method_get_shape_owners>`\ (\ )                                                                                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_shape_owner_disabled<class_CollisionObject2D_method_is_shape_owner_disabled>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_shape_owner_one_way_collision_enabled<class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_shape_owner<class_CollisionObject2D_method_remove_shape_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_layer_value<class_CollisionObject2D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_mask_value<class_CollisionObject2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_find_owner<class_CollisionObject2D_method_shape_find_owner>`\ (\ shape_index\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_add_shape<class_CollisionObject2D_method_shape_owner_add_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape2D<class_Shape2D>`\ )                                                    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_clear_shapes<class_CollisionObject2D_method_shape_owner_clear_shapes>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                     | :ref:`shape_owner_get_owner<class_CollisionObject2D_method_shape_owner_get_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape2D<class_Shape2D>`                   | :ref:`shape_owner_get_shape<class_CollisionObject2D_method_shape_owner_get_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_count<class_CollisionObject2D_method_shape_owner_get_shape_count>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_index<class_CollisionObject2D_method_shape_owner_get_shape_index>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`           | :ref:`shape_owner_get_transform<class_CollisionObject2D_method_shape_owner_get_transform>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_remove_shape<class_CollisionObject2D_method_shape_owner_remove_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ )                                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_disabled<class_CollisionObject2D_method_shape_owner_set_disabled>`\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision<class_CollisionObject2D_method_shape_owner_set_one_way_collision>`\ (\ owner_id\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision_direction<class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction>`\ (\ owner_id\: :ref:`int<class_int>`, direction\: :ref:`Vector2<class_Vector2>`\ )    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_one_way_collision_margin<class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin>`\ (\ owner_id\: :ref:`int<class_int>`, margin\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_transform<class_CollisionObject2D_method_shape_owner_set_transform>`\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ )                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_CollisionObject2D_signal_input_event:

.. rst-class:: classref-signal

**input_event**\ (\ viewport\: :ref:`Node<class_Node>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_input_event>`

Вызывается при возникновении события ввода. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`. Подробности см. в :ref:`_input_event()<class_CollisionObject2D_private_method__input_event>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_entered>`

Выдается, когда указатель мыши входит в любую из фигур этого объекта. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`. Обратите внимание, что перемещение между различными фигурами в пределах одного **CollisionObject2D** не приведет к выдаче этого сигнала.

\ **Примечание:** Из-за отсутствия непрерывного обнаружения столкновений этот сигнал может не выдаваться в ожидаемом порядке, если мышь движется достаточно быстро, а область **CollisionObject2D** мала. Этот сигнал также может не выдаваться, если другой **CollisionObject2D** перекрывает рассматриваемый **CollisionObject2D**.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_exited>`

Выдается, когда указатель мыши покидает все формы этого объекта. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`. Обратите внимание, что перемещение между различными формами в пределах одного **CollisionObject2D** не приведет к выдаче этого сигнала.

\ **Примечание:** Из-за отсутствия непрерывного обнаружения столкновений этот сигнал может не выдаваться в ожидаемом порядке, если мышь движется достаточно быстро, а область **CollisionObject2D** мала. Этот сигнал также может не выдаваться, если другой **CollisionObject2D** перекрывает рассматриваемый **CollisionObject2D**.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_shape_entered:

.. rst-class:: classref-signal

**mouse_shape_entered**\ (\ shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_shape_entered>`

Вызывается, когда указатель мыши входит в любую из фигур этого объекта или перемещается из одной фигуры в другую. ``shape_idx`` — это дочерний индекс вновь введенного :ref:`Shape2D<class_Shape2D>`. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_signal_mouse_shape_exited:

.. rst-class:: classref-signal

**mouse_shape_exited**\ (\ shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_signal_mouse_shape_exited>`

Вызывается, когда указатель мыши покидает любую из фигур этого объекта. ``shape_idx`` — это дочерний индекс выведенного :ref:`Shape2D<class_Shape2D>`. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CollisionObject2D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_CollisionObject2D_DisableMode>`

.. _class_CollisionObject2D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Когда :ref:`Node.process_mode<class_Node_property_process_mode>` установлен на :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, удалить из симуляции физики, чтобы остановить все физические взаимодействия с этим **CollisionObject2D**.

Автоматически повторно добавляется в симуляцию физики, когда :ref:`Node<class_Node>` обрабатывается снова.

.. _class_CollisionObject2D_constant_DISABLE_MODE_MAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_MAKE_STATIC** = ``1``

Когда :ref:`Node.process_mode<class_Node_property_process_mode>` установлен на :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, сделайте тело статичным. Не влияет на :ref:`Area2D<class_Area2D>`. :ref:`PhysicsBody2D<class_PhysicsBody2D>` не может быть подвержен воздействию сил или других тел, пока он статичен.

Автоматически верните :ref:`PhysicsBody2D<class_PhysicsBody2D>` в исходный режим, когда :ref:`Node<class_Node>` обрабатывается снова.

.. _class_CollisionObject2D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``2``

Если :ref:`Node.process_mode<class_Node_property_process_mode>` установлен в :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, это не влияет на физическую симуляцию.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CollisionObject2D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CollisionObject2D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Физические слои, в которых находится CollisionObject2D. Объекты столкновений могут существовать в одном или нескольких из 32 различных слоев. См. также :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>`.

\ **Примечание:** Объект A может обнаружить контакт с объектом B, только если объект B находится в любом из слоев, которые сканирует объект A. См. `Слои и маски столкновений <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документации для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CollisionObject2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Физические слои, которые сканирует CollisionObject2D. Объекты столкновений могут сканировать один или несколько из 32 различных слоев. См. также :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`.

\ **Примечание:** Объект A может обнаружить контакт с объектом B, только если объект B находится в любом из слоев, которые сканирует объект A. См. `Слои и маски столкновений <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документации для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CollisionObject2D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

Приоритет, используемый для решения столкновений при возникновении проникновения. Чем выше приоритет, тем ниже будет проникновение в объект. Это может быть использовано, например, для предотвращения прорыва игрока через границы уровня.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_CollisionObject2D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_CollisionObject2D_DisableMode>`\ )
- :ref:`DisableMode<enum_CollisionObject2D_DisableMode>` **get_disable_mode**\ (\ )

Определяет поведение в физике, когда :ref:`Node.process_mode<class_Node_property_process_mode>` установлен в :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_property_input_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_pickable** = ``true`` :ref:`🔗<class_CollisionObject2D_property_input_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pickable**\ (\ )

Если ``true``, этот объект можно выбрать. Можно выбрать, обнаружив вход/выход указателя мыши, и если мышь находится внутри него, сообщать о событиях ввода. Требуется установить хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CollisionObject2D_private_method__input_event:

.. rst-class:: classref-method

|void| **_input_event**\ (\ viewport\: :ref:`Viewport<class_Viewport>`, event\: :ref:`InputEvent<class_InputEvent>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__input_event>`

Принимает необработанные :ref:`InputEvent<class_InputEvent>`. ``shape_idx`` — это дочерний индекс нажатого :ref:`Shape2D<class_Shape2D>`. Подключитесь к :ref:`input_event<class_CollisionObject2D_signal_input_event>`, чтобы легко получать эти события.

\ **Примечание:** :ref:`_input_event()<class_CollisionObject2D_private_method__input_event>` требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_enter:

.. rst-class:: classref-method

|void| **_mouse_enter**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_enter>`

Вызывается, когда указатель мыши входит в любую из фигур этого объекта. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`. Обратите внимание, что перемещение между различными фигурами в пределах одного **CollisionObject2D** не приведет к вызову этой функции.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_exit:

.. rst-class:: classref-method

|void| **_mouse_exit**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_exit>`

Вызывается, когда указатель мыши покидает все формы этого объекта. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был установлен хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`. Обратите внимание, что перемещение между различными формами в пределах одного **CollisionObject2D** не приведет к вызову этой функции.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_shape_enter:

.. rst-class:: classref-method

|void| **_mouse_shape_enter**\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_shape_enter>`

Вызывается, когда указатель мыши входит в любую из фигур этого объекта или перемещается из одной фигуры в другую. ``shape_idx`` — это дочерний индекс вновь введенного :ref:`Shape2D<class_Shape2D>`. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был вызван хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_private_method__mouse_shape_exit:

.. rst-class:: classref-method

|void| **_mouse_shape_exit**\ (\ shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject2D_private_method__mouse_shape_exit>`

Вызывается, когда указатель мыши покидает любую из фигур этого объекта. ``shape_idx`` — это дочерний индекс выведенного :ref:`Shape2D<class_Shape2D>`. Требует, чтобы :ref:`input_pickable<class_CollisionObject2D_property_input_pickable>` был ``true`` и был вызван хотя бы один бит :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_create_shape_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_shape_owner**\ (\ owner\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_CollisionObject2D_method_create_shape_owner>`

Создает нового владельца формы для данного объекта. Возвращает ``owner_id`` нового владельца для дальнейшего использования.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_collision_layer_value>`

Возвращает, включен ли указанный слой :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_collision_mask_value>`

Возвращает, включен ли указанный слой :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_rid>`

Возвращает :ref:`RID<class_RID>` объекта.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_shape_owner_one_way_collision_direction**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_shape_owner_one_way_collision_direction>`

Returns the ``one_way_collision_direction`` of the shape owner identified by the given ``owner_id``.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shape_owner_one_way_collision_margin**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_get_shape_owner_one_way_collision_margin>`

Возвращает ``one_way_collision_margin`` владельца фигуры, идентифицированного заданным ``owner_id``.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_get_shape_owners:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_shape_owners**\ (\ ) :ref:`🔗<class_CollisionObject2D_method_get_shape_owners>`

Возвращает :ref:`Array<class_Array>` идентификаторов ``owner_id``. Вы можете использовать эти идентификаторы в других методах, которые принимают ``owner_id`` в качестве аргумента.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_is_shape_owner_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_disabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_is_shape_owner_disabled>`

Если ``true``, владелец фигуры и его фигуры отключены.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_one_way_collision_enabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_is_shape_owner_one_way_collision_enabled>`

Возвращает ``true``, если столкновения для владельца фигуры, происходящие из этого **CollisionObject2D**, не будут сообщаться о столкновениях с **CollisionObject2D**.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_remove_shape_owner:

.. rst-class:: classref-method

|void| **remove_shape_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_remove_shape_owner>`

Удаляет указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_set_collision_layer_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`collision_layer<class_CollisionObject2D_property_collision_layer>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_set_collision_mask_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`collision_mask<class_CollisionObject2D_property_collision_mask>` при заданном ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_find_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_find_owner**\ (\ shape_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_find_owner>`

Возвращает ``owner_id`` заданной фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_add_shape:

.. rst-class:: classref-method

|void| **shape_owner_add_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape2D<class_Shape2D>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_add_shape>`

Добавляет :ref:`Shape2D<class_Shape2D>` к владельцу фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_clear_shapes:

.. rst-class:: classref-method

|void| **shape_owner_clear_shapes**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_clear_shapes>`

Удаляет все фигуры у владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_owner:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **shape_owner_get_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_owner>`

Возвращает родительский объект указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape:

.. rst-class:: classref-method

:ref:`Shape2D<class_Shape2D>` **shape_owner_get_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape>`

Возвращает :ref:`Shape2D<class_Shape2D>` с указанным идентификатором от указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_count**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape_count>`

Возвращает количество фигур, содержащихся в заданном владельце фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_index**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_shape_index>`

Возвращает дочерний индекс :ref:`Shape2D<class_Shape2D>` с указанным идентификатором от указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_get_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **shape_owner_get_transform**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject2D_method_shape_owner_get_transform>`

Возвращает :ref:`Transform2D<class_Transform2D>` владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_remove_shape:

.. rst-class:: classref-method

|void| **shape_owner_remove_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_remove_shape>`

Удаляет фигуру у указанного владельца фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_disabled:

.. rst-class:: classref-method

|void| **shape_owner_set_disabled**\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_disabled>`

Если ``true``, отключает владельца данной фигуры.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision**\ (\ owner_id\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision>`

Если ``enable`` имеет значение ``true``, столкновения для владельца фигуры, происходящие от этого **CollisionObject2D**, не будут сообщаться о столкновениях с **CollisionObject2D**.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision_direction**\ (\ owner_id\: :ref:`int<class_int>`, direction\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision_direction>`

Sets the ``one_way_collision_direction`` of the shape owner identified by the given ``owner_id`` to ``direction``.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin:

.. rst-class:: classref-method

|void| **shape_owner_set_one_way_collision_margin**\ (\ owner_id\: :ref:`int<class_int>`, margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_one_way_collision_margin>`

Устанавливает ``one_way_collision_margin`` владельца фигуры, идентифицированного заданным ``owner_id``, на ``margin`` пикселей.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject2D_method_shape_owner_set_transform:

.. rst-class:: classref-method

|void| **shape_owner_set_transform**\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_CollisionObject2D_method_shape_owner_set_transform>`

Устанавливает :ref:`Transform2D<class_Transform2D>` для данного владельца фигуры.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
