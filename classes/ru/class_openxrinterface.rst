:github_url: hide

.. _class_OpenXRInterface:

OpenXRInterface
===============

**Наследует:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Интерфейс OpenXR.

.. rst-class:: classref-introduction-group

Описание
----------------

Интерфейс OpenXR позволяет Godot взаимодействовать со средами выполнения OpenXR и создавать игры и приложения XR.

Из-за потребностей OpenXR этот интерфейс работает немного иначе, чем другие XR-интерфейсы на основе плагинов. Его необходимо инициализировать при запуске Godot. Вам необходимо включить OpenXR, настройки для этого можно найти в настройках вашего игрового проекта под заголовком XR. Вам необходимо отметить область просмотра для использования с XR, чтобы Godot знал, какой результат рендеринга следует выводить на гарнитуру.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Настройка XR <../tutorials/xr/setting_up_xr>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`display_refresh_rate<class_OpenXRInterface_property_display_refresh_rate>`                         | ``0.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`foveation_dynamic<class_OpenXRInterface_property_foveation_dynamic>`                               | ``false`` |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`foveation_level<class_OpenXRInterface_property_foveation_level>`                                   | ``0``     |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`foveation_with_subsampled_images<class_OpenXRInterface_property_foveation_with_subsampled_images>` | ``false`` |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`render_target_size_multiplier<class_OpenXRInterface_property_render_target_size_multiplier>`       | ``1.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`vrs_min_radius<class_OpenXRInterface_property_vrs_min_radius>`                                     | ``20.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`vrs_strength<class_OpenXRInterface_property_vrs_strength>`                                         | ``1.0``   |
   +---------------------------+----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`get_action_sets<class_OpenXRInterface_method_get_action_sets>`\ (\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                | :ref:`get_available_display_refresh_rates<class_OpenXRInterface_method_get_available_display_refresh_rates>`\ (\ ) |const|                                                                                                    |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_angular_velocity<class_OpenXRInterface_method_get_hand_joint_angular_velocity>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>`\] | :ref:`get_hand_joint_flags<class_OpenXRInterface_method_get_hand_joint_flags>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                       |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_linear_velocity<class_OpenXRInterface_method_get_hand_joint_linear_velocity>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|   |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                            | :ref:`get_hand_joint_position<class_OpenXRInterface_method_get_hand_joint_position>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                | :ref:`get_hand_joint_radius<class_OpenXRInterface_method_get_hand_joint_radius>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                     |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                                      | :ref:`get_hand_joint_rotation<class_OpenXRInterface_method_get_hand_joint_rotation>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const|                 |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>`         | :ref:`get_hand_tracking_source<class_OpenXRInterface_method_get_hand_tracking_source>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const|                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`             | :ref:`get_motion_range<class_OpenXRInterface_method_get_motion_range>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const|                                                                                           |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SessionState<enum_OpenXRInterface_SessionState>`                   | :ref:`get_session_state<class_OpenXRInterface_method_get_session_state>`\ (\ )                                                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_action_set_active<class_OpenXRInterface_method_is_action_set_active>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_eye_gaze_interaction_supported<class_OpenXRInterface_method_is_eye_gaze_interaction_supported>`\ (\ )                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_foveation_supported<class_OpenXRInterface_method_is_foveation_supported>`\ (\ ) |const|                                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_hand_interaction_supported<class_OpenXRInterface_method_is_hand_interaction_supported>`\ (\ ) |const|                                                                                                                |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_hand_tracking_supported<class_OpenXRInterface_method_is_hand_tracking_supported>`\ (\ )                                                                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_user_presence_supported<class_OpenXRInterface_method_is_user_presence_supported>`\ (\ ) |const|                                                                                                                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_user_present<class_OpenXRInterface_method_is_user_present>`\ (\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_action_set_active<class_OpenXRInterface_method_set_action_set_active>`\ (\ name\: :ref:`String<class_String>`, active\: :ref:`bool<class_bool>`\ )                                                                  |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_cpu_level<class_OpenXRInterface_method_set_cpu_level>`\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ )                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_gpu_level<class_OpenXRInterface_method_set_gpu_level>`\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ )                                                                              |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_motion_range<class_OpenXRInterface_method_set_motion_range>`\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, motion_range\: :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`\ )                      |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_OpenXRInterface_signal_cpu_level_changed:

.. rst-class:: classref-signal

**cpu_level_changed**\ (\ sub_domain\: :ref:`int<class_int>`, from_level\: :ref:`int<class_int>`, to_level\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRInterface_signal_cpu_level_changed>`

Информирует об изменении уровня производительности CPU устройства в указанном поддомене (subdomain).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_gpu_level_changed:

.. rst-class:: classref-signal

**gpu_level_changed**\ (\ sub_domain\: :ref:`int<class_int>`, from_level\: :ref:`int<class_int>`, to_level\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRInterface_signal_gpu_level_changed>`

Информирует об изменении уровня производительности графического процессора устройства в указанном поддомене (subdomain).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_instance_exiting:

.. rst-class:: classref-signal

**instance_exiting**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_instance_exiting>`

Сообщает, что наш экземпляр OpenXR завершает работу.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_pose_recentered:

.. rst-class:: classref-signal

**pose_recentered**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_pose_recentered>`

Информирует пользователя, находящегося в очереди, о положении игрока.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_refresh_rate_changed:

.. rst-class:: classref-signal

**refresh_rate_changed**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_OpenXRInterface_signal_refresh_rate_changed>`

Сообщает пользователю об изменении частоты обновления HMD.

\ **Примечание:** Выдается только в том случае, если среда выполнения XR поддерживает расширение частоты обновления.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_begun:

.. rst-class:: classref-signal

**session_begun**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_begun>`

Сообщает о начале сеанса OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_focussed:

.. rst-class:: classref-signal

**session_focussed**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_focussed>`

Информирует, что сеанс OpenXR теперь имеет фокус, например, выходные данные отправляются на HMD, и мы получаем входные данные XR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_loss_pending:

.. rst-class:: classref-signal

**session_loss_pending**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_loss_pending>`

Сообщает, что наш сеанс OpenXR находится в процессе потери.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_stopping:

.. rst-class:: classref-signal

**session_stopping**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_stopping>`

Сообщает, что наш сеанс OpenXR останавливается.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_synchronized:

.. rst-class:: classref-signal

**session_synchronized**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_synchronized>`

Сообщает, что наш сеанс OpenXR синхронизирован.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_session_visible:

.. rst-class:: classref-signal

**session_visible**\ (\ ) :ref:`🔗<class_OpenXRInterface_signal_session_visible>`

Сообщает, что наш сеанс OpenXR теперь виден, например, выходные данные отправляются на HMD, но мы не получаем входные данные XR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_signal_user_presence_changed:

.. rst-class:: classref-signal

**user_presence_changed**\ (\ is_user_present\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRInterface_signal_user_presence_changed>`

Signal emitted when the user presence value changes.

\ **Note:** This signal will not be emitted during application startup and application shutdown. Developers should assume user presence is gained on startup and lost on shutdown.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRInterface_SessionState:

.. rst-class:: classref-enumeration

enum **SessionState**: :ref:`🔗<enum_OpenXRInterface_SessionState>`

.. _class_OpenXRInterface_constant_SESSION_STATE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_UNKNOWN** = ``0``

Состояние сеанса неизвестно, мы еще не пробовали настраивать OpenXR.

.. _class_OpenXRInterface_constant_SESSION_STATE_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_IDLE** = ``1``

Начальное состояние после создания сеанса OpenXR или после его уничтожения.

.. _class_OpenXRInterface_constant_SESSION_STATE_READY:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_READY** = ``2``

OpenXR готов начать наш сеанс. Сигнал :ref:`session_begun<class_OpenXRInterface_signal_session_begun>` испускается, когда мы переходим в это состояние.

.. _class_OpenXRInterface_constant_SESSION_STATE_SYNCHRONIZED:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_SYNCHRONIZED** = ``3``

Приложение синхронизировало свой цикл кадров со средой выполнения, но мы ничего не отображаем. :ref:`session_synchronized<class_OpenXRInterface_signal_session_synchronized>` испускается, когда мы переходим в это состояние.

.. _class_OpenXRInterface_constant_SESSION_STATE_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_VISIBLE** = ``4``

Приложение синхронизировало свой цикл кадров со временем выполнения, и мы рендерируем вывод пользователю, однако мы не получаем пользовательского ввода. :ref:`session_visible<class_OpenXRInterface_signal_session_visible>` испускается при переходе на это состояние.

\ ** Примечание: ** Это текущее состояние непосредственно перед тем, как мы получим сфокусированное состояние, всякий раз, когда пользователь открывает меню системы, переключается на другое приложение или снимает их гарнитуру.

.. _class_OpenXRInterface_constant_SESSION_STATE_FOCUSED:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_FOCUSED** = ``5``

Приложение синхронизировало свой цикл кадров со временем выполнения, мы рендерируем вывод пользователю и получаем вход XR. :ref:`session_focussed<class_OpenXRInterface_signal_session_focussed>` испускается при переходе на это состояние.

\ ** Примечание: ** Это состояние OpenXR, когда пользователь может полностью взаимодействовать с вашей игрой.

.. _class_OpenXRInterface_constant_SESSION_STATE_STOPPING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_STOPPING** = ``6``

Наш сеанс останавливается. :ref:`session_stopping<class_OpenXRInterface_signal_session_stopping>` испускается, когда мы переходим в это состояние.

.. _class_OpenXRInterface_constant_SESSION_STATE_LOSS_PENDING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_LOSS_PENDING** = ``7``

Сеанс скоро будет потерян. :ref:`session_loss_pending<class_OpenXRInterface_signal_session_loss_pending>` испускается, когда мы переходим в это состояние.

.. _class_OpenXRInterface_constant_SESSION_STATE_EXITING:

.. rst-class:: classref-enumeration-constant

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **SESSION_STATE_EXITING** = ``8``

Экземпляр OpenXR вот-вот будет уничтожен, и мы завершаем работу. При переходе в это состояние генерируется сигнал :ref:`instance_exiting<class_OpenXRInterface_signal_instance_exiting>`.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_Hand:

.. rst-class:: classref-enumeration

enum **Hand**: :ref:`🔗<enum_OpenXRInterface_Hand>`

.. _class_OpenXRInterface_constant_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_LEFT** = ``0``

Левая рука.

.. _class_OpenXRInterface_constant_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_RIGHT** = ``1``

Правая рука.

.. _class_OpenXRInterface_constant_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hand<enum_OpenXRInterface_Hand>` **HAND_MAX** = ``2``

Максимальное значение для перечисления рук.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandMotionRange:

.. rst-class:: classref-enumeration

enum **HandMotionRange**: :ref:`🔗<enum_OpenXRInterface_HandMotionRange>`

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_UNOBSTRUCTED** = ``0``

Полный диапазон рук, если пользователь сжимает руки в кулак, мы делаем полный кулак.

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_CONFORM_TO_CONTROLLER** = ``1``

Соответствует форме контроллера: если пользователь закрывает руки, отслеживаемые данные соответствуют форме контроллера.

.. _class_OpenXRInterface_constant_HAND_MOTION_RANGE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **HAND_MOTION_RANGE_MAX** = ``2``

Максимальное значение для перечисления диапазона движения.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandTrackedSource:

.. rst-class:: classref-enumeration

enum **HandTrackedSource**: :ref:`🔗<enum_OpenXRInterface_HandTrackedSource>`

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_UNKNOWN** = ``0``

Источник данных отслеживания рук неизвестен (расширение, вероятно, не поддерживается).

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_UNOBSTRUCTED** = ``1``

Источник отслеживания рук не имеет препятствий, это означает, что используется точный метод отслеживания рук, например, оптическое отслеживание рук, перчатки с данными и т. д.

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_CONTROLLER** = ``2``

Источником отслеживания руки является контроллер, положения костей определяются на основе входных данных контроллера.

.. _class_OpenXRInterface_constant_HAND_TRACKED_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **HAND_TRACKED_SOURCE_MAX** = ``3``

Представляет размер перечисления :ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>`.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandJoints:

.. rst-class:: classref-enumeration

enum **HandJoints**: :ref:`🔗<enum_OpenXRInterface_HandJoints>`

.. _class_OpenXRInterface_constant_HAND_JOINT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_PALM** = ``0``

Ладонный сустав.

.. _class_OpenXRInterface_constant_HAND_JOINT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_WRIST** = ``1``

Лучезапястный сустав.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_METACARPAL** = ``2``

Пястно-запястный сустав большого пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_PROXIMAL** = ``3``

Проксимальный сустав большого пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_DISTAL** = ``4``

Дистальный сустав большого пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_THUMB_TIP** = ``5``

Сустав кончика большого пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_METACARPAL** = ``6``

Пястно-запястный сустав указательного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_PROXIMAL** = ``7``

Проксимальный сустав фаланги указательного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_INTERMEDIATE** = ``8``

Промежуточный сустав фаланги указательного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_DISTAL** = ``9``

Дистальный сустав фаланги указательного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_INDEX_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_INDEX_TIP** = ``10``

Кончик указательного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_METACARPAL** = ``11``

Пястно-запястный сустав среднего пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_PROXIMAL** = ``12``

Проксимальный сустав фаланги среднего пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_INTERMEDIATE** = ``13``

Промежуточный сустав фаланги среднего пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_DISTAL** = ``14``

Дистальный сустав фаланги среднего пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_MIDDLE_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MIDDLE_TIP** = ``15``

Кончик среднего пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_METACARPAL** = ``16``

Пястно-запястный сустав безымянного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_PROXIMAL** = ``17``

Проксимальный сустав фаланги безымянного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_INTERMEDIATE** = ``18``

Промежуточный сустав фаланги безымянного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_DISTAL** = ``19``

Дистальный сустав фаланги безымянного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_RING_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_RING_TIP** = ``20``

Сустав кончика безымянного пальца.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_METACARPAL** = ``21``

Пястно-запястный сустав мизинца.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_PROXIMAL** = ``22``

Проксимальный сустав фаланги мизинца.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_INTERMEDIATE** = ``23``

Промежуточный сустав фаланги мизинца.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_DISTAL** = ``24``

Дистальный сустав фаланги мизинца.

.. _class_OpenXRInterface_constant_HAND_JOINT_LITTLE_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_LITTLE_TIP** = ``25``

Сустав кончика мизинца.

.. _class_OpenXRInterface_constant_HAND_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoints<enum_OpenXRInterface_HandJoints>` **HAND_JOINT_MAX** = ``26``

Представляет размер перечисления :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsLevel:

.. rst-class:: classref-enumeration

enum **PerfSettingsLevel**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsLevel>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_POWER_SAVINGS:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_POWER_SAVINGS** = ``0``

Приложение вошло в раздел non-XR (head-locked / static screen), в течение которого приоритет отдается энергосбережению.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_SUSTAINED_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_SUSTAINED_LOW** = ``1``

Приложение вошло в стадию низкой и стабильной сложности, в течение которой снижение мощности важнее, чем случайные задержки рендеринга кадров.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_SUSTAINED_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_SUSTAINED_HIGH** = ``2``

Приложение вошло в раздел высокой или динамической сложности, в ходе которого XR Runtime стремится к последовательному XR-композитингу и рендерингу кадров в термически устойчивом диапазоне.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_LEVEL_BOOST:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>` **PERF_SETTINGS_LEVEL_BOOST** = ``3``

Приложение вошло в раздел с очень высокой сложностью, в ходе которого XR Runtime может выйти за пределы термически устойчивого диапазона.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsSubDomain:

.. rst-class:: classref-enumeration

enum **PerfSettingsSubDomain**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsSubDomain>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_COMPOSITING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_COMPOSITING** = ``0``

Производительность compositing в среде выполнения достигла нового уровня.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_RENDERING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_RENDERING** = ``1``

Производительность рендеринга приложений вышла на новый уровень.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_SUB_DOMAIN_THERMAL:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsSubDomain<enum_OpenXRInterface_PerfSettingsSubDomain>` **PERF_SETTINGS_SUB_DOMAIN_THERMAL** = ``2``

Температура устройства достигла нового уровня.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_PerfSettingsNotificationLevel:

.. rst-class:: classref-enumeration

enum **PerfSettingsNotificationLevel**: :ref:`🔗<enum_OpenXRInterface_PerfSettingsNotificationLevel>`

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_NORMAL** = ``0``

Поддомен достиг уровня, на котором не требуется никаких дополнительных действий, кроме применяемых в настоящее время.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_WARNING** = ``1``

Поддомен достиг уровня раннего предупреждения, на котором приложение должно начать упреждающие действия по смягчению последствий.

.. _class_OpenXRInterface_constant_PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED:

.. rst-class:: classref-enumeration-constant

:ref:`PerfSettingsNotificationLevel<enum_OpenXRInterface_PerfSettingsNotificationLevel>` **PERF_SETTINGS_NOTIF_LEVEL_IMPAIRED** = ``2``

Sub-domain достиг критического уровня, при котором приложение должно начать радикальные действия по смягчению последствий.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRInterface_HandJointFlags:

.. rst-class:: classref-enumeration

flags **HandJointFlags**: :ref:`🔗<enum_OpenXRInterface_HandJointFlags>`

.. _class_OpenXRInterface_constant_HAND_JOINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_NONE** = ``0``

Флаги не установлены.

.. _class_OpenXRInterface_constant_HAND_JOINT_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ORIENTATION_VALID** = ``1``

Если установлено, данные об ориентации действительны, в противном случае данные об ориентации ненадежны и не должны использоваться.

.. _class_OpenXRInterface_constant_HAND_JOINT_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ORIENTATION_TRACKED** = ``2``

Если установлено, данные об ориентации берутся из данных отслеживания, в противном случае данные об ориентации содержат прогнозируемые данные.

.. _class_OpenXRInterface_constant_HAND_JOINT_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_POSITION_VALID** = ``4``

Если установлено, позиционные данные действительны, в противном случае позиционные данные ненадежны и не должны использоваться.

.. _class_OpenXRInterface_constant_HAND_JOINT_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_POSITION_TRACKED** = ``8``

Если установлено, позиционные данные берутся из данных отслеживания, в противном случае позиционные данные содержат прогнозируемые данные.

.. _class_OpenXRInterface_constant_HAND_JOINT_LINEAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_LINEAR_VELOCITY_VALID** = ``16``

Если установлено, наши данные о линейной скорости действительны, в противном случае данные о линейной скорости ненадежны и не должны использоваться.

.. _class_OpenXRInterface_constant_HAND_JOINT_ANGULAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>` **HAND_JOINT_ANGULAR_VELOCITY_VALID** = ``32``

Если установлено, наши данные об угловой скорости действительны, в противном случае данные об угловой скорости ненадежны и не должны использоваться.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRInterface_property_display_refresh_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **display_refresh_rate** = ``0.0`` :ref:`🔗<class_OpenXRInterface_property_display_refresh_rate>`

.. rst-class:: classref-property-setget

- |void| **set_display_refresh_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_display_refresh_rate**\ (\ )

Частота обновления дисплея для текущего HMD. Работает только в том случае, если эта функция поддерживается средой выполнения OpenXR и после инициализации интерфейса.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_dynamic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **foveation_dynamic** = ``false`` :ref:`🔗<class_OpenXRInterface_property_foveation_dynamic>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_dynamic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_foveation_dynamic**\ (\ )

If ``true``, enables dynamic foveation adjustment. The interface must be initialized before this is accessible. If enabled, foveation will automatically be adjusted between low and :ref:`foveation_level<class_OpenXRInterface_property_foveation_level>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **foveation_level** = ``0`` :ref:`🔗<class_OpenXRInterface_property_foveation_level>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_foveation_level**\ (\ )

The foveation level, from ``0`` (off) to ``3`` (high). The interface must be initialized before this is accessible.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_foveation_with_subsampled_images:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **foveation_with_subsampled_images** = ``false`` :ref:`🔗<class_OpenXRInterface_property_foveation_with_subsampled_images>`

.. rst-class:: classref-property-setget

- |void| **set_foveation_with_subsampled_images**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_foveation_with_subsampled_images**\ (\ )

If ``true``, enables subsampled images with foveation, which can provide a performance boost on Vulkan.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_render_target_size_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **render_target_size_multiplier** = ``1.0`` :ref:`🔗<class_OpenXRInterface_property_render_target_size_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_render_target_size_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_render_target_size_multiplier**\ (\ )

Множитель размера рендера для текущего HMD. Должен быть установлен до инициализации интерфейса.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_OpenXRInterface_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

Минимальный радиус вокруг точки фокусировки, где гарантируется полное качество, если VRS используется как процент от размера экрана.

\ **Примечание:** Только для Mobile и Forward+ рендереров. Требуется, чтобы :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` был установлен на :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_OpenXRInterface_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

Сила, используемая для расчета карты плотности VRS. Чем больше это значение, тем заметнее VRS. Это повышает производительность за счет качества.

\ **Примечание:** Только для Mobile и Forward+ рендереров. Требуется, чтобы :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` был установлен на :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRInterface_method_get_action_sets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_action_sets**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_action_sets>`

Возвращает список наборов действий, зарегистрированных в Godot (загружаемых из карты действий во время выполнения).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_available_display_refresh_rates>`

Возвращает список частот обновления дисплея, поддерживаемых текущим HMD. Возвращается только в том случае, если эта функция поддерживается средой выполнения OpenXR и после инициализации интерфейса.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_angular_velocity**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_angular_velocity>`

**Устарело:** Use :ref:`XRHandTracker.get_hand_joint_angular_velocity()<class_XRHandTracker_method_get_hand_joint_angular_velocity>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Если включено отслеживание рук, возвращает угловую скорость сустава (``joint``) руки (``hand``), как предоставлено OpenXR. Это относительно :ref:`XROrigin3D<class_XROrigin3D>`!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`HandJointFlags<enum_OpenXRInterface_HandJointFlags>`\] **get_hand_joint_flags**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_flags>`

**Устарело:** Use :ref:`XRHandTracker.get_hand_joint_flags()<class_XRHandTracker_method_get_hand_joint_flags>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Если ручное отслеживание включено, возвращает флаги, информирующие нас о достоверности данных отслеживания.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_linear_velocity**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_linear_velocity>`

**Устарело:** Use :ref:`XRHandTracker.get_hand_joint_linear_velocity()<class_XRHandTracker_method_get_hand_joint_linear_velocity>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Если включено отслеживание рук, возвращает линейную скорость сустава (``joint``) руки (``hand``), как предоставлено OpenXR. Это относительно :ref:`XROrigin3D<class_XROrigin3D>` без применения мирового масштаба!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_position**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_position>`

**Устарело:** Use :ref:`XRHandTracker.get_hand_joint_transform()<class_XRHandTracker_method_get_hand_joint_transform>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Если включено отслеживание рук, возвращает положение сустава (``joint``) руки (``hand``), как указано в OpenXR. Это относительно :ref:`XROrigin3D<class_XROrigin3D>` без применения мирового масштаба!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hand_joint_radius**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_radius>`

**Устарело:** Use :ref:`XRHandTracker.get_hand_joint_radius()<class_XRHandTracker_method_get_hand_joint_radius>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Если включено отслеживание рук, возвращает радиус сочленения (``joint``) руки (``hand``), как предоставлено OpenXR. Это без применения мирового масштаба!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_joint_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_hand_joint_rotation**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, joint\: :ref:`HandJoints<enum_OpenXRInterface_HandJoints>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_joint_rotation>`

**Устарело:** Use :ref:`XRHandTracker.get_hand_joint_transform()<class_XRHandTracker_method_get_hand_joint_transform>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Если отслеживание рук включено, возвращает вращение сустава (``joint``) руки (``hand``), как предусмотрено OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_hand_tracking_source:

.. rst-class:: classref-method

:ref:`HandTrackedSource<enum_OpenXRInterface_HandTrackedSource>` **get_hand_tracking_source**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_hand_tracking_source>`

**Устарело:** Use :ref:`XRHandTracker.hand_tracking_source<class_XRHandTracker_property_hand_tracking_source>` obtained from :ref:`XRServer.get_tracker()<class_XRServer_method_get_tracker>` instead.

Если отслеживание рук включено и поддерживается источник отслеживания рук, получает источник данных отслеживания рук для ``hand``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_motion_range:

.. rst-class:: classref-method

:ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>` **get_motion_range**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_get_motion_range>`

Если отслеживание рук включено и поддерживается диапазон движения, получает текущий настроенный диапазон движения для ``hand``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_get_session_state:

.. rst-class:: classref-method

:ref:`SessionState<enum_OpenXRInterface_SessionState>` **get_session_state**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_get_session_state>`

Возвращает текущее состояние нашего сеанса OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_action_set_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_set_active**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_action_set_active>`

Возвращает ``true``, если указанный набор действий активен.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_eye_gaze_interaction_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_eye_gaze_interaction_supported**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_is_eye_gaze_interaction_supported>`

Возвращает возможности расширения взаимодействия взгляда.

\ **Примечание:** Это возвращает допустимое значение только после инициализации OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_foveation_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_foveation_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_foveation_supported>`

Возвращает ``true``, если поддерживается расширение фовеации OpenXR. Интерфейс должен быть инициализирован, прежде чем функция вернет допустимое значение.

\ **Примечание:** При использовании драйвера рендеринга Vulkan для поддержки фовеации необходимо установить :ref:`Viewport.vrs_mode<class_Viewport_property_vrs_mode>` в значение :ref:`Viewport.VRS_XR<class_Viewport_constant_VRS_XR>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_hand_interaction_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hand_interaction_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_hand_interaction_supported>`

Возвращает ``true``, если профиль взаимодействия рук OpenXR поддерживается и включен.

\ **Примечание:** Это возвращает допустимое значение только после инициализации OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_hand_tracking_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hand_tracking_supported**\ (\ ) :ref:`🔗<class_OpenXRInterface_method_is_hand_tracking_supported>`

Возвращает ``true``, если отслеживание рук OpenXR поддерживается и включено.

\ **Примечание:** Это возвращает допустимое значение только после инициализации OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_user_presence_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_user_presence_supported**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_user_presence_supported>`

Returns ``true`` if OpenXR's user presence extension is supported and enabled.

\ **Note:** This only returns a valid value after OpenXR has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_is_user_present:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_user_present**\ (\ ) |const| :ref:`🔗<class_OpenXRInterface_method_is_user_present>`

Returns ``true`` if system has detected the presence of a user in the XR experience.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_action_set_active:

.. rst-class:: classref-method

|void| **set_action_set_active**\ (\ name\: :ref:`String<class_String>`, active\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_action_set_active>`

Устанавливает заданный набор действий как активный или неактивный.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_cpu_level:

.. rst-class:: classref-method

|void| **set_cpu_level**\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_cpu_level>`

Устанавливает уровень производительности ЦП устройства OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_gpu_level:

.. rst-class:: classref-method

|void| **set_gpu_level**\ (\ level\: :ref:`PerfSettingsLevel<enum_OpenXRInterface_PerfSettingsLevel>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_gpu_level>`

Устанавливает уровень производительности графического процессора (GPU) устройства OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInterface_method_set_motion_range:

.. rst-class:: classref-method

|void| **set_motion_range**\ (\ hand\: :ref:`Hand<enum_OpenXRInterface_Hand>`, motion_range\: :ref:`HandMotionRange<enum_OpenXRInterface_HandMotionRange>`\ ) :ref:`🔗<class_OpenXRInterface_method_set_motion_range>`

Если отслеживание рук включено и поддерживается диапазон движения, устанавливает текущий настроенный диапазон движения для ``hand`` на ``motion_range``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
