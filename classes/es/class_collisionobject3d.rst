:github_url: hide

.. _class_CollisionObject3D:

CollisionObject3D
=================

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`Area3D<class_Area3D>`, :ref:`PhysicsBody3D<class_PhysicsBody3D>`

Clase base abstracta para objetos de física 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base abstracta para objetos de físicas 3D. Un **CollisionObject3D** puede contener cualquier número de :ref:`Shape3D<class_Shape3D>`\ s para la colisión. Cada forma debe ser asignada a un *propietario de forma*. Los propietarios de formas no son nodos y no aparecen en el editor, pero son accesibles a través de código usando los métodos ``shape_owner_*``.

\ **Advertencia:** Con una escala no uniforme, este nodo probablemente no se comportará como se espera. Se recomienda mantener su escala igual en todos los ejes y en su lugar ajustar su(s) forma(s) de colisión.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
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

Emitida cuando el puntero del ratón entra en cualquiera de las formas de este objeto. Requiere que :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` sea ``true`` y que al menos un bit de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` esté establecido.

\ **Nota:** Debido a la falta de detección continua de colisiones, esta señal puede no emitirse en el orden esperado si el ratón se mueve lo suficientemente rápido y el área del **CollisionObject3D** es pequeña. Puede que esta señal tampoco se emita si otro **CollisionObject3D** se superpone al **CollisionObject3D** en cuestión.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_CollisionObject3D_signal_mouse_exited>`

Emitida cuando el puntero del ratón sale de todas las formas de este objeto. Requiere que :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` sea ``true`` y que al menos un bit de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` esté establecido.

\ **Nota:** Debido a la falta de detección continua de colisiones, esta señal puede no emitirse en el orden esperado si el ratón se mueve lo suficientemente rápido y el área de **CollisionObject3D** es pequeña. Esta señal también puede no emitirse si otro **CollisionObject3D** se superpone al **CollisionObject3D** en cuestión.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_CollisionObject3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_CollisionObject3D_DisableMode>`

.. _class_CollisionObject3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Cuando :ref:`Node.process_mode<class_Node_property_process_mode>` se establece en :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, se elimina de la simulación física para detener todas las interacciones físicas con este **CollisionObject3D**.

Se vuelve a añadir automáticamente a la simulación física cuando el :ref:`Node<class_Node>` se procesa de nuevo.

.. _class_CollisionObject3D_constant_DISABLE_MODE_MAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_MAKE_STATIC** = ``1``

Cuando :ref:`Node.process_mode<class_Node_property_process_mode>` se establece en :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, haz que el cuerpo sea estático. No afecta a :ref:`Area3D<class_Area3D>`. :ref:`PhysicsBody3D<class_PhysicsBody3D>` no puede ser afectado por fuerzas u otros cuerpos mientras es estático.

Automáticamente devuelve :ref:`PhysicsBody3D<class_PhysicsBody3D>` a su modo original cuando el :ref:`Node<class_Node>` se procesa de nuevo.

.. _class_CollisionObject3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``2``

Cuando :ref:`Node.process_mode<class_Node_property_process_mode>` se establece en :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, no afecta a la simulación de físicas.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

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

La prioridad usada para resolver colisiones cuando ocurre penetración. Cuanto mayor sea la prioridad, menor será la penetración en el objeto. Esto puede usarse, por ejemplo, para evitar que el jugador atraviese los límites de un nivel.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_CollisionObject3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_CollisionObject3D_DisableMode>`\ )
- :ref:`DisableMode<enum_CollisionObject3D_DisableMode>` **get_disable_mode**\ (\ )

Define el comportamiento en la física cuando :ref:`Node.process_mode<class_Node_property_process_mode>` se establece a :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_input_capture_on_drag:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_capture_on_drag** = ``false`` :ref:`🔗<class_CollisionObject3D_property_input_capture_on_drag>`

.. rst-class:: classref-property-setget

- |void| **set_capture_input_on_drag**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_capture_input_on_drag**\ (\ )

Si es ``true``, el **CollisionObject3D** continuará recibiendo eventos de entrada mientras el ratón se arrastra sobre sus formas.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_property_input_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **input_ray_pickable** = ``true`` :ref:`🔗<class_CollisionObject3D_property_input_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

Si es ``true``, este objeto es seleccionable. Un objeto seleccionable puede detectar la entrada/salida del puntero del ratón y, si el ratón está dentro de él, informar de los eventos de entrada. Requiere que al menos un bit de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` esté establecido.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

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

Se llama cuando el puntero del ratón entra en cualquiera de las formas de este objeto. Requiere que :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` sea ``true`` y que al menos un bit de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` esté establecido. Ten en cuenta que moverse entre diferentes formas dentro de un único **CollisionObject3D** no provocará que se llame a esta función.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_private_method__mouse_exit:

.. rst-class:: classref-method

|void| **_mouse_exit**\ (\ ) |virtual| :ref:`🔗<class_CollisionObject3D_private_method__mouse_exit>`

Se llama cuando el puntero del ratón sale de todas las formas de este objeto. Requiere que :ref:`input_ray_pickable<class_CollisionObject3D_property_input_ray_pickable>` sea ``true`` y que al menos un bit de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` esté establecido. Ten en cuenta que moverse entre diferentes formas dentro de un único **CollisionObject3D** no provocará que se llame a esta función.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_create_shape_owner:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_shape_owner**\ (\ owner\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_CollisionObject3D_method_create_shape_owner>`

Crea un nuevo dueño de la forma para el objeto dado. Devuelve ``owner_id`` del nuevo propietario para futuras referencias.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_collision_layer_value>`

Devuelve si la capa especificada de :ref:`collision_layer<class_CollisionObject3D_property_collision_layer>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_collision_mask_value>`

Devuelve si la capa especificada de :ref:`collision_mask<class_CollisionObject3D_property_collision_mask>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_CollisionObject3D_method_get_rid>`

Devuelve el :ref:`RID<class_RID>` del objeto.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_get_shape_owners:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_shape_owners**\ (\ ) :ref:`🔗<class_CollisionObject3D_method_get_shape_owners>`

Devuelve un :ref:`Array<class_Array>` de identificadores ``owner_id``. Puedes usar estos identificadores en otros métodos que toman ``owner_id`` como argumento.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_is_shape_owner_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_shape_owner_disabled**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_is_shape_owner_disabled>`

Si es ``true``, el propietario de la forma y sus formas se desactivan.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_remove_shape_owner:

.. rst-class:: classref-method

|void| **remove_shape_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_remove_shape_owner>`

Elimina al dueño de la forma dada.

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

Devuelve el ``owner_id`` de la forma dada.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_add_shape:

.. rst-class:: classref-method

|void| **shape_owner_add_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape\: :ref:`Shape3D<class_Shape3D>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_add_shape>`

Agrega una :ref:`Shape3D<class_Shape3D>` al propietario de la forma.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_clear_shapes:

.. rst-class:: classref-method

|void| **shape_owner_clear_shapes**\ (\ owner_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_clear_shapes>`

Elimina todas las formas del dueño de la forma.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_owner:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **shape_owner_get_owner**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_owner>`

Devuelve el objeto padre del propietario de la forma dada.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **shape_owner_get_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape>`

Devuelve la :ref:`Shape3D<class_Shape3D>` con el ID dado del propietario de la forma dado.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_count**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape_count>`

Devuelve el número de formas que contiene el propietario de la forma dada.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_shape_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **shape_owner_get_shape_index**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_shape_index>`

Devuelve el índice de hijo de la :ref:`Shape3D<class_Shape3D>` con el ID dado del propietario de forma dado.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_get_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **shape_owner_get_transform**\ (\ owner_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CollisionObject3D_method_shape_owner_get_transform>`

Devuelve el :ref:`Transform3D<class_Transform3D>` del propietario de la forma.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_remove_shape:

.. rst-class:: classref-method

|void| **shape_owner_remove_shape**\ (\ owner_id\: :ref:`int<class_int>`, shape_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_remove_shape>`

Quita una forma del dueño de la forma dada.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_set_disabled:

.. rst-class:: classref-method

|void| **shape_owner_set_disabled**\ (\ owner_id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_set_disabled>`

Si es ``true``, deshabilita al dueño de la forma dada.

.. rst-class:: classref-item-separator

----

.. _class_CollisionObject3D_method_shape_owner_set_transform:

.. rst-class:: classref-method

|void| **shape_owner_set_transform**\ (\ owner_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_CollisionObject3D_method_shape_owner_set_transform>`

Establece la :ref:`Transform3D<class_Transform3D>` del propietario de forma dado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
