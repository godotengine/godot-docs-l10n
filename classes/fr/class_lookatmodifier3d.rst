:github_url: hide

.. _class_LookAtModifier3D:

LookAtModifier3D
================

**Hérite de :** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Le **LookAtModifier3D** tourne un os pour regarder une cible.

.. rst-class:: classref-introduction-group

Description
-----------

Ce :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` tourne un os pour qu'il regarde une cible. Ceci est utile pour déplacer la tête d'un personnage pour qu'il regarde le joueur, tourner une tourelle pour qu'elle regarde une cible, ou tout autre cas où vous voulez faire tourner un os vers quelque chose rapidement et facilement.

Lors de l'application de plusieurs **LookAtModifier3D**\ s, le **LookAtModifier3D** assigné à l'os parent doit être placé au-dessus du **LookAtModifier3D** assigné à l'os enfant dans la liste afin que les résultats de l'os enfant soient corrects.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                               | :ref:`bone<class_LookAtModifier3D_property_bone>`                                                           | ``-1``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`                         | :ref:`bone_name<class_LookAtModifier3D_property_bone_name>`                                                 | ``""``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`duration<class_LookAtModifier3D_property_duration>`                                                   | ``0.0``              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`EaseType<enum_Tween_EaseType>`                | :ref:`ease_type<class_LookAtModifier3D_property_ease_type>`                                                 | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`   | :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>`                                           | ``4``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                               | :ref:`origin_bone<class_LookAtModifier3D_property_origin_bone>`                                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`                         | :ref:`origin_bone_name<class_LookAtModifier3D_property_origin_bone_name>`                                   |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`origin_external_node<class_LookAtModifier3D_property_origin_external_node>`                           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` | :ref:`origin_from<class_LookAtModifier3D_property_origin_from>`                                             | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`origin_offset<class_LookAtModifier3D_property_origin_offset>`                                         | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`origin_safe_margin<class_LookAtModifier3D_property_origin_safe_margin>`                               | ``0.1``              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_damp_threshold<class_LookAtModifier3D_property_primary_damp_threshold>`                       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_limit_angle<class_LookAtModifier3D_property_primary_limit_angle>`                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_negative_damp_threshold<class_LookAtModifier3D_property_primary_negative_damp_threshold>`     |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_negative_limit_angle<class_LookAtModifier3D_property_primary_negative_limit_angle>`           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_positive_damp_threshold<class_LookAtModifier3D_property_primary_positive_damp_threshold>`     |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`primary_positive_limit_angle<class_LookAtModifier3D_property_primary_positive_limit_angle>`           |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                      | :ref:`primary_rotation_axis<class_LookAtModifier3D_property_primary_rotation_axis>`                         | ``1``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`relative<class_LookAtModifier3D_property_relative>`                                                   | ``false``            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_damp_threshold<class_LookAtModifier3D_property_secondary_damp_threshold>`                   |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_limit_angle<class_LookAtModifier3D_property_secondary_limit_angle>`                         |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_negative_damp_threshold<class_LookAtModifier3D_property_secondary_negative_damp_threshold>` |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_negative_limit_angle<class_LookAtModifier3D_property_secondary_negative_limit_angle>`       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_positive_damp_threshold<class_LookAtModifier3D_property_secondary_positive_damp_threshold>` |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                           | :ref:`secondary_positive_limit_angle<class_LookAtModifier3D_property_secondary_positive_limit_angle>`       |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>`                             |                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`target_node<class_LookAtModifier3D_property_target_node>`                                             | ``NodePath("")``     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`TransitionType<enum_Tween_TransitionType>`    | :ref:`transition_type<class_LookAtModifier3D_property_transition_type>`                                     | ``0``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_angle_limitation<class_LookAtModifier3D_property_use_angle_limitation>`                           | ``false``            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                             | :ref:`use_secondary_rotation<class_LookAtModifier3D_property_use_secondary_rotation>`                       | ``true``             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_interpolation_remaining<class_LookAtModifier3D_method_get_interpolation_remaining>`\ (\ ) |const| |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_interpolating<class_LookAtModifier3D_method_is_interpolating>`\ (\ ) |const|                       |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_target_within_limitation<class_LookAtModifier3D_method_is_target_within_limitation>`\ (\ ) |const| |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_LookAtModifier3D_OriginFrom:

.. rst-class:: classref-enumeration

enum **OriginFrom**: :ref:`🔗<enum_LookAtModifier3D_OriginFrom>`

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_SELF** = ``0``

La position de repos de l'os spécifié dans :ref:`bone<class_LookAtModifier3D_property_bone>` est utilisée comme origine.

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_SPECIFIC_BONE** = ``1``

La position de pose globale d'os de l'os spécifié dans :ref:`origin_bone<class_LookAtModifier3D_property_origin_bone>` est utilisée comme origine.

\ **Note :** Il est recommandé de sélectionner uniquement l'os parent à moins que vous ne connaissiez le processus de traitement des os. La pose d'os spécifiée au moment où **LookAtModifier3D** est traité est utilisée comme référence. En d'autres termes, si vous spécifiez un os enfant et que le **LookAtModifier3D** déplace l'os enfant, le résultat rendu et la direction ne correspondront pas.

.. _class_LookAtModifier3D_constant_ORIGIN_FROM_EXTERNAL_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **ORIGIN_FROM_EXTERNAL_NODE** = ``2``

La position globale du :ref:`Node3D<class_Node3D>` spécifié dans :ref:`origin_external_node<class_LookAtModifier3D_property_origin_external_node>` est utilisée comme origine.

\ **Note :** Comme avec :ref:`ORIGIN_FROM_SPECIFIC_BONE<class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE>`, lorsqu'un :ref:`BoneAttachment3D<class_BoneAttachment3D>` avec un os enfant assigné est spécifié, le résultat rendu et la direction ne correspondront pas.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_LookAtModifier3D_property_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone** = ``-1`` :ref:`🔗<class_LookAtModifier3D_property_bone>`

.. rst-class:: classref-property-setget

- |void| **set_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone**\ (\ )

Index de :ref:`bone_name<class_LookAtModifier3D_property_bone_name>` dans le :ref:`Skeleton3D<class_Skeleton3D>` parent.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_LookAtModifier3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Le nom de l'os du :ref:`Skeleton3D<class_Skeleton3D>` sur lequel la modification va opérer.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_duration:

.. rst-class:: classref-property

:ref:`float<class_float>` **duration** = ``0.0`` :ref:`🔗<class_LookAtModifier3D_property_duration>`

.. rst-class:: classref-property-setget

- |void| **set_duration**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_duration**\ (\ )

The duration of the time-based interpolation. Interpolation is triggered at the following cases:

- When the target node is changed

- When an axis is flipped due to angle limitation

\ **Note:** The flipping occurs when the target is outside the angle limitation and the internally computed secondary rotation axis of the forward vector is flipped. Visually, it occurs when the target is outside the angle limitation and crosses the plane of the :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>` and :ref:`primary_rotation_axis<class_LookAtModifier3D_property_primary_rotation_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_ease_type:

.. rst-class:: classref-property

:ref:`EaseType<enum_Tween_EaseType>` **ease_type** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_ease_type>`

.. rst-class:: classref-property-setget

- |void| **set_ease_type**\ (\ value\: :ref:`EaseType<enum_Tween_EaseType>`\ )
- :ref:`EaseType<enum_Tween_EaseType>` **get_ease_type**\ (\ )

Le type d'accélération de l'interpolation temporelle. Voir aussi :ref:`EaseType<enum_Tween_EaseType>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_forward_axis:

.. rst-class:: classref-property

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **forward_axis** = ``4`` :ref:`🔗<class_LookAtModifier3D_property_forward_axis>`

.. rst-class:: classref-property-setget

- |void| **set_forward_axis**\ (\ value\: :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>`\ )
- :ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **get_forward_axis**\ (\ )

L'axe avant de l'os. Ce :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` modifie l'os de sorte à ce que cet axe pointe vers :ref:`target_node<class_LookAtModifier3D_property_target_node>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_bone:

.. rst-class:: classref-property

:ref:`int<class_int>` **origin_bone** :ref:`🔗<class_LookAtModifier3D_property_origin_bone>`

.. rst-class:: classref-property-setget

- |void| **set_origin_bone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_origin_bone**\ (\ )

Index de :ref:`origin_bone_name<class_LookAtModifier3D_property_origin_bone_name>` dans le :ref:`Skeleton3D<class_Skeleton3D>` parent.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **origin_bone_name** :ref:`🔗<class_LookAtModifier3D_property_origin_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_origin_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_origin_bone_name**\ (\ )

Si :ref:`origin_from<class_LookAtModifier3D_property_origin_from>` vaut :ref:`ORIGIN_FROM_SPECIFIC_BONE<class_LookAtModifier3D_constant_ORIGIN_FROM_SPECIFIC_BONE>`, la position de pose globale de l'os spécifié pour cela est utilisée comme origine.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_external_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **origin_external_node** :ref:`🔗<class_LookAtModifier3D_property_origin_external_node>`

.. rst-class:: classref-property-setget

- |void| **set_origin_external_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_origin_external_node**\ (\ )

Si :ref:`origin_from<class_LookAtModifier3D_property_origin_from>` vaut :ref:`ORIGIN_FROM_EXTERNAL_NODE<class_LookAtModifier3D_constant_ORIGIN_FROM_EXTERNAL_NODE>`, la position globale du :ref:`Node3D<class_Node3D>` spécifié pour cela est utilisée comme origine.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_from:

.. rst-class:: classref-property

:ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **origin_from** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_origin_from>`

.. rst-class:: classref-property-setget

- |void| **set_origin_from**\ (\ value\: :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>`\ )
- :ref:`OriginFrom<enum_LookAtModifier3D_OriginFrom>` **get_origin_from**\ (\ )

Cette valeur détermine de quoi l'origine est récupérée pour le calcul du vecteur avant.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_LookAtModifier3D_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

Le décalage de l'origine de la pose de l'os. Faire correspondre les origines par décalage est utile pour les cas où plusieurs os doivent toujours faire face à la même direction, comme les yeux.

\ **Note :** Cette valeur indique la position locale de l'objet défini dans :ref:`origin_from<class_LookAtModifier3D_property_origin_from>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_origin_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **origin_safe_margin** = ``0.1`` :ref:`🔗<class_LookAtModifier3D_property_origin_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_origin_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_origin_safe_margin**\ (\ )

Si la cible passe plus près de l'origine que cette valeur, l'interpolation temporelle est utilisée même si la cible est dans les limites d'angle, pour empêcher la vitesse angulaire de devenir trop élevée.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_damp_threshold**\ (\ )

The threshold to start damping for :ref:`primary_limit_angle<class_LookAtModifier3D_property_primary_limit_angle>`. It provides non-linear (b-spline) interpolation, let it feel more resistance the more it rotate to the edge limit. This is useful for simulating the limits of human motion.

If ``1.0``, no damping is performed. If ``0.0``, damping is always performed.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_limit_angle**\ (\ )

The limit angle of the primary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``true``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_negative_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_negative_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_negative_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_negative_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_negative_damp_threshold**\ (\ )

Le seuil pour commencer l'amortissement pour :ref:`primary_negative_limit_angle<class_LookAtModifier3D_property_primary_negative_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_negative_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_negative_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_negative_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_negative_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_negative_limit_angle**\ (\ )

The limit angle of negative side of the primary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``false``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_positive_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_positive_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_primary_positive_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_primary_positive_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_positive_damp_threshold**\ (\ )

Le seuil pour commencer l'amortissement pour :ref:`primary_positive_limit_angle<class_LookAtModifier3D_property_primary_positive_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_positive_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **primary_positive_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_primary_positive_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_primary_positive_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_primary_positive_limit_angle**\ (\ )

The limit angle of positive side of the primary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``false``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_primary_rotation_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **primary_rotation_axis** = ``1`` :ref:`🔗<class_LookAtModifier3D_property_primary_rotation_axis>`

.. rst-class:: classref-property-setget

- |void| **set_primary_rotation_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_primary_rotation_axis**\ (\ )

L'axe de la première rotation. Ce :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` fonctionne en composant la rotation avec des angles d'Euler pour éviter de tourner :ref:`forward_axis<class_LookAtModifier3D_property_forward_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_relative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **relative** = ``false`` :ref:`🔗<class_LookAtModifier3D_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_relative**\ (\ )

The relative option. If ``true``, the rotation is applied relative to the pose. If ``false``, the rotation is applied relative to the rest. It means to replace the current pose with the **LookAtModifier3D**'s result.

\ **Note:** This option affects the base angle for :ref:`use_angle_limitation<class_LookAtModifier3D_property_use_angle_limitation>` unlike :ref:`IterateIK3D<class_IterateIK3D>`'s :ref:`JointLimitation3D<class_JointLimitation3D>`. Since the **LookAtModifier3D** relies strongly on Euler rotation, the axis that determines the limitation and the actual rotation are strongly tied together.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_damp_threshold**\ (\ )

Le seuil pour commencer l'amortissement pour :ref:`secondary_limit_angle<class_LookAtModifier3D_property_secondary_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_limit_angle**\ (\ )

The limit angle of the secondary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``true``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_negative_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_negative_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_negative_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_negative_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_negative_damp_threshold**\ (\ )

Le seuil pour commencer l'amortissement pour :ref:`secondary_negative_limit_angle<class_LookAtModifier3D_property_secondary_negative_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_negative_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_negative_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_negative_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_negative_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_negative_limit_angle**\ (\ )

The limit angle of negative side of the secondary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``false``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_positive_damp_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_positive_damp_threshold** :ref:`🔗<class_LookAtModifier3D_property_secondary_positive_damp_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_positive_damp_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_positive_damp_threshold**\ (\ )

Le seuil pour commencer l'amortissement pour :ref:`secondary_positive_limit_angle<class_LookAtModifier3D_property_secondary_positive_limit_angle>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_secondary_positive_limit_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **secondary_positive_limit_angle** :ref:`🔗<class_LookAtModifier3D_property_secondary_positive_limit_angle>`

.. rst-class:: classref-property-setget

- |void| **set_secondary_positive_limit_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_secondary_positive_limit_angle**\ (\ )

The limit angle of positive side of the secondary rotation when :ref:`symmetry_limitation<class_LookAtModifier3D_property_symmetry_limitation>` is ``false``, in radians.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_symmetry_limitation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **symmetry_limitation** :ref:`🔗<class_LookAtModifier3D_property_symmetry_limitation>`

.. rst-class:: classref-property-setget

- |void| **set_symmetry_limitation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limitation_symmetry**\ (\ )

If ``true``, the limitations are spread from the bone symmetrically.

If ``false``, the limitation can be specified separately for each side of the bone rest.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_LookAtModifier3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Le :ref:`NodePath<class_NodePath>` vers le nœud qui est la cible du modificateur "LookAt". Ce nœud est celui vers lequel la modification va faire tourner l'os.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_transition_type:

.. rst-class:: classref-property

:ref:`TransitionType<enum_Tween_TransitionType>` **transition_type** = ``0`` :ref:`🔗<class_LookAtModifier3D_property_transition_type>`

.. rst-class:: classref-property-setget

- |void| **set_transition_type**\ (\ value\: :ref:`TransitionType<enum_Tween_TransitionType>`\ )
- :ref:`TransitionType<enum_Tween_TransitionType>` **get_transition_type**\ (\ )

Le type de transition de l'interpolation temporelle. Voir aussi :ref:`TransitionType<enum_Tween_TransitionType>`.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_use_angle_limitation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_angle_limitation** = ``false`` :ref:`🔗<class_LookAtModifier3D_property_use_angle_limitation>`

.. rst-class:: classref-property-setget

- |void| **set_use_angle_limitation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_angle_limitation**\ (\ )

If ``true``, limits the amount of rotation. For example, this helps to prevent a character's neck from rotating 360 degrees.

\ **Note:** As with :ref:`AnimationTree<class_AnimationTree>` blending, interpolation is provided that favors :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>` or :ref:`Skeleton3D.get_bone_pose()<class_Skeleton3D_method_get_bone_pose>` depends on the :ref:`relative<class_LookAtModifier3D_property_relative>` option. This means that interpolation does not select the shortest path in some cases.

\ **Note:** Some values for :ref:`transition_type<class_LookAtModifier3D_property_transition_type>` (such as :ref:`Tween.TRANS_BACK<class_Tween_constant_TRANS_BACK>`, :ref:`Tween.TRANS_ELASTIC<class_Tween_constant_TRANS_ELASTIC>`, and :ref:`Tween.TRANS_SPRING<class_Tween_constant_TRANS_SPRING>`) may exceed the limitations. If interpolation occurs while overshooting the limitations, the result might not respect the bone rest.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_property_use_secondary_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_secondary_rotation** = ``true`` :ref:`🔗<class_LookAtModifier3D_property_use_secondary_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_use_secondary_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_secondary_rotation**\ (\ )

Si ``true``, fournit une rotation à deux axes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_LookAtModifier3D_method_get_interpolation_remaining:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_interpolation_remaining**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_get_interpolation_remaining>`

Renvoie les secondes restantes de l'interpolation temporelle.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_method_is_interpolating:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_interpolating**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_is_interpolating>`

Renvoie ``true`` si l'interpolation temporelle est en cours d'exécution. Si ``true``, ceci est équivalent à :ref:`get_interpolation_remaining()<class_LookAtModifier3D_method_get_interpolation_remaining>` renvoyant ``0.0``.

Ceci est utile pour déterminer si un **LookAtModifier3D** peut être retiré en toute sécurité.

.. rst-class:: classref-item-separator

----

.. _class_LookAtModifier3D_method_is_target_within_limitation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_target_within_limitation**\ (\ ) |const| :ref:`🔗<class_LookAtModifier3D_method_is_target_within_limitation>`

Renvoie si la cible est dans les limites d'angle. Ceci est utile de retirer le :ref:`target_node<class_LookAtModifier3D_property_target_node>` lorsque la cible est hors des limites d'angle.

\ **Note :** La valeur est mise à jour après :ref:`SkeletonModifier3D._process_modification()<class_SkeletonModifier3D_private_method__process_modification>`. Pour récupérer cette valeur correctement, nous vous recommandons d'utiliser le signal :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
