:github_url: hide

.. meta::
	:keywords: spatial

.. _class_Node3D:

Node3D
======

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AudioListener3D<class_AudioListener3D>`, :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, :ref:`BoneAttachment3D<class_BoneAttachment3D>`, :ref:`Camera3D<class_Camera3D>`, :ref:`CollisionObject3D<class_CollisionObject3D>`, :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`, :ref:`CollisionShape3D<class_CollisionShape3D>`, :ref:`GridMap<class_GridMap>`, :ref:`ImporterMeshInstance3D<class_ImporterMeshInstance3D>`, :ref:`Joint3D<class_Joint3D>`, :ref:`LightmapProbe<class_LightmapProbe>`, :ref:`Marker3D<class_Marker3D>`, :ref:`NavigationLink3D<class_NavigationLink3D>`, :ref:`NavigationObstacle3D<class_NavigationObstacle3D>`, :ref:`NavigationRegion3D<class_NavigationRegion3D>`, :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>`, :ref:`OpenXRHand<class_OpenXRHand>`, :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`, :ref:`OpenXRRenderModelManager<class_OpenXRRenderModelManager>`, :ref:`Path3D<class_Path3D>`, :ref:`PathFollow3D<class_PathFollow3D>`, :ref:`RayCast3D<class_RayCast3D>`, :ref:`RemoteTransform3D<class_RemoteTransform3D>`, :ref:`ShapeCast3D<class_ShapeCast3D>`, :ref:`Skeleton3D<class_Skeleton3D>`, :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, :ref:`SpringArm3D<class_SpringArm3D>`, :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>`, :ref:`VehicleWheel3D<class_VehicleWheel3D>`, :ref:`VisualInstance3D<class_VisualInstance3D>`, :ref:`XRFaceModifier3D<class_XRFaceModifier3D>`, :ref:`XRNode3D<class_XRNode3D>`, :ref:`XROrigin3D<class_XROrigin3D>`

Objet de base dans l'espace 3D, hérité par tous les nœuds 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Le nœud **Node3D** est la représentation de base d'un nœud dans l'espace 3D. Tous les autres nœuds 3D héritent de cette classe.

Les opérations affines (translation, rotation, échelle) sont calculées dans le système de coordonnées par rapport au parent, à moins que le :ref:`top_level<class_Node3D_property_top_level>` du **Node3D** vaille ``true``. Dans ce système de coordonnées, les opérations affines correspondent à des opérations affines directes sur la transformation :ref:`transform<class_Node3D_property_transform>` du **Node3D**. Le terme d'*espace parent* désigne ce système de coordonnées. Le système de coordonnées joint au **Node3D** lui-même est appelé système de coordonnées objet-local, ou *espace local*.

\ **Note :** Sauf indication contraire, toutes les méthodes qui ont besoin de paramètres d'angle doivent recevoir des angles en *radians*. Pour convertir des degrés en radians, utilisez :ref:`@GlobalScope.deg_to_rad()<class_@GlobalScope_method_deg_to_rad>`.

\ **Note :** Dans Godot 3 et avant, **Node3D** était nommé *Spatial*.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la 3D <../tutorials/3d/introduction_to_3d>`

- `Toutes les démos 3D <https://github.com/godotengine/godot-demo-projects/tree/master/3d>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Basis<class_Basis>`                             | :ref:`basis<class_Node3D_property_basis>`                                     |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Basis<class_Basis>`                             | :ref:`global_basis<class_Node3D_property_global_basis>`                       |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_position<class_Node3D_property_global_position>`                 |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_rotation<class_Node3D_property_global_rotation>`                 |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`global_rotation_degrees<class_Node3D_property_global_rotation_degrees>` |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                 | :ref:`global_transform<class_Node3D_property_global_transform>`               |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`position<class_Node3D_property_position>`                               | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                   | :ref:`quaternion<class_Node3D_property_quaternion>`                           |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`rotation<class_Node3D_property_rotation>`                               | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`rotation_degrees<class_Node3D_property_rotation_degrees>`               |                                                     |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`RotationEditMode<enum_Node3D_RotationEditMode>` | :ref:`rotation_edit_mode<class_Node3D_property_rotation_edit_mode>`           | ``0``                                               |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`       | :ref:`rotation_order<class_Node3D_property_rotation_order>`                   | ``2``                                               |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                         | :ref:`scale<class_Node3D_property_scale>`                                     | ``Vector3(1, 1, 1)``                                |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`top_level<class_Node3D_property_top_level>`                             | ``false``                                           |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                 | :ref:`transform<class_Node3D_property_transform>`                             | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                       | :ref:`visibility_parent<class_Node3D_property_visibility_parent>`             | ``NodePath("")``                                    |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`visible<class_Node3D_property_visible>`                                 | ``true``                                            |
   +-------------------------------------------------------+-------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`add_gizmo<class_Node3D_method_add_gizmo>`\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear_gizmos<class_Node3D_method_clear_gizmos>`\ (\ )                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`clear_subgizmo_selection<class_Node3D_method_clear_subgizmo_selection>`\ (\ )                                                                                                                                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`force_update_transform<class_Node3D_method_force_update_transform>`\ (\ )                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node3DGizmo<class_Node3DGizmo>`\] | :ref:`get_gizmos<class_Node3D_method_get_gizmos>`\ (\ ) |const|                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                              | :ref:`get_global_transform_interpolated<class_Node3D_method_get_global_transform_interpolated>`\ (\ )                                                                                                                                                                     |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node3D<class_Node3D>`                                        | :ref:`get_parent_node_3d<class_Node3D_method_get_parent_node_3d>`\ (\ ) |const|                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`World3D<class_World3D>`                                      | :ref:`get_world_3d<class_Node3D_method_get_world_3d>`\ (\ ) |const|                                                                                                                                                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_rotate<class_Node3D_method_global_rotate>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_scale<class_Node3D_method_global_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                        |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`global_translate<class_Node3D_method_global_translate>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`hide<class_Node3D_method_hide>`\ (\ )                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_local_transform_notification_enabled<class_Node3D_method_is_local_transform_notification_enabled>`\ (\ ) |const|                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_scale_disabled<class_Node3D_method_is_scale_disabled>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_transform_notification_enabled<class_Node3D_method_is_transform_notification_enabled>`\ (\ ) |const|                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                            | :ref:`is_visible_in_tree<class_Node3D_method_is_visible_in_tree>`\ (\ ) |const|                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`look_at<class_Node3D_method_look_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ )                                                                       |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`look_at_from_position<class_Node3D_method_look_at_from_position>`\ (\ position\: :ref:`Vector3<class_Vector3>`, target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`orthonormalize<class_Node3D_method_orthonormalize>`\ (\ )                                                                                                                                                                                                           |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate<class_Node3D_method_rotate>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_object_local<class_Node3D_method_rotate_object_local>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                                                                                        |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_x<class_Node3D_method_rotate_x>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_y<class_Node3D_method_rotate_y>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`rotate_z<class_Node3D_method_rotate_z>`\ (\ angle\: :ref:`float<class_float>`\ )                                                                                                                                                                                    |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`scale_object_local<class_Node3D_method_scale_object_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                            |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_disable_scale<class_Node3D_method_set_disable_scale>`\ (\ disable\: :ref:`bool<class_bool>`\ )                                                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_identity<class_Node3D_method_set_identity>`\ (\ )                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_ignore_transform_notification<class_Node3D_method_set_ignore_transform_notification>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                                                                                                  |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_notify_local_transform<class_Node3D_method_set_notify_local_transform>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_notify_transform<class_Node3D_method_set_notify_transform>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`set_subgizmo_selection<class_Node3D_method_set_subgizmo_selection>`\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`, id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`show<class_Node3D_method_show>`\ (\ )                                                                                                                                                                                                                               |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                      | :ref:`to_global<class_Node3D_method_to_global>`\ (\ local_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                      | :ref:`to_local<class_Node3D_method_to_local>`\ (\ global_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`translate<class_Node3D_method_translate>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`translate_object_local<class_Node3D_method_translate_object_local>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                   |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                             | :ref:`update_gizmos<class_Node3D_method_update_gizmos>`\ (\ )                                                                                                                                                                                                             |
   +--------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Node3D_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_Node3D_signal_visibility_changed>`

Émis lorsque la visibilité de ce nœud change (voir :ref:`visible<class_Node3D_property_visible>` et :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`).

Ce signal est émis *après* la notification :ref:`NOTIFICATION_VISIBILITY_CHANGED<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>` correspondante.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Node3D_RotationEditMode:

.. rst-class:: classref-enumeration

enum **RotationEditMode**: :ref:`🔗<enum_Node3D_RotationEditMode>`

.. _class_Node3D_constant_ROTATION_EDIT_MODE_EULER:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_EULER** = ``0``

The rotation is edited using a :ref:`Vector3<class_Vector3>` in `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__. In Godot, Euler angles always use intrinsic order, meaning that rotation happens around the local axes of the object.

.. _class_Node3D_constant_ROTATION_EDIT_MODE_QUATERNION:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_QUATERNION** = ``1``

The rotation is edited using a :ref:`Quaternion<class_Quaternion>`. Quaternions avoid :doc:`gimbal lock <../tutorials/3d/using_transforms>` and having to choose an order of rotation, but are less intuitive. Quaternion rotation is mostly the same as rotors in 3D geometric algebra, except that the numbers are labeled differently.

.. _class_Node3D_constant_ROTATION_EDIT_MODE_BASIS:

.. rst-class:: classref-enumeration-constant

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **ROTATION_EDIT_MODE_BASIS** = ``2``

La rotation est modifiée en utilisant une :ref:`Basis<class_Basis>`. Dans ce mode, les axes bruts de :ref:`basis<class_Node3D_property_basis>` peuvent être librement modifiés, mais la propriété :ref:`scale<class_Node3D_property_scale>` n'est pas disponible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSFORM_CHANGED** = ``2000`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`

Notification reçue lorsque la :ref:`global_transform<class_Node3D_property_global_transform>` de ce nœud change, si :ref:`is_transform_notification_enabled()<class_Node3D_method_is_transform_notification_enabled>` vaut ``true``. Voir aussi :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>`.

\ **Note :** La plupart des nœuds 3D tels que :ref:`VisualInstance3D<class_VisualInstance3D>` ou :ref:`CollisionObject3D<class_CollisionObject3D>` activent ceci automatiquement pour fonctionner correctement.

\ **Note :** Dans l'éditeur, les nœuds propagent cette notification à leurs enfants si un manipulateur est attaché (voir :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`).

.. _class_Node3D_constant_NOTIFICATION_ENTER_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_ENTER_WORLD** = ``41`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_ENTER_WORLD>`

Notification reçue lorsque ce nœud est enregistré avec un nouveau :ref:`World3D<class_World3D>` (voir :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`).

.. _class_Node3D_constant_NOTIFICATION_EXIT_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_EXIT_WORLD** = ``42`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_EXIT_WORLD>`

Notification received when this node is unregistered from the current :ref:`World3D<class_World3D>` (see :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`).

This notification is sent in reversed order.

.. _class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_VISIBILITY_CHANGED** = ``43`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>`

Notification reçue lorsque la visibilité de ce nœud change (voir :ref:`visible<class_Node3D_property_visible>` et :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`).

Cette notification est reçue *avant* le signal :ref:`visibility_changed<class_Node3D_signal_visibility_changed>` correspondant.

.. _class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LOCAL_TRANSFORM_CHANGED** = ``44`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`

Notification reçue lorsque la :ref:`transform<class_Node3D_property_transform>` de ce nœud change, si :ref:`is_local_transform_notification_enabled()<class_Node3D_method_is_local_transform_notification_enabled>` vaut ``true``. Ceci n'est pas reçu lorsque la :ref:`transform<class_Node3D_property_transform>` d'un **Node3D** parent change. Voir aussi :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>`.

\ **Note :** Quelques nœuds 3D tels que :ref:`CSGShape3D<class_CSGShape3D>` ou :ref:`CollisionObject3D<class_CollisionObject3D>` activent ceci automatiquement pour fonctionner correctement.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Node3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** :ref:`🔗<class_Node3D_property_basis>`

.. rst-class:: classref-property-setget

- |void| **set_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_basis**\ (\ )

Base de la propriété :ref:`transform<class_Node3D_property_transform>`. Représente la rotation, l'échelle et le cisaillement de ce nœud dans l'espace parent (relatif au nœud parent).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **global_basis** :ref:`🔗<class_Node3D_property_global_basis>`

.. rst-class:: classref-property-setget

- |void| **set_global_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_global_basis**\ (\ )

Base de la propriété :ref:`global_transform<class_Node3D_property_global_transform>`. Représente la rotation, l'échelle et le cisaillement de ce nœud dans l'espace global (relatif au monde).

\ **Note :** Si le nœud n'est pas à l'intérieur de l’arborescence, obtenir cette propriété échoue et renvoie :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_position** :ref:`🔗<class_Node3D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_position**\ (\ )

Position globale (translation) de ce nœud dans l'espace global (relatif au monde). Ceci est équivalent à l'origine :ref:`Transform3D.origin<class_Transform3D_property_origin>` de :ref:`global_transform<class_Node3D_property_global_transform>`.

\ **Note :** Si le nœud n'est pas à l'intérieur de l’arborescence, obtenir cette propriété échoue et renvoie :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation** :ref:`🔗<class_Node3D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation**\ (\ )

La rotation globale de ce nœud en tant qu'`angles d'Euler <https://fr.wikipedia.org/wiki/Angles_d%27Euler>`__, en radians et dans l'espace global (relatif au monde). Cette valeur est obtenue à partir de la rotation de :ref:`global_basis<class_Node3D_property_global_basis>`.

- Le :ref:`Vector3.x<class_Vector3_property_x>` est l'angle autour de l'axe X global (roulis);

- Le :ref:`Vector3.y<class_Vector3_property_y>` est l'angle autour de l'axe Y global (tangage);

- Le :ref:`Vector3.z<class_Vector3_property_z>` est l'angle autour de l'axe Z global (lacet).

\ **Note :** Contrairement à :ref:`rotation<class_Node3D_property_rotation>`, cette propriété suit toujours la convention YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

\ **Note :** Si le nœud n'est pas à l'intérieur de l’arborescence, obtenir cette propriété échoue et renvoie :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation_degrees** :ref:`🔗<class_Node3D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation_degrees**\ (\ )

La rotation globale :ref:`global_rotation<class_Node3D_property_global_rotation>` de ce nœud, en degrés au lieu de radians.

\ **Note :** Si le nœud n'est pas à l'intérieur de l’arborescence, obtenir cette propriété échoue et renvoie :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **global_transform** :ref:`🔗<class_Node3D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_global_transform**\ (\ )

La transformation de ce nœud, dans l'espace global (relatif au monde). Contient et représente la position globale :ref:`global_position<class_Node3D_property_global_position>` de ce nœud, la rotation globale\ :ref:`global_rotation<class_Node3D_property_global_rotation>` et l'échelle globale.

\ **Note :** Si le nœud n'est pas à l'intérieur de l’arborescence, obtenir cette propriété échoue et renvoie :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

Position (translation) de ce nœud dans l'espace parent (relatif au nœud parent). Il s'agit de l'équivalent de :ref:`Transform3D.origin<class_Transform3D_property_origin>` de :ref:`transform<class_Node3D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_quaternion:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **quaternion** :ref:`🔗<class_Node3D_property_quaternion>`

.. rst-class:: classref-property-setget

- |void| **set_quaternion**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_quaternion**\ (\ )

Rotation de ce nœud représentée en tant que :ref:`Quaternion<class_Quaternion>` dans l'espace parent (relatif au nœud parent). Cette valeur est obtenue à partir de la rotation de :ref:`basis<class_Node3D_property_basis>`.

\ **Note :** Les quaternions sont beaucoup plus adaptés aux maths 3D mais sont moins intuitifs. Définir cette propriété peut être utile pour interpoler (voir :ref:`Quaternion.slerp()<class_Quaternion_method_slerp>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **rotation** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_rotation**\ (\ )

Rotation of this node as `Euler angles <https://en.wikipedia.org/wiki/Euler_angles>`__, in radians and in parent space (relative to the parent node). This value is obtained from :ref:`basis<class_Node3D_property_basis>`'s rotation.

- The :ref:`Vector3.x<class_Vector3_property_x>` is the angle around the local X axis (pitch);

- The :ref:`Vector3.y<class_Vector3_property_y>` is the angle around the local Y axis (yaw);

- The :ref:`Vector3.z<class_Vector3_property_z>` is the angle around the local Z axis (roll).

The order of each consecutive rotation can be changed with :ref:`rotation_order<class_Node3D_property_rotation_order>` (see :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` constants). In Godot, Euler angles always use intrinsic order. By default, the intrinsic YXZ convention is used (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

\ **Note:** This property is edited in degrees in the inspector. If you want to use degrees in a script, use :ref:`rotation_degrees<class_Node3D_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **rotation_degrees** :ref:`🔗<class_Node3D_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_rotation_degrees**\ (\ )

La :ref:`rotation<class_Node3D_property_rotation>` de ce nœud, en degrés au lieu de radians.

\ **Note :** Il ne s'agit **pas** la propriété disponible dans le dock Inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_edit_mode:

.. rst-class:: classref-property

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **rotation_edit_mode** = ``0`` :ref:`🔗<class_Node3D_property_rotation_edit_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_edit_mode**\ (\ value\: :ref:`RotationEditMode<enum_Node3D_RotationEditMode>`\ )
- :ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **get_rotation_edit_mode**\ (\ )

La façon dont la rotation et l'échelle de ce nœud sont affichées dans le dock Inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_order:

.. rst-class:: classref-property

:ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` **rotation_order** = ``2`` :ref:`🔗<class_Node3D_property_rotation_order>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_order**\ (\ value\: :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`\ )
- :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>` **get_rotation_order**\ (\ )

The axis rotation order of the :ref:`rotation<class_Node3D_property_rotation>` property. In Godot, Euler angles always use intrinsic order, meaning that the final orientation is calculated by rotating around the local axes in this order.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_scale:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_Node3D_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_scale**\ (\ )

Échelle de ce nœud dans l'espace local (relatif à ce nœud). Cette valeur est obtenue à partir de l'échelle de :ref:`basis<class_Node3D_property_basis>`.

\ **Note :** Le comportement de certains types de nœud 3D n'est pas affecté par cette propriété. Ceux-ci comprennent :ref:`Light3D<class_Light3D>`, :ref:`Camera3D<class_Camera3D>`, :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, et d'autres.

\ **Attention :** Les composantes de l'échelle doivent être toutes positives ou toutes négatives, et **pas** exactement ``0.0``. Sinon, il ne sera pas possible d'obtenir l'échelle de la :ref:`basis<class_Node3D_property_basis>`. Cela peut entraîner la perte de l'échelle prévue lorsqu'elle est rechargée depuis le disque, et potentiellement d'autres comportements instables.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_top_level:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **top_level** = ``false`` :ref:`🔗<class_Node3D_property_top_level>`

.. rst-class:: classref-property-setget

- |void| **set_as_top_level**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_top_level**\ (\ )

Si ``true``, le nœud n'hérite pas ses transformations de son parent. Ainsi, les transformations du nœud ne seront que dans l'espace global, ce qui signifie également que :ref:`global_transform<class_Node3D_property_global_transform>` et :ref:`transform<class_Node3D_property_transform>` seront identiques.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Node3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

La transformation locale de ce nœud, dans l'espace parent (relatif au nœud parent). Contient et représente la :ref:`position<class_Node3D_property_position>`, :ref:`rotation<class_Node3D_property_rotation>` et :ref:`scale<class_Node3D_property_scale>` de ce nœud.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visibility_parent:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **visibility_parent** = ``NodePath("")`` :ref:`🔗<class_Node3D_property_visibility_parent>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_parent**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_visibility_parent**\ (\ )

Path to the visibility range parent for this node and its descendants. The visibility parent must be a :ref:`GeometryInstance3D<class_GeometryInstance3D>`.

Any visual instance will only be visible if the visibility parent (and all of its visibility ancestors) is hidden by being closer to the camera than its own :ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>`. Nodes hidden via the :ref:`visible<class_Node3D_property_visible>` property are essentially removed from the visibility dependency tree, so dependent instances will not take the hidden node or its descendants into account.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_Node3D_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Si ``true``, ce nœud peut être visible. Le nœud n'est rendu que si tous ses parents le sont également. Cela signifie que :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>` doit renvoyer ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Node3D_method_add_gizmo:

.. rst-class:: classref-method

|void| **add_gizmo**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`\ ) :ref:`🔗<class_Node3D_method_add_gizmo>`

Attache le manipulateur ``gizmo`` donné à ce nœud. Fonctionne seulement dans l'éditeur.

\ **Note :** ``gizmo`` devrait être un :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`. Le type d'argument est :ref:`Node3DGizmo<class_Node3DGizmo>` pour éviter de dépendre sur des classes de l'éditeur dans **Node3D**.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_gizmos:

.. rst-class:: classref-method

|void| **clear_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_clear_gizmos>`

Retire tous les objets :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` attachés à ce nœud. Fonctionne seulement dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_subgizmo_selection:

.. rst-class:: classref-method

|void| **clear_subgizmo_selection**\ (\ ) :ref:`🔗<class_Node3D_method_clear_subgizmo_selection>`

Désélectionne tous les sous-manipulateurs pour ce nœuds. Utile à appeler lorsque le sous-manipulateur sélectionné peut ne plus exister après un changement de propriété. Fonctionne seulement dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_force_update_transform:

.. rst-class:: classref-method

|void| **force_update_transform**\ (\ ) :ref:`🔗<class_Node3D_method_force_update_transform>`

Force la transformation globale :ref:`global_transform<class_Node3D_property_global_transform>` du nœud à se mettre à jour, en envoyant :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`. Échoue si le nœud n'est pas à l'intérieur de l'arboresence.

\ **Note :** Pour des raisons de performance, les changements de transformation sont généralement accumulés et appliqués *en une fois* à la fin de la trame. La mise à jour se propage aussi vers les enfants **Node3D**. Par conséquent, utilisez cette méthode seulement lorsque vous avez besoin d'une transformation à jour (comme pendant les opérations de physique).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_gizmos:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3DGizmo<class_Node3DGizmo>`\] **get_gizmos**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_gizmos>`

Renvoie tous les objets :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` attachés à ce nœud. Fonctionne seulement dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_global_transform_interpolated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_global_transform_interpolated**\ (\ ) :ref:`🔗<class_Node3D_method_get_global_transform_interpolated>`

When using physics interpolation, there will be circumstances in which you want to know the interpolated (displayed) transform of a node rather than the standard transform (which may only be accurate to the most recent physics tick).

This is particularly important for frame-based operations that take place in :ref:`Node._process()<class_Node_private_method__process>`, rather than :ref:`Node._physics_process()<class_Node_private_method__physics_process>`. Examples include :ref:`Camera3D<class_Camera3D>`\ s focusing on a node, or finding where to fire lasers from on a frame rather than physics tick.

\ **Note:** This function creates an interpolation pump on the **Node3D** the first time it is called, which can respond to physics interpolation resets. If you get problems with "streaking" when initially following a **Node3D**, be sure to call :ref:`get_global_transform_interpolated()<class_Node3D_method_get_global_transform_interpolated>` at least once *before* resetting the **Node3D** physics interpolation.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_parent_node_3d:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_parent_node_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_parent_node_3d>`

Renvoie le **Node3D** parent qui affecte directement la :ref:`global_transform<class_Node3D_property_global_transform>` de ce nœud. Renvoie ``null`` si aucun parent n'existe, le parent n'est pas un **Node3D**, ou :ref:`top_level<class_Node3D_property_top_level>` vaut ``true``.

\ **Note :** Cette méthode n'est pas toujours équivalente à :ref:`Node.get_parent()<class_Node_method_get_parent>`, qui ne prend pas en compte :ref:`top_level<class_Node3D_property_top_level>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_world_3d:

.. rst-class:: classref-method

:ref:`World3D<class_World3D>` **get_world_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_world_3d>`

Renvoie le :ref:`World3D<class_World3D>` avec lequel ce nœud est enregistré.

Habituellement, il est identique au monde utilisé par le viewport de ce nœud (voir :ref:`Node.get_viewport()<class_Node_method_get_viewport>` et :ref:`Viewport.find_world_3d()<class_Viewport_method_find_world_3d>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_rotate:

.. rst-class:: classref-method

|void| **global_rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_global_rotate>`

Tourne la :ref:`global_basis<class_Node3D_property_global_basis>` de ce nœud autour de l'axe global ``axis`` avec un ``angle`` donné, en radians. Cette opération est calculée dans l'espace global (relatif au monde) et préserve la position globale :ref:`global_position<class_Node3D_property_global_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_scale:

.. rst-class:: classref-method

|void| **global_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_scale>`

Redimensionne la base globale :ref:`global_basis<class_Node3D_property_global_basis>` de ce nœud par le facteur ``scale`` donné. Cette opération est calculée dans l'espace global (relatif au monde) et préserve la :ref:`global_position<class_Node3D_property_global_position>`.

\ **Note :** Cette méthode ne doit pas être confondue avec la propriété :ref:`scale<class_Node3D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_translate>`

Ajoute la translation ``offset`` donnée à la position globale :ref:`global_position<class_Node3D_property_global_position>` du nœud, dans l'espace global (relatif au monde).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_Node3D_method_hide>`

Empêche ce nœud d'être rendu. Équivalent à définir :ref:`visible<class_Node3D_property_visible>` à ``false``. Il s'agit du contraire de :ref:`show()<class_Node3D_method_show>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_local_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_local_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_local_transform_notification_enabled>`

Renvoie ``true`` si le nœud reçoit :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>` chaque fois que :ref:`transform<class_Node3D_property_transform>` change. Ceci est activé avec :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_scale_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_disabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_scale_disabled>`

Renvoie ``true`` si le :ref:`global_transform<class_Node3D_property_global_transform>` du nœud est automatiquement orthonormalisée. Cela résulte en ce nœud n'apparaissant pas comme déformé, comme si son échelle globale était définie à :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (ou son homologue négatif). Voir aussi :ref:`set_disable_scale()<class_Node3D_method_set_disable_scale>` et :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`.

\ **Note :** :ref:`transform<class_Node3D_property_transform>` n'est pas affectée par ce paramètre.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_transform_notification_enabled>`

Renvoie ``true`` si le nœud reçoit :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` chaque fois que :ref:`global_transform<class_Node3D_property_global_transform>` change. Ceci est activé avec :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_visible_in_tree:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_visible_in_tree**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_visible_in_tree>`

Returns ``true`` if this node is inside the scene tree and the :ref:`visible<class_Node3D_property_visible>` property is ``true`` for this node and all of its **Node3D** ancestors *in sequence*. An ancestor of any other type (such as :ref:`Node<class_Node>` or :ref:`Node2D<class_Node2D>`) breaks the sequence. See also :ref:`Node.get_parent()<class_Node_method_get_parent>`.

\ **Note:** This method cannot take :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` into account, so even if this method returns ``true``, the node may not be rendered.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at>`

Tourne le nœud de sorte à ce que l'axe avant local (-Z, :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>`) pointe vers la position cible ``target``. Cette opération est calculée dans l'espace global (relatif au monde).

L'axe local haut (+Y) pointe aussi près du vecteur ``up`` que possible tout en restant perpendiculaire à l'axe avant local. La transformation résultante est orthogonale, et l'échelle est préservée. Une échelle non uniforme peut ne pas fonctionner correctement.

La position cible ``target`` ne peut être la même que la position du nœud, le vecteur ``up`` ne peut être :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`. De plus, la direction de la position du nœud vers ``target`` ne peut pas être parallèle au vecteur ``up``, pour éviter une rotation intempestive autour de l'axe Z local.

Si ``use_model_front`` vaut ``true``, l'axe +Z (avant des ressources) est traité comme l'avant (implique que +X est la gauche) et pointe vers ``target``. Par défaut, l'axe -Z (avant de la caméra) est traité comme l'avant (implique que +X est la droite).

\ **Note :** Cette méthode échoue si le nœud n'est pas dans l'arborescence de scène. Si nécessaire, utilisez plutôt :ref:`look_at_from_position()<class_Node3D_method_look_at_from_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at_from_position:

.. rst-class:: classref-method

|void| **look_at_from_position**\ (\ position\: :ref:`Vector3<class_Vector3>`, target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at_from_position>`

Déplace le nœud vers la ``position`` spécifiée, puis pivote vers le nœud pour pointer vers la position de la cible ``target``, comme avec :ref:`look_at()<class_Node3D_method_look_at>`. Cette opération est calculée dans l'espace global (relatif au monde).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_orthonormalize:

.. rst-class:: classref-method

|void| **orthonormalize**\ (\ ) :ref:`🔗<class_Node3D_method_orthonormalize>`

Orthonormalise la base de ce nœud. Cette méthode définit l'échelle :ref:`scale<class_Node3D_property_scale>` de ce nœud à :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (ou son homologue négatif), mais conserve la :ref:`position<class_Node3D_property_position>` et :ref:`rotation<class_Node3D_property_rotation>`. Voir aussi :ref:`Transform3D.orthonormalized()<class_Transform3D_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate>`

Tourne la :ref:`basis<class_Node3D_property_basis>` de ce nœud autour de l'axe ``axis`` avec un ``angle`` donné, en radians. Cette opération est calculée dans l'espace parent (relatif au parent) et préserve la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_object_local:

.. rst-class:: classref-method

|void| **rotate_object_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_object_local>`

Tourne la :ref:`basis<class_Node3D_property_basis>` de ce nœud autour de l'axe ``axis`` avec un ``angle`` donné, en radians. Cette opération est calculée dans l'espace local (relatif à ce nœud) et préserve la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_x:

.. rst-class:: classref-method

|void| **rotate_x**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_x>`

Tourne la :ref:`basis<class_Node3D_property_basis>` de ce nœud autour de l'axe X avec un ``angle`` donné, en radians. Cette opération est calculée dans l'espace parent (relatif au parent) et préserve la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_y:

.. rst-class:: classref-method

|void| **rotate_y**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_y>`

Tourne la :ref:`basis<class_Node3D_property_basis>` de ce nœud autour de l'axe Y avec un ``angle`` donné, en radians. Cette opération est calculée dans l'espace parent (relatif au parent) et préserve la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_z:

.. rst-class:: classref-method

|void| **rotate_z**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_z>`

Tourne la :ref:`basis<class_Node3D_property_basis>` de ce nœud autour de l'axe Z avec un ``angle`` donné, en radians. Cette opération est calculée dans l'espace parent (relatif au parent) et préserve la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_scale_object_local:

.. rst-class:: classref-method

|void| **scale_object_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_scale_object_local>`

Redimensionne la base :ref:`basis<class_Node3D_property_basis>` de ce nœud par le facteur ``scale`` donné. Cette opération est calculée dans l'espace local (relatif à ce nœud) et préserve la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_disable_scale:

.. rst-class:: classref-method

|void| **set_disable_scale**\ (\ disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_disable_scale>`

Si ``true``, la transformation globale :ref:`global_transform<class_Node3D_property_global_transform>` du nœud est automatiquement orthonormalisée. Cela résulte en ce nœud n'apparaissant pas comme déformé, comme si son échelle globale était définie à :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (ou son homologue négatif). Voir aussi :ref:`is_scale_disabled()<class_Node3D_method_is_scale_disabled>` et :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`.

\ **Note :** :ref:`transform<class_Node3D_property_transform>` n'est pas affecté par ce paramètre.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_identity:

.. rst-class:: classref-method

|void| **set_identity**\ (\ ) :ref:`🔗<class_Node3D_method_set_identity>`

Définit la transformation :ref:`transform<class_Node3D_property_transform>` de ce nœud à :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`, ce qui réinitialise toutes les transformations dans l'espace parent (:ref:`position<class_Node3D_property_position>`, :ref:`rotation<class_Node3D_property_rotation>` et :ref:`scale<class_Node3D_property_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_ignore_transform_notification:

.. rst-class:: classref-method

|void| **set_ignore_transform_notification**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_ignore_transform_notification>`

Si ``true``, le nœud ne recevra pas :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` ou :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`.

Il peut être utile d'appeler cette méthode lors de la manipulation de ces notifications pour éviter une récursion infinie.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_local_transform:

.. rst-class:: classref-method

|void| **set_notify_local_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_local_transform>`

Si ``true``, le nœud recevra :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>` chaque fois que :ref:`transform<class_Node3D_property_transform>` change.

\ **Note :** Certains nœuds 3D tels que :ref:`CSGShape3D<class_CSGShape3D>` ou :ref:`CollisionShape3D<class_CollisionShape3D>` activement automatiquement ceci pour fonctionner correctement.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_transform:

.. rst-class:: classref-method

|void| **set_notify_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_transform>`

Si ``true``, le nœud recevra :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` à chaque fois que :ref:`global_transform<class_Node3D_property_global_transform>` change.

\ **Note :** La plupart des nœuds 3D tels que :ref:`VisualInstance3D<class_VisualInstance3D>` ou :ref:`CollisionObject3D<class_CollisionObject3D>` activeront automatiquement ceci pour fonctionner correctement.

\ **Note :** Dans l'éditeur, les nœuds propagent cette notification à leurs enfants si un manipulateur est attaché (voir :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_subgizmo_selection:

.. rst-class:: classref-method

|void| **set_subgizmo_selection**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`, id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Node3D_method_set_subgizmo_selection>`

Sélectionne le sous-manipulateur ``gizmo`` avec l'``id`` donné et définit sa transformation. Fonctionne seulement dans l'éditeur.

\ **Note :** L'objet manipulateur serait généralement une instance d':ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, mais le type d'argument est gardé générique pour éviter de créer une dépendance aux classes d'éditeur dans **Node3D**.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_Node3D_method_show>`

Autorise à ce nœud d'être rendu. Équivalent à définir :ref:`visible<class_Node3D_property_visible>` à ``true``. Il s'agit du contraire de :ref:`hide()<class_Node3D_method_hide>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_global**\ (\ local_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_global>`

Renvoie le point local ``local_point`` converti de l'espace local de ce nœud vers l'espace global. Il s'agit du contraire de :ref:`to_local()<class_Node3D_method_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_local**\ (\ global_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_local>`

Renvoie le point global ``global_point`` converti de l'espace global vers l'espace local de ce nœud. Il s'agit du contraire de :ref:`to_global()<class_Node3D_method_to_global>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate>`

Ajoute la translation ``offset`` donnée à la position du nœud, dans l'espace local (relatif à ce nœud).

\ **Note :** Préférez utiliser :ref:`translate_object_local()<class_Node3D_method_translate_object_local>`, car cette méthode peut être changée dans une version future.

\ **Note :** Malgré la convention de dénomination, cette opération n'est **pas** calculée dans l'espace parent pour des raisons de compatibilité. Pour translater dans l'espace parent, ajoutez ``offset`` à la :ref:`position<class_Node3D_property_position>` (``node_3d.position += offset``).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate_object_local:

.. rst-class:: classref-method

|void| **translate_object_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate_object_local>`

Ajoute la translation ``offset`` donnée à la position du nœud, dans l'espace local (relatif à ce nœud).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_update_gizmos:

.. rst-class:: classref-method

|void| **update_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_update_gizmos>`

Met à jour tous les objets :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` attachés à ce nœud. Fonctionne seulement dans l'éditeur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
