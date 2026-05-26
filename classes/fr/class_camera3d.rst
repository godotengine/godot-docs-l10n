:github_url: hide

.. _class_Camera3D:

Camera3D
========

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`XRCamera3D<class_XRCamera3D>`

Un nœud de caméra ; affichage d'un point de vue.

.. rst-class:: classref-introduction-group

Description
-----------

**Camera3D** est un nœud spécial qui affiche ce qui est visible depuis son emplacement actuel. Les caméras s'enregistrent dans le nœud :ref:`Viewport<class_Viewport>` le plus proche (en remontant l'arborescence). Une seule caméra peut être active par viewport. Si aucun viewport n'est disponible dans l'arborescence, la caméra s'enregistrera dans la viewport racine. En d'autres termes, une caméra permet l'affichage en 3D dans un :ref:`Viewport<class_Viewport>` et, sans caméra, une scène enregistrée dans ce :ref:`Viewport<class_Viewport>` (où les viewports plus hauts) ne peut être affichée.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`       | :ref:`attributes<class_Camera3D_property_attributes>`             |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Compositor<class_Compositor>`                   | :ref:`compositor<class_Camera3D_property_compositor>`             |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                 | :ref:`cull_mask<class_Camera3D_property_cull_mask>`               | ``1048575``       |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                               | :ref:`current<class_Camera3D_property_current>`                   | ``false``         |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` | :ref:`doppler_tracking<class_Camera3D_property_doppler_tracking>` | ``0``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Environment<class_Environment>`                 | :ref:`environment<class_Camera3D_property_environment>`           |                   |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`far<class_Camera3D_property_far>`                           | ``4000.0``        |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`fov<class_Camera3D_property_fov>`                           | ``75.0``          |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                         | :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`     | ``Vector2(0, 0)`` |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`h_offset<class_Camera3D_property_h_offset>`                 | ``0.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`KeepAspect<enum_Camera3D_KeepAspect>`           | :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`           | ``1``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`near<class_Camera3D_property_near>`                         | ``0.05``          |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`ProjectionType<enum_Camera3D_ProjectionType>`   | :ref:`projection<class_Camera3D_property_projection>`             | ``0``             |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`size<class_Camera3D_property_size>`                         | ``1.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                             | :ref:`v_offset<class_Camera3D_property_v_offset>`                 | ``0.0``           |
   +-------------------------------------------------------+-------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`clear_current<class_Camera3D_method_clear_current>`\ (\ enable_next\: :ref:`bool<class_bool>` = true\ )                                                                                                |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>`                    | :ref:`get_camera_projection<class_Camera3D_method_get_camera_projection>`\ (\ ) |const|                                                                                                                      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                  | :ref:`get_camera_rid<class_Camera3D_method_get_camera_rid>`\ (\ ) |const|                                                                                                                                    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                  | :ref:`get_camera_transform<class_Camera3D_method_get_camera_transform>`\ (\ ) |const|                                                                                                                        |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`get_cull_mask_value<class_Camera3D_method_get_cull_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`get_frustum<class_Camera3D_method_get_frustum>`\ (\ ) |const|                                                                                                                                          |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                  | :ref:`get_pyramid_shape_rid<class_Camera3D_method_get_pyramid_shape_rid>`\ (\ )                                                                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_position_behind<class_Camera3D_method_is_position_behind>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                               |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_position_in_frustum<class_Camera3D_method_is_position_in_frustum>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                       |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`make_current<class_Camera3D_method_make_current>`\ (\ )                                                                                                                                                |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_local_ray_normal<class_Camera3D_method_project_local_ray_normal>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_position<class_Camera3D_method_project_position>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`, z_depth\: :ref:`float<class_float>`\ ) |const|                                             |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_ray_normal<class_Camera3D_method_project_ray_normal>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`project_ray_origin<class_Camera3D_method_project_ray_origin>`\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                              |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_cull_mask_value<class_Camera3D_method_set_cull_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                           |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_frustum<class_Camera3D_method_set_frustum>`\ (\ size\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_orthogonal<class_Camera3D_method_set_orthogonal>`\ (\ size\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ )                                   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_perspective<class_Camera3D_method_set_perspective>`\ (\ fov\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ )                                  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`unproject_position<class_Camera3D_method_unproject_position>`\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                               |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Camera3D_ProjectionType:

.. rst-class:: classref-enumeration

enum **ProjectionType**: :ref:`🔗<enum_Camera3D_ProjectionType>`

.. _class_Camera3D_constant_PROJECTION_PERSPECTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_PERSPECTIVE** = ``0``

Projection en perspective. Les objets sur l'écran deviennent plus petits lorsqu'ils sont éloignés.

.. _class_Camera3D_constant_PROJECTION_ORTHOGONAL:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_ORTHOGONAL** = ``1``

La projection orthogonale, également connue sous le nom de projection orthographique. Les objets gardent la même taille à l'écran, indépendamment de leur distance.

.. _class_Camera3D_constant_PROJECTION_FRUSTUM:

.. rst-class:: classref-enumeration-constant

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **PROJECTION_FRUSTUM** = ``2``

Projection du frustum. Ce mode permet d'ajuster :ref:`frustum_offset<class_Camera3D_property_frustum_offset>` pour créer des effets « frustrum penché ».

.. rst-class:: classref-item-separator

----

.. _enum_Camera3D_KeepAspect:

.. rst-class:: classref-enumeration

enum **KeepAspect**: :ref:`🔗<enum_Camera3D_KeepAspect>`

.. _class_Camera3D_constant_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **KEEP_WIDTH** = ``0``

Préserve le rapport d'aspect horizontal, aussi connu comme vertical scaling. C'est généralement la meilleure option pour les projets qui utilisent le mode portrait, étant donné que les rapports plus hauts bénéficient plus des champs de vision plus larges.

.. _class_Camera3D_constant_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **KEEP_HEIGHT** = ``1``

Préserve le rapport d'aspect vertical ; également connu sous le nom d'échelle Hor+. C'est généralement la meilleure option pour les projets en mode paysage, car les ratios d'aspect plus larges bénéficieront automatiquement d'un champ de vision horizontal plus large.

.. rst-class:: classref-item-separator

----

.. _enum_Camera3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_Camera3D_DopplerTracking>`

.. _class_Camera3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

Désactive la simulation de `l'effet Doppler <https://fr.wikipedia.org/wiki/Effet_Doppler>`__ (par défaut).

.. _class_Camera3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

Simule `l'effet Doppler <https://fr.wikipedia.org/wiki/Effet_Doppler>`__ en suivant la position des objets qui ont changé lors de ``_process``. Les changements dans la vitesse relative de cette caméra par rapport à ces objets affectent la façon dont l'audio est perçu (changement de la hauteur :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>` de l'audio).

.. _class_Camera3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

Simule `l'effet Doppler <https://fr.wikipedia.org/wiki/Effet_Doppler>`__ en suivant la position des objets qui ont changé lors de ``_physics_process``. Les changements dans la vitesse relative de cette caméra par rapport à ces objets affectent la façon dont l'audio est perçu (changement de la hauteur :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>` de l'audio).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Camera3D_property_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **attributes** :ref:`🔗<class_Camera3D_property_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_attributes**\ (\ )

Le :ref:`CameraAttributes<class_CameraAttributes>` à utiliser pour cette caméra.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_Camera3D_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

Le :ref:`Compositor<class_Compositor>` à utiliser pour cette caméra.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Camera3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Le culling mask qui décrit quelles couches :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` sont rendues par cette caméra. Par défaut, les 20 couches visibles par l'utilisateur sont rendues.

\ **Note :** Comme le :ref:`cull_mask<class_Camera3D_property_cull_mask>` permet de stocker 32 couches au total, il y a 12 couches supplémentaires qui ne sont utilisées que par le moteur et ne sont pas exposées dans l'éditeur. Définir :ref:`cull_mask<class_Camera3D_property_cull_mask>` en utilisant un script vous permet d'utiliser ces couches réservées, ce qui peut être utile pour les plugins d'éditeur.

Pour définir :ref:`cull_mask<class_Camera3D_property_cull_mask>` plus facilement en utilisant un script, utilisez :ref:`get_cull_mask_value()<class_Camera3D_method_get_cull_mask_value>` et :ref:`set_cull_mask_value()<class_Camera3D_method_set_cull_mask_value>`.

\ **Note :** :ref:`VoxelGI<class_VoxelGI>`, SDFGI et :ref:`LightmapGI<class_LightmapGI>` prendront toujours en compte toutes les couches pour déterminer ce qui contribue à l'éclairage global. Si c'est un problème, définissez :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` à :ref:`GeometryInstance3D.GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>` pour les maillages et :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` à :ref:`Light3D.BAKE_DISABLED<class_Light3D_constant_BAKE_DISABLED>` pour les lumières pour les exclure de l'illumination globale.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_current:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **current** = ``false`` :ref:`🔗<class_Camera3D_property_current>`

.. rst-class:: classref-property-setget

- |void| **set_current**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_current**\ (\ )

Si ``true``, le :ref:`Viewport<class_Viewport>` ancêtre utilise actuellement cette caméra.

Si plusieurs caméras sont dans la scène, une sera toujours rendu actuelle. Par exemple, si deux nœuds **Camera3D** sont présents dans la scène et qu'une seule est actuelle, définir le :ref:`current<class_Camera3D_property_current>` d'une caméra à ``false`` fera que l'autre caméra soit rendue actuelle.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_Camera3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_Camera3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

Si non défini à :ref:`DOPPLER_TRACKING_DISABLED<class_Camera3D_constant_DOPPLER_TRACKING_DISABLED>`, cette caméra simulera l'effet `Doppler <https://fr.wikipedia.org/wiki/Effet_Doppler>`__ pour les objets modifiés dans des méthodes ``_process`` particulières.

\ **Note :** L'effet Doppler ne sera entendu sur des :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`\ s que si leur :ref:`AudioStreamPlayer3D.doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` n'est pas défini sur :ref:`AudioStreamPlayer3D.DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_Camera3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

L':ref:`Environment<class_Environment>` à utiliser pour cette caméra.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_far:

.. rst-class:: classref-property

:ref:`float<class_float>` **far** = ``4000.0`` :ref:`🔗<class_Camera3D_property_far>`

.. rst-class:: classref-property-setget

- |void| **set_far**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_far**\ (\ )

La distance jusqu'au plan de coupe lointain pour cette caméra par rapport à son axe Z local. Des valeurs plus élevées permettent à la caméra de voir plus loin, et diminuer :ref:`far<class_Camera3D_property_far>` peut améliorer le performances si cela résulte en des objets partiellement ou complètement coupés.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_fov:

.. rst-class:: classref-property

:ref:`float<class_float>` **fov** = ``75.0`` :ref:`🔗<class_Camera3D_property_fov>`

.. rst-class:: classref-property-setget

- |void| **set_fov**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fov**\ (\ )

L'angle du champ de vision de la caméra (en degrés). Seulement disponible en mode perspective. Comme :ref:`keep_aspect<class_Camera3D_property_keep_aspect>` verrouille un axe, :ref:`fov<class_Camera3D_property_fov>` définit l'angle du champ de vision de l'autre axe.

Pour référence, l'angle de champ de vision par défaut (``75.0``) est équivalent à un champ de vision horizontal de :

- ~91.31 degrés pour une fenêtre avec un ratio de 4:3

- ~101.67 degrés pour une fenêtre avec un ratio de 6:10

- ~107.51 degrés pour une fenêtre avec un ratio de 16:9

- ~121.63 degrés pour une fenêtre avec un ratio de 21:9

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_frustum_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **frustum_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Camera3D_property_frustum_offset>`

.. rst-class:: classref-property-setget

- |void| **set_frustum_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_frustum_offset**\ (\ )

Le décalage du frustum de la caméra. Cela peut être modifié depuis la valeur par défaut pour créer des effets de « frustrum penché » tel que le `Y-shearing <https://zdoom.org/wiki/Y-shearing>`__.

\ **Note :** Seulement effectif si :ref:`projection<class_Camera3D_property_projection>` vaut :ref:`PROJECTION_FRUSTUM<class_Camera3D_constant_PROJECTION_FRUSTUM>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_Camera3D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

Le décalage horizontal (X) de la fenêtre de la caméra.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_keep_aspect:

.. rst-class:: classref-property

:ref:`KeepAspect<enum_Camera3D_KeepAspect>` **keep_aspect** = ``1`` :ref:`🔗<class_Camera3D_property_keep_aspect>`

.. rst-class:: classref-property-setget

- |void| **set_keep_aspect_mode**\ (\ value\: :ref:`KeepAspect<enum_Camera3D_KeepAspect>`\ )
- :ref:`KeepAspect<enum_Camera3D_KeepAspect>` **get_keep_aspect_mode**\ (\ )

L'axe à verrouiller pendant les réglages :ref:`fov<class_Camera3D_property_fov>` ou :ref:`size<class_Camera3D_property_size>`. Peut être soit :ref:`KEEP_WIDTH<class_Camera3D_constant_KEEP_WIDTH>` ou :ref:`KEEP_HEIGHT<class_Camera3D_constant_KEEP_HEIGHT>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_near:

.. rst-class:: classref-property

:ref:`float<class_float>` **near** = ``0.05`` :ref:`🔗<class_Camera3D_property_near>`

.. rst-class:: classref-property-setget

- |void| **set_near**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_near**\ (\ )

La distance jusqu'au plan de coupe proche pour cette caméra par rapport à son axe Z local. Des valeurs plus faibles permettent à la caméra de voir des objets plus proche de son origine, au coût d'une précision plus faible sur sa plage *entière*. Des valeurs plus faibles que le défaut peut mener à une augmentation du Z-fighting.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_projection:

.. rst-class:: classref-property

:ref:`ProjectionType<enum_Camera3D_ProjectionType>` **projection** = ``0`` :ref:`🔗<class_Camera3D_property_projection>`

.. rst-class:: classref-property-setget

- |void| **set_projection**\ (\ value\: :ref:`ProjectionType<enum_Camera3D_ProjectionType>`\ )
- :ref:`ProjectionType<enum_Camera3D_ProjectionType>` **get_projection**\ (\ )

Le mode de projection de la caméra. Dans le mode :ref:`PROJECTION_PERSPECTIVE<class_Camera3D_constant_PROJECTION_PERSPECTIVE>`, la distance des objets dans l'espace local de la caméra détermine la taille apparante de ces objets.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **size** = ``1.0`` :ref:`🔗<class_Camera3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_size**\ (\ )

La taille de la caméra en mètres mesuré comme le diamètre de la largeur ou de la hauteur, selon :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`. Seulement applicable en mode orthogonal et frustum.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_Camera3D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

Le décalage vertical (Y) de la fenêtre de la caméra.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Camera3D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ enable_next\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Camera3D_method_clear_current>`

Si c'est la caméra actuelle, la retire d'être l'actuelle. Si ``enable_next`` vaut ``true``, demande de rendre la prochaine caméra l'actuelle, s'il y en a une.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_projection:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **get_camera_projection**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_projection>`

Renvoie la matrice de projection que cette caméra utilise pour rendre dans son viewport associé. La caméra doit faire partie de l’arborescence de scène pour fonctionner.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_camera_rid**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_rid>`

Renvoie le RID de la caméra depuis le :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_camera_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_camera_transform**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_camera_transform>`

Renvoie la transformation de la caméra plus les décalages verticaux (:ref:`v_offset<class_Camera3D_property_v_offset>`) et horizontaux (:ref:`h_offset<class_Camera3D_property_h_offset>`) et tout autre ajustement apporté à la position et à l'orientation de la caméra par des caméras sous-classées telles que :ref:`XRCamera3D<class_XRCamera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_cull_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_cull_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Camera3D_method_get_cull_mask_value>`

Renvoie si la couche spécifiée du :ref:`cull_mask<class_Camera3D_property_cull_mask>` est activée, selon un ``layer_number`` entre 1 et 20.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_frustum:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **get_frustum**\ (\ ) |const| :ref:`🔗<class_Camera3D_method_get_frustum>`

Renvoie les plans du frustum de la caméra en unités de l'espace global en tant que tableau de :ref:`Plane<class_Plane>`\ s dans l'ordre suivant : près (near plane), lointain (far plane), gauche, haut, droite, bas. Ne pas être confondu avec :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_get_pyramid_shape_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_pyramid_shape_rid**\ (\ ) :ref:`🔗<class_Camera3D_method_get_pyramid_shape_rid>`

Renvoie le RID d'une forme pyramidale englobant le frustum de vue de la caméra, ignorant le plan proche (near plane) de la caméra. La pointe de la pyramide représente la position de la caméra.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_is_position_behind:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_behind**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_is_position_behind>`

Renvoie ``true`` si la position donnée est derrière la caméra (la partie bleue du diagramme lié). ` Voir ce diagramme <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/camera3d_position_frustum.png>`__ pour un aperçu des méthodes de requête de position.

\ **Note :** Une position qui renvoie ``false`` peut quand même être hors du champ de vision de la caméra.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_is_position_in_frustum:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_position_in_frustum**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_is_position_in_frustum>`

Renvoie ``true`` si la position donnée est à l'intérieur du frustum de la caméra (la partie verte du diagramme lié). ` Voir ce diagramme <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/camera3d_position_frustum.png>`__ pour un aperçu des méthodes de requête de position.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_Camera3D_method_make_current>`

Fait que cette caméra devient l'actuelle pour le :ref:`Viewport<class_Viewport>` (voir la description de la classe). Si le nœud de la caméra est en dehors de l'arborescence de la scène, il tentera de devenir l'actuel dès qu'il sera ajouté.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_local_ray_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_local_ray_normal**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_local_ray_normal>`

Renvoie un vecteur normal à partir de l'emplacement du point d'écran, dirigé le long de la caméra. Les caméras orthogonales sont normalisées. Les caméras avec perspective prennent en compte la perspective, la largeur/hauteur d'écran, etc...

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_position**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`, z_depth\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_position>`

Renvoie le point 3D dans l'espace global qui est associé aux coordonnées 2D données dans le rectangle du :ref:`Viewport<class_Viewport>` et qui est sur un plan qui est à une distance ``z_depth`` donnée de la caméra dans la scène.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_ray_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_ray_normal**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_ray_normal>`

Renvoie un vecteur normal dans le repère global, qui est le résultat de la projection d'un point sur le rectangle :ref:`Viewport<class_Viewport>` par la projection inverse de la caméra. Ceci est utile pour lancer des rayons sous la forme (origine, normale) pour l'intersection ou la sélection d'objets.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_project_ray_origin:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project_ray_origin**\ (\ screen_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Camera3D_method_project_ray_origin>`

Renvoie une position 3D dans le repère global, qui est le résultat de la projection d'un point sur le rectangle :ref:`Viewport<class_Viewport>` par la projection inverse de la caméra. Ceci est utile pour lancer des rayons sous la forme (origine, normale) pour l'intersection ou la sélection d'objets.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_cull_mask_value:

.. rst-class:: classref-method

|void| **set_cull_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Camera3D_method_set_cull_mask_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le masque de cull :ref:`cull_mask<class_Camera3D_property_cull_mask>`, selon un ``layer_number`` entre 1 et 20.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_frustum:

.. rst-class:: classref-method

|void| **set_frustum**\ (\ size\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_frustum>`

Sets the camera projection to frustum mode (see :ref:`PROJECTION_FRUSTUM<class_Camera3D_constant_PROJECTION_FRUSTUM>`), by specifying a ``size``, an ``offset``, and the ``z_near`` and ``z_far`` clip planes in world space units. The ``size`` parameter represents the size of the near plane, either its width or height depending on the value of :ref:`keep_aspect<class_Camera3D_property_keep_aspect>`. See also :ref:`frustum_offset<class_Camera3D_property_frustum_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_orthogonal:

.. rst-class:: classref-method

|void| **set_orthogonal**\ (\ size\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_orthogonal>`

Définit la projection de la caméra en mode orthogonal (voir :ref:`PROJECTION_ORTHOGONAL<class_Camera3D_constant_PROJECTION_ORTHOGONAL>`), en spécifiant une taille ``size``, et les plans de coupe proches et lointains ``z_near`` et ``z_far`` en unités de l'espace global.

Comme conseil, les jeux 3D qui ont un aspect 2D utilisent souvent cette projection, avec ``size`` spécifié en pixels.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_set_perspective:

.. rst-class:: classref-method

|void| **set_perspective**\ (\ fov\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera3D_method_set_perspective>`

Définit la projection de la caméra en mode perspective (voir :ref:`PROJECTION_PERSPECTIVE<class_Camera3D_constant_PROJECTION_PERSPECTIVE>`), en spécifiant un angle de champ de vision ``fov`` en degrés, et les plans de coupe proches et lointains ``z_near`` et ``z_far`` en unités de l'espace global.

.. rst-class:: classref-item-separator

----

.. _class_Camera3D_method_unproject_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **unproject_position**\ (\ world_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Camera3D_method_unproject_position>`

Renvoie les coordonnées 2D dans le rectangle du :ref:`Viewport<class_Viewport>` qui correspondent à un point 3D donné dans le repère global.

\ **Note :** Lorsque vous utilisez cette méthode pour positionner des éléments graphiques sur un :ref:`Viewport<class_Viewport>` en 3D, pensez à utiliser :ref:`is_position_behind()<class_Camera3D_method_is_position_behind>` pour les empêcher d'apparaître tant que le point 3D se trouve derrière la caméra :

::

    # Cet extrait de code fait partie d'un script qui hérite de Node3D.
    # `control` fait référence à un nœud qui hérite de Control.
    control.visible = not get_viewport().get_camera_3d().is_position_behind(global_transform.origin)
    control.position = get_viewport().get_camera_3d().unproject_position(global_transform.origin)

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
