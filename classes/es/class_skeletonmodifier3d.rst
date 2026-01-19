:github_url: hide

.. _class_SkeletonModifier3D:

SkeletonModifier3D
==================

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`BoneConstraint3D<class_BoneConstraint3D>`, :ref:`BoneTwistDisperser3D<class_BoneTwistDisperser3D>`, :ref:`IKModifier3D<class_IKModifier3D>`, :ref:`LimitAngularVelocityModifier3D<class_LimitAngularVelocityModifier3D>`, :ref:`LookAtModifier3D<class_LookAtModifier3D>`, :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`, :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>`, :ref:`RetargetModifier3D<class_RetargetModifier3D>`, :ref:`SkeletonIK3D<class_SkeletonIK3D>`, :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, :ref:`XRBodyModifier3D<class_XRBodyModifier3D>`, :ref:`XRHandModifier3D<class_XRHandModifier3D>`

Un nodo que puede modificar los huesos de un Skeleton3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**SkeletonModifier3D** recupera un :ref:`Skeleton3D<class_Skeleton3D>` objetivo al tener un padre :ref:`Skeleton3D<class_Skeleton3D>`.

Si hay un :ref:`AnimationMixer<class_AnimationMixer>`, una modificación siempre se realiza después del proceso de reproducción del :ref:`AnimationMixer<class_AnimationMixer>`.

Este nodo debe utilizarse para implementar solucionadores IK personalizados, restricciones o física de esqueletos.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Design of the Skeleton Modifier 3D <https://godotengine.org/article/design-of-the-skeleton-modifier-3d/>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`active<class_SkeletonModifier3D_property_active>`       | ``true`` |
   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`influence<class_SkeletonModifier3D_property_influence>` | ``1.0``  |
   +---------------------------+---------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification<class_SkeletonModifier3D_private_method__process_modification>`\ (\ ) |virtual|                                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification_with_delta<class_SkeletonModifier3D_private_method__process_modification_with_delta>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_skeleton_changed<class_SkeletonModifier3D_private_method__skeleton_changed>`\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_validate_bone_names<class_SkeletonModifier3D_private_method__validate_bone_names>`\ (\ ) |virtual|                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SkeletonModifier3D_method_get_skeleton>`\ (\ ) |const|                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_SkeletonModifier3D_signal_modification_processed:

.. rst-class:: classref-signal

**modification_processed**\ (\ ) :ref:`🔗<class_SkeletonModifier3D_signal_modification_processed>`

Notifica cuando la modificación ha terminado.

\ **Nota:** Si quieres obtener la pose del hueso modificada por el modificador, debes usar :ref:`Skeleton3D.get_bone_pose()<class_Skeleton3D_method_get_bone_pose>` o :ref:`Skeleton3D.get_bone_global_pose()<class_Skeleton3D_method_get_bone_global_pose>` en el momento en que esta señal es emitida.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_SkeletonModifier3D_BoneAxis:

.. rst-class:: classref-enumeration

enum **BoneAxis**: :ref:`🔗<enum_SkeletonModifier3D_BoneAxis>`

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_X** = ``0``

Valor enumerado para el eje +X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_X** = ``1``

Valor enumerado para el eje -X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Y** = ``2``

Valor enumerado para el eje +Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Y** = ``3``

Valor enumerado para el eje -Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Z** = ``4``

Valor enumerado para el eje +Z.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Z** = ``5``

Valor enumerado para el eje -Z.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_BoneDirection:

.. rst-class:: classref-enumeration

enum **BoneDirection**: :ref:`🔗<enum_SkeletonModifier3D_BoneDirection>`

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_X** = ``0``

Valor enumerado para el eje +X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_X** = ``1``

Valor enumerado para el eje -X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Y** = ``2``

Valor enumerado para el eje +Y.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Y** = ``3``

Valor enumerado para el eje -Y.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Z** = ``4``

Valor enumerado para el eje +Z.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Z** = ``5``

Valor enumerado para el eje -Z.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_FROM_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_FROM_PARENT** = ``6``

Valor enumerado para el eje desde un hueso padre hasta el hueso hijo.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_SecondaryDirection:

.. rst-class:: classref-enumeration

enum **SecondaryDirection**: :ref:`🔗<enum_SkeletonModifier3D_SecondaryDirection>`

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_NONE** = ``0``

Enumerated value for the case when the axis is undefined.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_X** = ``1``

Valor enumerado para el eje +X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_X** = ``2``

Valor enumerado para el eje -X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Y** = ``3``

Valor enumerado para el eje +Y.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Y** = ``4``

Valor enumerado para el eje -Y.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Z** = ``5``

Valor enumerado para el eje +Z.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Z** = ``6``

Valor enumerado para el eje -Z.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_CUSTOM** = ``7``

Enumerated value for an optional axis.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_RotationAxis:

.. rst-class:: classref-enumeration

enum **RotationAxis**: :ref:`🔗<enum_SkeletonModifier3D_RotationAxis>`

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_X** = ``0``

Valor enumerado para la rotación del eje X.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Y** = ``1``

Valor enumerado para la rotación del eje Y.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Z** = ``2``

Valor enumerado para la rotación del eje Z.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_ALL** = ``3``

Valor enumerado para la rotación sin restricciones.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_CUSTOM** = ``4``

Enumerated value for an optional rotation axis.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SkeletonModifier3D_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_SkeletonModifier3D_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Si es ``true``, el **SkeletonModifier3D** se procesará.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_property_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **influence** = ``1.0`` :ref:`🔗<class_SkeletonModifier3D_property_influence>`

.. rst-class:: classref-property-setget

- |void| **set_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_influence**\ (\ )

Establece la influencia de la modificación.

\ **Nota:** Este valor es usado por :ref:`Skeleton3D<class_Skeleton3D>` para mezclar, así que el **SkeletonModifier3D** siempre debería aplicar solo el 100% del resultado sin interpolación.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SkeletonModifier3D_private_method__process_modification:

.. rst-class:: classref-method

|void| **_process_modification**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification>`

**Obsoleto:** Use :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` instead.

Sobrescribe este método virtual para implementar un modificador de esqueleto personalizado. Deberías hacer cosas como obtener la pose actual del :ref:`Skeleton3D<class_Skeleton3D>` y aplicar la pose aquí.

\ :ref:`_process_modification()<class_SkeletonModifier3D_private_method__process_modification>` no debe aplicar :ref:`influence<class_SkeletonModifier3D_property_influence>` a las poses de los huesos porque el :ref:`Skeleton3D<class_Skeleton3D>` aplica automáticamente la influencia a todas las poses de los huesos establecidas por el modificador.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__process_modification_with_delta:

.. rst-class:: classref-method

|void| **_process_modification_with_delta**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification_with_delta>`

Override this virtual method to implement a custom skeleton modifier. You should do things like get the :ref:`Skeleton3D<class_Skeleton3D>`'s current pose and apply the pose here.

\ :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` must not apply :ref:`influence<class_SkeletonModifier3D_property_influence>` to bone poses because the :ref:`Skeleton3D<class_Skeleton3D>` automatically applies influence to all bone poses set by the modifier.

\ ``delta`` is passed from parent :ref:`Skeleton3D<class_Skeleton3D>`. See also :ref:`Skeleton3D.advance()<class_Skeleton3D_method_advance>`.

\ **Note:** This method may be called outside :ref:`Node._process()<class_Node_private_method__process>` and :ref:`Node._physics_process()<class_Node_private_method__physics_process>` with ``delta`` is ``0.0``, since the modification should be processed immediately after initialization of the :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__skeleton_changed:

.. rst-class:: classref-method

|void| **_skeleton_changed**\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__skeleton_changed>`

Se llama a este método cuando el esqueleto cambia.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__validate_bone_names:

.. rst-class:: classref-method

|void| **_validate_bone_names**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__validate_bone_names>`

Called when bone names and indices need to be validated, such as when entering the scene tree or changing skeleton.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModifier3D_method_get_skeleton>`

Returns the parent :ref:`Skeleton3D<class_Skeleton3D>` node if it exists. Otherwise, returns ``null``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
