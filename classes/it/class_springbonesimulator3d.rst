:github_url: hide

.. _class_SpringBoneSimulator3D:

SpringBoneSimulator3D
=====================

**Eredita:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Uno :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` per applicare un'oscillazione inerziale alle catene d'ossa.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` può servire per far oscillare capelli, stoffa e code. Questo modificatore si comporta in modo diverso da :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` in quanto tenta di restituire la posa originale dopo la modifica.

Se si configurano :ref:`set_root_bone()<class_SpringBoneSimulator3D_method_set_root_bone>` e :ref:`set_end_bone()<class_SpringBoneSimulator3D_method_set_end_bone>`, viene trattato come una catena di ossa. Nota che non supporta una catena ramificata come le catene a forma di Y.

Quando viene creata una catena di ossa, viene generato un array dalle ossa che esistono nel mezzo ed elencato nella lista delle articolazioni.

A ciascuna articolazione è possibile applicare diverse proprietà, come :ref:`set_joint_stiffness()<class_SpringBoneSimulator3D_method_set_joint_stiffness>`, :ref:`set_joint_drag()<class_SpringBoneSimulator3D_method_set_joint_drag>` e :ref:`set_joint_gravity()<class_SpringBoneSimulator3D_method_set_joint_gravity>`.

Per semplicità, è possibile impostare i valori per tutte le articolazioni allo stesso tempo utilizzando una :ref:`Curve<class_Curve>`. Se si desidera specificare valori dettagliati individualmente, imposta :ref:`set_individual_config()<class_SpringBoneSimulator3D_method_set_individual_config>` su ``true``.

Per la simulazione della fisica, **SpringBoneSimulator3D** può avere figli come collisioni autonome che non sono correlate al :ref:`PhysicsServer3D<class_PhysicsServer3D>`, vedi anche :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>`.

\ **Attenzione:** Uno **SpringBoneSimulator3D** ridimensionato probabilmente non si comporterà come previsto. Assicurarsi che lo :ref:`Skeleton3D<class_Skeleton3D>` genitore e le sue ossa non siano ridimensionati.

\ **Nota:** La maggior parte dei metodi di questa classe accetta un parametro ``index``. Questo parametro specifica quale voce nell'elenco delle impostazioni restituire, se l'IK ha più voci (ad esempio, ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`external_force<class_SpringBoneSimulator3D_property_external_force>`       | ``Vector3(0, 0, 0)`` |
   +-------------------------------+----------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`mutable_bone_axes<class_SpringBoneSimulator3D_property_mutable_bone_axes>` | ``true``             |
   +-------------------------------+----------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`setting_count<class_SpringBoneSimulator3D_property_setting_count>`         | ``0``                |
   +-------------------------------+----------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`are_all_child_collisions_enabled<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                        |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`clear_collisions<class_SpringBoneSimulator3D_method_clear_collisions>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`clear_exclude_collisions<class_SpringBoneSimulator3D_method_clear_exclude_collisions>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`clear_settings<class_SpringBoneSimulator3D_method_clear_settings>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_center_bone<class_SpringBoneSimulator3D_method_get_center_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                          |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_center_bone_name<class_SpringBoneSimulator3D_method_get_center_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CenterFrom<enum_SpringBoneSimulator3D_CenterFrom>`    | :ref:`get_center_from<class_SpringBoneSimulator3D_method_get_center_from>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                          |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`get_center_node<class_SpringBoneSimulator3D_method_get_center_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                          |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_collision_count<class_SpringBoneSimulator3D_method_get_collision_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                  |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`get_collision_path<class_SpringBoneSimulator3D_method_get_collision_path>`\ (\ index\: :ref:`int<class_int>`, collision\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_drag<class_SpringBoneSimulator3D_method_get_drag>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                        |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                                   | :ref:`get_drag_damping_curve<class_SpringBoneSimulator3D_method_get_drag_damping_curve>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_end_bone<class_SpringBoneSimulator3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` | :ref:`get_end_bone_direction<class_SpringBoneSimulator3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_end_bone_length<class_SpringBoneSimulator3D_method_get_end_bone_length>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                  |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_end_bone_name<class_SpringBoneSimulator3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_exclude_collision_count<class_SpringBoneSimulator3D_method_get_exclude_collision_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`get_exclude_collision_path<class_SpringBoneSimulator3D_method_get_exclude_collision_path>`\ (\ index\: :ref:`int<class_int>`, collision\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_gravity<class_SpringBoneSimulator3D_method_get_gravity>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                                   | :ref:`get_gravity_damping_curve<class_SpringBoneSimulator3D_method_get_gravity_damping_curve>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                               | :ref:`get_gravity_direction<class_SpringBoneSimulator3D_method_get_gravity_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                              |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_bone<class_SpringBoneSimulator3D_method_get_joint_bone>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_joint_bone_name<class_SpringBoneSimulator3D_method_get_joint_bone_name>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_count<class_SpringBoneSimulator3D_method_get_joint_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                          |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_joint_drag<class_SpringBoneSimulator3D_method_get_joint_drag>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_joint_gravity<class_SpringBoneSimulator3D_method_get_joint_gravity>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                               | :ref:`get_joint_gravity_direction<class_SpringBoneSimulator3D_method_get_joint_gravity_direction>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                   |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_joint_radius<class_SpringBoneSimulator3D_method_get_joint_radius>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`   | :ref:`get_joint_rotation_axis<class_SpringBoneSimulator3D_method_get_joint_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                               | :ref:`get_joint_rotation_axis_vector<class_SpringBoneSimulator3D_method_get_joint_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_joint_stiffness<class_SpringBoneSimulator3D_method_get_joint_stiffness>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_radius<class_SpringBoneSimulator3D_method_get_radius>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                                   | :ref:`get_radius_damping_curve<class_SpringBoneSimulator3D_method_get_radius_damping_curve>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_root_bone<class_SpringBoneSimulator3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_root_bone_name<class_SpringBoneSimulator3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                    |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`   | :ref:`get_rotation_axis<class_SpringBoneSimulator3D_method_get_rotation_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                               | :ref:`get_rotation_axis_vector<class_SpringBoneSimulator3D_method_get_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_stiffness<class_SpringBoneSimulator3D_method_get_stiffness>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                                   | :ref:`get_stiffness_damping_curve<class_SpringBoneSimulator3D_method_get_stiffness_damping_curve>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                  |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_config_individual<class_SpringBoneSimulator3D_method_is_config_individual>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_end_bone_extended<class_SpringBoneSimulator3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`reset<class_SpringBoneSimulator3D_method_reset>`\ (\ )                                                                                                                                                                     |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_center_bone<class_SpringBoneSimulator3D_method_set_center_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                                    |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_center_bone_name<class_SpringBoneSimulator3D_method_set_center_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                               |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_center_from<class_SpringBoneSimulator3D_method_set_center_from>`\ (\ index\: :ref:`int<class_int>`, center_from\: :ref:`CenterFrom<enum_SpringBoneSimulator3D_CenterFrom>`\ )                                          |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_center_node<class_SpringBoneSimulator3D_method_set_center_node>`\ (\ index\: :ref:`int<class_int>`, node_path\: :ref:`NodePath<class_NodePath>`\ )                                                                     |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_collision_count<class_SpringBoneSimulator3D_method_set_collision_count>`\ (\ index\: :ref:`int<class_int>`, count\: :ref:`int<class_int>`\ )                                                                           |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_collision_path<class_SpringBoneSimulator3D_method_set_collision_path>`\ (\ index\: :ref:`int<class_int>`, collision\: :ref:`int<class_int>`, node_path\: :ref:`NodePath<class_NodePath>`\ )                            |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_drag<class_SpringBoneSimulator3D_method_set_drag>`\ (\ index\: :ref:`int<class_int>`, drag\: :ref:`float<class_float>`\ )                                                                                              |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_drag_damping_curve<class_SpringBoneSimulator3D_method_set_drag_damping_curve>`\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ )                                                                 |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_enable_all_child_collisions<class_SpringBoneSimulator3D_method_set_enable_all_child_collisions>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                               |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone<class_SpringBoneSimulator3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                                          |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_direction<class_SpringBoneSimulator3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ )                      |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_length<class_SpringBoneSimulator3D_method_set_end_bone_length>`\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ )                                                                      |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_name<class_SpringBoneSimulator3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                                     |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_exclude_collision_count<class_SpringBoneSimulator3D_method_set_exclude_collision_count>`\ (\ index\: :ref:`int<class_int>`, count\: :ref:`int<class_int>`\ )                                                           |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_exclude_collision_path<class_SpringBoneSimulator3D_method_set_exclude_collision_path>`\ (\ index\: :ref:`int<class_int>`, collision\: :ref:`int<class_int>`, node_path\: :ref:`NodePath<class_NodePath>`\ )            |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_extend_end_bone<class_SpringBoneSimulator3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                       |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_gravity<class_SpringBoneSimulator3D_method_set_gravity>`\ (\ index\: :ref:`int<class_int>`, gravity\: :ref:`float<class_float>`\ )                                                                                     |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_gravity_damping_curve<class_SpringBoneSimulator3D_method_set_gravity_damping_curve>`\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ )                                                           |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_gravity_direction<class_SpringBoneSimulator3D_method_set_gravity_direction>`\ (\ index\: :ref:`int<class_int>`, gravity_direction\: :ref:`Vector3<class_Vector3>`\ )                                                   |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_individual_config<class_SpringBoneSimulator3D_method_set_individual_config>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                   |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_drag<class_SpringBoneSimulator3D_method_set_joint_drag>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, drag\: :ref:`float<class_float>`\ )                                                   |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_gravity<class_SpringBoneSimulator3D_method_set_joint_gravity>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, gravity\: :ref:`float<class_float>`\ )                                          |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_gravity_direction<class_SpringBoneSimulator3D_method_set_joint_gravity_direction>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, gravity_direction\: :ref:`Vector3<class_Vector3>`\ )        |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_radius<class_SpringBoneSimulator3D_method_set_joint_radius>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, radius\: :ref:`float<class_float>`\ )                                             |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_rotation_axis<class_SpringBoneSimulator3D_method_set_joint_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ ) |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_rotation_axis_vector<class_SpringBoneSimulator3D_method_set_joint_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )             |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_stiffness<class_SpringBoneSimulator3D_method_set_joint_stiffness>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ )                                    |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_radius<class_SpringBoneSimulator3D_method_set_radius>`\ (\ index\: :ref:`int<class_int>`, radius\: :ref:`float<class_float>`\ )                                                                                        |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_radius_damping_curve<class_SpringBoneSimulator3D_method_set_radius_damping_curve>`\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ )                                                             |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone<class_SpringBoneSimulator3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                                        |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone_name<class_SpringBoneSimulator3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                                   |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_rotation_axis<class_SpringBoneSimulator3D_method_set_rotation_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ )                                            |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_rotation_axis_vector<class_SpringBoneSimulator3D_method_set_rotation_axis_vector>`\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )                                                        |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_stiffness<class_SpringBoneSimulator3D_method_set_stiffness>`\ (\ index\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ )                                                                               |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_stiffness_damping_curve<class_SpringBoneSimulator3D_method_set_stiffness_damping_curve>`\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ )                                                       |
   +-------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SpringBoneSimulator3D_CenterFrom:

.. rst-class:: classref-enumeration

enum **CenterFrom**: :ref:`🔗<enum_SpringBoneSimulator3D_CenterFrom>`

.. _class_SpringBoneSimulator3D_constant_CENTER_FROM_WORLD_ORIGIN:

.. rst-class:: classref-enumeration-constant

:ref:`CenterFrom<enum_SpringBoneSimulator3D_CenterFrom>` **CENTER_FROM_WORLD_ORIGIN** = ``0``

L'origine del mondo è definita come centro.

.. _class_SpringBoneSimulator3D_constant_CENTER_FROM_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`CenterFrom<enum_SpringBoneSimulator3D_CenterFrom>` **CENTER_FROM_NODE** = ``1``

Il :ref:`Node3D<class_Node3D>` specificato da :ref:`set_center_node()<class_SpringBoneSimulator3D_method_set_center_node>` è definito come centro.

Se il :ref:`Node3D<class_Node3D>` non viene trovato, il :ref:`Skeleton3D<class_Skeleton3D>` genitore è trattato come centro.

.. _class_SpringBoneSimulator3D_constant_CENTER_FROM_BONE:

.. rst-class:: classref-enumeration-constant

:ref:`CenterFrom<enum_SpringBoneSimulator3D_CenterFrom>` **CENTER_FROM_BONE** = ``2``

L'origine della posa d'osso dello :ref:`Skeleton3D<class_Skeleton3D>` genitore specificato da :ref:`set_center_bone()<class_SpringBoneSimulator3D_method_set_center_bone>` è definito come centro.

Se il :ref:`Node3D<class_Node3D>` non viene trovato, lo :ref:`Skeleton3D<class_Skeleton3D>` genitore è trattato come centro.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SpringBoneSimulator3D_property_external_force:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **external_force** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_SpringBoneSimulator3D_property_external_force>`

.. rst-class:: classref-property-setget

- |void| **set_external_force**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_external_force**\ (\ )

La forza costante che influenza sempre le ossa. È uguale al risultato quando lo :ref:`Skeleton3D<class_Skeleton3D>` genitore si muove a questa velocità nella direzione opposta.

Questo è utile per effetti come il vento e l'antigravità.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_SpringBoneSimulator3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

If ``true``, the solver retrieves the bone axis from the bone pose every frame.

If ``false``, the solver retrieves the bone axis from the bone rest and caches it, which increases performance slightly, but position changes in the bone pose made before processing this **SpringBoneSimulator3D** are ignored.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_SpringBoneSimulator3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Il numero di impostazioni.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_all_child_collisions_enabled**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>`

Restituisce ``true`` se tutti i figli :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` sono contenuti nella lista di collisioni all'indice ``index`` nelle impostazioni.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_clear_collisions:

.. rst-class:: classref-method

|void| **clear_collisions**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_clear_collisions>`

Cancella tutte le collisioni dalla lista delle collisioni all'indice ``index`` nelle impostazioni quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_clear_exclude_collisions:

.. rst-class:: classref-method

|void| **clear_exclude_collisions**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_clear_exclude_collisions>`

Cancella tutte le collisioni escluse dalla lista delle collisioni all'indice ``index`` nelle impostazioni quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_clear_settings>`

Cancella tutte le impostazioni.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_center_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_center_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_center_bone>`

Restituisce il percorso di nodo centrale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_center_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_center_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_center_bone_name>`

Restituisce il nome dell'osso centrale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_center_from:

.. rst-class:: classref-method

:ref:`CenterFrom<enum_SpringBoneSimulator3D_CenterFrom>` **get_center_from**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_center_from>`

Restituisce l'origine del centro nella catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_center_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_center_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_center_node>`

Restituisce il percorso di nodo centrale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_collision_count>`

Restituisce il numero di collisioni della lista delle collisioni della catena d'ossa quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_collision_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_collision_path**\ (\ index\: :ref:`int<class_int>`, collision\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_collision_path>`

Restituisce il percorso di nodo del :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` in ``collision`` nella lista delle collisioni della catena d'ossa quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_drag:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_drag**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_drag>`

Restituisce la curva di smorzamento per la forza di resistenza della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_drag_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_drag_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_drag_damping_curve>`

Restituisce la curva di smorzamento per la forza di resistenza della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_end_bone>`

Restituisce l'indice dell'osso finale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_end_bone_direction>`

Returns the tail direction of the end bone of the bone chain when :ref:`is_end_bone_extended()<class_SpringBoneSimulator3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_end_bone_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_end_bone_length**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_end_bone_length>`

Returns the end bone tail length of the bone chain when :ref:`is_end_bone_extended()<class_SpringBoneSimulator3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_end_bone_name>`

Restituisce il nome dell'osso finale della coda d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_exclude_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_exclude_collision_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_exclude_collision_count>`

Restituisce il numero di collisioni escluse della lista delle collisioni escluse della catena d'ossa quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_exclude_collision_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_exclude_collision_path**\ (\ index\: :ref:`int<class_int>`, collision\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_exclude_collision_path>`

Restituisce il percorso di nodo del :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` in ``collision`` nella lista di esclusioni delle collisioni della catena d'ossa quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_gravity:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_gravity**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_gravity>`

Restituisce la quantità di gravità della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_gravity_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_gravity_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_gravity_damping_curve>`

Restituisce la curva di smorzamento per la quantità di gravità della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_gravity_direction:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_gravity_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_gravity_direction>`

Restituisce la direzione di gravità della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_bone>`

Restituisce l'indice dell'osso in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_bone_name>`

Restituisce il nome dell'osso in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_count>`

Restituisce il numero di articolazioni nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_drag:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_drag**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_drag>`

Restituisce la forza di resistenza in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_gravity:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_gravity**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_gravity>`

Restituisce la quantità di gravità in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_gravity_direction:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_joint_gravity_direction**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_gravity_direction>`

Restituisce la direzione di gravità in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_radius**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_radius>`

Restituisce il raggio in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_rotation_axis:

.. rst-class:: classref-method

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **get_joint_rotation_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_rotation_axis>`

Restituisce l'asse di rotazione in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_rotation_axis_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_joint_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_rotation_axis_vector>`

Returns the rotation axis vector for the specified joint in the bone chain. This vector represents the axis around which the joint can rotate. It is determined based on the rotation axis set for the joint.

If :ref:`get_joint_rotation_axis()<class_SpringBoneSimulator3D_method_get_joint_rotation_axis>` is :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`, this method returns ``Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_joint_stiffness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_stiffness**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_joint_stiffness>`

Restituisce la forza di rigidità in ``joint`` nella lista delle articolazioni della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_radius**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_radius>`

Restituisce il raggio di un'articolazione della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_radius_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_radius_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_radius_damping_curve>`

Restituisce la curva di smorzamento per il raggio di un'articolazione della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_root_bone>`

Restituisce l'indice dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_root_bone_name>`

Restituisce il nome dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_rotation_axis:

.. rst-class:: classref-method

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **get_rotation_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_rotation_axis>`

Restituisce l'asse di rotazione della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_rotation_axis_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_rotation_axis_vector>`

Returns the rotation axis vector of the bone chain. This vector represents the axis around which the bone chain can rotate. It is determined based on the rotation axis set for the bone chain.

If :ref:`get_rotation_axis()<class_SpringBoneSimulator3D_method_get_rotation_axis>` is :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`, this method returns ``Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_stiffness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_stiffness**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_stiffness>`

Restituisce la forza di rigidità della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_get_stiffness_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_stiffness_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_get_stiffness_damping_curve>`

Restituisce la curva di smorzamento per la forza di rigidità della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_is_config_individual:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_config_individual**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_is_config_individual>`

Restituisce ``true`` se la configurazione può essere modificata individualmente per ogni articolazione.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpringBoneSimulator3D_method_is_end_bone_extended>`

Returns ``true`` if the end bone is extended to have a tail.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_reset>`

Reimposta uno stato di simulazione rispetto alla posa d'ossa attuale.

È utile per evitare che il risultato della simulazione diventi brusco. Ad esempio, chiamandolo subito dopo una chiamata a :ref:`AnimationPlayer.play()<class_AnimationPlayer_method_play>` senza dissolvenza, o all'interno del precedente segnale :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>` se la sua condizione cambia in modo significativo.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_center_bone:

.. rst-class:: classref-method

|void| **set_center_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_center_bone>`

Imposta l'indice dell'osso centrale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_center_bone_name:

.. rst-class:: classref-method

|void| **set_center_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_center_bone_name>`

Imposta il nome dell'osso centrale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_center_from:

.. rst-class:: classref-method

|void| **set_center_from**\ (\ index\: :ref:`int<class_int>`, center_from\: :ref:`CenterFrom<enum_SpringBoneSimulator3D_CenterFrom>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_center_from>`

Imposta l'origine del centro nella catena d'ossa.

Il movimento delle ossa viene calcolato in base alla differenza nella distanza relativa tra centro e osso nei frame precedenti e successivi.

Ad esempio, se lo :ref:`Skeleton3D<class_Skeleton3D>` genitore è utilizzato come centro, le ossa sono considerate come non mosse se lo :ref:`Skeleton3D<class_Skeleton3D>` si muove nel mondo.

In questo caso, solo un cambiamento nella posa dell'osso viene considerato un movimento d'osso.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_center_node:

.. rst-class:: classref-method

|void| **set_center_node**\ (\ index\: :ref:`int<class_int>`, node_path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_center_node>`

Imposta il percorso di nodo centrale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_collision_count:

.. rst-class:: classref-method

|void| **set_collision_count**\ (\ index\: :ref:`int<class_int>`, count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_collision_count>`

Imposta il numero di collisioni nella lista delle collisioni all'indice ``index`` nelle impostazioni quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_collision_path:

.. rst-class:: classref-method

|void| **set_collision_path**\ (\ index\: :ref:`int<class_int>`, collision\: :ref:`int<class_int>`, node_path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_collision_path>`

Imposta il percorso di nodo del :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` in ``collision`` nella lista di collisioni della catena d'ossa quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_drag:

.. rst-class:: classref-method

|void| **set_drag**\ (\ index\: :ref:`int<class_int>`, drag\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_drag>`

Restituisce la forza di resistenza della catena d'ossa. Maggiore è il valore, più soppresse sono le oscillazioni.

Questo valore viene ridimensionato da :ref:`set_drag_damping_curve()<class_SpringBoneSimulator3D_method_set_drag_damping_curve>` e memorizzato nella cache in ogni impostazione d'articolazione nella lista delle articolazioni.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_drag_damping_curve:

.. rst-class:: classref-method

|void| **set_drag_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_drag_damping_curve>`

Imposta la curva di smorzamento per la forza di resistenza della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_enable_all_child_collisions:

.. rst-class:: classref-method

|void| **set_enable_all_child_collisions**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_enable_all_child_collisions>`

Se ``enabled`` è ``true``, tutti i :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` figlio sono in collisione e :ref:`set_exclude_collision_path()<class_SpringBoneSimulator3D_method_set_exclude_collision_path>` è abilitato come lista di esclusione all'indice ``index`` nelle impostazioni.

Se ``enabled`` è ``false``, è necessario registrare manualmente tutte le collisioni valide con :ref:`set_collision_path()<class_SpringBoneSimulator3D_method_set_collision_path>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_end_bone>`

Imposta l'indice dell'osso finale della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_end_bone_direction>`

Imposta la direzione della coda dell'osso finale della catena d'ossa quando :ref:`is_end_bone_extended()<class_SpringBoneSimulator3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_end_bone_length:

.. rst-class:: classref-method

|void| **set_end_bone_length**\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_end_bone_length>`

Imposta la lunghezza della coda dell'osso finale della catena d'ossa quando :ref:`is_end_bone_extended()<class_SpringBoneSimulator3D_method_is_end_bone_extended>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_end_bone_name>`

Imposta il nome dell'osso finale della coda d'ossa.

\ **Nota:** L'osso finale deve essere l'osso radice o un figlio dell'osso radice. Se sono uguali, la coda deve essere estesa con :ref:`set_extend_end_bone()<class_SpringBoneSimulator3D_method_set_extend_end_bone>` per far oscillare l'osso.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_exclude_collision_count:

.. rst-class:: classref-method

|void| **set_exclude_collision_count**\ (\ index\: :ref:`int<class_int>`, count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_exclude_collision_count>`

Imposta il numero di collisioni escluse nell'elenco delle collisioni escluse in ``index`` nelle impostazioni quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_exclude_collision_path:

.. rst-class:: classref-method

|void| **set_exclude_collision_path**\ (\ index\: :ref:`int<class_int>`, collision\: :ref:`int<class_int>`, node_path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_exclude_collision_path>`

Imposta il percorso di nodo del :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` in ``collision`` nella lista di esclusioni delle collisioni della catena d'ossa quando :ref:`are_all_child_collisions_enabled()<class_SpringBoneSimulator3D_method_are_all_child_collisions_enabled>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_extend_end_bone>`

Se ``enabled`` è ``true``, l'osso finale è allungato per avere una coda.

La configurazione della coda allungata è assegnata all'ultimo elemento nella lista delle articolazioni. In altre parole, se ``enabled`` è impostato su ``false``, la configurazione dell'ultimo elemento nella lista delle articolazioni non ha alcun effetto nel risultato simulato.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_gravity:

.. rst-class:: classref-method

|void| **set_gravity**\ (\ index\: :ref:`int<class_int>`, gravity\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_gravity>`

Imposta la quantità di gravità della catena d'ossa. Questo valore non è un'accelerazione, ma una velocità costante di movimento in :ref:`set_gravity_direction()<class_SpringBoneSimulator3D_method_set_gravity_direction>`.

Se ``gravity`` non è ``0``, la posa modificata non tornerà alla posa originale poiché è sempre influenzata dalla gravità.

Questo valore viene ridimensionato da :ref:`set_gravity_damping_curve()<class_SpringBoneSimulator3D_method_set_gravity_damping_curve>` e memorizzato nella cache in ogni impostazione d'articolazione nella lista delle articolazioni.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_gravity_damping_curve:

.. rst-class:: classref-method

|void| **set_gravity_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_gravity_damping_curve>`

Imposta la curva di smorzamento per la quantità di gravità della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_gravity_direction:

.. rst-class:: classref-method

|void| **set_gravity_direction**\ (\ index\: :ref:`int<class_int>`, gravity_direction\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_gravity_direction>`

Imposta la direzione di gravità della catena d'ossa. Questo valore viene normalizzato internamente e poi moltiplicato per :ref:`set_gravity()<class_SpringBoneSimulator3D_method_set_gravity>`.

Il valore viene memorizzato nella cache in ogni impostazione d'articolazione nella lista delle articolazioni.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_individual_config:

.. rst-class:: classref-method

|void| **set_individual_config**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_individual_config>`

Se ``enabled`` è ``true``, la configurazione può essere modificata individualmente per ogni articolazione.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_joint_drag:

.. rst-class:: classref-method

|void| **set_joint_drag**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, drag\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_joint_drag>`

Imposta la forza di resistenza in ``joint`` nella lista delle articolazioni della catena d'ossa quando :ref:`is_config_individual()<class_SpringBoneSimulator3D_method_is_config_individual>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_joint_gravity:

.. rst-class:: classref-method

|void| **set_joint_gravity**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, gravity\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_joint_gravity>`

Imposta la quantità di gravità in ``joint`` nella lista delle articolazioni della catena d'ossa quando :ref:`is_config_individual()<class_SpringBoneSimulator3D_method_is_config_individual>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_joint_gravity_direction:

.. rst-class:: classref-method

|void| **set_joint_gravity_direction**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, gravity_direction\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_joint_gravity_direction>`

Imposta la direzione di gravità in ``joint`` nella lista delle articolazioni della catena d'ossa quando :ref:`is_config_individual()<class_SpringBoneSimulator3D_method_is_config_individual>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_joint_radius:

.. rst-class:: classref-method

|void| **set_joint_radius**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_joint_radius>`

Imposta il raggio dell'articolazione in ``joint`` nella lista delle articolazioni della catena d'ossa quando :ref:`is_config_individual()<class_SpringBoneSimulator3D_method_is_config_individual>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_joint_rotation_axis:

.. rst-class:: classref-method

|void| **set_joint_rotation_axis**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_joint_rotation_axis>`

Imposta l'asse di rotazione dell'articolazione ``joint`` nell'elenco delle articolazioni della catena d'ossa quando :ref:`is_config_individual()<class_SpringBoneSimulator3D_method_is_config_individual>` è ``true``.

Gli assi si basano sullo spazio della posa di riferimento. Se ``axis`` è :ref:`ROTATION_AXIS_CUSTOM<class_SpringBoneSimulator3D_constant_ROTATION_AXIS_CUSTOM>`, è possibile specificare qualsiasi asse.

Qui, la posa di riferimento è la posa dell'osso immediatamente prima della simulazione.

\ **Nota:** L'asse di rotazione e il vettore in avanti non dovrebbero essere collineari per evitare rotazioni indesiderate poiché **SpringBoneSimulator3D** non tiene conto delle forze di torsione.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_joint_rotation_axis_vector:

.. rst-class:: classref-method

|void| **set_joint_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_joint_rotation_axis_vector>`

Sets the rotation axis vector for the specified joint in the bone chain.

This vector is normalized by an internal process and represents the axis around which the bone chain can rotate.

If the vector length is ``0``, it is considered synonymous with :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_joint_stiffness:

.. rst-class:: classref-method

|void| **set_joint_stiffness**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_joint_stiffness>`

Imposta la forza di rigidità in ``joint`` nella lista delle articolazioni della catena d'ossa quando :ref:`is_config_individual()<class_SpringBoneSimulator3D_method_is_config_individual>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_radius:

.. rst-class:: classref-method

|void| **set_radius**\ (\ index\: :ref:`int<class_int>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_radius>`

Imposta il raggio di un'articolazione della catena d'ossa. È utilizzato per muovere e scorrere con il :ref:`SpringBoneCollision3D<class_SpringBoneCollision3D>` nella lista di collisioni.

Il valore è ridimensionato da :ref:`set_radius_damping_curve()<class_SpringBoneSimulator3D_method_set_radius_damping_curve>` e memorizzato nella cache in ogni impostazione d'articolazione nella lista delle articolazioni.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_radius_damping_curve:

.. rst-class:: classref-method

|void| **set_radius_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_radius_damping_curve>`

Imposta la curva di smorzamento per il raggio di un'articolazione della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_root_bone>`

Imposta l'indice dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_root_bone_name>`

Imposta il nome dell'osso radice della catena d'ossa.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_rotation_axis:

.. rst-class:: classref-method

|void| **set_rotation_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_rotation_axis>`

Imposta l'asse di rotazione della catena d'ossa. Se impostato su un'asse specifico, si comporta come un giunto a cerniera. Questo valore viene memorizzato nella cache in ogni impostazione d'articolazione nella lista delle articolazioni.

Gli assi si basano sullo spazio della posa di riferimento. Se ``axis`` è :ref:`ROTATION_AXIS_CUSTOM<class_SpringBoneSimulator3D_constant_ROTATION_AXIS_CUSTOM>`, è possibile specificare qualsiasi asse.

Qui, la posa di riferimento è la posa dell'osso immediatamente prima della simulazione.

\ **Nota:** L'asse di rotazione e il vettore in avanti non dovrebbero essere collineari per evitare rotazioni indesiderate poiché **SpringBoneSimulator3D** non tiene conto delle forze di torsione.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_rotation_axis_vector:

.. rst-class:: classref-method

|void| **set_rotation_axis_vector**\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_rotation_axis_vector>`

Sets the rotation axis vector of the bone chain. The value is cached in each joint setting in the joint list.

This vector is normalized by an internal process and represents the axis around which the bone chain can rotate.

If the vector length is ``0``, it is considered synonymous with :ref:`SkeletonModifier3D.ROTATION_AXIS_ALL<class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL>`.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_stiffness:

.. rst-class:: classref-method

|void| **set_stiffness**\ (\ index\: :ref:`int<class_int>`, stiffness\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_stiffness>`

Restituisce la forza di rigidità della catena d'ossa. Maggiore è il valore, più velocemente recupera la sua posa originale.

Se ``stiffness`` è ``0``, la posa modificata non tornerà alla posa originale.

Questo valore viene ridimensionato da :ref:`set_stiffness_damping_curve()<class_SpringBoneSimulator3D_method_set_stiffness_damping_curve>` e memorizzato nella cache in ogni impostazione d'articolazione nella lista delle articolazioni.

.. rst-class:: classref-item-separator

----

.. _class_SpringBoneSimulator3D_method_set_stiffness_damping_curve:

.. rst-class:: classref-method

|void| **set_stiffness_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_SpringBoneSimulator3D_method_set_stiffness_damping_curve>`

Imposta la curva di smorzamento per la forza di rigidità della catena d'ossa.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
