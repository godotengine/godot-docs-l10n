:github_url: hide

.. _class_TwoBoneIK3D:

TwoBoneIK3D
===========

**Hérite de :** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Rotation based intersection of two circles inverse kinematics solver.

.. rst-class:: classref-introduction-group

Description
-----------

This :ref:`IKModifier3D<class_IKModifier3D>` requires a pole target. It provides deterministic results by constructing a plane from each joint and pole target and finding the intersection of two circles (disks in 3D).

This IK can handle twist by setting the pole direction. If there are more than one bone between each set bone, their rotations are ignored, and the straight line connecting the root-middle and middle-end joints are treated as virtual bones.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_TwoBoneIK3D_property_setting_count>` | ``0`` |
   +-----------------------+----------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_end_bone<class_TwoBoneIK3D_method_get_end_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`           | :ref:`get_end_bone_direction<class_TwoBoneIK3D_method_get_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                       |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                             | :ref:`get_end_bone_length<class_TwoBoneIK3D_method_get_end_bone_length>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_end_bone_name<class_TwoBoneIK3D_method_get_end_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_middle_bone<class_TwoBoneIK3D_method_get_middle_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_middle_bone_name<class_TwoBoneIK3D_method_get_middle_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` | :ref:`get_pole_direction<class_TwoBoneIK3D_method_get_pole_direction>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`get_pole_direction_vector<class_TwoBoneIK3D_method_get_pole_direction_vector>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_pole_node<class_TwoBoneIK3D_method_get_pole_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_root_bone<class_TwoBoneIK3D_method_get_root_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_root_bone_name<class_TwoBoneIK3D_method_get_root_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                       | :ref:`get_target_node<class_TwoBoneIK3D_method_get_target_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_end_bone_extended<class_TwoBoneIK3D_method_is_end_bone_extended>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`is_using_virtual_end<class_TwoBoneIK3D_method_is_using_virtual_end>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone<class_TwoBoneIK3D_method_set_end_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_direction<class_TwoBoneIK3D_method_set_end_bone_direction>`\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_length<class_TwoBoneIK3D_method_set_end_bone_length>`\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ )                                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_end_bone_name<class_TwoBoneIK3D_method_set_end_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                                |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_extend_end_bone<class_TwoBoneIK3D_method_set_extend_end_bone>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_middle_bone<class_TwoBoneIK3D_method_set_middle_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                               |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_middle_bone_name<class_TwoBoneIK3D_method_set_middle_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_direction<class_TwoBoneIK3D_method_set_pole_direction>`\ (\ index\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ )    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_direction_vector<class_TwoBoneIK3D_method_set_pole_direction_vector>`\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ )                                 |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_pole_node<class_TwoBoneIK3D_method_set_pole_node>`\ (\ index\: :ref:`int<class_int>`, pole_node\: :ref:`NodePath<class_NodePath>`\ )                                                    |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_root_bone<class_TwoBoneIK3D_method_set_root_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                                                   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_root_bone_name<class_TwoBoneIK3D_method_set_root_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_target_node<class_TwoBoneIK3D_method_set_target_node>`\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ )                                              |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_use_virtual_end<class_TwoBoneIK3D_method_set_use_virtual_end>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                  |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_TwoBoneIK3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_TwoBoneIK3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Le nombre de paramètres.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_TwoBoneIK3D_method_get_end_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_end_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone>`

Returns the end bone index.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_direction:

.. rst-class:: classref-method

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **get_end_bone_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_direction>`

Returns the end bone's tail direction when :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_end_bone_length**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_length>`

Returns the end bone tail length of the bone chain when :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_end_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_end_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_end_bone_name>`

Returns the end bone name.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_middle_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_middle_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_middle_bone>`

Returns the middle bone index.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_middle_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_middle_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_middle_bone_name>`

Returns the middle bone name.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_direction:

.. rst-class:: classref-method

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **get_pole_direction**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_direction>`

Returns the pole direction.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_direction_vector:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_pole_direction_vector**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_direction_vector>`

Returns the pole direction vector.

If :ref:`get_pole_direction()<class_TwoBoneIK3D_method_get_pole_direction>` is :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`, this method returns ``Vector3(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_pole_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_pole_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_pole_node>`

Returns the pole target node that constructs a plane which the joints are all on and the pole is trying to direct.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_root_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_root_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_root_bone>`

Returns the root bone index.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_root_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_root_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_root_bone_name>`

Returns the root bone name.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_get_target_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_target_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_get_target_node>`

Renvoie le nœud cible que l'os final tente d'atteindre.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_is_end_bone_extended:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_end_bone_extended**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_is_end_bone_extended>`

Renvoie ``true`` si l'os final est prolongé pour avoir une queue.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_is_using_virtual_end:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_virtual_end**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TwoBoneIK3D_method_is_using_virtual_end>`

Returns ``true`` if the end bone is extended from the middle bone as a virtual bone.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone:

.. rst-class:: classref-method

|void| **set_end_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone>`

Sets the end bone index.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_direction:

.. rst-class:: classref-method

|void| **set_end_bone_direction**\ (\ index\: :ref:`int<class_int>`, bone_direction\: :ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_direction>`

Sets the end bone tail direction when :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_length:

.. rst-class:: classref-method

|void| **set_end_bone_length**\ (\ index\: :ref:`int<class_int>`, length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_length>`

Sets the end bone tail length when :ref:`is_end_bone_extended()<class_TwoBoneIK3D_method_is_end_bone_extended>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_end_bone_name:

.. rst-class:: classref-method

|void| **set_end_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_end_bone_name>`

Sets the end bone name.

\ **Note:** The end bone must be a child of the middle bone.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_extend_end_bone:

.. rst-class:: classref-method

|void| **set_extend_end_bone**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_extend_end_bone>`

If ``enabled`` is ``true``, the end bone is extended to have a tail.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_middle_bone:

.. rst-class:: classref-method

|void| **set_middle_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_middle_bone>`

Sets the middle bone index.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_middle_bone_name:

.. rst-class:: classref-method

|void| **set_middle_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_middle_bone_name>`

Sets the middle bone name.

\ **Note:** The middle bone must be a child of the root bone.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_direction:

.. rst-class:: classref-method

|void| **set_pole_direction**\ (\ index\: :ref:`int<class_int>`, direction\: :ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_direction>`

Sets the pole direction.

The pole is on the middle bone and will direct to the pole target.

The rotation axis is a vector that is orthogonal to this and the forward vector.

\ **Note:** The pole direction and the forward vector shouldn't be colinear to avoid unintended rotation.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_direction_vector:

.. rst-class:: classref-method

|void| **set_pole_direction_vector**\ (\ index\: :ref:`int<class_int>`, vector\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_direction_vector>`

Sets the pole direction vector.

This vector is normalized by an internal process.

If the vector length is ``0``, it is considered synonymous with :ref:`SkeletonModifier3D.SECONDARY_DIRECTION_NONE<class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE>`.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_pole_node:

.. rst-class:: classref-method

|void| **set_pole_node**\ (\ index\: :ref:`int<class_int>`, pole_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_pole_node>`

Sets the pole target node that constructs a plane which the joints are all on and the pole is trying to direct.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_root_bone:

.. rst-class:: classref-method

|void| **set_root_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_root_bone>`

Sets the root bone index.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_root_bone_name:

.. rst-class:: classref-method

|void| **set_root_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_root_bone_name>`

Sets the root bone name.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_target_node:

.. rst-class:: classref-method

|void| **set_target_node**\ (\ index\: :ref:`int<class_int>`, target_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_target_node>`

Définit le nœud cible que l'os final tente d'atteindre.

.. rst-class:: classref-item-separator

----

.. _class_TwoBoneIK3D_method_set_use_virtual_end:

.. rst-class:: classref-method

|void| **set_use_virtual_end**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TwoBoneIK3D_method_set_use_virtual_end>`

If ``enabled`` is ``true``, the end bone is extended from the middle bone as a virtual bone.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
