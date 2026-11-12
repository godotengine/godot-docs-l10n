:github_url: hide

.. _class_XRInterface:

XRInterface
===========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`MobileVRInterface<class_MobileVRInterface>`, :ref:`OpenXRInterface<class_OpenXRInterface>`, :ref:`VisionOSXRInterface<class_VisionOSXRInterface>`, :ref:`WebXRInterface<class_WebXRInterface>`, :ref:`XRInterfaceExtension<class_XRInterfaceExtension>`

Clase base para la implementación de una interfaz XR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase debe implementarse para que una plataforma de RA o RV esté disponible para Godot. Estos módulos deben implementarse como módulos de C++ o GDExtension. Parte de la interfaz está expuesta a GDScript para que pueda detectar, habilitar y configurar una plataforma de RA o RV.

Las interfaces deben escribirse de forma que, con solo habilitarlas, obtengamos una configuración funcional. Puedes consultar las interfaces disponibles a través de :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_XRInterface_signal_play_area_changed:

.. rst-class:: classref-signal

**play_area_changed**\ (\ mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRInterface_signal_play_area_changed>`

Emitida cuando el área de juego cambia. Esto puede ser el resultado de que el Player restablezca el límite o entre en una nueva área de juego, que el Player cambie el modo del área de juego, que cambie la escala del mundo o que el Player restablezca la orientación de su casco.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_XRInterface_Capabilities:

.. rst-class:: classref-enumeration

enum **Capabilities**: :ref:`🔗<enum_XRInterface_Capabilities>`

.. _class_XRInterface_constant_XR_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_NONE** = ``0``

No hay capacidades XR.

.. _class_XRInterface_constant_XR_MONO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_MONO** = ``1``

Esta interfaz puede funcionar con una salida de renderizado normal (AR no basada en HMD).

.. _class_XRInterface_constant_XR_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_STEREO** = ``2``

Esta interfaz soporta el renderizado estereoscópica.

.. _class_XRInterface_constant_XR_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_QUAD** = ``4``

Esta interfaz soporta el renderizado cuádruple (aún no soportado por Godot).

.. _class_XRInterface_constant_XR_VR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_VR** = ``8``

Esta interfaz soporta VR.

.. _class_XRInterface_constant_XR_AR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_AR** = ``16``

Esta interfaz soporta AR (video de fondo y seguimiento en el mundo real).

.. _class_XRInterface_constant_XR_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_EXTERNAL** = ``32``

Esta interfaz genera la salida a un dispositivo externo. Si se utiliza el viewport principal, la salida en pantalla es un búfer sin modificar del ojo izquierdo o derecho (estirado si el tamaño del viewport no se ajusta a la misma relación de aspecto de :ref:`get_render_target_size()<class_XRInterface_method_get_render_target_size>`). El uso de un nodo de viewport independiente libera el viewportprincipal para otros fines.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_TrackingStatus:

.. rst-class:: classref-enumeration

enum **TrackingStatus**: :ref:`🔗<enum_XRInterface_TrackingStatus>`

.. _class_XRInterface_constant_XR_NORMAL_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NORMAL_TRACKING** = ``0``

El rastreo se está comportando como se esperaba.

.. _class_XRInterface_constant_XR_EXCESSIVE_MOTION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_EXCESSIVE_MOTION** = ``1``

El rastreo se ve obstaculizado por un movimiento excesivo (el jugador se mueve más rápido de lo que el rastreo puede mantener).

.. _class_XRInterface_constant_XR_INSUFFICIENT_FEATURES:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_INSUFFICIENT_FEATURES** = ``2``

El rastreo se ve obstaculizado por características insuficientes, está demasiado oscuro (para el rastreo basado en la cámara), el reproductor está bloqueado, etc.

.. _class_XRInterface_constant_XR_UNKNOWN_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_UNKNOWN_TRACKING** = ``3``

No conocemos el estado del rastreo o esta interfaz no proporciona información.

.. _class_XRInterface_constant_XR_NOT_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NOT_TRACKING** = ``4``

El rastreo no funciona (cámara no enchufada u oscurecida, faros apagados, etc.).

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_PlayAreaMode:

.. rst-class:: classref-enumeration

enum **PlayAreaMode**: :ref:`🔗<enum_XRInterface_PlayAreaMode>`

.. _class_XRInterface_constant_XR_PLAY_AREA_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_UNKNOWN** = ``0``

El modo de área de juego no está configurado o no está disponible.

.. _class_XRInterface_constant_XR_PLAY_AREA_3DOF:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_3DOF** = ``1``

El área de juego solo admite el seguimiento de la orientación, no el seguimiento posicional, el área se centrará alrededor del Player.

.. _class_XRInterface_constant_XR_PLAY_AREA_SITTING:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_SITTING** = ``2``

El Player está en posición sentada, seguimiento posicional limitado, guardián fijo alrededor del Player.

.. _class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_ROOMSCALE** = ``3``

El Player es libre de moverse, seguimiento posicional completo.

.. _class_XRInterface_constant_XR_PLAY_AREA_STAGE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_STAGE** = ``4``

Igual que :ref:`XR_PLAY_AREA_ROOMSCALE<class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE>` pero el punto de origen está fijado al centro del espacio físico. En este modo, el recentrado a nivel de sistema puede estar deshabilitado, requiriendo el uso de :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>`.

.. _class_XRInterface_constant_XR_PLAY_AREA_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_CUSTOM** = ``2147483647``

Área de juego personalizada establecida por una GDExtension.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_EnvironmentBlendMode:

.. rst-class:: classref-enumeration

enum **EnvironmentBlendMode**: :ref:`🔗<enum_XRInterface_EnvironmentBlendMode>`

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_OPAQUE** = ``0``

Modo de mezcla opaco. Se utiliza normalmente para dispositivos de RV.

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ADDITIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ADDITIVE** = ``1``

Modo de mezcla aditivo. Se utiliza normalmente para dispositivos de RA o dispositivos de RV con passthrough.

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ALPHA_BLEND** = ``2``

Modo de mezcla alfa. Se suele utilizar para dispositivos de RA o RV con capacidades de passthrough. El canal alfa controla la cantidad de passthrough que es visible. Un alfa de 0.0 significa que el passthrough es visible y este píxel funciona en modo ADITIVO. Un alfa de 1.0 significa que el passthrough no es visible y este píxel funciona en modo OPACO.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_VRSTextureFormat:

.. rst-class:: classref-enumeration

enum **VRSTextureFormat**: :ref:`🔗<enum_XRInterface_VRSTextureFormat>`

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_UNIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_UNIFIED** = ``0``

El formato de la textura es el mismo que el devuelto por :ref:`XRVRS.make_vrs_texture()<class_XRVRS_method_make_vrs_texture>`.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE** = ``1``

El formato de textura es el mismo que espera la extensión de Vulkan ``VK_KHR_fragment_shading_rate``.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP** = ``2``

El formato de textura es el mismo que espera la extensión de Vulkan ``VK_EXT_fragment_density_map``.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_RASTERIZATION_RATE_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_RASTERIZATION_RATE_MAP** = ``3``

The texture contains a Metal ``rasterizationRateMap``, used for foveated rendering on Apple platforms. It's not a real texture, but instead an opaque wrapper for an ``MTLRasterizationRateMap`` object.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_XRInterface_property_ar_is_anchor_detection_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ar_is_anchor_detection_enabled** = ``false`` :ref:`🔗<class_XRInterface_property_ar_is_anchor_detection_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_detection_is_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_anchor_detection_is_enabled**\ (\ )

En una interfaz AR, ``true`` si la detección de anclas está activada.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_environment_blend_mode:

.. rst-class:: classref-property

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **environment_blend_mode** = ``0`` :ref:`🔗<class_XRInterface_property_environment_blend_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ )
- :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **get_environment_blend_mode**\ (\ )

Especifica cómo XR debe mezclar el entorno. Esto es específico para ciertos dispositivos de RA y passthrough donde las imágenes de la cámara son mezcladas por el compositor de XR.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_interface_is_primary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interface_is_primary** = ``false`` :ref:`🔗<class_XRInterface_property_interface_is_primary>`

.. rst-class:: classref-property-setget

- |void| **set_primary**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_primary**\ (\ )

``true`` si esta es la interfaz primaria.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_xr_play_area_mode:

.. rst-class:: classref-property

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **xr_play_area_mode** = ``0`` :ref:`🔗<class_XRInterface_property_xr_play_area_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )
- :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **get_play_area_mode**\ (\ )

El modo de área de juego para esta interfaz.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_XRInterface_method_get_camera_feed_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_camera_feed_id**\ (\ ) :ref:`🔗<class_XRInterface_method_get_camera_feed_id>`

Si se trata de una interfaz AR que requiere mostrar una alimentación de la cámara como fondo, este método devuelve el ID de la alimentación en el :ref:`CameraServer<class_CameraServer>` para esta interfaz.

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

Devuelve una combinación de flags :ref:`Capabilities<enum_XRInterface_Capabilities>` que proporcionan información sobre las capacidades de esta interfaz.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_name>`

Devuelve el nombre de esta interfaz (\ ``"OpenXR"``, ``"OpenVR"``, ``"OpenHMD"``, ``"ARKit"``, etc.).

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_play_area:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_play_area**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_play_area>`

Devuelve un array de vectores que representan el área de juego física mapeada al espacio virtual alrededor del punto :ref:`XROrigin3D<class_XROrigin3D>`. Los puntos forman un polígono convexo que puede ser utilizado para reaccionar o visualizar el área de juego. Devuelve un array vacío si esta característica no es soportada o si la información no está todavía disponible.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_projection_for_view:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_projection_for_view**\ (\ view\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_get_projection_for_view>`

**Obsoleto:** Use get_camera_projections

Devuelve la matriz de proyección para una vista/ojo.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_render_target_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_render_target_size**\ (\ ) :ref:`🔗<class_XRInterface_method_get_render_target_size>`

Devuelve la resolución a la que deberíamos renderizar nuestros resultados intermedios antes de que cosas como la distorsión de la lente sean aplicadas por la plataforma VR.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_supported_environment_blend_modes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_supported_environment_blend_modes**\ (\ ) :ref:`🔗<class_XRInterface_method_get_supported_environment_blend_modes>`

Devuelve un array de los modos de mezcla de entorno soportado. Véase :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_system_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_system_info**\ (\ ) :ref:`🔗<class_XRInterface_method_get_system_info>`

Devuelve un :ref:`Dictionary<class_Dictionary>` con información extra del sistema. Se espera que las interfaces devuelvan ``XRRuntimeName`` y ``XRRuntimeVersion`` proporcionando información sobre el tiempo de ejecución XR utilizado. Se pueden proporcionar entradas adicionales específicas para una interfaz.

\ **Nota:** Esta información puede estar disponible solo después de que :ref:`initialize()<class_XRInterface_method_initialize>` haya sido llamado con éxito.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_tracking_status:

.. rst-class:: classref-method

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **get_tracking_status**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_tracking_status>`

Si se apoya, devuelve el estado de nuestro rastreo. Esto le permitirá proporcionar información al usuario sobre si hay problemas con el rastreo posicional.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_transform_for_view:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_transform_for_view**\ (\ view\: :ref:`int<class_int>`, cam_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRInterface_method_get_transform_for_view>`

**Obsoleto:** Use get_camera_offsets

Devuelve la transformación para una vista/ojo.

\ ``view`` es el índice de la vista/ojo.

\ ``cam_transform`` es la transformación que mapea las coordenadas del dispositivo a las coordenadas de la escena, típicamente el :ref:`Node3D.global_transform<class_Node3D_property_global_transform>` del XROrigin3D actual.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) :ref:`🔗<class_XRInterface_method_get_view_count>`

Devuelve la cantidad de vistas que deben representarse para este dispositivo. 1 para monoscópico, 2 para estereoscópico.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **initialize**\ (\ ) :ref:`🔗<class_XRInterface_method_initialize>`

Llama a esto para inicializar esta interfaz. La primera interfaz que se inicializa se identifica como la interfaz principal y se utilizará para la salida de renderizado.

Después de inicializar la interfaz que quieras usar, necesitas habilitar el modo AR/VR de un viweport y el renderizado debería comenzar.

\ **Nota:** Debes habilitar el modo XR en el viewportprincipal para cualquier dispositivo que utilice la salida principal de Godot, como por ejemplo para la RV móvil.

Si haces esto para una plataforma que gestiona su propia salida (como OpenVR), Godot mostrará un solo ojo sin distorsión en la pantalla. Alternativamente, puedes añadir un nodo de viewport independiente a tu escena y habilitar AR/VR en esa ventana gráfica. Se utilizará para la salida al HMD, dejándote libertad para hacer lo que quieras en la ventana principal, como usar una cámara separada como cámara de espectador o renderizar algo completamente diferente.

Si bien actualmente no se utiliza, puedes activar interfaces adicionales. Es posible que desees hacer esto si quieres rastrear mandos de otras plataformas. Sin embargo, en este momento solo una interfaz puede renderizar en un HMD.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_initialized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_initialized**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_is_initialized>`

Devuelve ``true`` si esta interfaz ha sido inicializada.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_enabled**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_enabled>`

**Obsoleto:** Check if :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` is :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

Devuelve ``true`` si el passthrough está activado.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_supported**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_supported>`

**Obsoleto:** Check that :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>` is supported using :ref:`get_supported_environment_blend_modes()<class_XRInterface_method_get_supported_environment_blend_modes>`, instead.

Devuelve ``true`` si esta interfaz admite el passthrough.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_set_environment_blend_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ ) :ref:`🔗<class_XRInterface_method_set_environment_blend_mode>`

Establece el modo de mezcla de entorno activo.

\ ``mode`` es el modo de mezcla de entorno a partir del siguiente fotograma.

\ **Nota:** No todos los tiempos de ejecución admiten todos los modos de mezcla de entorno, por lo que es importante comprobar esto al inicio. Por ejemplo:

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

Establece el modo de área de juego activo, devolverá ``false`` si el modo no se puede utilizar con esta interfaz.

\ **Nota:** Cambiar esto después de que la interfaz ya se haya inicializado puede ser chocante para el jugador, por lo que se recomienda recentrar en el HMD con :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>` (si se cambia a :ref:`XR_PLAY_AREA_STAGE<class_XRInterface_constant_XR_PLAY_AREA_STAGE>`) o hacer el cambio durante un cambio de escena.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_start_passthrough:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_start_passthrough>`

**Obsoleto:** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

Inicia el passthrough, devolverá ``false`` si el passthrough no pudo iniciarse.

\ **Nota:** El viewport usado para XR debe tener un fondo transparente, de lo contrario, el passthrough podría no renderizarse correctamente.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_stop_passthrough:

.. rst-class:: classref-method

|void| **stop_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_stop_passthrough>`

**Obsoleto:** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_OPAQUE<class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE>`, instead.

Detiene el passthrough.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_supports_play_area_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ ) :ref:`🔗<class_XRInterface_method_supports_play_area_mode>`

Llama a esto para averiguar si un modo de área de juego dado es soportado por esta interfaz.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, tracker_name\: :ref:`StringName<class_StringName>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_trigger_haptic_pulse>`

Dispara un pulso háptico en un dispositivo asociado con esta interfaz.

\ ``action_name`` es el nombre de la acción para este pulso.

\ ``tracker_name`` es opcional y se puede utilizar para dirigir el pulso a un dispositivo específico siempre que el dispositivo esté vinculado a este háptico.

\ ``frequency`` es la frecuencia del pulso, establecida en ``0.0`` para que el sistema utilice una frecuencia predeterminada.

\ ``amplitude`` es la amplitud del pulso entre ``0.0`` y ``1.0``.

\ ``duration_sec`` es la duración del pulso en segundos.

\ ``delay_sec`` es un retraso en segundos antes de que se dé el pulso.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_uninitialize:

.. rst-class:: classref-method

|void| **uninitialize**\ (\ ) :ref:`🔗<class_XRInterface_method_uninitialize>`

Apaga la interfaz.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
