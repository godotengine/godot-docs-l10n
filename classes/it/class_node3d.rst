:github_url: hide

.. meta::
	:keywords: spatial

.. _class_Node3D:

Node3D
======

**Eredita:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AudioListener3D<class_AudioListener3D>`, :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, :ref:`BoneAttachment3D<class_BoneAttachment3D>`, :ref:`Camera3D<class_Camera3D>`, :ref:`CollisionObject3D<class_CollisionObject3D>`, :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`, :ref:`CollisionShape3D<class_CollisionShape3D>`, :ref:`GridMap<class_GridMap>`, :ref:`ImporterMeshInstance3D<class_ImporterMeshInstance3D>`, :ref:`Joint3D<class_Joint3D>`, :ref:`LightmapProbe<class_LightmapProbe>`, :ref:`Marker3D<class_Marker3D>`, :ref:`NavigationLink3D<class_NavigationLink3D>`, :ref:`NavigationObstacle3D<class_NavigationObstacle3D>`, :ref:`NavigationRegion3D<class_NavigationRegion3D>`, :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>`, :ref:`OpenXRHand<class_OpenXRHand>`, :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`, :ref:`OpenXRRenderModelManager<class_OpenXRRenderModelManager>`, :ref:`Path3D<class_Path3D>`, :ref:`PathFollow3D<class_PathFollow3D>`, :ref:`RayCast3D<class_RayCast3D>`, :ref:`RemoteTransform3D<class_RemoteTransform3D>`, :ref:`ShapeCast3D<class_ShapeCast3D>`, :ref:`Skeleton3D<class_Skeleton3D>`, :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, :ref:`SpringArm3D<class_SpringArm3D>`, :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>`, :ref:`VehicleWheel3D<class_VehicleWheel3D>`, :ref:`VisualInstance3D<class_VisualInstance3D>`, :ref:`XRFaceModifier3D<class_XRFaceModifier3D>`, :ref:`XRNode3D<class_XRNode3D>`, :ref:`XROrigin3D<class_XROrigin3D>`

Oggetto base nello spazio 3D, ereditato da tutti i nodi 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Il nodo **Node3D** è la rappresentazione base di un nodo nello spazio 3D. Tutti gli altri nodi 3D ereditano da questa classe.

Le operazioni affini (traslazione, rotazione, scala) sono calcolate nel sistema di coordinate relativo al padre, a meno che il :ref:`top_level<class_Node3D_property_top_level>` del **Node3D** non sia ``true``. In questo sistema di coordinate, le operazioni affini corrispondono alle operazioni affini dirette sulla :ref:`transform<class_Node3D_property_transform>` del **Node3D**. Il termine *spazio padre* si riferisce a questo sistema di coordinate. Il sistema di coordinate che è associato all'oggetto **Node3D** stesso è riferito come sistema di coordinate locale all'oggetto, o *spazio locale*.

\ **Nota:** Salvo diversamente specificato, tutti i metodi che hanno parametri di angolo devono avere angoli specificati in *radianti*. Per convertire i gradi in radianti, usa :ref:`@GlobalScope.deg_to_rad()<class_@GlobalScope_method_deg_to_rad>`.

\ **Nota:** In Godot 3 e versioni precedenti, **Node3D** aveva il nome *Spatial*.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione al 3D <../tutorials/3d/introduction_to_3d>`

- `Tutte le demo 3D <https://github.com/godotengine/godot-demo-projects/tree/master/3d>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Segnali
--------------

.. _class_Node3D_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_Node3D_signal_visibility_changed>`

Emesso quando la visibilità di questo nodo cambia (vedi :ref:`visible<class_Node3D_property_visible>` e :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`).

Questo segnale viene emesso *dopo* la notifica corrispondente :ref:`NOTIFICATION_VISIBILITY_CHANGED<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
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

La rotazione è modificata tramite una :ref:`Basis<class_Basis>`. In questa modalità, le assi di :ref:`basis<class_Node3D_property_basis>` si possono modificare liberamente, ma la proprietà :ref:`scale<class_Node3D_property_scale>` non è disponibile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSFORM_CHANGED** = ``2000`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`

Notifica ricevuta quando :ref:`global_transform<class_Node3D_property_global_transform>` di questo nodo cambia, se :ref:`is_transform_notification_enabled()<class_Node3D_method_is_transform_notification_enabled>` è ``true``. Vedi anche :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>`.

\ **Nota:** Molti nodi 3D come :ref:`VisualInstance3D<class_VisualInstance3D>` o :ref:`CollisionObject3D<class_CollisionObject3D>` abilitano questo automaticamente per funzionare correttamente.

\ **Nota:** Nell'editor, i nodi propagheranno questa notifica ai loro figli se vi è associato un gizmo (vedi :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`).

.. _class_Node3D_constant_NOTIFICATION_ENTER_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_ENTER_WORLD** = ``41`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_ENTER_WORLD>`

Notifica ricevuta quando questo nodo è registrato in un nuovo :ref:`World3D<class_World3D>` (vedi :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`).

.. _class_Node3D_constant_NOTIFICATION_EXIT_WORLD:

.. rst-class:: classref-constant

**NOTIFICATION_EXIT_WORLD** = ``42`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_EXIT_WORLD>`

Notification received when this node is unregistered from the current :ref:`World3D<class_World3D>` (see :ref:`get_world_3d()<class_Node3D_method_get_world_3d>`).

This notification is sent in reversed order.

.. _class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_VISIBILITY_CHANGED** = ``43`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_VISIBILITY_CHANGED>`

Notifica ricevuta quando la visibilità di questo nodo cambia (vedi :ref:`visible<class_Node3D_property_visible>` e :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>`).

Questa notifica viene ricevuta *prima* del segnale corrispondente :ref:`visibility_changed<class_Node3D_signal_visibility_changed>`.

.. _class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LOCAL_TRANSFORM_CHANGED** = ``44`` :ref:`🔗<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`

Notifica ricevuta quando :ref:`transform<class_Node3D_property_transform>` di questo nodo cambia, se :ref:`is_local_transform_notification_enabled()<class_Node3D_method_is_local_transform_notification_enabled>` è ``true``. Questa non è ricevuta quando cambia la :ref:`transform<class_Node3D_property_transform>` di un **Node3D** padre. Vedi anche :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>`.

\ **Nota:** Alcuni nodi 3D come :ref:`CSGShape3D<class_CSGShape3D>` o :ref:`CollisionShape3D<class_CollisionShape3D>` abilitano questo automaticamente per funzionare correttamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Node3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** :ref:`🔗<class_Node3D_property_basis>`

.. rst-class:: classref-property-setget

- |void| **set_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_basis**\ (\ )

Base della proprietà :ref:`transform<class_Node3D_property_transform>`. Rappresenta la rotazione, la scala e l'inclinazione di questo nodo nello spazio padre (relativa al nodo padre).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **global_basis** :ref:`🔗<class_Node3D_property_global_basis>`

.. rst-class:: classref-property-setget

- |void| **set_global_basis**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_global_basis**\ (\ )

Base della proprietà :ref:`global_transform<class_Node3D_property_global_transform>`. Rappresenta la rotazione, la scala e l'inclinazione di questo nodo nello spazio globale (relativa al mondo).

\ **Nota:** Se il nodo non è all'interno dell'albero, il recupero di questa proprietà fallisce e restituisce :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_position** :ref:`🔗<class_Node3D_property_global_position>`

.. rst-class:: classref-property-setget

- |void| **set_global_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_position**\ (\ )

Posizione globale (traslazione) di questo nodo nello spazio globale (relativa al mondo). Equivale a :ref:`Transform3D.origin<class_Transform3D_property_origin>` di :ref:`global_transform<class_Node3D_property_global_transform>`.

\ **Nota:** Se il nodo non è all'interno dell'albero, il recupero di questa proprietà fallisce e restituisce :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation** :ref:`🔗<class_Node3D_property_global_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation**\ (\ )

Rotazione globale di questo nodo come `angoli di Eulero <https://en.wikipedia.org/wiki/Euler_angles>`__, in radianti e nello spazio globale (relativo al mondo). Questo valore è ottenuto dalla rotazione di :ref:`global_basis<class_Node3D_property_global_basis>`.

- Il :ref:`Vector3.x<class_Vector3_property_x>` è l'angolo attorno all'asse X globale (beccheggio);

- Il :ref:`Vector3.y<class_Vector3_property_y>` è l'angolo attorno all'asse Y globale (imbardata);

- Il :ref:`Vector3.z<class_Vector3_property_z>` è l'angolo attorno all'asse Z globale (rollio).

\ **Nota:** A differenza di :ref:`rotation<class_Node3D_property_rotation>`, questa proprietà segue sempre la convenzione YXZ (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`).

\ **Nota:** Se il nodo non è all'interno dell'albero, il recupero di questa proprietà fallisce e restituisce :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_rotation_degrees:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **global_rotation_degrees** :ref:`🔗<class_Node3D_property_global_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_global_rotation_degrees**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_global_rotation_degrees**\ (\ )

La :ref:`global_rotation<class_Node3D_property_global_rotation>` di questo nodo, in gradi anziché in radianti.

\ **Nota:** Se il nodo non è all'interno dell'albero, il recupero di questa proprietà fallisce e restituisce :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_global_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **global_transform** :ref:`🔗<class_Node3D_property_global_transform>`

.. rst-class:: classref-property-setget

- |void| **set_global_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_global_transform**\ (\ )

La trasformazione di questo nodo nello spazio globale (relativa al mondo). Contiene e rappresenta la :ref:`global_position<class_Node3D_property_global_position>`, la :ref:`global_rotation<class_Node3D_property_global_rotation>` e la scala globale di questo nodo.

\ **Nota:** Se il nodo non è all'interno dell'albero, il recupero di questa proprietà fallisce e restituisce :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Node3D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

Posizione (traslazione) di questo nodo nello spazio padre (relativa al nodo padre). Questa equivale a :ref:`Transform3D.origin<class_Transform3D_property_origin>` di :ref:`transform<class_Node3D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_quaternion:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **quaternion** :ref:`🔗<class_Node3D_property_quaternion>`

.. rst-class:: classref-property-setget

- |void| **set_quaternion**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_quaternion**\ (\ )

Rotazione di questo nodo rappresentata come un :ref:`Quaternion<class_Quaternion>` nello spazio padre (relativa al nodo padre). Questo valore è ottenuto dalla rotazione di :ref:`basis<class_Node3D_property_basis>`.

\ **Nota:** I quaternioni sono molto più adatti alla matematica 3D, ma sono meno intuitivi. Impostare questa proprietà può essere utile per interpolare (vedi :ref:`Quaternion.slerp()<class_Quaternion_method_slerp>`).

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

La :ref:`rotation<class_Node3D_property_rotation>` di questo nodo, in gradi anziché in radianti.

\ **Nota:** Questa **non** è la proprietà disponibile nel pannello Ispettore.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_rotation_edit_mode:

.. rst-class:: classref-property

:ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **rotation_edit_mode** = ``0`` :ref:`🔗<class_Node3D_property_rotation_edit_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_edit_mode**\ (\ value\: :ref:`RotationEditMode<enum_Node3D_RotationEditMode>`\ )
- :ref:`RotationEditMode<enum_Node3D_RotationEditMode>` **get_rotation_edit_mode**\ (\ )

Come la rotazione e la scala di questo nodo sono presentate nel pannello Ispettore.

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

Scala di questo nodo nello spazio locale (relativa a questo nodo). Questo valore è ottenuto dalla scala di :ref:`basis<class_Node3D_property_basis>`.

\ **Nota:** Il comportamento di alcuni tipi di nodi 3D non è influenzato da questa proprietà. Tra questi, :ref:`Light3D<class_Light3D>`, :ref:`Camera3D<class_Camera3D>`, :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` e altri.

\ **Attenzione:** I componenti della scala devono essere tutti positivi o tutti negativi e **non** esattamente ``0.0``. Se no, non sarà possibile ottenere la scala da :ref:`basis<class_Node3D_property_basis>`. Ciò potrebbe causare la perdita della scala desiderata al ricaricamento da disco, nonché altri eventuali comportamenti instabili.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_top_level:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **top_level** = ``false`` :ref:`🔗<class_Node3D_property_top_level>`

.. rst-class:: classref-property-setget

- |void| **set_as_top_level**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_top_level**\ (\ )

Se ``true``, il nodo non erediterà le sue trasformazioni dal suo genitore. Pertanto, le trasformazioni del nodo saranno solo nello spazio globale, il che significa anche che :ref:`global_transform<class_Node3D_property_global_transform>` e :ref:`transform<class_Node3D_property_transform>` saranno identici.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Node3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

La trasformazione locale di questo nodo, nello spazio padre (relativa al nodo padre). Contiene e rappresenta la :ref:`position<class_Node3D_property_position>`, la :ref:`rotation<class_Node3D_property_rotation>` e la :ref:`scale<class_Node3D_property_scale>` di questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visibility_parent:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **visibility_parent** = ``NodePath("")`` :ref:`🔗<class_Node3D_property_visibility_parent>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_parent**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_visibility_parent**\ (\ )

Percorso al genitore dell'intervallo di visibilità per questo nodo e i suoi discendenti. Il genitore di visibilità deve essere un :ref:`GeometryInstance3D<class_GeometryInstance3D>`.

Qualsiasi istanza visiva sarà visibile solo se il genitore di visibilità (e tutti i suoi antenati di visibilità) è nascosto perché più vicino alla telecamera rispetto al suo :ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>`. I nodi nascosti tramite la proprietà :ref:`visible<class_Node3D_property_visible>` sono essenzialmente rimossi dall'albero delle dipendenze di visibilità, quindi le istanze dipendenti non terranno conto del nodo nascosto o dei suoi antenati.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_Node3D_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Se ``true``, questo nodo può essere visibile. Il nodo è renderizzato soltanto se sono visibili anche tutti i suoi antenati. Ciò significa che :ref:`is_visible_in_tree()<class_Node3D_method_is_visible_in_tree>` deve restituire ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Node3D_method_add_gizmo:

.. rst-class:: classref-method

|void| **add_gizmo**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`\ ) :ref:`🔗<class_Node3D_method_add_gizmo>`

Associa il ``gizmo`` specificato a questo nodo. Funziona solo nell'editor.

\ **Nota:** ``gizmo`` dovrebbe essere un :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`. Il tipo di argomento è :ref:`Node3DGizmo<class_Node3DGizmo>` per evitare di dipendere dalle classi dell'editor in **Node3D**.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_gizmos:

.. rst-class:: classref-method

|void| **clear_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_clear_gizmos>`

Cancella tutti gli oggetti :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` associati a questo nodo. Funziona solo nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_clear_subgizmo_selection:

.. rst-class:: classref-method

|void| **clear_subgizmo_selection**\ (\ ) :ref:`🔗<class_Node3D_method_clear_subgizmo_selection>`

Deseleziona tutti i sub-gizmo per questo nodo. Utile da chiamare quando il sub-gizmo selezionato potrebbe non esistere più dopo un cambiamento a una proprietà. Funziona solo nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_force_update_transform:

.. rst-class:: classref-method

|void| **force_update_transform**\ (\ ) :ref:`🔗<class_Node3D_method_force_update_transform>`

Forza l'aggiornamento del :ref:`global_transform<class_Node3D_property_global_transform>` del nodo, inviando :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>`. Fallisce se il nodo non si trova all'interno dell'albero.

\ **Nota:** Per motivi di prestazioni, le modifiche alle trasformazioni sono solitamente accumulate e applicate *una sola volta* alla fine del frame. L'aggiornamento si propaga anche attraverso i figli di **Node3D**. Pertanto, utilizzare questo metodo solo quando è necessaria una trasformazione aggiornata (ad esempio durante le operazioni di fisica).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_gizmos:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3DGizmo<class_Node3DGizmo>`\] **get_gizmos**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_gizmos>`

Restituisce tutti gli oggetti :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` associati a questo nodo. Funziona solo nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_global_transform_interpolated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_global_transform_interpolated**\ (\ ) :ref:`🔗<class_Node3D_method_get_global_transform_interpolated>`

Quando si utilizza l'interpolazione della fisica, in alcune circostanze si desidera conoscere la trasformazione interpolata (visualizzata) di un nodo anziché la solita trasformazione (che potrebbe essere accurata solo fino al tick di fisica più recente).

Questo è particolarmente importante per le operazioni basate sui frame che avvengono in :ref:`Node._process()<class_Node_private_method__process>`, anziché in :ref:`Node._physics_process()<class_Node_private_method__physics_process>`. Alcuni esempi includono focalizzare un nodo per i :ref:`Camera3D<class_Camera3D>` o ricavare la posizione da cui sparare i laser su un frame anziché su un tick di fisica.

\ **Nota:** Questa funzione crea un "pompaggio" di interpolazione sul **Node3D** la prima volta che viene chiamata, il quale può rispondere al riavvio dell'interpolazione della fisica. Se si verificano problemi di "striature" quando si segue inizialmente un **Node3D**, assicurarsi di chiamare :ref:`get_global_transform_interpolated()<class_Node3D_method_get_global_transform_interpolated>` almeno una volta *prima* di riavviare l'interpolazione fisica del **Node3D**.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_parent_node_3d:

.. rst-class:: classref-method

:ref:`Node3D<class_Node3D>` **get_parent_node_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_parent_node_3d>`

Restituisce il nodo **Node3D** genitore che influenza direttamente il :ref:`global_transform<class_Node3D_property_global_transform>` di questo nodo. Restituisce ``null`` se nessun genitore esiste, se il nodo genitore non è un **Node3D** o se :ref:`top_level<class_Node3D_property_top_level>` è ``true``.

\ **Nota:** Questo metodo non è sempre equivalente a :ref:`Node.get_parent()<class_Node_method_get_parent>`, il quale non tiene conto di :ref:`top_level<class_Node3D_property_top_level>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_get_world_3d:

.. rst-class:: classref-method

:ref:`World3D<class_World3D>` **get_world_3d**\ (\ ) |const| :ref:`🔗<class_Node3D_method_get_world_3d>`

Restituisce il :ref:`World3D<class_World3D>` in cui è registrato questo nodo.

Di solito, questo è lo stesso utilizzato dalla viewport di questo nodo (vedi :ref:`Node.get_viewport()<class_Node_method_get_viewport>` e :ref:`Viewport.find_world_3d()<class_Viewport_method_find_world_3d>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_rotate:

.. rst-class:: classref-method

|void| **global_rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_global_rotate>`

Ruota la :ref:`global_basis<class_Node3D_property_global_basis>` di questo nodo attorno all'asse globale ``axis`` dell'angolo ``angle`` specificato, in radianti. Questa operazione è calcolata nello spazio globale (relativa al mondo) e preserva la :ref:`global_position<class_Node3D_property_global_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_scale:

.. rst-class:: classref-method

|void| **global_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_scale>`

Cambia la scala della :ref:`global_basis<class_Node3D_property_global_basis>` di questo per il fattore ``scale`` specificato. Questa operazione è calcolata nello spazio globale (relativa al mondo) e preserva la :ref:`global_position<class_Node3D_property_global_position>`.

\ **Nota:** Questo metodo è da non confondere con la proprietà :ref:`scale<class_Node3D_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_global_translate:

.. rst-class:: classref-method

|void| **global_translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_global_translate>`

Aggiunge la traslazione ``offset`` specificata alla :ref:`global_position<class_Node3D_property_global_position>` del nodo nello spazio globale (relativa al mondo).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_Node3D_method_hide>`

Impedisce di renderizzare questo nodo. Equivale a impostare :ref:`visible<class_Node3D_property_visible>` su ``false``. È l'opposto di :ref:`show()<class_Node3D_method_show>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_local_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_local_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_local_transform_notification_enabled>`

Restituisce ``true`` se il nodo riceve :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>` quando cambia :ref:`transform<class_Node3D_property_transform>`. Ciò è abilitato con :ref:`set_notify_local_transform()<class_Node3D_method_set_notify_local_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_scale_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_scale_disabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_scale_disabled>`

Restituisce ``true`` se il :ref:`global_transform<class_Node3D_property_global_transform>` di questo nodo è automaticamente ortonormalizzato. Ciò assicura che il nodo non appaia distorto, come se la sua scala globale fosse impostata su :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (o la sua controparte negativa). Vedi anche :ref:`set_disable_scale()<class_Node3D_method_set_disable_scale>` e :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`.

\ **Nota:** Il :ref:`transform<class_Node3D_property_transform>` non è influenzato da questa impostazione.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_transform_notification_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_transform_notification_enabled**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_transform_notification_enabled>`

Restituisce ``true`` se il nodo riceve :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` quando cambia :ref:`global_transform<class_Node3D_property_global_transform>`. Ciò è abilitato con :ref:`set_notify_transform()<class_Node3D_method_set_notify_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_is_visible_in_tree:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_visible_in_tree**\ (\ ) |const| :ref:`🔗<class_Node3D_method_is_visible_in_tree>`

Restituisce ``true`` se il nodo è presente nell'albero di scene e la proprietà :ref:`visible<class_Node3D_property_visible>` è ``true`` per questo nodo e per tutti i suoi **Node3D** antenati *in sequenza*. Un antenato di qualsiasi altro tipo (ad esempio :ref:`Node<class_Node>` o :ref:`Node2D<class_Node2D>`) interrompe la sequenza. Vedi anche :ref:`Node.get_parent()<class_Node_method_get_parent>`.

\ **Nota:** Questo metodo non tiene conto di :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`, quindi anche se questo metodo restituisce ``true``, il nodo potrebbe non essere renderizzato.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at:

.. rst-class:: classref-method

|void| **look_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at>`

Ruota il nodo in modo che l'asse locale in avanti (-Z, :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>`) punti verso la posizione ``target``. Questa operazione è calcolata nello spazio globale (relativa al mondo)

L'asse locale in alto (+Y) punta il più vicino possibile al vettore ``up``, pur rimanendo perpendicolare all'asse locale in avanti. La trasformazione risultante è ortogonale e la scala è conservata. Una scala non uniforme potrebbe non funzionare correttamente.

La posizione ``target`` non può essere la stessa della posizione del nodo, il vettore ``up`` non può essere zero. Inoltre, la direzione dalla posizione del nodo alla posizione ``target`` non può essere parallela al vettore ``up``, per evitare una rotazione involontaria attorno all'asse Z locale.

Se ``use_model_front`` è ``true``, l'asse +Z (avanti per gli asset) viene trattato come in avanti (implica che +X sia a sinistra) e punta verso la posizione ``target``. Come predefinito, l'asse -Z (avanti per la telecamera) viene trattato come in avanti (implica che +X sia a destra).

\ **Nota:** Questo metodo fallisce se il nodo non si trova nell'albero di scene. Se necessario, utilizzare invece :ref:`look_at_from_position()<class_Node3D_method_look_at_from_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_look_at_from_position:

.. rst-class:: classref-method

|void| **look_at_from_position**\ (\ position\: :ref:`Vector3<class_Vector3>`, target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node3D_method_look_at_from_position>`

Sposta il nodo nella posizione ``position``, quindi ruota il nodo in modo che punti verso ``target`` come con :ref:`look_at()<class_Node3D_method_look_at>`. Questa operazione è calcolata nello spazio globale (relativa al mondo).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_orthonormalize:

.. rst-class:: classref-method

|void| **orthonormalize**\ (\ ) :ref:`🔗<class_Node3D_method_orthonormalize>`

Ortonormalizza la :ref:`basis<class_Node3D_property_basis>` di questo nodo. Questo metodo imposta la :ref:`scale<class_Node3D_property_scale>` di questo nodo su :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (o la sua controparte negativa), ma preserva la :ref:`position<class_Node3D_property_position>` e la :ref:`rotation<class_Node3D_property_rotation>`. Vedi anche :ref:`Transform3D.orthonormalized()<class_Transform3D_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate:

.. rst-class:: classref-method

|void| **rotate**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate>`

Ruota la :ref:`basis<class_Node3D_property_basis>` di questo nodo attorno all'asse ``axis`` dell'angolo ``angle``, in radianti. Questa operazione è calcolata nello spazio padre (relativa al padre) e preserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_object_local:

.. rst-class:: classref-method

|void| **rotate_object_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_object_local>`

Ruota la :ref:`basis<class_Node3D_property_basis>` di questo nodo attorno all'asse ``axis`` dell'angolo ``angle``, in radianti. Questa operazione è calcolata nello spazio locale (relativa a questo nodo) e preserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_x:

.. rst-class:: classref-method

|void| **rotate_x**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_x>`

Ruota la :ref:`basis<class_Node3D_property_basis>` di questo nodo attorno all'asse X dell'angolo ``angle``, in radianti. Questa operazione è calcolata nello spazio padre (relativa al padre) e preserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_y:

.. rst-class:: classref-method

|void| **rotate_y**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_y>`

Ruota la :ref:`basis<class_Node3D_property_basis>` di questo nodo attorno all'asse Y dell'angolo ``angle``, in radianti. Questa operazione è calcolata nello spazio padre (relativa al padre) e preserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_rotate_z:

.. rst-class:: classref-method

|void| **rotate_z**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Node3D_method_rotate_z>`

Ruota la :ref:`basis<class_Node3D_property_basis>` di questo nodo attorno all'asse Z dell'angolo ``angle``, in radianti. Questa operazione è calcolata nello spazio padre (relativa al padre) e preserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_scale_object_local:

.. rst-class:: classref-method

|void| **scale_object_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_scale_object_local>`

Scala la :ref:`basis<class_Node3D_property_basis>` di questo nodo in base al fattore ``scale`` specificato. Questa operazione è calcolata nello spazio locale (relativa a questo nodo) e preserva la :ref:`position<class_Node3D_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_disable_scale:

.. rst-class:: classref-method

|void| **set_disable_scale**\ (\ disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_disable_scale>`

Se ``true``, il :ref:`global_transform<class_Node3D_property_global_transform>` di questo nodo è automaticamente ortonormalizzato. Ciò assicura che il nodo non appaia distorto, come se la sua scala globale fosse impostata su :ref:`Vector3.ONE<class_Vector3_constant_ONE>` (o la sua controparte negativa). Vedi anche :ref:`set_disable_scale()<class_Node3D_method_set_disable_scale>` e :ref:`orthonormalize()<class_Node3D_method_orthonormalize>`.

\ **Nota:** Il :ref:`transform<class_Node3D_property_transform>` non è influenzato da questa impostazione.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_identity:

.. rst-class:: classref-method

|void| **set_identity**\ (\ ) :ref:`🔗<class_Node3D_method_set_identity>`

Imposta la :ref:`transform<class_Node3D_property_transform>` di questo nodo su :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`, il che ripristina tutte le trasformazioni nello spazio padre (:ref:`position<class_Node3D_property_position>`, :ref:`rotation<class_Node3D_property_rotation>` e :ref:`scale<class_Node3D_property_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_ignore_transform_notification:

.. rst-class:: classref-method

|void| **set_ignore_transform_notification**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_ignore_transform_notification>`

Se ``true``, il nodo non riceverà :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` o :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>`.

Potrebbe essere utile chiamare questo metodo quando si gestiscono queste notifiche per evitare una ricorsione infinita.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_local_transform:

.. rst-class:: classref-method

|void| **set_notify_local_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_local_transform>`

Se ``true``, il nodo riceverà :ref:`NOTIFICATION_LOCAL_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_LOCAL_TRANSFORM_CHANGED>` quando :ref:`transform<class_Node3D_property_transform>` cambia.

\ **Nota:** Alcuni nodi 3D come :ref:`CSGShape3D<class_CSGShape3D>` o :ref:`CollisionShape3D<class_CollisionShape3D>` abilitano questo automaticamente per funzionare correttamente.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_notify_transform:

.. rst-class:: classref-method

|void| **set_notify_transform**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node3D_method_set_notify_transform>`

Se ``true``, il nodo riceverà :ref:`NOTIFICATION_TRANSFORM_CHANGED<class_Node3D_constant_NOTIFICATION_TRANSFORM_CHANGED>` quando :ref:`global_transform<class_Node3D_property_global_transform>` cambia.

\ **Nota:** Molti nodi 3D come :ref:`VisualInstance3D<class_VisualInstance3D>` o :ref:`CollisionObject3D<class_CollisionObject3D>` abilitano questo automaticamente per funzionare correttamente.

\ **Nota:** Nell'editor, i nodi propagheranno questa notifica ai loro figli se vi è associato un gizmo (vedi :ref:`add_gizmo()<class_Node3D_method_add_gizmo>`).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_set_subgizmo_selection:

.. rst-class:: classref-method

|void| **set_subgizmo_selection**\ (\ gizmo\: :ref:`Node3DGizmo<class_Node3DGizmo>`, id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Node3D_method_set_subgizmo_selection>`

Seleziona il subgizmo del ``gizmo`` con l'``id`` specificato e ne imposta la trasformazione. Funziona solo nell'editor.

\ **Nota:** L'oggetto gizmo sarebbe in genere un'istanza di :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, ma il tipo di argomento è mantenuto generico per evitare di creare una dipendenza dalle classi dell'editor in **Node3D**.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_Node3D_method_show>`

Permette di renderizzare questo nodo. Equivale a impostare :ref:`visible<class_Node3D_property_visible>` su ``true``. È l'opposto di :ref:`hide()<class_Node3D_method_hide>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_global:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_global**\ (\ local_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_global>`

Restituisce il punto ``local_point`` convertito dallo spazio locale di questo nodo allo spazio mondiale. Questo è l'opposto di :ref:`to_local()<class_Node3D_method_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **to_local**\ (\ global_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Node3D_method_to_local>`

Restituisce il punto ``global_point`` convertito dallo spazio globale di questo nodo allo spazio locale. Questo è l'opposto di :ref:`to_global()<class_Node3D_method_to_global>`.

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate:

.. rst-class:: classref-method

|void| **translate**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate>`

Aggiunge la traslazione ``offset`` alla posizione del nodo, nello spazio locale (relativa a questo nodo).

\ **Nota:** Si consiglia di utilizzare invece il metodo :ref:`translate_object_local()<class_Node3D_method_translate_object_local>`, poiché questo metodo potrebbe cambiare in una versione futura.

\ **Nota:** Nonostante la convenzione di denominazione, questa operazione **non** è calcolata nello spazio padre per motivi di compatibilità. Per traslare nello spazio padre, aggiungere ``offset`` alla :ref:`position<class_Node3D_property_position>` (``node_3d.position += offset``).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_translate_object_local:

.. rst-class:: classref-method

|void| **translate_object_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Node3D_method_translate_object_local>`

Aggiunge la traslazione ``offset`` alla posizione del nodo, nello spazio locale (relativa a questo nodo).

.. rst-class:: classref-item-separator

----

.. _class_Node3D_method_update_gizmos:

.. rst-class:: classref-method

|void| **update_gizmos**\ (\ ) :ref:`🔗<class_Node3D_method_update_gizmos>`

Aggiorna tutti gli oggetti :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` attaccati a questo nodo. Funziona solo nell'editor.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
