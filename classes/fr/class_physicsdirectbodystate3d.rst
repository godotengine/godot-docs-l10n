:github_url: hide

.. _class_PhysicsDirectBodyState3D:

PhysicsDirectBodyState3D
========================

**Hérite de :** :ref:`Object<class_Object>`

**Hérité par :** :ref:`PhysicsDirectBodyState3DExtension<class_PhysicsDirectBodyState3DExtension>`

Fournit un accès direct à un corps physique dans le :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Fournit un accès direct à un corps physique dans le :ref:`PhysicsServer3D<class_PhysicsServer3D>`, permettant des changements sécurisés aux propriétés physiques. Cet objet est passé par le callback d'état direct de :ref:`RigidBody3D<class_RigidBody3D>`, et est pensé pour changer l'état direct de ce corps. Voir :ref:`RigidBody3D._integrate_forces()<class_RigidBody3D_private_method__integrate_forces>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

- :doc:`Lancer de rayons <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`angular_velocity<class_PhysicsDirectBodyState3D_property_angular_velocity>`             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`center_of_mass<class_PhysicsDirectBodyState3D_property_center_of_mass>`                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`center_of_mass_local<class_PhysicsDirectBodyState3D_property_center_of_mass_local>`     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_layer<class_PhysicsDirectBodyState3D_property_collision_layer>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_mask<class_PhysicsDirectBodyState3D_property_collision_mask>`                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`             | :ref:`inverse_inertia_tensor<class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor>` |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`inverse_mass<class_PhysicsDirectBodyState3D_property_inverse_mass>`                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`linear_velocity<class_PhysicsDirectBodyState3D_property_linear_velocity>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`             | :ref:`principal_inertia_axes<class_PhysicsDirectBodyState3D_property_principal_inertia_axes>` |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`sleeping<class_PhysicsDirectBodyState3D_property_sleeping>`                             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`step<class_PhysicsDirectBodyState3D_property_step>`                                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_angular_damp<class_PhysicsDirectBodyState3D_property_total_angular_damp>`         |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`total_gravity<class_PhysicsDirectBodyState3D_property_total_gravity>`                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_linear_damp<class_PhysicsDirectBodyState3D_property_total_linear_damp>`           |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`transform<class_PhysicsDirectBodyState3D_property_transform>`                           |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_central_force<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_force<class_PhysicsDirectBodyState3D_method_add_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_torque<class_PhysicsDirectBodyState3D_method_add_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_force<class_PhysicsDirectBodyState3D_method_apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_impulse<class_PhysicsDirectBodyState3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                                   |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_force<class_PhysicsDirectBodyState3D_method_apply_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )               |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_impulse<class_PhysicsDirectBodyState3D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque<class_PhysicsDirectBodyState3D_method_apply_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque_impulse<class_PhysicsDirectBodyState3D_method_apply_torque_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_constant_force<class_PhysicsDirectBodyState3D_method_get_constant_force>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_constant_torque<class_PhysicsDirectBodyState3D_method_get_constant_torque>`\ (\ ) |const|                                                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`get_contact_collider<class_PhysicsDirectBodyState3D_method_get_contact_collider>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                    |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_id<class_PhysicsDirectBodyState3D_method_get_contact_collider_id>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                       | :ref:`get_contact_collider_object<class_PhysicsDirectBodyState3D_method_get_contact_collider_object>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_collider_position<class_PhysicsDirectBodyState3D_method_get_contact_collider_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_shape<class_PhysicsDirectBodyState3D_method_get_contact_collider_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_collider_velocity_at_position<class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|          |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_count<class_PhysicsDirectBodyState3D_method_get_contact_count>`\ (\ ) |const|                                                                                               |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_impulse<class_PhysicsDirectBodyState3D_method_get_contact_impulse>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_normal<class_PhysicsDirectBodyState3D_method_get_contact_local_normal>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_position<class_PhysicsDirectBodyState3D_method_get_contact_local_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_local_shape<class_PhysicsDirectBodyState3D_method_get_contact_local_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_velocity_at_position<class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` | :ref:`get_space_state<class_PhysicsDirectBodyState3D_method_get_space_state>`\ (\ )                                                                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_velocity_at_local_position<class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position>`\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                     |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`integrate_forces<class_PhysicsDirectBodyState3D_method_integrate_forces>`\ (\ )                                                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_force<class_PhysicsDirectBodyState3D_method_set_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_torque<class_PhysicsDirectBodyState3D_method_set_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PhysicsDirectBodyState3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

La vitesse de rotation du corps en *radians* par seconde.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** :ref:`🔗<class_PhysicsDirectBodyState3D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

Le centre de masse du corps relatif au centre du corps dans le système de coordonnées global.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_center_of_mass_local:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass_local** :ref:`🔗<class_PhysicsDirectBodyState3D_property_center_of_mass_local>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_center_of_mass_local**\ (\ )

La position du centre de masse du corps dans le système de coordonnées local du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** :ref:`🔗<class_PhysicsDirectBodyState3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

La couche de collision du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** :ref:`🔗<class_PhysicsDirectBodyState3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Le masque de collision du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_inertia:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inverse_inertia** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_inertia>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_inverse_inertia**\ (\ )

L'inverse de l'inertie du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **inverse_inertia_tensor** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor>`

.. rst-class:: classref-property-setget

- :ref:`Basis<class_Basis>` **get_inverse_inertia_tensor**\ (\ )

L'inverse du tenseur d'inertie du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_mass** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_mass>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_mass**\ (\ )

L'inverse de la masse du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

La vitesse linéaire du corps en unités par secondes.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_principal_inertia_axes:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **principal_inertia_axes** :ref:`🔗<class_PhysicsDirectBodyState3D_property_principal_inertia_axes>`

.. rst-class:: classref-property-setget

- :ref:`Basis<class_Basis>` **get_principal_inertia_axes**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** :ref:`🔗<class_PhysicsDirectBodyState3D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleep_state**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Si ``true``, le corps est actuellement au repos (inactif).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** :ref:`🔗<class_PhysicsDirectBodyState3D_property_step>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_step**\ (\ )

L'étape de temps (delta) utilisé pour la simulation.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_angular_damp** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_angular_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_angular_damp**\ (\ )

Le vitesse à laquelle le corps cesse de tourner, s'il n'y a pas d'autres forces qui le déplacent.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_gravity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **total_gravity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_gravity>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_total_gravity**\ (\ )

Le vecteur total de gravité actuellement appliqué à ce corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_linear_damp** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_linear_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_linear_damp**\ (\ )

Le vitesse à laquelle le corps cesse de se déplacer, s'il n'y a pas d'autres forces qui le déplacent.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** :ref:`🔗<class_PhysicsDirectBodyState3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

La matrice de transformation du corps.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PhysicsDirectBodyState3D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`

Ajoute une force directionnelle constante n'affectant pas la rotation, qui continue d'être appliquée au cours du temps jusqu'à ce qu'elle soit enlevée avec ``constant_force = Vector3(0, 0, 0)``.

Ceci est équivalent à utiliser :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>` au centre de masse du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_force>`

Ajoute une force positionnée constante au corps qui continue d'être appliquée au cours du temps jusqu'à ce qu'elle soit nettoyée avec ``constant_force = Vector3(0, 0, 0)``.

\ ``position`` est le décalage depuis l'origine du corps dans les coordonnées globales.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_torque>`

Ajoute une force de rotation constante n'affectant pas la position, qui continue d'être appliquée au cours du temps jusqu'à ce qu'elle soit enlevée avec ``constant_torque = Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_central_force>`

Applique une force directionnelle n'affectant pas la rotation. Une force est dépendante du temps et destinée à être appliquée chaque mise à jour physique.

Ceci est équivalent à utiliser :ref:`apply_force()<class_PhysicsDirectBodyState3D_method_apply_force>` au centre de masse du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_central_impulse>`

Applique une impulsion directionnelle n'affectant pas la rotation.

Une impulsion est indépendante du temps ! Appliquer une impulsion à chaque trame entraînerait une force dépendante du taux de rafraîchissement. Pour cette raison, elle ne devrait être utilisée que pour simuler des impacts ponctuels (utilisez les fonctions "_force" sinon).

Ceci est équivalent à utiliser :ref:`apply_impulse()<class_PhysicsDirectBodyState3D_method_apply_impulse>` au centre de masse du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_force>`

Applique une force positionnée au corps. Une force est dépendante du temps et destinée à être appliquée à chaque mise à jour physique.

\ ``position`` est le décalage depuis l'origine du corps dans les coordonnées globales.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_impulse>`

Applique une impulsion positionnée au corps.

Une impulsion est indépendante du temps ! Appliquer une impulsion à chaque trame entraînerait une force dépendante du taux de rafraîchissement. Pour cette raison, elle ne devrait être utilisée que pour simuler des impacts ponctuels (utilisez les fonctions "_force" sinon).

\ ``position`` est le décalage depuis l'origine du corps dans les coordonnées globales.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_torque>`

Applique une force de rotation sans affecter la position. Une force est dépendante du temps et destinée à être appliquée à chaque mise à jour physique.

\ **Note :** L'inverse de l'inertie (:ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`) est nécessaire pour que cela fonctionne. Pour avoir de l'inverse de l'inertie (:ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`), un :ref:`CollisionShape3D<class_CollisionShape3D>` actif doit être un enfant du nœud, ou vous pouvez définir manuellement :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_torque_impulse>`

Applique une impulsion de rotation au corps sans affecter la position.

Une impulsion est indépendante du temps ! Appliquer une impulsion à chaque trame entraînerait une force dépendante du taux de rafraîchissement. Pour cette raison, elle ne devrait être utilisée que pour simuler des impacts ponctuels (utilisez les fonctions "_force" sinon).

\ **Note :** L'inverse de l'inertie (:ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`) est nécessaire pour que cela fonctionne. Pour avoir de l'inverse de l'inertie (:ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`), un :ref:`CollisionShape3D<class_CollisionShape3D>` actif doit être un enfant du nœud, ou vous pouvez définir manuellement :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_constant_force:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_constant_force**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_constant_force>`

Renvoie les forces positionnelles constantes totales du corps appliquées lors de chaque mise à jour physique.

Voir :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>` et :ref:`add_constant_central_force()<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_constant_torque:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_constant_torque**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_constant_torque>`

Renvoie les forces de rotation constantes totales du corps appliquées lors de chaque mise à jour physique.

Voir :ref:`add_constant_torque()<class_PhysicsDirectBodyState3D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider>`

Renvoie le :ref:`RID<class_RID>` du collisionneur.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_id>`

Renvoie l’id de l’objet du collisionneur.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_object>`

Renvoie l'objet collisionneur.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_position>`

Renvoie la position du point de contact sur le collideur dans le système de coordonnées global.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_shape>`

Renvoie l'index de forme du collisionneur.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position>`

Renvoie le vecteur de vélocité linéaire au point de contact à la collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_count>`

Renvoie le nombre de contacts que ce corps a avec d'autres corps.

\ **Note :** Par défaut, cela renvoie 0 sauf si les corps sont configurés pour surveiller les contacts. Voir :ref:`RigidBody3D.contact_monitor<class_RigidBody3D_property_contact_monitor>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_impulse>`

L'impulsion créée par le contact.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_normal>`

Renvoie la normale locale au point de contact.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_position>`

Renvoie la position du point de contact sur le corps dans le système de coordonnées global.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_shape>`

Renvoie l'index de la forme locale de la collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position>`

Renvoie le vecteur de vélocité linéaire au point de contact du corps.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **get_space_state**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_space_state>`

Renvoie l'état actuel de l'espace, utile pour les requêtes.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position>`

Returns the body's velocity at the given relative position.

\ ``local_position`` is the offset from the body origin in global coordinates.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_integrate_forces:

.. rst-class:: classref-method

|void| **integrate_forces**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_integrate_forces>`

Met à jour la vitesse linéaire et angulaire du corps en appliquant la gravité et l'amortissement pour l'équivalent d'un tic de calcul de la physique.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_set_constant_force:

.. rst-class:: classref-method

|void| **set_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_set_constant_force>`

Définit les forces positionnelles constantes totales du corps appliquées lors de chaque mise à jour physique.

Voir :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>` et :ref:`add_constant_central_force()<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_set_constant_torque:

.. rst-class:: classref-method

|void| **set_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_set_constant_torque>`

Définit les forces de rotation constantes totales du corps appliquées lors de chaque mise à jour physique.

Voir :ref:`add_constant_torque()<class_PhysicsDirectBodyState3D_method_add_constant_torque>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
