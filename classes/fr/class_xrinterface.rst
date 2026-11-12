:github_url: hide

.. _class_XRInterface:

XRInterface
===========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`MobileVRInterface<class_MobileVRInterface>`, :ref:`OpenXRInterface<class_OpenXRInterface>`, :ref:`VisionOSXRInterface<class_VisionOSXRInterface>`, :ref:`WebXRInterface<class_WebXRInterface>`, :ref:`XRInterfaceExtension<class_XRInterfaceExtension>`

Classe de base pour une implémentation d’interface XR.

.. rst-class:: classref-introduction-group

Description
-----------

This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDExtension modules. Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform.

Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Méthodes
----------------

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

Signaux
--------------

.. _class_XRInterface_signal_play_area_changed:

.. rst-class:: classref-signal

**play_area_changed**\ (\ mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XRInterface_signal_play_area_changed>`

Emitted when the play area is changed. This can be a result of the player resetting the boundary or entering a new play area, the player changing the play area mode, the world scale changing or the player resetting their headset orientation.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_XRInterface_Capabilities:

.. rst-class:: classref-enumeration

enum **Capabilities**: :ref:`🔗<enum_XRInterface_Capabilities>`

.. _class_XRInterface_constant_XR_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_NONE** = ``0``

Pas de capacité XR.

.. _class_XRInterface_constant_XR_MONO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_MONO** = ``1``

Cette interface peut fonctionner avec la sortie de rendu normale (AR non basée sur HMD).

.. _class_XRInterface_constant_XR_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_STEREO** = ``2``

Cette interface est compatible avec le rendu stéréoscopique.

.. _class_XRInterface_constant_XR_QUAD:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_QUAD** = ``4``

Cette interface supporte le quad rendering (pas encore supporté par Godot).

.. _class_XRInterface_constant_XR_VR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_VR** = ``8``

Cette interface supporte la VR.

.. _class_XRInterface_constant_XR_AR:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_AR** = ``16``

Cette interface supporte la AR (arrière-plan vidéo et suivi du monde réel).

.. _class_XRInterface_constant_XR_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`Capabilities<enum_XRInterface_Capabilities>` **XR_EXTERNAL** = ``32``

Cette interface envoie sa sortie vers un périphérique externe. Si le viewport principal est utilisé, la sortie à l'écran est un buffer non modifié de l'œil gauche ou droit (étiré si la taille du viewport n'est pas changée au même rapport d'aspect que :ref:`get_render_target_size()<class_XRInterface_method_get_render_target_size>`). L'utilisation d'un nœud Viewport séparé libère le viewport principal pour être utilisé pour autre chose.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_TrackingStatus:

.. rst-class:: classref-enumeration

enum **TrackingStatus**: :ref:`🔗<enum_XRInterface_TrackingStatus>`

.. _class_XRInterface_constant_XR_NORMAL_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NORMAL_TRACKING** = ``0``

Le suivi se comporte comme prévu.

.. _class_XRInterface_constant_XR_EXCESSIVE_MOTION:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_EXCESSIVE_MOTION** = ``1``

Le suivi est gêné par un mouvement excessif (le joueur se déplace trop vite par rapport à ce que le suivi peut suivre).

.. _class_XRInterface_constant_XR_INSUFFICIENT_FEATURES:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_INSUFFICIENT_FEATURES** = ``2``

Le suivi est gêné par des caractéristiques insuffisantes, il fait trop sombre (pour du suivi par caméra), le joueur est bloqué, etc...

.. _class_XRInterface_constant_XR_UNKNOWN_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_UNKNOWN_TRACKING** = ``3``

Nous ne connaissons pas l'état du suivi, ou alors cette interface ne fournit aucune indication.

.. _class_XRInterface_constant_XR_NOT_TRACKING:

.. rst-class:: classref-enumeration-constant

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **XR_NOT_TRACKING** = ``4``

Le suivi n'est pas fonctionnel (la caméra n'est pas branchée ou cachée, les lumières sont éteintes, etc.).

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_PlayAreaMode:

.. rst-class:: classref-enumeration

enum **PlayAreaMode**: :ref:`🔗<enum_XRInterface_PlayAreaMode>`

.. _class_XRInterface_constant_XR_PLAY_AREA_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_UNKNOWN** = ``0``

Mode de zone de jeu non défini ou non disponible.

.. _class_XRInterface_constant_XR_PLAY_AREA_3DOF:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_3DOF** = ``1``

La zone de jeu ne supporte que le suivi de l'orientation, pas le suivi positionnel, la zone se centrera autour du joueur.

.. _class_XRInterface_constant_XR_PLAY_AREA_SITTING:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_SITTING** = ``2``

Le joueur est en position assise, avec suivi positionnel limité, avec des limites ("Guardian") fixes autour du joueur.

.. _class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_ROOMSCALE** = ``3``

Le joueur est libre de se déplacer, suivi positionnel complet.

.. _class_XRInterface_constant_XR_PLAY_AREA_STAGE:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_STAGE** = ``4``

Comme :ref:`XR_PLAY_AREA_ROOMSCALE<class_XRInterface_constant_XR_PLAY_AREA_ROOMSCALE>` mais le point d'origine est fixé au centre de l'espace physique. Dans ce mode, le recentrage au niveau du système peut être désactivé, nécessitant l'utilisation de :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>`.

.. _class_XRInterface_constant_XR_PLAY_AREA_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **XR_PLAY_AREA_CUSTOM** = ``2147483647``

Aire de jeu personnalisée définie par une GDExtension.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_EnvironmentBlendMode:

.. rst-class:: classref-enumeration

enum **EnvironmentBlendMode**: :ref:`🔗<enum_XRInterface_EnvironmentBlendMode>`

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_OPAQUE** = ``0``

Mode de mélange opaque. Ceci est généralement utilisé pour les appareils VR.

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ADDITIVE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ADDITIVE** = ``1``

Mode de mélange additif. Ceci est généralement utilisé pour les appareils AR ou les appareils VR avec passthrough.

.. _class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **XR_ENV_BLEND_MODE_ALPHA_BLEND** = ``2``

Mode de mélange alpha. Ceci est généralement utilisé pour les appareils AR ou VR avec des capacités de passthrough. Le canal alpha contrôle à quel point le passthrough est visible. Un alpha de 0.0 signifie que le passthrough est visible et ce pixel fonctionne en mode ADDITIVE. Un alpha de 1.0 signifie que le passthrough n'est pas visible et que ce pixel fonctionne en mode OPAQUE.

.. rst-class:: classref-item-separator

----

.. _enum_XRInterface_VRSTextureFormat:

.. rst-class:: classref-enumeration

enum **VRSTextureFormat**: :ref:`🔗<enum_XRInterface_VRSTextureFormat>`

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_UNIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_UNIFIED** = ``0``

Le format de texture est le même que celle renvoyée par :ref:`XRVRS.make_vrs_texture()<class_XRVRS_method_make_vrs_texture>`.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE** = ``1``

Le format de texture est le même qu'attendu par l'extension Vulkan ``VK_KHR_fragment_shading_rate``.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP** = ``2``

Le format de texture est le même qu'attendu par l'extension Vulkan ``VK_EXT_fragment_density_map``.

.. _class_XRInterface_constant_XR_VRS_TEXTURE_FORMAT_RASTERIZATION_RATE_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`VRSTextureFormat<enum_XRInterface_VRSTextureFormat>` **XR_VRS_TEXTURE_FORMAT_RASTERIZATION_RATE_MAP** = ``3``

The texture contains a Metal ``rasterizationRateMap``, used for foveated rendering on Apple platforms. It's not a real texture, but instead an opaque wrapper for an ``MTLRasterizationRateMap`` object.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_XRInterface_property_ar_is_anchor_detection_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ar_is_anchor_detection_enabled** = ``false`` :ref:`🔗<class_XRInterface_property_ar_is_anchor_detection_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_detection_is_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_anchor_detection_is_enabled**\ (\ )

Sur une interface AR, ``true`` si la détection d’ancrage est activée.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_environment_blend_mode:

.. rst-class:: classref-property

:ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **environment_blend_mode** = ``0`` :ref:`🔗<class_XRInterface_property_environment_blend_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ )
- :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>` **get_environment_blend_mode**\ (\ )

Specify how XR should blend in the environment. This is specific to certain AR and passthrough devices where camera images are blended in by the XR compositor.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_interface_is_primary:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interface_is_primary** = ``false`` :ref:`🔗<class_XRInterface_property_interface_is_primary>`

.. rst-class:: classref-property-setget

- |void| **set_primary**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_primary**\ (\ )

``true`` (vrai) si c'est l'interface principale.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_property_xr_play_area_mode:

.. rst-class:: classref-property

:ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **xr_play_area_mode** = ``0`` :ref:`🔗<class_XRInterface_property_xr_play_area_mode>`

.. rst-class:: classref-property-setget

- :ref:`bool<class_bool>` **set_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ )
- :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>` **get_play_area_mode**\ (\ )

Le mode de zone de jeu pour cette interface.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_XRInterface_method_get_camera_feed_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_camera_feed_id**\ (\ ) :ref:`🔗<class_XRInterface_method_get_camera_feed_id>`

S’il s’agit d’une interface AR qui nécessite l’affichage d’un flux de caméra en arrière-plan, cette méthode renvoie l’ID de flux dans le :ref:`CameraServer<class_CameraServer>` pour cette interface.

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

Renvoie une combinaison d’indicateurs :ref:`Capabilities<enum_XRInterface_Capabilities>` fournissant des informations sur les capacités de cette interface.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_name>`

Renvoie le nom de cette interface (\ ``"OpenXR"``, ``"OpenVR"``, ``"OpenHMD"``, ``"ARKit"``, etc.).

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_play_area:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_play_area**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_play_area>`

Returns an array of vectors that represent the physical play area mapped to the virtual space around the :ref:`XROrigin3D<class_XROrigin3D>` point. The points form a convex polygon that can be used to react to or visualize the play area. This returns an empty array if this feature is not supported or if the information is not yet available.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_projection_for_view:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_projection_for_view**\ (\ view\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, near\: :ref:`float<class_float>`, far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_get_projection_for_view>`

**Obsolète :** Use get_camera_projections

Renvoie la matrice de projection pour un(e) vue/œil.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_render_target_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_render_target_size**\ (\ ) :ref:`🔗<class_XRInterface_method_get_render_target_size>`

Renvoie la résolution à laquelle nous devrions rendre nos résultats intermédiaires avant que des choses comme la distorsion des lentilles ne soient appliquées par la plate-forme VR.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_supported_environment_blend_modes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_supported_environment_blend_modes**\ (\ ) :ref:`🔗<class_XRInterface_method_get_supported_environment_blend_modes>`

Returns the an array of supported environment blend modes, see :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_system_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_system_info**\ (\ ) :ref:`🔗<class_XRInterface_method_get_system_info>`

Renvoie un :ref:`Dictionary<class_Dictionary>` avec des informations supplémentaires sur le système. Les interfaces sont censées renvoyer ``XRRuntimeName`` et ``XRRuntimeVersion`` fournissant des informations sur le runtime XR utilisé. Des entrées supplémentaires peuvent être fournies spécifiquement pour une interface.

\ **Note :**\ Cette information peut n'être disponible qu'après que :ref:`initialize()<class_XRInterface_method_initialize>` ait été appelé avec succès.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_tracking_status:

.. rst-class:: classref-method

:ref:`TrackingStatus<enum_XRInterface_TrackingStatus>` **get_tracking_status**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_get_tracking_status>`

Si supporté, renvoie l'état de notre suivi. Cela vous permettra de fournir un retour à l'utilisateur s'il y a des problèmes avec le suivi de position.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_transform_for_view:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_transform_for_view**\ (\ view\: :ref:`int<class_int>`, cam_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRInterface_method_get_transform_for_view>`

**Obsolète :** Use get_camera_offsets

Returns the transform for a view/eye.

\ ``view`` is the view/eye index.

\ ``cam_transform`` is the transform that maps device coordinates to scene coordinates, typically the :ref:`Node3D.global_transform<class_Node3D_property_global_transform>` of the current XROrigin3D.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_get_view_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_view_count**\ (\ ) :ref:`🔗<class_XRInterface_method_get_view_count>`

Renvoie le nombre de vues qui doivent être rendues pour cet appareil. 1 en Monoscopique, 2 en Stéréoscopique.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_initialize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **initialize**\ (\ ) :ref:`🔗<class_XRInterface_method_initialize>`

Appelez ceci pour initialiser cette interface. La première interface qui est initialisée est identifiée comme l'interface primaire et elle sera utilisée pour faire le rendu de la sortie.

Après l'initialisation de l'interface que vous souhaitez utiliser, vous devez activer le mode AR/VR d'un viewport et le rendu devrait commencer.

\ **Note :** Vous devez activer le mode XR sur le viewport principal pour tout appareil qui utilise la sortie principale de Godot, comme pour la VR mobile.

Si vous faites cela pour une plate-forme qui gère sa propre sortie (comme OpenVR), Godot affichera juste un des yeux sans distorsion à l'écran. Alternativement, vous pouvez ajouter un nœud viewport séparé à votre scène et activer AR/VR sur ce viewport. Il sera utilisée pour la sortie du HMD, vous permettant d'utiliser la fenêtre principale pour tout autre utilisation, comme l'utilisation d'une caméra séparée comme pour un spectateur ou faire un rendu complètement différent.

Bien que non utilisé pour l'instant, vous pouvez activer des interfaces supplémentaires. Vous pouvez le faire si vous voulez suivre les contrôleurs d'autres plateformes. Cependant, actuellement, une seule interface peut rendre vers un HMD.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_initialized:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_initialized**\ (\ ) |const| :ref:`🔗<class_XRInterface_method_is_initialized>`

Renvoie ``true`` si cette interface a été initialisée.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_enabled**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_enabled>`

**Obsolète :** Check if :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` is :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

Renvoie ``true`` si le passthrough est activé.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_is_passthrough_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_passthrough_supported**\ (\ ) :ref:`🔗<class_XRInterface_method_is_passthrough_supported>`

**Obsolète :** Check that :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>` is supported using :ref:`get_supported_environment_blend_modes()<class_XRInterface_method_get_supported_environment_blend_modes>`, instead.

Renvoie ``true`` si cette interface supporte le passthrough.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_set_environment_blend_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_environment_blend_mode**\ (\ mode\: :ref:`EnvironmentBlendMode<enum_XRInterface_EnvironmentBlendMode>`\ ) :ref:`🔗<class_XRInterface_method_set_environment_blend_mode>`

Sets the active environment blend mode.

\ ``mode`` is the environment blend mode starting with the next frame.

\ **Note:** Not all runtimes support all environment blend modes, so it is important to check this at startup. For example:

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

Sets the active play area mode, will return ``false`` if the mode can't be used with this interface.

\ **Note:** Changing this after the interface has already been initialized can be jarring for the player, so it's recommended to recenter on the HMD with :ref:`XRServer.center_on_hmd()<class_XRServer_method_center_on_hmd>` (if switching to :ref:`XR_PLAY_AREA_STAGE<class_XRInterface_constant_XR_PLAY_AREA_STAGE>`) or make the switch during a scene change.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_start_passthrough:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **start_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_start_passthrough>`

**Obsolète :** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_ALPHA_BLEND<class_XRInterface_constant_XR_ENV_BLEND_MODE_ALPHA_BLEND>`, instead.

Starts passthrough, will return ``false`` if passthrough couldn't be started.

\ **Note:** The viewport used for XR must have a transparent background, otherwise passthrough may not properly render.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_stop_passthrough:

.. rst-class:: classref-method

|void| **stop_passthrough**\ (\ ) :ref:`🔗<class_XRInterface_method_stop_passthrough>`

**Obsolète :** Set the :ref:`environment_blend_mode<class_XRInterface_property_environment_blend_mode>` to :ref:`XR_ENV_BLEND_MODE_OPAQUE<class_XRInterface_constant_XR_ENV_BLEND_MODE_OPAQUE>`, instead.

Arrête de passer à travers.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_supports_play_area_mode:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **supports_play_area_mode**\ (\ mode\: :ref:`PlayAreaMode<enum_XRInterface_PlayAreaMode>`\ ) :ref:`🔗<class_XRInterface_method_supports_play_area_mode>`

Call this to find out if a given play area mode is supported by this interface.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, tracker_name\: :ref:`StringName<class_StringName>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRInterface_method_trigger_haptic_pulse>`

Triggers a haptic pulse on a device associated with this interface.

\ ``action_name`` is the name of the action for this pulse.

\ ``tracker_name`` is optional and can be used to direct the pulse to a specific device provided that device is bound to this haptic.

\ ``frequency`` is the frequency of the pulse, set to ``0.0`` to have the system use a default frequency.

\ ``amplitude`` is the amplitude of the pulse between ``0.0`` and ``1.0``.

\ ``duration_sec`` is the duration of the pulse in seconds.

\ ``delay_sec`` is a delay in seconds before the pulse is given.

.. rst-class:: classref-item-separator

----

.. _class_XRInterface_method_uninitialize:

.. rst-class:: classref-method

|void| **uninitialize**\ (\ ) :ref:`🔗<class_XRInterface_method_uninitialize>`

Désactive l'interface.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
