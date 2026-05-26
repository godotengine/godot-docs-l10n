:github_url: hide

.. _class_XRPositionalTracker:

XRPositionalTracker
===================

**Наследует:** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>`, :ref:`XRBodyTracker<class_XRBodyTracker>`, :ref:`XRControllerTracker<class_XRControllerTracker>`, :ref:`XRHandTracker<class_XRHandTracker>`

Отслеживаемый объект.

.. rst-class:: classref-introduction-group

Описание
----------------

Экземпляр этого объекта представляет отслеживаемое устройство, например контроллер или опорную точку. HMD здесь не представлены, так как они обрабатываются внутри.

Поскольку контроллеры включены и :ref:`XRInterface<class_XRInterface>` обнаруживает их, экземпляры этого объекта автоматически добавляются в этот список активных объектов отслеживания, доступных через :ref:`XRServer<class_XRServer>`.

\ :ref:`XRNode3D<class_XRNode3D>` и :ref:`XRAnchor3D<class_XRAnchor3D>` оба потребляют объекты этого типа и должны использоваться в вашем проекте. Позиционные трекеры — это просто внутренние объекты, которые заставляют все это работать. Они в основном открыты, чтобы интерфейсы на основе GDExtension могли взаимодействовать с ними.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------+------------------------------------------------------------+--------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`hand<class_XRPositionalTracker_property_hand>`       | ``0``  |
   +----------------------------------------------------------+------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                              | :ref:`profile<class_XRPositionalTracker_property_profile>` | ``""`` |
   +----------------------------------------------------------+------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_input<class_XRPositionalTracker_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRPose<class_XRPose>`   | :ref:`get_pose<class_XRPositionalTracker_method_get_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_pose<class_XRPositionalTracker_method_has_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`invalidate_pose<class_XRPositionalTracker_method_invalidate_pose>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_input<class_XRPositionalTracker_method_set_input>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                               |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_pose<class_XRPositionalTracker_method_set_pose>`\ (\ name\: :ref:`StringName<class_StringName>`, transform\: :ref:`Transform3D<class_Transform3D>`, linear_velocity\: :ref:`Vector3<class_Vector3>`, angular_velocity\: :ref:`Vector3<class_Vector3>`, tracking_confidence\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_XRPositionalTracker_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_button_pressed>`

Вызывается при нажатии кнопки на этом трекере. Обратите внимание, что многие среды выполнения XR позволяют сопоставлять другие входы с кнопками.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_button_released>`

Издается, когда кнопка на этом трекере отпускается.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_input_float_changed>`

Выдается, когда триггер или аналогичный вход на этом трекере изменяет значение.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ action_name\: :ref:`String<class_String>`, vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_input_vector2_changed>`

Издается при перемещении джойстика или панели управления на этом трекере.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_pose_changed:

.. rst-class:: classref-signal

**pose_changed**\ (\ pose\: :ref:`XRPose<class_XRPose>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_pose_changed>`

Выдается при изменении состояния позы, отслеживаемой этим трекером.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_pose_lost_tracking:

.. rst-class:: classref-signal

**pose_lost_tracking**\ (\ pose\: :ref:`XRPose<class_XRPose>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_pose_lost_tracking>`

Генерируется, когда поза, отслеживаемая этим трекером, перестает получать обновленные данные отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_profile_changed>`

Выдается при изменении профиля нашего трекера.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_XRPositionalTracker_TrackerHand:

.. rst-class:: classref-enumeration

enum **TrackerHand**: :ref:`🔗<enum_XRPositionalTracker_TrackerHand>`

.. _class_XRPositionalTracker_constant_TRACKER_HAND_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_UNKNOWN** = ``0``

Рука, в которой находится этот трекер, неизвестна или неприменима.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_LEFT** = ``1``

Этот трекер — левый контроллер.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_RIGHT** = ``2``

Этот трекер является правым контроллером.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_MAX** = ``3``

Представляет размер перечисления :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_XRPositionalTracker_property_hand:

.. rst-class:: classref-property

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **hand** = ``0`` :ref:`🔗<class_XRPositionalTracker_property_hand>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_hand**\ (\ value\: :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`\ )
- :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ )

Определяет, к какой руке относится этот трекер.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_property_profile:

.. rst-class:: classref-property

:ref:`String<class_String>` **profile** = ``""`` :ref:`🔗<class_XRPositionalTracker_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_profile**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_profile**\ (\ )

Профиль, связанный с этим трекером, зависит от интерфейса, но будет указывать тип отслеживаемого контроллера.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_XRPositionalTracker_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_get_input>`

**Устарело:** Use through :ref:`XRControllerTracker<class_XRControllerTracker>`.

Возвращает входные данные для этого трекера. Он может возвращать логическое значение, значение с плавающей точкой или значение :ref:`Vector2<class_Vector2>` в зависимости от того, является ли входные данные кнопкой, триггером или джойстиком/кнопочной панелью.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_get_pose:

.. rst-class:: classref-method

:ref:`XRPose<class_XRPose>` **get_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_get_pose>`

Возвращает текущий объект состояния :ref:`XRPose<class_XRPose>` для привязанной позы ``name``.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_has_pose:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_has_pose>`

Возвращает ``true``, если трекер доступен и в данный момент отслеживает привязанную позу ``name``.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_invalidate_pose:

.. rst-class:: classref-method

|void| **invalidate_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRPositionalTracker_method_invalidate_pose>`

Отмечает эту позу как недействительную, мы не очищаем последнее сообщенное состояние, но позволяет пользователям решать, следует ли скрывать трекеры, если мы теряем отслеживание, или просто оставаться в их последнем известном положении.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_set_input:

.. rst-class:: classref-method

|void| **set_input**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_XRPositionalTracker_method_set_input>`

**Устарело:** Use through :ref:`XRControllerTracker<class_XRControllerTracker>`.

Изменяет значение указанного входного параметра. Этот метод вызывается реализацией :ref:`XRInterface<class_XRInterface>` и не должен использоваться напрямую.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_set_pose:

.. rst-class:: classref-method

|void| **set_pose**\ (\ name\: :ref:`StringName<class_StringName>`, transform\: :ref:`Transform3D<class_Transform3D>`, linear_velocity\: :ref:`Vector3<class_Vector3>`, angular_velocity\: :ref:`Vector3<class_Vector3>`, tracking_confidence\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ ) :ref:`🔗<class_XRPositionalTracker_method_set_pose>`

Задаёт преобразование, линейную и угловую скорость, а также уровень достоверности отслеживания для заданной позы. Этот метод вызывается реализацией :ref:`XRInterface<class_XRInterface>` и не должен использоваться напрямую.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
