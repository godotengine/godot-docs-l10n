:github_url: hide

.. _class_BoneTwistDisperser3D:

BoneTwistDisperser3D
====================

**Hérite de :** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud qui propage et disperse la torsion de l'os enfant aux os parent.

.. rst-class:: classref-introduction-group

Description
-----------

This **BoneTwistDisperser3D** allows for smooth twist interpolation between multiple bones by dispersing the end bone's twist to the parents. This only changes the twist without changing the global position of each joint.

This is useful for smoothly twisting bones in combination with :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>` and IK.

\ **Note:** If an extracted twist is greater than 180 degrees, flipping occurs. This is similar to :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`.

\ **Note:** Most methods in this class take an ``index`` parameter. This parameter specifies which setting list entry to return if the IK has multiple entries (e.g. ``settings/<index>/root_bone_name``).

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`mutable_bone_axes<class_BoneTwistDisperser3D_property_mutable_bone_axes>` | ``true`` |
   +-------------------------+---------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`setting_count<class_BoneTwistDisperser3D_property_setting_count>`         | ``0``    |
   +-------------------------+---------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`clear_settings<class_BoneTwistDisperser3D_method_clear_settings>`\ (\ )                                                                                                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>`                                   | :ref:`get_damping_curve<class_BoneTwistDisperser3D_method_get_damping_curve>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` | :ref:`get_disperse_mode<class_BoneTwistDisperser3D_method_get_disperse_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_end_bone<class_BoneTwistDisperser3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` | :ref:`get_end_bone_direction<class_BoneTwistDisperser3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_end_bone_name<class_BoneTwistDisperser3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_bone<class_BoneTwistDisperser3D_method_get_joint_bone>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_joint_bone_name<class_BoneTwistDisperser3D_method_get_joint_bone_name>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_joint_count<class_BoneTwistDisperser3D_method_get_joint_count>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_joint_twist_amount<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_reference_bone<class_BoneTwistDisperser3D_method_get_reference_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_reference_bone_name<class_BoneTwistDisperser3D_method_get_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`get_root_bone<class_BoneTwistDisperser3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                 | :ref:`get_root_bone_name<class_BoneTwistDisperser3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                         | :ref:`get_twist_from<class_BoneTwistDisperser3D_method_get_twist_from>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                       |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`get_weight_position<class_BoneTwistDisperser3D_method_get_weight_position>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_end_bone_extended<class_BoneTwistDisperser3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`is_twist_from_rest<class_BoneTwistDisperser3D_method_is_twist_from_rest>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_damping_curve<class_BoneTwistDisperser3D_method_set_damping_curve>`\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ )                                                      |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_disperse_mode<class_BoneTwistDisperser3D_method_set_disperse_mode>`\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ )            |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone<class_BoneTwistDisperser3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_direction<class_BoneTwistDisperser3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_end_bone_name<class_BoneTwistDisperser3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_extend_end_bone<class_BoneTwistDisperser3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_joint_twist_amount<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ )      |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone<class_BoneTwistDisperser3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_root_bone_name<class_BoneTwistDisperser3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_twist_from<class_BoneTwistDisperser3D_method_set_twist_from>`\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ )                                                   |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_twist_from_rest<class_BoneTwistDisperser3D_method_set_twist_from_rest>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                      | :ref:`set_weight_position<class_BoneTwistDisperser3D_method_set_weight_position>`\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ )                                        |
   +-------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_BoneTwistDisperser3D_DisperseMode:

.. rst-class:: classref-enumeration

enum **DisperseMode**: :ref:`🔗<enum_BoneTwistDisperser3D_DisperseMode>`

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_EVEN:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_EVEN** = ``0``

Attribue des valeurs de sorte qu’elles augmentent de manière monotone de ``0.0`` à ``1.0``, en garantissant que tous les poids soient égaux. Par exemple, avec cinq articulations, les valeurs seraient ``0.2``, ``0.4``, ``0.6``, ``0.8`` et ``1.0`` en partant de l’os racine.

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_WEIGHTED** = ``1``

Attribue des valeurs de sorte qu’elles augmentent de manière monotone de ``0.0`` à ``1.0``, en se basant sur la longueur des os entre les segments d’articulations. Voir également :ref:`set_weight_position()<class_BoneTwistDisperser3D_method_set_weight_position>`.

.. _class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **DISPERSE_MODE_CUSTOM** = ``2``

Vous pouvez attribuer des valeurs arbitraires à la liste des articulations. Voir également :ref:`set_joint_twist_amount()<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`.

Lorsque :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` est ``false``, un enfant de l’os de référence existe uniquement pour déterminer l’axe de torsion, donc sa valeur personnalisée n’a absolument aucun effet.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_BoneTwistDisperser3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_BoneTwistDisperser3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

If ``true``, the solver retrieves the bone axis from the bone pose every frame.

If ``false``, the solver retrieves the bone axis from the bone rest and caches it.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_BoneTwistDisperser3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Le nombre de paramètres.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_BoneTwistDisperser3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_clear_settings>`

Efface tous les paramètres.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_damping_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_damping_curve**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_damping_curve>`

Renvoie la courbe d'amortissement lorsque :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` est :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_disperse_mode:

.. rst-class:: classref-method

:ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>` **get_disperse_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_disperse_mode>`

Renvoie s'il faut utiliser l'assignation automatique ou autoriser l'assignation manuelle.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone>`

Renvoie l'index de l'os de fin de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_direction>`

Renvoie la direction de la queue de l'os de fin de la chaîne d'os lorsque :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_end_bone_name>`

Renvoie le nom de l'os de fin de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_bone**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone>`

Renvoie l'index de l'os à la liaison ``joint`` dans la liste de liaisons de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_joint_bone_name**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_bone_name>`

Renvoie le nom de l'os à la liaison ``joint`` dans la liste de liaisons de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_count**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_count>`

Renvoie la quantité de liaisons dans la liste des liaisons de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_joint_twist_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_joint_twist_amount>`

Définit la quantité de gravité de la liaison ``joint`` dans la liste des liaisons de la chaîne d'os lorsque :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` vaut :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone>`

Returns the reference bone to extract twist of the setting at ``index``.

This bone is either the end of the chain or its parent, depending on :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_reference_bone_name>`

Returns the reference bone name to extract twist of the setting at ``index``.

This bone is either the end of the chain or its parent, depending on :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone>`

Renvoie l'index de l'os racine de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_root_bone_name>`

Renvoie le nom de l'os racine de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_twist_from:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_twist_from**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_twist_from>`

Returns the rotation to an arbitrary state before twisting for the current bone pose to extract the twist when :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` is ``false``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_get_weight_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_weight_position**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_get_weight_position>`

Renvoie la position à laquelle diviser le segment entre les articulations pour la répartition du poids lorsque :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` vaut :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_end_bone_extended>`

Renvoie ``true`` si l'os final est prolongé pour avoir une queue.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_is_twist_from_rest:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_twist_from_rest**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneTwistDisperser3D_method_is_twist_from_rest>`

Returns ``true`` if extracting the twist amount from the difference between the bone rest and the current bone pose.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_damping_curve:

.. rst-class:: classref-method

|void| **set_damping_curve**\ (\ index\: :ref:`int<class_int>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_damping_curve>`

Définit la courbe d'amortissement quand :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` est :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_disperse_mode:

.. rst-class:: classref-method

|void| **set_disperse_mode**\ (\ index\: :ref:`int<class_int>`, disperse_mode\: :ref:`DisperseMode<enum_BoneTwistDisperser3D_DisperseMode>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_disperse_mode>`

Définit si la quantité est attribuée automatiquement ou manuellement.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone>`

Définit l'index de l'os de fin de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_direction>`

Définit la direction de la queue de l'os de fin de la chaîne d'os lorsque :ref:`is_end_bone_extended()<class_BoneTwistDisperser3D_method_is_end_bone_extended>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_end_bone_name>`

Définit le nom de l'os de fin de la chaîne d'os.

\ **Note :** L'os de fin doit être l'os racine ou un enfant de l'os racine. S'ils sont les mêmes, la queue doit être étendue par :ref:`set_extend_end_bone()<class_BoneTwistDisperser3D_method_set_extend_end_bone>` pour faire gigoter l'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_extend_end_bone>`

Si ``enabled`` vaut ``true``, l'os final est prolongé pour avoir une queue.

Si ``enabled`` vaut ``false``, :ref:`get_reference_bone()<class_BoneTwistDisperser3D_method_get_reference_bone>` devient un parent de l'os final et il utilise le vecteur à l'os final comme axe de torsion.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_joint_twist_amount:

.. rst-class:: classref-method

|void| **set_joint_twist_amount**\ (\ index\: :ref:`int<class_int>`, joint\: :ref:`int<class_int>`, twist_amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_joint_twist_amount>`

Définit la quantité de gravité de la liaison ``joint`` dans la liste des liaisons de la chaîne d'os lorsque :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` is :ref:`DISPERSE_MODE_CUSTOM<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_CUSTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone>`

Définit l'index de l'os racine de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_root_bone_name>`

Définit le nom de l'os racine de la chaîne d'os.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from:

.. rst-class:: classref-method

|void| **set_twist_from**\ (\ index\: :ref:`int<class_int>`, from\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from>`

Définit la rotation dans un état arbitraire avant la torsion pour la pose actuelle de l’os afin d’extraire la torsion lorsque :ref:`is_twist_from_rest()<class_BoneTwistDisperser3D_method_is_twist_from_rest>` est ``false``.

Autrement dit, en appelant :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>` depuis le signal :ref:`SkeletonModifier3D.modification_processed<class_SkeletonModifier3D_signal_modification_processed>` d’un :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` spécifique, vous pouvez extraire uniquement les torsions générées par les modificateurs traités après celui-ci mais avant ce **BoneTwistDisperser3D**.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_twist_from_rest:

.. rst-class:: classref-method

|void| **set_twist_from_rest**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_twist_from_rest>`

Si ``enabled`` est ``true``, la quantité de torsion est extraite à partir de la différence entre la pose de repos de l’os et la pose actuelle de l’os.

Si ``enabled`` est ``false``, la quantité de torsion est extraite à partir de la différence entre :ref:`get_twist_from()<class_BoneTwistDisperser3D_method_get_twist_from>` et la pose actuelle de l’os. Voir également :ref:`set_twist_from()<class_BoneTwistDisperser3D_method_set_twist_from>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneTwistDisperser3D_method_set_weight_position:

.. rst-class:: classref-method

|void| **set_weight_position**\ (\ index\: :ref:`int<class_int>`, weight_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneTwistDisperser3D_method_set_weight_position>`

Définit la position à laquelle diviser le segment entre les articulations pour l’attribution des poids lorsque :ref:`get_disperse_mode()<class_BoneTwistDisperser3D_method_get_disperse_mode>` est :ref:`DISPERSE_MODE_WEIGHTED<class_BoneTwistDisperser3D_constant_DISPERSE_MODE_WEIGHTED>`.

Par exemple, lorsque ``weight_position`` est ``0.5``, si deux segments d’os d’une longueur de ``1.0`` existent entre trois articulations, les poids sont attribués à chaque articulation de la racine vers l’extrémité avec des ratios de ``0.5``, ``1.0`` et ``0.5``. Les valeurs deviennent alors respectivement ``0.25``, ``0.75`` et ``1.0``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
