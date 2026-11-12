:github_url: hide

.. _class_CollisionObject3D:

CollisionObject3D
=================

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`Area3D<class_Area3D>`, :ref:`PhysicsBody3D<class_PhysicsBody3D>`

Classe de base abstraite pour les objets physiques 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base abstraite pour les objets physiques 3D. **CollisionObject3D** peut contenir tout nombre de :ref:`Shape3D<class_Shape3D>` pour des collisions. Chaque forme doit être attribuée à un *propriétaire de forme*. Les propriétaires de forme ne sont pas des nœuds et ne figurent pas dans l'éditeur, mais sont accessibles via le code en utilisant les méthodes ``shape_owner_*``.

\ **Attention :** Avec une échelle non uniforme, ce nœud ne se comportera probablement pas comme prévu. Il est conseillé de garder la même échelle sur tous les axes et d'ajuster sa ou ses formes de collision à la place.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`             | ``1``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                  | :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>`               | ``1``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                              | :ref:`collision_priority<class_CollisionObject3D_property_collision_priority>`       | ``1.0``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`DisableMode<enum_CollisionObject3D_DisableMode>` | :ref:`disable_mode<class_CollisionObject3D_property_disable_mode>`                   | ``0``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                | :ref:`input_capture_on_drag<class_CollisionObject3D_property_input_capture_on_drag>` | ``false`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                | :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>`       | ``true``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_input_event<class_CollisionObject3D_private_method__input_event>`\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, event\: :ref:`InputEvent<class_InputEvent>`, event_position\: :ref:`Vector3<class_Vector3>`, normal\: :ref:`Vector3<class_Vector3>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_enter<class_CollisionObject3D_private_method__mouse_enter>`\ (\ ) |virtual|                                                                                                                                                                                                                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_mouse_exit<class_CollisionObject3D_private_method__mouse_exit>`\ (\ ) |virtual|                                                                                                                                                                                                                     |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`create_shape_owner<class_CollisionObject3D_method_create_shape_owner>`\ (\ owner\: :ref:`Object<class_Object>`\ )                                                                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_layer_value<class_CollisionObject3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                             |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`get_collision_mask_value<class_CollisionObject3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                           | :ref:`get_rid<class_CollisionObject3D_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_shape_owners<class_CollisionObject3D_method_get_shape_owners>`\ (\ )                                                                                                                                                                                                                             |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_shape_owner_disabled<class_CollisionObject3D_method_is_shape_owner_disabled>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                     |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_shape_owner<class_CollisionObject3D_method_remove_shape_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_layer_value<class_CollisionObject3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_collision_mask_value<class_CollisionObject3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                                                                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_find_owner<class_CollisionObject3D_method_shape_find_owner>`\ (\ shape_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_add_shape<class_CollisionObject3D_method_shape_owner_add_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape3D<class_Shape3D>`\ )                                                                                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_clear_shapes<class_CollisionObject3D_method_shape_owner_clear_shapes>`\ (\ owner_id\: :ref:`int<class_int>`\ )                                                                                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                     | :ref:`shape_owner_get_owner<class_CollisionObject3D_method_shape_owner_get_owner>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`                   | :ref:`shape_owner_get_shape<class_CollisionObject3D_method_shape_owner_get_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_count<class_CollisionObject3D_method_shape_owner_get_shape_count>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                             |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`shape_owner_get_shape_index<class_CollisionObject3D_method_shape_owner_get_shape_index>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`shape_owner_get_transform<class_CollisionObject3D_method_shape_owner_get_transform>`\ (\ owner_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_remove_shape<class_CollisionObject3D_method_shape_owner_remove_shape>`\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ )                                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_disabled<class_CollisionObject3D_method_shape_owner_set_disabled>`\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                                                                                                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`shape_owner_set_transform<class_CollisionObject3D_method_shape_owner_set_transform>`\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_CollisionObject3D_signal_input_event:

.. rst-class:: classref-signal

**input_event**\ (\ camera\: :ref:`Node<class_Node>`, event\: :ref:`InputEvent<class_InputEvent>`, event_position\: :ref:`Vector3<class_Vector3>`, normal\: :ref:`Vector3<class_Vector3>`, shape_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_signal_input_event>`

Emitted when an unhandled input event occurs. Requires :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` to be ``true`` and at least one :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` bit to be set. See :ref:`_input_event()<class_CollisionObject3D_private_method__input_event>` for details.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_CollisionObject3D_signal_mouse_entered>`

Émis lorsque le pointeur de la souris entre dans l'une des formes de cet objet. Nécessite que :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` vaille ``true`` et au moins qu'un bit de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` soit défini.

\ **Note :** En raison de l'absence de détection de collision continue, ce signal peut ne pas être émis dans l'ordre prévu si la souris se déplace assez vite et que la zone du **CollisionObject3D** est petite. Ce signal peut aussi ne pas être émis si un autre **CollisionObject3D** chevauche le **CollisionObject3D** en question.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_CollisionObject3D_signal_mouse_exited>`

Émis lorsque le pointeur de la souris sort de toutes les formes de cet objet. Nécessite que :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` vaille ``true`` et au moins qu'un bit de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` soit défini.

\ **Note :** En raison de l'absence de détection de collision continue, ce signal peut ne pas être émis dans l'ordre prévu si la souris se déplace assez vite et que la zone du **CollisionObject3D** est petite. Ce signal peut aussi ne pas être émis si un autre **CollisionObject3D** chevauche le **CollisionObject3D** en question.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_CollisionObject3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_CollisionObject3D_DisableMode>`

.. _class_CollisionObject3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Quand :ref:`Node.process_mode<class_Node_property_process_mode>` est défini à :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, le retirer de la simulation physique pour arrêter toutes les interactions physiques avec ce **CollisionObject3D**.

Ré-ajouté automatiquement à la simulation physique lorsque le :ref:`Node<class_Node>` est de nouveau traité.

.. _class_CollisionObject3D_constant_DISABLE_MODE_MAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_MAKE_STATIC** = ``1``

Quand :ref:`Node.process_mode<class_Node_property_process_mode>` est défini à :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, rend le corps statique. N'affecte pas :ref:`Area3D<class_Area3D>`. :ref:`PhysicsBody3D<class_PhysicsBody3D>` ne peut être affecté par des forces ou d'autres corps alors qu'il est statique.

Définit automatiquement :ref:`PhysicsBody3D<class_PhysicsBody3D>` à son mode d'origine lorsque le :ref:`Node<class_Node>` est de nouveau traité.

.. _class_CollisionObject3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``2``

Quand :ref:`Node.process_mode<class_Node_property_process_mode>` est défini à :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, ne pas affecter la simulation physique.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CollisionObject3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CollisionObject3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

The physics layers this CollisionObject3D **is in**. Collision objects can exist in one or more of 32 different layers. See also :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>`. For an easier way to change this value from a script, see :ref:`set_collision_layer_value()<class_CollisionObject3D_method_set_collision_layer_value>`.

\ **Note:** Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CollisionObject3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The physics layers this CollisionObject3D **scans**. Collision objects can scan one or more of 32 different layers. See also :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`. For an easier way to change this value from a script, see :ref:`set_collision_mask_value()<class_CollisionObject3D_method_set_collision_mask_value>`.

\ **Note:** Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CollisionObject3D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

La priorité utilisée pour résoudre la collision lors de la pénétration. Plus la priorité est élevée, plus la pénétration dans l'objet sera faible. Cela peut par exemple être utilisé pour empêcher le joueur de franchir les limites d'un niveau.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_CollisionObject3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_CollisionObject3D_DisableMode>`\ )
- :ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **get_disable_mode**\ (\ )

Définit le comportement physique lorsque :ref:`Node.process_mode<class_Node_property_process_mode>` est défini à :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_input_capture_on_drag:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_capture_on_drag** = ``false`` :ref:`🔗<class_CollisionObject3D_property_input_capture_on_drag>`

.. rst-class:: classref-property-setget

- |void| **set_capture_input_on_drag**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_capture_input_on_drag**\ (\ )

Si ``true``, le **CollisionObject3D** continuera de recevoir des événements d'entrée quand la souris sera déplacée au-dessus de ses formes.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_input_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_ray_pickable** = ``true`` :ref:`🔗<class_CollisionObject3D_property_input_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

Si ``true``, cet objet peut être sélectionné. Ces objets peuvent détecter l'entrée/la sortie du pointeur de la souris sur eux, et si la souris pointe sur l'objet, signaler par des événements d'entrée. Nécessite au moins un bit de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` d'être réglé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_CollisionObject3D_private_method__input_event:

.. rst-class:: classref-method

|void| **_input_event**\ (\ camera\: :ref:`Camera3D<class_Camera3D>`, event\: :ref:`InputEvent<class_InputEvent>`, event_position\: :ref:`Vector3<class_Vector3>`, normal\: :ref:`Vector3<class_Vector3>`, shape_idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_CollisionObject3D_private_method__input_event>`

Detects unhandled mouse and touch :ref:`InputEvent<class_InputEvent>`\ s through ``event`` when they happen while hovering over the object. Gesture events are not detected. ``camera`` is the :ref:`Camera3D<class_Camera3D>` that the event originated in (for cameras inside viewports other than the main one to be detected, the parent :ref:`Viewport.physics_object_picking<class_Viewport_property_physics_object_picking>` needs to be set to ``true``). ``event_position`` is the position hit by a raycast from the camera to the mouse, in global space. ``normal`` is the normal vector of the surface at that point in world space. ``shape_idx`` is the index of the detected shape from :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

See also :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`, :ref:`shape_find_owner()<class_CollisionObject3D_method_shape_find_owner>`, and :ref:`shape_owner_get_owner()<class_CollisionObject3D_method_shape_owner_get_owner>`.

\ **Note:** :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` events are triggered if the drag events started while hovering the object, or when the object is in the path of the drag event.

\ **Note:** :ref:`_input_event()<class_CollisionObject3D_private_method__input_event>` requires :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` to be ``true`` and at least one :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` bit to be set.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_private_method__mouse_enter:

.. rst-class:: classref-method

|void| **_mouse_enter**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject3D_private_method__mouse_enter>`

Émis lorsque le curseur de la souris entre dans l'une des formes de cet objet. Nécessite que :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` vaille ``true`` et au moins un des bits de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` d'être défini. Notez que se déplacer entre plusieurs formes d'un unique **CollisionObject3D** ne causera pas l'appel de cette fonction.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_private_method__mouse_exit:

.. rst-class:: classref-method

|void| **_mouse_exit**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject3D_private_method__mouse_exit>`

Émis lorsque le curseur de la souris sort de toutes les formes de cet objet. Nécessite que :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` vaille ``true`` et au moins un des bits de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` d'être défini. Notez que se déplacer entre plusieurs formes d'un unique **CollisionObject3D** ne causera pas l'appel de cette fonction.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_create_shape_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_shape_owner**\ (\ owner\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_CollisionObject3D_method_create_shape_owner>`

Crée un nouveau propriétaire de forme pour l'objet donné. Renvoie l’\ ``owner_id`` du nouveau propriétaire pour une prochaine référence.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_collision_layer_value>`

Renvoie si la couche spécifiée du :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_collision_mask_value>`

Renvoie si la couche spécifiée du :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_rid>`

Renvoie le :ref:`RID<class_RID>` de l'objet.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_shape_owners:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_shape_owners**\ (\ ) :ref:`🔗<class_CollisionObject3D_method_get_shape_owners>`

Renvoie un :ref:`Array<class_Array>` d'identifiants ``owner_id``. Vous pouvez utiliser ces identifiants dans les méthodes prenant ``owner_id`` comme argument.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_is_shape_owner_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_disabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_is_shape_owner_disabled>`

Si ``true``, le propriétaire de forme et ses formes sont désactivés.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_remove_shape_owner:

.. rst-class:: classref-method

|void| **remove_shape_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_remove_shape_owner>`

Supprime le propriétaire de forme donné.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject3D_method_set_collision_layer_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>`, given a ``layer_number`` between 1 and 32. This simplifies editing this **CollisionObject3D**'s collision layer compared to assigning the :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` property directly.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject3D_method_set_collision_mask_value>`

Based on ``value``, enables or disables the specified layer in the :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>`, given a ``layer_number`` between 1 and 32. This simplifies editing this **CollisionObject3D**'s collision mask compared to assigning the :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>` property directly.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_find_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_find_owner**\ (\ shape_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_find_owner>`

Renvoie le ``owner_id`` de la forme spécifiée.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_add_shape:

.. rst-class:: classref-method

|void| **shape_owner_add_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape3D<class_Shape3D>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_add_shape>`

Ajoute un :ref:`Shape3D<class_Shape3D>` au propriétaire de forme.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_clear_shapes:

.. rst-class:: classref-method

|void| **shape_owner_clear_shapes**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_clear_shapes>`

Enlève toutes les formes au propriétaire de forme.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_owner:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **shape_owner_get_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_owner>`

Renvoie l'objet parent du propriétaire de forme spécifié.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **shape_owner_get_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape>`

Renvoie la :ref:`Shape3D<class_Shape3D>` avec l'identifiant donné du propriétaire de forme donné.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_count**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape_count>`

Renvoie le nombre de formes que le propriétaire de forme contient.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_index**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape_index>`

Renvoie l'indice de l'enfant du :ref:`Shape3D<class_Shape3D>` avec l'identifiant donné du propriétaire de forme donné.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **shape_owner_get_transform**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_transform>`

Renvoie la :ref:`Transform3D<class_Transform3D>` du propriétaire de forme.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_remove_shape:

.. rst-class:: classref-method

|void| **shape_owner_remove_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_remove_shape>`

Retire la forme du propriétaire de forme donné.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_set_disabled:

.. rst-class:: classref-method

|void| **shape_owner_set_disabled**\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_set_disabled>`

Si ``true``, désactive le propriétaire spécifié de la forme.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_set_transform:

.. rst-class:: classref-method

|void| **shape_owner_set_transform**\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_set_transform>`

Définit la :ref:`Transform3D<class_Transform3D>` du propriétaire de forme donné.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
