:github_url: hide

.. _class_XRInterface:

XRInterface
===========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`MobileVRInterface<class_MobileVRInterface>`, :ref:`OpenXRInterface<class_OpenXRInterface>`, :ref:`VisionOSXRInterface<class_VisionOSXRInterface>`, :ref:`WebXRInterface<class_WebXRInterface>`, :ref:`XRInterfaceExtension<class_XRInterfaceExtension>`

Базовый класс для реализации интерфейса XR.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс необходимо реализовать, чтобы сделать платформу AR или VR доступной для Godot, и они должны быть реализованы как модули C++ или модули GDExtension. Часть интерфейса открыта для GDScript, чтобы вы могли обнаружить, включить и настроить платформу AR или VR.

Интерфейсы должны быть написаны таким образом, чтобы простое включение давало нам рабочую настройку. Вы можете запросить доступные интерфейсы через :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`ar_is_anchor_detection_enabled<class_XRInterface_property_ar_is_anchor_detection_enabled>` | ``false`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` | :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>`                 | ``0``     |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`interface_is_primary<class_XRInterface_property_interface_is_primary>`                     | ``false`` |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`                 | :ref:`xr_play_area_mode<class_XRInterface_property_xr_play_area_mode>`                           | ``0``     |
   +--------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`get_camera_feed_id<class_XRInterface_method_get_camera_feed_id>`\ (\ )                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] | :ref:`get_camera_offsets<class_XRInterface_method_get_camera_offsets>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Projection<class_Projection>`\]   | :ref:`get_camera_projections<class_XRInterface_method_get_camera_projections>`\ (\ tracker_name\: :ref:`StringName<class_StringName>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ )                                                                                                |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`get_capabilities<class_XRInterface_method_get_capabilities>`\ (\ ) |const|                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`get_name<class_XRInterface_method_get_name>`\ (\ ) |const|                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`                | :ref:`get_play_area<class_XRInterface_method_get_play_area>`\ (\ ) |const|                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`                                | :ref:`get_projection_for_view<class_XRInterface_method_get_projection_for_view>`\ (\ view\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ )                                                                                                                    |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                      | :ref:`get_render_target_size<class_XRInterface_method_get_render_target_size>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                          | :ref:`get_supported_environment_blend_modes<class_XRInterface_method_get_supported_environment_blend_modes>`\ (\ )                                                                                                                                                                                                                             |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                | :ref:`get_system_info<class_XRInterface_method_get_system_info>`\ (\ )                                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackingStatus<enum_XRInterface_TrackingStatus>`             | :ref:`get_tracking_status<class_XRInterface_method_get_tracking_status>`\ (\ ) |const|                                                                                                                                                                                                                                                         |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                              | :ref:`get_transform_for_view<class_XRInterface_method_get_transform_for_view>`\ (\ view\: :ref:`int<class_int>`, cam_transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                              | :ref:`get_view_count<class_XRInterface_method_get_view_count>`\ (\ )                                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`initialize<class_XRInterface_method_initialize>`\ (\ )                                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_initialized<class_XRInterface_method_is_initialized>`\ (\ ) |const|                                                                                                                                                                                                                                                                   |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_passthrough_enabled<class_XRInterface_method_is_passthrough_enabled>`\ (\ )                                                                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_passthrough_supported<class_XRInterface_method_is_passthrough_supported>`\ (\ )                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`set_environment_blend_mode<class_XRInterface_method_set_environment_blend_mode>`\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ )                                                                                                                                                                        |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`set_play_area_mode<class_XRInterface_method_set_play_area_mode>`\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )                                                                                                                                                                                                        |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`start_passthrough<class_XRInterface_method_start_passthrough>`\ (\ )                                                                                                                                                                                                                                                                     |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`stop_passthrough<class_XRInterface_method_stop_passthrough>`\ (\ )                                                                                                                                                                                                                                                                       |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`supports_play_area_mode<class_XRInterface_method_supports_play_area_mode>`\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )                                                                                                                                                                                              |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`trigger_haptic_pulse<class_XRInterface_method_trigger_haptic_pulse>`\ (\ action_name\: :ref:`String<class_String>`, tracker_name\: :ref:`StringName<class_StringName>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`uninitialize<class_XRInterface_method_uninitialize>`\ (\ )                                                                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_XRInterface_signal_play_area_changed:

.. rst-class:: classref-signal

**play_area_changed**\ (\ mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRInterface_signal_play_area_changed>`

Выдается при изменении игровой зоны. Это может быть результатом сброса игроком границы или входа в новую игровую зону, смены игроком режима игровой зоны, изменения масштаба мира или сброса игроком ориентации гарнитуры.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_XRInterface_Capabilities:

.. rst-class:: classref-enumeration

enum **Capabilities**: :ref:`🔗<enum_XRInterface_Capabilities>`

.. _class_XRInterface_constant_XR_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_NONE** = ``0``

Отсутствуют возможности XR.

.. _class_XRInterface_constant_XR_MONO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_MONO** = ``1``

Этот интерфейс может работать с обычным выводом рендеринга (дополненная реальность, не основанная на HMD).

.. _class_XRInterface_constant_XR_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_STEREO** = ``2``

Этот интерфейс поддерживает стереоскопическую визуализацию.

.. _class_XRInterface_constant_XR_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_QUAD** = ``4``

Этот интерфейс поддерживает квадро-рендеринг (пока не поддерживается Godot).

.. _class_XRInterface_constant_XR_VR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_VR** = ``8``

Этот интерфейс поддерживает VR.

.. _class_XRInterface_constant_XR_AR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_AR** = ``16``

Этот интерфейс поддерживает дополненную реальность (AR) (видеофон и отслеживание в реальном мире).

.. _class_XRInterface_constant_XR_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_EXTERNAL** = ``32``

Этот интерфейс выводит данные на внешнее устройство. Если используется основная область просмотра, вывод на экране представляет собой неизмененный буфер левого или правого глаза (растянутый, если размер области просмотра не изменен до того же соотношения сторон, что и :ref:`get_render_target_size()<class_XRInterface_method_get_render_target_size>`). Использование отдельного узла области просмотра освобождает основную область просмотра для других целей.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_TrackingStatus:

.. rst-class:: classref-enumeration

enum **TrackingStatus**: :ref:`🔗<enum_XRInterface_TrackingStatus>`

.. _class_XRInterface_constant_XR_NORMAL_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NORMAL_TRACKING** = ``0``

Отслеживание работает так, как и ожидалось.

.. _class_XRInterface_constant_XR_EXCESSIVE_MOTION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_EXCESSIVE_MOTION** = ``1``

Отслеживание затруднено из-за чрезмерного движения (игрок движется быстрее, чем отслеживание может за ним уследить).

.. _class_XRInterface_constant_XR_INSUFFICIENT_FEATURES:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_INSUFFICIENT_FEATURES** = ``2``

Отслеживание затруднено из-за недостатка функций, слишком темно (для отслеживания с помощью камеры), игрок заблокирован и т. д.

.. _class_XRInterface_constant_XR_UNKNOWN_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_UNKNOWN_TRACKING** = ``3``

Мы не знаем статус отслеживания, или этот интерфейс не обеспечивает обратную связь.

.. _class_XRInterface_constant_XR_NOT_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NOT_TRACKING** = ``4``

Отслеживание не работает (камера не подключена или закрыта, маяки выключены, петушок улетел и т. д.).

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_PlayAreaMode:

.. rst-class:: classref-enumeration

enum **PlayAreaMode**: :ref:`🔗<enum_XRInterface_PlayAreaMode>`

.. _class_XRInterface_constant_XR_PLAY_AREA_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_UNKNOWN** = ``0``

Режим игровой зоны не установлен или недоступен.

.. _class_XRInterface_constant_XR_PLAY_AREA_3DOF:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_3DOF** = ``1``

Игровая зона поддерживает только отслеживание ориентации, отслеживание положения не поддерживается, зона будет центрирована вокруг игрока.

.. _class_XRInterface_constant_XR_PLAY_AREA_SITTING:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_SITTING** = ``2``

Игрок находится в сидячем положении, отслеживание положения ограничено, вокруг игрока зафиксирован охранник.

.. _class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_ROOMSCALE** = ``3``

Игрок может свободно перемещаться, полное отслеживание положения.

.. _class_XRInterface_constant_XR_PLAY_AREA_STAGE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_STAGE** = ``4``

То же, что и :ref:`XR_PLAY_AREA_ROOMSCALE<class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE>`, но исходная точка фиксируется в центре физического пространства. В этом режиме может быть отключена центрация на системном уровне, требующая использования :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>`.

.. _class_XRInterface_constant_XR_PLAY_AREA_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_CUSTOM** = ``2147483647``

Пользовательская игровая зона, заданная с помощью GDExtension.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_EnvironmentBlendMode:

.. rst-class:: classref-enumeration

enum **EnvironmentBlendMode**: :ref:`🔗<enum_XRInterface_EnvironmentBlendMode>`

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_OPAQUE** = ``0``

Режим наложения Opaque. Обычно используется для устройств виртуальной реальности.

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ADDITIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ADDITIVE** = ``1``

Режим аддитивного смешивания. Обычно используется для устройств дополненной реальности или устройств виртуальной реальности с возможностью сквозного пропускания.

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ALPHA_BLEND** = ``2``

Режим альфа-смешивания. Обычно используется для устройств дополненной или виртуальной реальности с возможностями сквозного пропускания. Альфа-канал управляет видимостью сквозного пропускания. Альфа 0,0 означает, что сквозное пропускание видимо, и этот пиксель работает в режиме АДДИТИВНОГО ПРОСТРАНСТВА. Альфа 1,0 означает, что сквозное пропускание невидимо, и этот пиксель работает в режиме НЕПРОЗРАЧНОГО ПРОСТРАНСТВА.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_VRSTextureFormat:

.. rst-class:: classref-enumeration

enum **VRSTextureFormat**: :ref:`🔗<enum_XRInterface_VRSTextureFormat>`

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_UNIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_UNIFIED** = ``0``

Формат текстуры такой же, как и возвращаемый :ref:`XRVRS.make_vrs_texture()<class_XRVRS_method_make_vrs_texture>`.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE** = ``1``

Формат текстуры такой же, как и ожидается от расширения Vulkan ``VK_KHR_fragment_shading_rate``.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP** = ``2``

Формат текстуры такой же, как и ожидается от расширения Vulkan ``VK_EXT_fragment_density_map``.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_RASTERIZATION_RATE_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_RASTERIZATION_RATE_MAP** = ``3``

The texture contains a Metal ``rasterizationRateMap``, used for foveated rendering on Apple platforms. It's not a real texture, but instead an opaque wrapper for an ``MTLRasterizationRateMap`` object.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_XRInterface_property_ar_is_anchor_detection_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ar_is_anchor_detection_enabled** = ``false`` :ref:`🔗<class_XRInterface_property_ar_is_anchor_detection_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_detection_is_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_anchor_detection_is_enabled**\ (\ )

В интерфейсе дополненной реальности, если ``true`` включено обнаружение привязки.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_environment_blend_mode:

.. rst-class:: classref-property

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **environment_blend_mode** = ``0`` :ref:`🔗<class_XRInterface_property_environment_blend_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ )
- :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **get_environment_blend_mode**\ (\ )

Укажите, как XR должен вписываться в окружающую среду. Это относится к определенным устройствам дополненной реальности и сквозным устройствам, где изображения с камер вводятся компоновщиком XR.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_interface_is_primary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interface_is_primary** = ``false`` :ref:`🔗<class_XRInterface_property_interface_is_primary>`

.. rst-class:: classref-property-setget

- |void| **set_primary**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_primary**\ (\ )

``true`` , если это основной интерфейс.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_xr_play_area_mode:

.. rst-class:: classref-property

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **xr_play_area_mode** = ``0`` :ref:`🔗<class_XRInterface_property_xr_play_area_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )
- :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **get_play_area_mode**\ (\ )

Режим игровой зоны для этого интерфейса.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_XRInterface_method_get_camera_feed_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_camera_feed_id**\ (\ ) :ref:`🔗<class_XRInterface_method_get_camera_feed_id>`

Если это интерфейс дополненной реальности, требующий отображения потока камеры в качестве фона, этот метод возвращает идентификатор потока в :ref:`CameraServer<class_CameraServer>` для этого интерфейса.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_camera_offsets:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\] **get_camera_offsets**\ (\ tracker_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_XRInterface_method_get_camera_offsets>`

Gets an array of offset transforms for each view for tracker ``tracker_name``. ``tracker_name`` must refer to an :ref:`XRPositionalTracker<class_XRPositionalTracker>` used as a camera. Returns an empty array if this interface is not responsible for this tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_camera_projections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Projection<class_Projection>`\] **get_camera_projections**\ (\ tracker_name\: :ref:`StringName<class_StringName>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_get_camera_projections>`

Gets an array of projection matrices for each view for tracker ``tracker_name``. ``tracker_name`` must refer to an :ref:`XRPositionalTracker<class_XRPositionalTracker>` used as a camera. Returns an empty array if this interface is not responsible for this tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_capabilities:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_capabilities**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_capabilities>`

Возвращает комбинацию флагов :ref:`Capabilities<enum_XRInterface_Capabilities>`, предоставляющих информацию о возможностях этого интерфейса.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_name>`

Возвращает имя этого интерфейса (\ ``"OpenXR"``, ``"OpenVR"``, ``"OpenHMD"``, ``"ARKit"`` и т. д.).

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_play_area:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_play_area**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_play_area>`

Возвращает массив векторов, представляющих физическую игровую зону, сопоставленную с виртуальным пространством вокруг точки :ref:`XROrigin3D<class_XROrigin3D>`. Точки образуют выпуклый многоугольник, который можно использовать для реагирования на игровую зону или ее визуализации. Это возвращает пустой массив, если эта функция не поддерживается или если информация еще недоступна.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_projection_for_view:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_projection_for_view**\ (\ view\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_get_projection_for_view>`

**Устарело:** Use get_camera_projections

Возвращает матрицу проекции для вида/глаза.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_render_target_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_render_target_size**\ (\ ) :ref:`🔗<class_XRInterface_method_get_render_target_size>`

Возвращает разрешение, с которым следует визуализировать промежуточные результаты, прежде чем VR-платформа применит такие эффекты, как искажение объектива.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_supported_environment_blend_modes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_supported_environment_blend_modes**\ (\ ) :ref:`🔗<class_XRInterface_method_get_supported_environment_blend_modes>`

Возвращает массив поддерживаемых режимов смешивания сред, см. :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_system_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_system_info**\ (\ ) :ref:`🔗<class_XRInterface_method_get_system_info>`

Возвращает :ref:`Dictionary<class_Dictionary>` с дополнительной системной информацией. Интерфейсы должны возвращать ``XRRuntimeName`` и ``XRRuntimeVersion``, предоставляя информацию об используемой среде выполнения XR. Дополнительные записи могут быть предоставлены для конкретного интерфейса.

\ **Примечание:**\ Эта информация может быть доступна только после успешного вызова :ref:`initialize()<class_XRInterface_method_initialize>`.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_tracking_status:

.. rst-class:: classref-method

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **get_tracking_status**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_tracking_status>`

Если поддерживается, возвращает статус нашего отслеживания. Это позволит вам предоставить пользователю обратную связь, если есть проблемы с позиционным отслеживанием.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_transform_for_view:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_transform_for_view**\ (\ view\: :ref:`int<class_int>`, cam_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRInterface_method_get_transform_for_view>`

**Устарело:** Use get_camera_offsets

Возвращает преобразование для вида/глаза.

\ ``view`` — индекс вида/глаза.

\ ``cam_transform`` — преобразование, которое сопоставляет координаты устройства с координатами сцены, обычно :ref:`Node3D.global_transform<class_Node3D_property_global_transform>` текущего XROrigin3D.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) :ref:`🔗<class_XRInterface_method_get_view_count>`

Возвращает количество видов, которые необходимо отобразить для этого устройства. 1 для Моноскопического, 2 для Стереоскопического.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **initialize**\ (\ ) :ref:`🔗<class_XRInterface_method_initialize>`

Вызовите это, чтобы инициализировать этот интерфейс. Первый инициализированный интерфейс определяется как основной интерфейс, и он будет использоваться для рендеринга вывода.

После инициализации интерфейса, который вы хотите использовать, вам необходимо включить режим AR/VR вьюпорта, и рендеринг должен начаться.

\ **Примечание:** Вы должны включить режим XR на главном вьюпорте для любого устройства, которое использует основной вывод Godot, например, для мобильного VR.

Если вы сделаете это для платформы, которая обрабатывает свой собственный вывод (например, OpenVR), Godot покажет только один глаз без искажений на экране. В качестве альтернативы вы можете добавить отдельный узел вьюпорта в свою сцену и включить AR/VR на этом вьюпорте. Он будет использоваться для вывода на HMD, что позволит вам делать все, что угодно в главном окне, например, использовать отдельную камеру в качестве камеры зрителя или рендерить что-то совершенно другое.

Хотя в настоящее время это не используется, вы можете активировать дополнительные интерфейсы. Вы можете сделать это, если хотите отслеживать контроллеры с других платформ. Однако на данный момент только один интерфейс может осуществлять рендеринг на HMD.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_initialized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_initialized**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_is_initialized>`

Возвращает ``true``, если этот интерфейс был инициализирован.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_enabled**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_enabled>`

**Устарело:** Check if :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` is :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

Возвращает ``true``, если сквозная передача включена.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_supported**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_supported>`

**Устарело:** Check that :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>` is supported using :ref:`get_supported_environment_blend_modes()<class_XRInterface_method_get_supported_environment_blend_modes>`, instead.

Возвращает ``true``, если этот интерфейс поддерживает сквозную передачу.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_set_environment_blend_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ ) :ref:`🔗<class_XRInterface_method_set_environment_blend_mode>`

Устанавливает режим смешивания активной среды.

\ ``mode`` — это режим смешивания среды, начинающийся со следующего кадра.

\ **Примечание:** Не все среды выполнения поддерживают все режимы смешивания среды, поэтому важно проверить это при запуске. Например:

::

    func _ready():
        var xr_interface = XRServer.find_interface("OpenXR")
        if xr_interface and xr_interface.is_initialized():
            var vp = get_viewport()
            vp.use_xr = true
            var acceptable_modes = [XRInterface.XR_ENV_BLEND_MODE_OPAQUE, XRInterface.XR_ENV_BLEND_MODE_ADDITIVE]
            var modes = xr_interface.get_supported_environment_blend_modes()
            for mode in acceptable_modes:
                if mode in modes:
                    xr_interface.set_environment_blend_mode(mode)
                    break

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_set_play_area_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ ) :ref:`🔗<class_XRInterface_method_set_play_area_mode>`

Устанавливает режим активной игровой зоны, вернет ``false``, если режим не может быть использован с этим интерфейсом.

\ **Примечание:** Изменение этого после того, как интерфейс уже инициализирован, может быть неприятным для игрока, поэтому рекомендуется выполнить центрирование на HMD с помощью :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>` (при переключении на :ref:`XR_PLAY_AREA_STAGE<class_XRInterface_constant_XR_PLAY_AREA_STAGE>`) или выполнить переключение во время смены сцены.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_start_passthrough:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_start_passthrough>`

**Устарело:** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

Запускает сквозной просмотр, вернет ``false``, если сквозной просмотр не может быть запущен.

\ **Примечание:** Область просмотра, используемая для XR, должна иметь прозрачный фон, в противном случае сквозной просмотр может отображаться неправильно.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_stop_passthrough:

.. rst-class:: classref-method

|void| **stop_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_stop_passthrough>`

**Устарело:** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_OPAQUE<class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE>`, instead.

Остановить прохождение.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_supports_play_area_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ ) :ref:`🔗<class_XRInterface_method_supports_play_area_mode>`

Вызовите этот метод, чтобы узнать, поддерживается ли данный режим игровой зоны данным интерфейсом.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, tracker_name\: :ref:`StringName<class_StringName>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_trigger_haptic_pulse>`

Запускает тактильный импульс на устройстве, связанном с этим интерфейсом.

\ ``action_name`` — имя действия для этого импульса.

\ ``tracker_name`` необязателен и может использоваться для направления импульса на определенное устройство при условии, что устройство привязано к этому тактильному сигналу.

\ ``frequency`` — частота импульса, установлена на ``0.0``, чтобы система использовала частоту по умолчанию.

\ ``Amplitude`` — амплитуда импульса между ``0.0`` и ``1.0``.

\ ``duration_sec`` — длительность импульса в секундах.

\ ``delay_sec`` — задержка в секундах перед подачей импульса.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_uninitialize:

.. rst-class:: classref-method

|void| **uninitialize**\ (\ ) :ref:`🔗<class_XRInterface_method_uninitialize>`

Отключает интерфейс.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
