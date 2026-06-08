:github_url: hide

.. _class_CharacterBody3D:

CharacterBody3D
===============

**Hérite de :** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un corps physique 3D spécialisé pour les personnages déplacés par script.

.. rst-class:: classref-introduction-group

Description
-----------

**CharacterBody3D** est une classe spécialisée pour les corps physiques qui sont destinés à être contrôlés par l'utilisateur. Ils ne sont pas affectés par la physique du tout, mais ils affectent les autres corps physiques sur leur chemin. Ils sont principalement utilisés pour fournir à l'API de haut niveau un moyen de déplacer des objets avec de la détection de mur et de pente (la méthode :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`) en plus de la détection générale de collisions fournie par :ref:`PhysicsBody3D.move_and_collide()<class_PhysicsBody3D_method_move_and_collide>`. Cela la rend utile pour les corps physiques hautement configurables qui doivent se déplacer de manière spécifique et se entrer en collision avec le monde, comme c'est souvent le cas avec des personnages contrôlés par l'utilisateur.

Pour les objets de jeu qui ne nécessitent pas de détection de mouvement ou de collision complexe, comme des plates-formes mobiles, :ref:`AnimatableBody3D<class_AnimatableBody3D>` est plus simple à configurer.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

- :doc:`Dépanner des problèmes de physique <../tutorials/physics/troubleshooting_physics_issues>`

- :doc:`Caractère cinématique (2D) <../tutorials/physics/kinematic_character_2d>`

- `Démo de personnage cinématique en 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_block_on_wall<class_CharacterBody3D_property_floor_block_on_wall>`     | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_constant_speed<class_CharacterBody3D_property_floor_constant_speed>`   | ``false``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>`             | ``0.7853982``        |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_snap_length<class_CharacterBody3D_property_floor_snap_length>`         | ``0.1``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_stop_on_slope<class_CharacterBody3D_property_floor_stop_on_slope>`     | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`max_slides<class_CharacterBody3D_property_max_slides>`                       | ``6``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`MotionMode<enum_CharacterBody3D_MotionMode>`           | :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>`                     | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_floor_layers<class_CharacterBody3D_property_platform_floor_layers>` | ``4294967295``       |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` | :ref:`platform_on_leave<class_CharacterBody3D_property_platform_on_leave>`         | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_wall_layers<class_CharacterBody3D_property_platform_wall_layers>`   | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`safe_margin<class_CharacterBody3D_property_safe_margin>`                     | ``0.001``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`slide_on_ceiling<class_CharacterBody3D_property_slide_on_ceiling>`           | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`up_direction<class_CharacterBody3D_property_up_direction>`                   | ``Vector3(0, 1, 0)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`velocity<class_CharacterBody3D_property_velocity>`                           | ``Vector3(0, 0, 0)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`wall_min_slide_angle<class_CharacterBody3D_property_wall_min_slide_angle>`   | ``0.2617994``        |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`apply_floor_snap<class_CharacterBody3D_method_apply_floor_snap>`\ (\ )                                                                        |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_floor_angle<class_CharacterBody3D_method_get_floor_angle>`\ (\ up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_floor_normal<class_CharacterBody3D_method_get_floor_normal>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_last_motion<class_CharacterBody3D_method_get_last_motion>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>` | :ref:`get_last_slide_collision<class_CharacterBody3D_method_get_last_slide_collision>`\ (\ )                                                        |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_platform_angular_velocity<class_CharacterBody3D_method_get_platform_angular_velocity>`\ (\ ) |const|                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_platform_velocity<class_CharacterBody3D_method_get_platform_velocity>`\ (\ ) |const|                                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_position_delta<class_CharacterBody3D_method_get_position_delta>`\ (\ ) |const|                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_real_velocity<class_CharacterBody3D_method_get_real_velocity>`\ (\ ) |const|                                                              |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>` | :ref:`get_slide_collision<class_CharacterBody3D_method_get_slide_collision>`\ (\ slide_idx\: :ref:`int<class_int>`\ )                               |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`get_slide_collision_count<class_CharacterBody3D_method_get_slide_collision_count>`\ (\ ) |const|                                              |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_wall_normal<class_CharacterBody3D_method_get_wall_normal>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling<class_CharacterBody3D_method_is_on_ceiling>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling_only<class_CharacterBody3D_method_is_on_ceiling_only>`\ (\ ) |const|                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor<class_CharacterBody3D_method_is_on_floor>`\ (\ ) |const|                                                                          |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor_only<class_CharacterBody3D_method_is_on_floor_only>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall<class_CharacterBody3D_method_is_on_wall>`\ (\ ) |const|                                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall_only<class_CharacterBody3D_method_is_on_wall_only>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`move_and_slide<class_CharacterBody3D_method_move_and_slide>`\ (\ )                                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_CharacterBody3D_MotionMode:

.. rst-class:: classref-enumeration

enum **MotionMode**: :ref:`🔗<enum_CharacterBody3D_MotionMode>`

.. _class_CharacterBody3D_constant_MOTION_MODE_GROUNDED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **MOTION_MODE_GROUNDED** = ``0``

À appliquer lorsque les notions de murs, de plafond et de sol sont pertinentes. Dans ce mode, le mouvement du corps réagira aux pentes (accélération/ralentissement). Ce mode est adapté pour les jeux au sol comme les jeux de plate-forme.

.. _class_CharacterBody3D_constant_MOTION_MODE_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **MOTION_MODE_FLOATING** = ``1``

À appliquer quand il n'y a pas de notion de sol ou de plafond. Toutes les collisions seront rapportées comme ``on_wall``. Dans ce mode, lorsque vous glissez, la vitesse sera toujours constante. Ce mode est adapté pour les jeux sans sol comme les jeux dans l'espace.

.. rst-class:: classref-item-separator

----

.. _enum_CharacterBody3D_PlatformOnLeave:

.. rst-class:: classref-enumeration

enum **PlatformOnLeave**: :ref:`🔗<enum_CharacterBody3D_PlatformOnLeave>`

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_ADD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_VELOCITY** = ``0``

Ajoute la vitesse de la dernière plateforme à la vitesse :ref:`velocity<class_CharacterBody3D_property_velocity>` lorsque vous quittez une plateforme mobile.

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY** = ``1``

Ajoute la vitesse de la dernière plateforme à la vitesse :ref:`velocity<class_CharacterBody3D_property_velocity>` lorsque vous quittez une plateforme mobile, mais les mouvements descendants sont ignorés. Cela est utile pour garder la hauteur de saut complète même lorsque la plateforme descend.

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_DO_NOTHING:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_DO_NOTHING** = ``2``

Ne fait rien quand quitte la plateforme.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CharacterBody3D_property_floor_block_on_wall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_block_on_wall** = ``true`` :ref:`🔗<class_CharacterBody3D_property_floor_block_on_wall>`

.. rst-class:: classref-property-setget

- |void| **set_floor_block_on_wall_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_block_on_wall_enabled**\ (\ )

Si ``true``, le corps ne pourra se déplacer que sur le sol. Cette option évite d'être en mesure de marcher sur les murs, elle permettra cependant de descendre en glissant sur eux.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_constant_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_constant_speed** = ``false`` :ref:`🔗<class_CharacterBody3D_property_floor_constant_speed>`

.. rst-class:: classref-property-setget

- |void| **set_floor_constant_speed_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_constant_speed_enabled**\ (\ )

Si ``false`` (par défaut), le corps se déplace plus rapidement sur les pentes descendantes et ralentit sur les pentes ascendantes.

Si ``true``, le corps se déplace toujours à la même vitesse sur le sol, peu importe la pente. Notez que vous devez utiliser :ref:`floor_snap_length<class_CharacterBody3D_property_floor_snap_length>` pour rester sur une pente descendante à vitesse constante.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_max_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_max_angle** = ``0.7853982`` :ref:`🔗<class_CharacterBody3D_property_floor_max_angle>`

.. rst-class:: classref-property-setget

- |void| **set_floor_max_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_max_angle**\ (\ )

Angle maximal (en radians) où une pente est toujours considérée comme un sol (ou un plafond), plutôt qu'un mur, lorsqu'on appelle :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. La valeur par défaut est de 45 degrés.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_snap_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_snap_length** = ``0.1`` :ref:`🔗<class_CharacterBody3D_property_floor_snap_length>`

.. rst-class:: classref-property-setget

- |void| **set_floor_snap_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_snap_length**\ (\ )

Définit une distance de aimantation. Lorsque défini à une valeur différente de ``0.0``, le corps est maintenu attaché aux pentes lors de l'appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Le vecteur d'aimantation est déterminé par la distance donnée le long de la direction opposée au vecteur :ref:`up_direction<class_CharacterBody3D_property_up_direction>`.

Tant que le vecteur d'aimantation est en contact avec le sol et que le corps se déplace contre :ref:`up_direction<class_CharacterBody3D_property_up_direction>`, le corps restera attaché à la surface. L'aimantation n'est pas appliquée si le corps se déplace le long de :ref:`up_direction<class_CharacterBody3D_property_up_direction>`, ce qui signifie qu'il contient la vitesse de montée verticale, de sorte qu'il sera en mesure de se détacher du sol lors d'un saut ou lorsque le corps est poussé par quelque chose. Si vous voulez appliquer une aimantation sans tenir compte de la vitesse, utilisez :ref:`apply_floor_snap()<class_CharacterBody3D_method_apply_floor_snap>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_stop_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_stop_on_slope** = ``true`` :ref:`🔗<class_CharacterBody3D_property_floor_stop_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_floor_stop_on_slope_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_stop_on_slope_enabled**\ (\ )

Si ``true``, le corps ne glissera pas sur les pentes lors de l'appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` lorsque le corps est debout et immobile.

Si ``false``, le corps glissera sur les pentes du sol lorsque :ref:`velocity<class_CharacterBody3D_property_velocity>` applique une force descendante.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_max_slides:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_slides** = ``6`` :ref:`🔗<class_CharacterBody3D_property_max_slides>`

.. rst-class:: classref-property-setget

- |void| **set_max_slides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_slides**\ (\ )

Nombre de fois maximal où le corps peut changer de direction avant qu'il s'arrête lors de l'appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Doit être supérieur à zéro.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_motion_mode:

.. rst-class:: classref-property

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **motion_mode** = ``0`` :ref:`🔗<class_CharacterBody3D_property_motion_mode>`

.. rst-class:: classref-property-setget

- |void| **set_motion_mode**\ (\ value\: :ref:`MotionMode<enum_CharacterBody3D_MotionMode>`\ )
- :ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **get_motion_mode**\ (\ )

Définit le mode de mouvement qui définit le comportement de :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_floor_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_floor_layers** = ``4294967295`` :ref:`🔗<class_CharacterBody3D_property_platform_floor_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_floor_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_floor_layers**\ (\ )

Les couches de collision qui seront incluses pour détecter les corps de sol qui agiront comme des plates-formes mobiles à être suivies par le **CharacterBody3D**. Par défaut, les corps du sol sont détectées et propagent leur vitesse.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_on_leave:

.. rst-class:: classref-property

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **platform_on_leave** = ``0`` :ref:`🔗<class_CharacterBody3D_property_platform_on_leave>`

.. rst-class:: classref-property-setget

- |void| **set_platform_on_leave**\ (\ value\: :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>`\ )
- :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **get_platform_on_leave**\ (\ )

Définit le comportement à appliquer lorsque vous quittez une plate-forme mobile. Par défaut, pour être physiquement correct, lorsque vous quittez la plateforme, sa vitesse est appliquée.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_wall_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_wall_layers** = ``0`` :ref:`🔗<class_CharacterBody3D_property_platform_wall_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_wall_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_wall_layers**\ (\ )

Les couches de collision qui seront incluses pour détecter les corps de mur qui agiront comme des plates-formes mobiles à être suivies par le **CharacterBody3D**. Par défaut, tous les corps de murs sont ignorés.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_margin** = ``0.001`` :ref:`🔗<class_CharacterBody3D_property_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_safe_margin**\ (\ )

Marge supplémentaire utilisée pour la récupération de collision lors de l'appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

Si le corps est au plus à cette distance d'un autre corps, elle les considérera comme en collision et seront repoussés avant d'exécuter le mouvement réel.

Une valeur plus élevée signifie qu'elle est plus flexible pour détecter la collision, ce qui aide à détecter constamment les murs et les sols.

Une valeur inférieure force l'algorithme de collision à utiliser une détection plus exacte, de sorte qu'il peut être utilisé dans les cas qui nécessitent spécifiquement une précision, p.ex. à très basse échelle pour éviter le jittering visible, ou pour la stabilité avec une pile de corps de personnages.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_slide_on_ceiling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_ceiling** = ``true`` :ref:`🔗<class_CharacterBody3D_property_slide_on_ceiling>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_ceiling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_slide_on_ceiling_enabled**\ (\ )

Si ``true``, lors d'un saut contre le plafond, le corps glissera, si ``false``, il sera arrêté et tombera verticalement.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_up_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **up_direction** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_CharacterBody3D_property_up_direction>`

.. rst-class:: classref-property-setget

- |void| **set_up_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_up_direction**\ (\ )

Vecteur pointant vers le haut, utilisé pour déterminer ce qui est un mur et ce qui est un sol (ou un plafond) lors de l'appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Vaut :ref:`Vector3.UP<class_Vector3_constant_UP>` par défaut. Comme le vecteur sera normalisé, il ne peut pas être égal à :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`, si vous voulez que toutes les collisions soient signalées comme des murs, envisagez d'utiliser :ref:`MOTION_MODE_FLOATING<class_CharacterBody3D_constant_MOTION_MODE_FLOATING>` pour :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_CharacterBody3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Vecteur de vitesse actuelle (typiquement mètres par seconde), utilisé et modifié pendant les appels à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

\ **Note :** Une erreur courante est de définir cette propriété à la vitesse souhaitée multipliée par ``delta``, ce qui produit un vecteur de mouvement (généralement en mètres).

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_wall_min_slide_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wall_min_slide_angle** = ``0.2617994`` :ref:`🔗<class_CharacterBody3D_property_wall_min_slide_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wall_min_slide_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wall_min_slide_angle**\ (\ )

Angle minimum (en radians) où le corps est autorisé à glisser lorsqu'il rencontre un mur. La valeur par défaut est égale à 15 degrés. Lorsque :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>` vaut :ref:`MOTION_MODE_GROUNDED<class_CharacterBody3D_constant_MOTION_MODE_GROUNDED>`, il affecte uniquement le mouvement si :ref:`floor_block_on_wall<class_CharacterBody3D_property_floor_block_on_wall>` vaut ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_CharacterBody3D_method_apply_floor_snap:

.. rst-class:: classref-method

|void| **apply_floor_snap**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_apply_floor_snap>`

Permet d'appliquer manuellement une aimantation au sol indépendamment de la vélocité du corps. Cette fonction ne fait rien lorsque :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` renvoie ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_floor_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_floor_angle**\ (\ up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_floor_angle>`

Renvoie l'angle de collision du sol au dernier point de collision selon la direction du haut ``up_direction``, qui est par défaut :ref:`Vector3.UP<class_Vector3_constant_UP>`. Cette valeur est toujours positive et seulement valide après avoir appelé :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` et lorsque :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` renvoie ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_floor_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_floor_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_floor_normal>`

Renvoie la normale de la collision du sol au dernier point de collision. Cette valeur est seulement valide après avoir appelé :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` et lorsque :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` renvoie ``true``.

\ **Attention :** La normale de la collision n'est pas toujours identique à la normale de la surface.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_last_motion:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_last_motion**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_last_motion>`

Renvoie le dernier mouvement appliqué au **CharacterBody3D** lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Le mouvement peut être divisé en plusieurs sous-mouvements lorsqu'un glissement se produit, et cette méthode renvoie le dernier, ce qui est utile pour récupérer la direction actuelle du mouvement.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_last_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **get_last_slide_collision**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_get_last_slide_collision>`

Retourne une :ref:`KinematicCollision3D<class_KinematicCollision3D>` si une collision s'est produite. La valeur retournée contient des informations sur la dernière collision qui s'est produite lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Retourne ``null`` si aucune collision ne s'est produite. Voir aussi :ref:`get_slide_collision()<class_CharacterBody3D_method_get_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_platform_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_platform_angular_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_platform_angular_velocity>`

Renvoie la vitesse angulaire de la plate-forme au dernier point de collision. Seulement valide après avoir appelé :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_platform_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_platform_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_platform_velocity>`

Renvoie la vitesse linéaire de la plate-forme au dernier point de collision. Seulement valide après avoir appelé :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_position_delta:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_position_delta**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_position_delta>`

Renvoie le déplacement (le différentiel de position) qui s'est produit lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_real_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_real_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_real_velocity>`

Renvoie la vitesse réelle actuelle depuis le dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Par exemple, lorsque vous grimpez sur une pente, vous vous déplacerez en diagonale même si la vitesse est horizontale. Cette méthode renvoie le mouvement diagonal, par opposition à :ref:`velocity<class_CharacterBody3D_property_velocity>` qui renvoie la vitesse demandée.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **get_slide_collision**\ (\ slide_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CharacterBody3D_method_get_slide_collision>`

Renvoie un :ref:`KinematicCollision3D<class_KinematicCollision3D>` qui contient des informations sur une collision qui s'est produite au cours du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Comme le corps peut entrer en collision plusieurs fois pendant un seul appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`, vous devez spécifier l'index de la collision dans une plage de 0 à (:ref:`get_slide_collision_count()<class_CharacterBody3D_method_get_slide_collision_count>` - 1). Voir aussi :ref:`get_last_slide_collision()<class_CharacterBody3D_method_get_last_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_slide_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_slide_collision_count**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_slide_collision_count>`

Renvoie le nombre de fois où le corps est entré en collision et a changé de direction durant le dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_wall_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_wall_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_wall_normal>`

Renvoie la normale de collision du mur au dernier point de collision. Seulement valable après avoir appelé :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` et lorsque :ref:`is_on_wall()<class_CharacterBody3D_method_is_on_wall>` renvoie ``true``.

\ **Attention :** La normale de la collision n'est pas toujours identique à la normale de la surface.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_ceiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_ceiling>`

Renvoie ``true`` si le corps était entré en collision avec le plafond lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Sinon, renvoie ``false``. Le vecteur haut :ref:`up_direction<class_CharacterBody3D_property_up_direction>` et l'angle maximal :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sont utilisés pour déterminer si une surface est un "plafond" ou non.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_ceiling_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_ceiling_only>`

Renvoie ``true`` si le corps était entré en collision avec seulement le plafond lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Sinon, renvoie ``false``. Le vecteur haut :ref:`up_direction<class_CharacterBody3D_property_up_direction>` et l'angle maximal :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sont utilisés pour déterminer si une surface est un "plafond" ou non.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_floor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_floor>`

Renvoie ``true`` si le corps est entré en collision avec le sol lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Sinon, renvoie ``false``. La direction du haut :ref:`up_direction<class_CharacterBody3D_property_up_direction>` et l'angle maximal :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sont utilisés pour déterminer si une surface est un "sol" ou non.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_floor_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_floor_only>`

Renvoie ``true`` si le corps est entré en collision seulement avec le sol lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Sinon, renvoie ``false``. La direction du haut :ref:`up_direction<class_CharacterBody3D_property_up_direction>` et l'angle maximal :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sont utilisés pour déterminer si une surface est un "sol" ou non.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_wall:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_wall>`

Renvoie ``true`` si le corps était entré en collision avec un mur lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Renvoie ``false`` sinon. La direction haut :ref:`up_direction<class_CharacterBody3D_property_up_direction>` et l'angle maximal :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sont utilisés pour déterminer si une surface est un « mur » ou non.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_wall_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_wall_only>`

Renvoie ``true`` si le corps était entré seulement en collision avec un mur lors du dernier appel à :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Renvoie ``false`` sinon. La direction haut :ref:`up_direction<class_CharacterBody3D_property_up_direction>` et l'angle maximal :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` sont utilisés pour déterminer si une surface est un « mur » ou non.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_move_and_slide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **move_and_slide**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_move_and_slide>`

Déplace le corps selon la vitesse :ref:`velocity<class_CharacterBody3D_property_velocity>`. Si le corps entre en collision avec un autre, il glisse sur l'autre corps plutôt que de s'arrêter immédiatement. Si l'autre corps est un **CharacterBody3D** ou un :ref:`RigidBody3D<class_RigidBody3D>`, il sera également affecté par le mouvement de l'autre corps. Vous pouvez utiliser ceci pour faire des plates-formes mobiles et tournantes, ou pour faire que des nœuds poussent d'autres nœuds.

Cette méthode doit être utilisée dans :ref:`Node._physics_process()<class_Node_private_method__physics_process>` (ou dans une méthode appelée par :ref:`Node._physics_process()<class_Node_private_method__physics_process>`), car elle utilise automatique la valeur ``delta`` de l'étape de physique dans son calcul. Dans le cas contraire, la simulation avancera à une vitesse incorrecte.

Modifie :ref:`velocity<class_CharacterBody3D_property_velocity>` si une collision de glissement s'est produite. Pour obtenir la dernière collision, appelez :ref:`get_last_slide_collision()<class_CharacterBody3D_method_get_last_slide_collision>`, pour des informations plus détaillées sur les collisions qui se sont produites, utilisez :ref:`get_slide_collision()<class_CharacterBody3D_method_get_slide_collision>`.

Lorsque le corps touche une plate-forme mobile, la vitesse de la plateforme est automatiquement ajoutée au mouvement du corps. Si une collision survient en raison du mouvement de la plate-forme, elle sera toujours la première dans les collisions de glissement.

Renvoie ``true`` si le corps est entré en collision, sinon, renvoie ``false``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
