:github_url: hide

.. _class_SoftBody3D:

SoftBody3D
==========

**Hérite de :** :ref:`MeshInstance3D<class_MeshInstance3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un maillage 3D physique déformable.

.. rst-class:: classref-introduction-group

Description
-----------

Un maillage physique 3D déformable. Utilisé pour créer des objets élastiques ou déformables tels que du tissu, du caoutchouc ou d'autres matériaux flexibles.

En outre, **SoftBody3D** est soumis aux forces du vent définies dans :ref:`Area3D<class_Area3D>` (voir :ref:`Area3D.wind_source_path<class_Area3D_property_wind_source_path>`, :ref:`Area3D.wind_force_magnitude<class_Area3D_property_wind_force_magnitude>`, et :ref:`Area3D.wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`).

\ **Note :** Il est recommandé d'utiliser Jolt Physics lors de l'utilisation de **SoftBody3D** au lieu du GodotPhysics3D par défaut, car l'implémentation du corps souple de Jolt Physics est plus rapide et plus fiable. Vous pouvez changer le moteur de physique en utilisant le paramètre de projet :ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`SoftBody <../tutorials/physics/soft_body>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`                 | ``1``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`                   | ``1``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`damping_coefficient<class_SoftBody3D_property_damping_coefficient>`         | ``0.01``         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`DisableMode<enum_SoftBody3D_DisableMode>` | :ref:`disable_mode<class_SoftBody3D_property_disable_mode>`                       | ``0``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`drag_coefficient<class_SoftBody3D_property_drag_coefficient>`               | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_stiffness<class_SoftBody3D_property_linear_stiffness>`               | ``0.5``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`parent_collision_ignore<class_SoftBody3D_property_parent_collision_ignore>` | ``NodePath("")`` |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`pressure_coefficient<class_SoftBody3D_property_pressure_coefficient>`       | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`                         | :ref:`ray_pickable<class_SoftBody3D_property_ray_pickable>`                       | ``true``         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>`               | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`simulation_precision<class_SoftBody3D_property_simulation_precision>`       | ``5``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`total_mass<class_SoftBody3D_property_total_mass>`                           | ``1.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_SoftBody3D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                          |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_central_force<class_SoftBody3D_method_apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                     |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_central_impulse<class_SoftBody3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                               |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_force<class_SoftBody3D_method_apply_force>`\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_impulse<class_SoftBody3D_method_apply_impulse>`\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ )                                                                                                          |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] | :ref:`get_collision_exceptions<class_SoftBody3D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                  |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_collision_layer_value<class_SoftBody3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_collision_mask_value<class_SoftBody3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                    |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                  | :ref:`get_physics_rid<class_SoftBody3D_method_get_physics_rid>`\ (\ ) |const|                                                                                                                                                                            |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_point_transform<class_SoftBody3D_method_get_point_transform>`\ (\ point_index\: :ref:`int<class_int>`\ )                                                                                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`is_point_pinned<class_SoftBody3D_method_is_point_pinned>`\ (\ point_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_SoftBody3D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                    |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_collision_layer_value<class_SoftBody3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_collision_mask_value<class_SoftBody3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                           |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_point_pinned<class_SoftBody3D_method_set_point_pinned>`\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_SoftBody3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_SoftBody3D_DisableMode>`

.. _class_SoftBody3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Quand :ref:`Node.process_mode<class_Node_property_process_mode>` est défini à :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, le retirer de la simulation physique pour arrêter toutes les interactions physiques avec ce **SoftBody3D**.

Ré-ajouté automatiquement à la simulation physique lorsque le :ref:`Node<class_Node>` est de nouveau traité.

.. _class_SoftBody3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``1``

Quand :ref:`Node.process_mode<class_Node_property_process_mode>` est défini à :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, ne pas affecter la simulation physique.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SoftBody3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Les couches physiques où se trouve ce SoftBody3D. Les objets de collision peuvent exister dans une ou plusieurs des 32 couches existantes. Voir aussi :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`.

\ **Note :** Un objet A peut détecter un contact avec l'objet B seulement si l'objet B est dans l'une des couches que l'objet A scanne. Voir `Niveaux et masques de collisions <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

La couche physique que ce SoftBody3D **scanne**. Les objets de collision peuvent scanner une ou plusieurs des 32 couches existantes. Voir aussi :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`.

\ **Note :** Un objet A peut détecter un contact avec l'objet B seulement si l'objet B est dans l'une des couches que l'objet A scanne. Voir `Niveaux et masques de collisions <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_damping_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_coefficient** = ``0.01`` :ref:`🔗<class_SoftBody3D_property_damping_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_damping_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_coefficient**\ (\ )

Le coefficient d'amortissement du corps. Des valeurs plus élevées ralentiront le corps de façon plus visible lorsque les forces sont appliquées.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_SoftBody3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_SoftBody3D_DisableMode>`\ )
- :ref:`DisableMode<enum_SoftBody3D_DisableMode>` **get_disable_mode**\ (\ )

Définit le comportement physique lorsque :ref:`Node.process_mode<class_Node_property_process_mode>` est défini à :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_drag_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_drag_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_drag_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_coefficient**\ (\ )

Le coefficient de traînée du corps. Des valeurs plus élevées augmentent la résistance à l'air de ce corps.

\ **Note :** Cette valeur est actuellement inutilisée par l'implémentation physique par défaut de Godot.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_linear_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_stiffness** = ``0.5`` :ref:`🔗<class_SoftBody3D_property_linear_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_linear_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_stiffness**\ (\ )

Des valeurs plus élevées entraîneront un corps plus rigide, tandis que des valeurs plus faibles augmenteront la capacité du corps à plier. La valeur peut être comprise entre ``0.0`` et ``1.0`` (inclusifs).

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_parent_collision_ignore:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **parent_collision_ignore** = ``NodePath("")`` :ref:`🔗<class_SoftBody3D_property_parent_collision_ignore>`

.. rst-class:: classref-property-setget

- |void| **set_parent_collision_ignore**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_parent_collision_ignore**\ (\ )

:ref:`NodePath<class_NodePath>` vers un :ref:`CollisionObject3D<class_CollisionObject3D>` avec lequel ce SoftBody3D devrait éviter de chevaucher ("clipping").

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_pressure_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_pressure_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_pressure_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure_coefficient**\ (\ )

Le coefficient de pression de ce corps souple. Simule l'accumulation de pression de l'intérieur de ce corps. Des valeurs plus élevées augmentent la force de cet effet.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ray_pickable** = ``true`` :ref:`🔗<class_SoftBody3D_property_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

Si ``true``, le **SoftBody3D** répondra aux :ref:`RayCast3D<class_RayCast3D>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_shrinking_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **shrinking_factor** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_shrinking_factor>`

.. rst-class:: classref-property-setget

- |void| **set_shrinking_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shrinking_factor**\ (\ )

Redimensionne les longueurs de repos des contraintes d'arête du **SoftBody3D**. Des valeurs positives réduisent le maillage, tandis que les valeurs négatives l'élargissent. Par exemple, une valeur de ``0.1`` raccourcit les arêtes du maillage de 10%, tandis que ``-0.1`` étend les arêtes de 10%.

\ **Note :** Le mieux est d'utiliser :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>` sur des maillages de surface avec des points épinglés.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_simulation_precision:

.. rst-class:: classref-property

:ref:`int<class_int>` **simulation_precision** = ``5`` :ref:`🔗<class_SoftBody3D_property_simulation_precision>`

.. rst-class:: classref-property-setget

- |void| **set_simulation_precision**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_simulation_precision**\ (\ )

Augmenter cette valeur améliorera la simulation résultante, mais peut affecter les performances. Utilisez avec parcimonie.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_total_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_mass** = ``1.0`` :ref:`🔗<class_SoftBody3D_property_total_mass>`

.. rst-class:: classref-property-setget

- |void| **set_total_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_total_mass**\ (\ )

La masse du SoftBody3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SoftBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_add_collision_exception_with>`

Ajoute un corps à la liste des corps avec lesquels ce corps ne peut entrer en collision.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_force>`

Distribue et applique une force à tous les points. Une force est dépendante du temps et est destinée à être appliquée à chaque mise à jour physique.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_impulse>`

Distribue et applique une impulsion à tous les points.

Une impulsion est indépendante du temps ! Appliquer une impulsion à chaque trame entraînerait une force dépendante du taux de rafraîchissement. Pour cette raison, elle ne devrait être utilisée que pour simuler des impacts ponctuels (utiliser les fonctions "_force" sinon).

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_force>`

Applique une force à un point. Une force est dépendante du temps et destinée à être appliquée à chaque mise à jour physique.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_impulse>`

Applique une impulsion à un point.

Une impulsion est indépendante du temps ! Appliquer une impulsion à chaque trame entraînerait une force dépendante du taux de rafraichissent. Pour cette raison, elle ne devrait être utilisée que pour simuler des impacts ponctuels (utiliser les fonctions "_force" sinon).

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_SoftBody3D_method_get_collision_exceptions>`

Renvoie un tableau de nœuds qui ont été ajoutés comme exceptions de collision pour ce corps.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_layer_value>`

Renvoie si la couche spécifiée du :ref:`collision_layer<class_SoftBody3D_property_collision_layer>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_mask_value>`

Renvoie si la couche spécifiée du :ref:`collision_mask<class_SoftBody3D_property_collision_mask>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_physics_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_physics_rid**\ (\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_physics_rid>`

Renvoie le :ref:`RID<class_RID>` interne utilisé par le :ref:`PhysicsServer3D<class_PhysicsServer3D>` pour ce corps.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_point_transform:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_transform**\ (\ point_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SoftBody3D_method_get_point_transform>`

Renvoie la translation locale d'un sommet du tableau de surface.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_is_point_pinned:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_pinned**\ (\ point_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_is_point_pinned>`

Renvoie ``true`` si le sommet est défini comme épinglé.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_remove_collision_exception_with>`

Retire un corps de la liste des corps avec lesquels ce corps ne peut entrer en collision.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_layer_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_mask_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_point_pinned:

.. rst-class:: classref-method

|void| **set_point_pinned**\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SoftBody3D_method_set_point_pinned>`

Définit l'état épinglé d'un sommet de surface. Lorsque défini à ``true``, le chemin d'attachement optionnel ``attachment_path`` peut définir un :ref:`Node3D<class_Node3D>` auquel le sommet épinglé sera attaché.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
