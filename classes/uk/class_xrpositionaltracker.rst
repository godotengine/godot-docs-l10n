:github_url: hide

.. _class_XRPositionalTracker:

XRPositionalTracker
===================

**Успадковує:** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>`, :ref:`XRBodyTracker<class_XRBodyTracker>`, :ref:`XRControllerTracker<class_XRControllerTracker>`, :ref:`XRHandTracker<class_XRHandTracker>`

Відстежений об'єкт.

.. rst-class:: classref-introduction-group

Опис
--------

Приклад цього об'єкта являє собою пристрій, який відстежується, такі як контролер або якірна точка. HMDs не представлені тут, як вони обробляються внутрішньо.

Як контролери перетворюються і :ref:`XRInterface<class_XRInterface>` виявляє їх, екземпляри цього об'єкта автоматично додаються до цього списку активних елементів відстеження, доступних через :ref:`XRServer<class_XRServer>`.

\ :ref:`XRNode3D<class_XRNode3D>` і :ref:`XRAnchor3D<class_XRAnchor3D>` обидва споживають об'єкти цього типу і повинні бути використані в вашому проекті. Посадові трекери лише під об'єктами, які роблять цю роботу. Цей інтерфейс GDExtension може взаємодіяти з ними.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Індекс документації XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+------------------------------------------------------------+--------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`hand<class_XRPositionalTracker_property_hand>`       | ``0``  |
   +----------------------------------------------------------+------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                              | :ref:`profile<class_XRPositionalTracker_property_profile>` | ``""`` |
   +----------------------------------------------------------+------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
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

Сигнали
--------------

.. _class_XRPositionalTracker_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_button_pressed>`

При натисканні кнопки на цей трекер. Зауважте, що багато XR runtimes дозволяють іншим введенням малювати кнопки.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ action_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_button_released>`

Увімкніть кнопку на цьому трекері.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ action_name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_input_float_changed>`

Випробувано при запуску або аналогічному вході на цей трекер змінює значення.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ action_name\: :ref:`String<class_String>`, vector\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_input_vector2_changed>`

Увімкніть, коли пальчик або пальчик на цьому трекері рухається.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_pose_changed:

.. rst-class:: classref-signal

**pose_changed**\ (\ pose\: :ref:`XRPose<class_XRPose>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_pose_changed>`

Увімкнено, коли стан пози відстежується цими змінами трекера.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_pose_lost_tracking:

.. rst-class:: classref-signal

**pose_lost_tracking**\ (\ pose\: :ref:`XRPose<class_XRPose>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_pose_lost_tracking>`

Увімкнено, коли за допомогою цього трекера припиняється отримання оновлених даних відстеження.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRPositionalTracker_signal_profile_changed>`

Випробувано в профілі наших трекерів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_XRPositionalTracker_TrackerHand:

.. rst-class:: classref-enumeration

enum **TrackerHand**: :ref:`🔗<enum_XRPositionalTracker_TrackerHand>`

.. _class_XRPositionalTracker_constant_TRACKER_HAND_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_UNKNOWN** = ``0``

Зручність в цьому трекері не існує.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_LEFT** = ``1``

Цей трекер є лівою рукою контролера.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_RIGHT** = ``2``

Цей трекер є правою рукою контролера.

.. _class_XRPositionalTracker_constant_TRACKER_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **TRACKER_HAND_MAX** = ``3``

Представляє розмір :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_XRPositionalTracker_property_hand:

.. rst-class:: classref-property

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **hand** = ``0`` :ref:`🔗<class_XRPositionalTracker_property_hand>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_hand**\ (\ value\: :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`\ )
- :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ )

Дефіни, які ручать цей трекер відноситься до.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_property_profile:

.. rst-class:: classref-property

:ref:`String<class_String>` **profile** = ``""`` :ref:`🔗<class_XRPositionalTracker_property_profile>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_profile**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_profile**\ (\ )

Профіль, пов'язаний з цим трекером, залежним інтерфейсом, але буде вказувати тип контролера, який слідує.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_XRPositionalTracker_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_get_input>`

**Застаріло:** Use through :ref:`XRControllerTracker<class_XRControllerTracker>`.

Повертає введення для цього трекера. Це може повернути boolean, float або :ref:`Vector2<class_Vector2>` значення залежно від того, чи є вхід кнопка, тригер або thumbpad.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_get_pose:

.. rst-class:: classref-method

:ref:`XRPose<class_XRPose>` **get_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_get_pose>`

Повертає поточний :ref:`XRPose<class_XRPose>` державний об'єкт для межи ``name`` поз.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_has_pose:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRPositionalTracker_method_has_pose>`

Повертає ``true``, якщо трекер доступний і наразі відстежує пов’язану позу ``name``.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_invalidate_pose:

.. rst-class:: classref-method

|void| **invalidate_pose**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRPositionalTracker_method_invalidate_pose>`

Звертаємо вашу увагу на те, що ця поза не є недійсною, ми не розуміємо останнього повідомлення, але це дозволяє користувачам приймати рішення, якщо трекери повинні бути приховані, якщо ми втратимо відстеження або просто залишатися на своєму останньому відомому положенні.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_set_input:

.. rst-class:: classref-method

|void| **set_input**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_XRPositionalTracker_method_set_input>`

**Застаріло:** Use through :ref:`XRControllerTracker<class_XRControllerTracker>`.

Змінює значення для заданого вхідного значення. Цей метод викликається реалізацією :ref:`XRInterface<class_XRInterface>` і не повинен використовуватися безпосередньо.

.. rst-class:: classref-item-separator

----

.. _class_XRPositionalTracker_method_set_pose:

.. rst-class:: classref-method

|void| **set_pose**\ (\ name\: :ref:`StringName<class_StringName>`, transform\: :ref:`Transform3D<class_Transform3D>`, linear_velocity\: :ref:`Vector3<class_Vector3>`, angular_velocity\: :ref:`Vector3<class_Vector3>`, tracking_confidence\: :ref:`TrackingConfidence<enum_XRPose_TrackingConfidence>`\ ) :ref:`🔗<class_XRPositionalTracker_method_set_pose>`

Встановлює перетворення, лінійну швидкість, кутову швидкість та впевненість відстеження для заданої пози. Цей метод викликається реалізацією :ref:`XRInterface<class_XRInterface>` і не повинен використовуватися безпосередньо.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
