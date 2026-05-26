:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone3D:

PhysicalBone3D
==============

**Hereda:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un cuerpo físico utilizado para hacer que los huesos de un :ref:`Skeleton3D<class_Skeleton3D>` reaccionen a la física.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El nodo **PhysicalBone3D** es un cuerpo físico que se puede utilizar para hacer que los huesos de un :ref:`Skeleton3D<class_Skeleton3D>` reaccionen a la física.

\ **Nota:** Para detectar huesos físicos con raycasts, la propiedad :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>` del padre :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` debe ser ``true`` y el hueso del :ref:`Skeleton3D<class_Skeleton3D>` debe ser asignado al **PhysicalBone3D** correctamente; esto significa que :ref:`get_bone_id()<class_PhysicalBone3D_method_get_bone_id>` debe devolver un ID válido (``>= 0``).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Sistema de Ragdoll <../tutorials/physics/ragdoll_system>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`           | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`DampMode<enum_PhysicalBone3D_DampMode>`   | :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`angular_velocity<class_PhysicalBone3D_property_angular_velocity>`   | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`body_offset<class_PhysicalBone3D_property_body_offset>`             | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`bounce<class_PhysicalBone3D_property_bounce>`                       | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`can_sleep<class_PhysicalBone3D_property_can_sleep>`                 | ``true``                                            |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`custom_integrator<class_PhysicalBone3D_property_custom_integrator>` | ``false``                                           |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`friction<class_PhysicalBone3D_property_friction>`                   | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_scale<class_PhysicalBone3D_property_gravity_scale>`         | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`joint_offset<class_PhysicalBone3D_property_joint_offset>`           | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`joint_rotation<class_PhysicalBone3D_property_joint_rotation>`       | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`JointType<enum_PhysicalBone3D_JointType>` | :ref:`joint_type<class_PhysicalBone3D_property_joint_type>`               | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>`             | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`DampMode<enum_PhysicalBone3D_DampMode>`   | :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>`   | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`linear_velocity<class_PhysicalBone3D_property_linear_velocity>`     | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`mass<class_PhysicalBone3D_property_mass>`                           | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_integrate_forces<class_PhysicalBone3D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual|    |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`apply_central_impulse<class_PhysicalBone3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`apply_impulse<class_PhysicalBone3D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_bone_id<class_PhysicalBone3D_method_get_bone_id>`\ (\ ) |const|                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_simulate_physics<class_PhysicalBone3D_method_get_simulate_physics>`\ (\ )                                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_simulating_physics<class_PhysicalBone3D_method_is_simulating_physics>`\ (\ )                                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_PhysicalBone3D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_PhysicalBone3D_DampMode>`

.. _class_PhysicalBone3D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

En este modo, el valor de amortiguación del cuerpo se añade a cualquier valor establecido en las áreas o al valor predeterminado.

.. _class_PhysicalBone3D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

En este modo, el valor de amortiguación del cuerpo reemplaza cualquier valor establecido en las áreas o al valor predeterminado.

.. rst-class:: classref-item-separator

----

.. _enum_PhysicalBone3D_JointType:

.. rst-class:: classref-enumeration

enum **JointType**: :ref:`🔗<enum_PhysicalBone3D_JointType>`

.. _class_PhysicalBone3D_constant_JOINT_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_NONE** = ``0``

No se aplica ninguna articulación al PhysicsBone3D.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_PIN:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_PIN** = ``1``

Se aplica una articulación de pasador al PhysicsBone3D.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_CONE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_CONE** = ``2``

Se aplica una articulación cónica al PhysicsBone3D.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_HINGE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_HINGE** = ``3``

Se aplica una articulación de bisagra al PhysicsBone3D.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_SLIDER** = ``4``

Se aplica una articulación deslizante al PhysicsBone3D.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_6DOF:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_6DOF** = ``5``

Se aplica una articulación de 6 grados de libertad al PhysicsBone3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicalBone3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Amortigua la rotación del cuerpo. Por defecto, el cuerpo utilizará el ajuste del proyecto :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` o cualquier valor de anulación establecido por un :ref:`Area3D<class_Area3D>` en el que se encuentre el cuerpo. Dependiendo de :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>`, puedes configurar :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>` para que se añada o reemplace el valor de amortiguación del cuerpo.

Véase :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` para más detalles sobre la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_PhysicalBone3D_DampMode>`\ )
- :ref:`DampMode<enum_PhysicalBone3D_DampMode>` **get_angular_damp_mode**\ (\ )

Define cómo se aplica :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

La velocidad de rotación del PhysicsBone3D en *radianes* por segundo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_body_offset:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **body_offset** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_body_offset>`

.. rst-class:: classref-property-setget

- |void| **set_body_offset**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_body_offset**\ (\ )

Establece la transformación del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_bounce:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_bounce>`

.. rst-class:: classref-property-setget

- |void| **set_bounce**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce**\ (\ )

La elasticidad del cuerpo. Los valores van desde ``0`` (sin rebote) hasta ``1`` (rebote completo).

\ **Nota:** Incluso con :ref:`bounce<class_PhysicalBone3D_property_bounce>` establecido en ``1.0``, se perderá algo de energía con el tiempo debido a la amortiguación lineal y angular. Para tener un **PhysicalBone3D** que conserve toda su energía con el tiempo, establece :ref:`bounce<class_PhysicalBone3D_property_bounce>` en ``1.0``, :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>` en :ref:`DAMP_MODE_REPLACE<class_PhysicalBone3D_constant_DAMP_MODE_REPLACE>`, :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>` en ``0.0``, :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` en :ref:`DAMP_MODE_REPLACE<class_PhysicalBone3D_constant_DAMP_MODE_REPLACE>`, y :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>` en ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_PhysicalBone3D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

Si es ``true``, el cuerpo se desactiva cuando no hay movimiento, por lo que no participará en la simulación hasta que sea despertado por una fuerza externa.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_PhysicalBone3D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

Si es ``true``, la integración estándar de fuerzas (como la gravedad o la amortiguación) se deshabilitará para este cuerpo. Aparte de la respuesta a la colisión, el cuerpo solo se moverá según lo determinado por el método :ref:`_integrate_forces()<class_PhysicalBone3D_private_method__integrate_forces>`, si ese método virtual es sobrescrito.

Establecer esta propiedad llamará internamente al método :ref:`PhysicsServer3D.body_set_omit_force_integration()<class_PhysicsServer3D_method_body_set_omit_force_integration>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_friction:

.. rst-class:: classref-property

:ref:`float<class_float>` **friction** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_friction>`

.. rst-class:: classref-property-setget

- |void| **set_friction**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction**\ (\ )

La fricción del cuerpo. Los valores van desde ``0`` (sin fricción) hasta ``1`` (fricción máxima).

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

Esto se multiplica por :ref:`ProjectSettings.physics/3d/default_gravity<class_ProjectSettings_property_physics/3d/default_gravity>` para producir la gravedad de este cuerpo. Por ejemplo, un valor de ``1.0`` aplicará la gravedad normal, ``2.0`` aplicará el doble de gravedad y ``0.5`` aplicará la mitad de gravedad a este cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_offset:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **joint_offset** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_joint_offset>`

.. rst-class:: classref-property-setget

- |void| **set_joint_offset**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_joint_offset**\ (\ )

Establece la transformación de la articulación.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **joint_rotation** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_joint_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_joint_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_joint_rotation**\ (\ )

Establece la rotación de la articulación en radianes.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_type:

.. rst-class:: classref-property

:ref:`JointType<enum_PhysicalBone3D_JointType>` **joint_type** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_joint_type>`

.. rst-class:: classref-property-setget

- |void| **set_joint_type**\ (\ value\: :ref:`JointType<enum_PhysicalBone3D_JointType>`\ )
- :ref:`JointType<enum_PhysicalBone3D_JointType>` **get_joint_type**\ (\ )

Establece el tipo de articulación.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Amortigua el movimiento del cuerpo. Por defecto, el cuerpo usará :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` o cualquier valor de anulación establecido por un :ref:`Area3D<class_Area3D>` en el que se encuentre el cuerpo. Dependiendo de :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>`, :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>` puede añadirse o reemplazar el valor de amortiguación del cuerpo.

Véase :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` para más detalles sobre la amortiguación.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_PhysicalBone3D_DampMode>`\ )
- :ref:`DampMode<enum_PhysicalBone3D_DampMode>` **get_linear_damp_mode**\ (\ )

Define cómo se aplica :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

The body's linear velocity in units per second. Can be used sporadically, but **don't set this every frame**, because physics may run in another thread and runs at a different granularity. Use :ref:`_integrate_forces()<class_PhysicalBone3D_private_method__integrate_forces>` as your process loop for precise control of the body state.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

La masa del cuerpo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicalBone3D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual| :ref:`🔗<class_PhysicalBone3D_private_method__integrate_forces>`

Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default, it is called before the standard force integration, but the :ref:`custom_integrator<class_PhysicalBone3D_property_custom_integrator>` property allows you to disable the standard force integration and do fully custom force integration for a body.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicalBone3D_method_apply_central_impulse>`

Aplica un impulso direccional sin afectar la rotación.

¡Un impulso es independiente del tiempo! Aplicar un impulso en cada cuadro resultaría en una fuerza dependiente de la tasa de fotogramas. Por esta razón, solo debe usarse al simular impactos únicos (usa las funciones "_integrate_forces" en su lugar).

Esto es equivalente a usar :ref:`apply_impulse()<class_PhysicalBone3D_method_apply_impulse>` en el centro de masa del cuerpo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicalBone3D_method_apply_impulse>`

Aplica un impulso posicionado al PhysicsBone3D.

¡Un impulso es independiente del tiempo! Aplicar un impulso en cada cuadro resultaría en una fuerza dependiente de los fotogramas. Por esta razón, sólo debe utilizarse cuando se simulan impactos únicos (de lo contrario, utiliza las funciones "_integrate_forces").

\ ``position`` es el desplazamiento desde el origen del PhysicsBone3D en coordenadas globales.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_get_bone_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_id**\ (\ ) |const| :ref:`🔗<class_PhysicalBone3D_method_get_bone_id>`

Devuelve el identificador único del PhysicsBone3D.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_get_simulate_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_simulate_physics**\ (\ ) :ref:`🔗<class_PhysicalBone3D_method_get_simulate_physics>`

Devuelve ``true`` si el PhysicsBone3D tiene permitido simular física.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) :ref:`🔗<class_PhysicalBone3D_method_is_simulating_physics>`

Devuelve ``true`` si el PhysicsBone3D está simulando física actualmente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
