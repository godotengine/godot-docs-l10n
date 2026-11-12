:github_url: hide

.. _class_SkeletonIK3D:

SkeletonIK3D
============

**Obsolète :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud utilisé pour faire pivoter tous les os d'une chaîne d'os de :ref:`Skeleton3D<class_Skeleton3D>` d'une manière qui place l'os final à une position 3D souhaitée.

.. rst-class:: classref-introduction-group

Description
-----------

SkeletonIK3D is used to rotate all bones of a :ref:`Skeleton3D<class_Skeleton3D>` bone chain a way that places the end bone at a desired 3D position. A typical scenario for IK in games is to place a character's feet on the ground or a character's hands on a currently held object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the :ref:`Skeleton3D<class_Skeleton3D>` ``bones_global_pose_override`` property for all affected bones in the chain. If fully applied, this overwrites any bone transform from :ref:`Animation<class_Animation>`\ s or bone custom poses set by users. The applied amount can be controlled with the :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` property.

::

    # Apply IK effect automatically on every new frame (not the current)
    skeleton_ik_node.start()

    # Apply IK effect only on the current frame
    skeleton_ik_node.start(true)

    # Stop IK effect and reset bones_global_pose_override on Skeleton
    skeleton_ik_node.stop()

    # Apply full IK effect
    skeleton_ik_node.set_influence(1.0)

    # Apply half IK effect
    skeleton_ik_node.set_influence(0.5)

    # Apply zero IK effect (a value at or below 0.01 also removes bones_global_pose_override on Skeleton)
    skeleton_ik_node.set_influence(0.0)

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`interpolation<class_SkeletonIK3D_property_interpolation>`           |                                                     |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`magnet<class_SkeletonIK3D_property_magnet>`                         | ``Vector3(0, 0, 0)``                                |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`max_iterations<class_SkeletonIK3D_property_max_iterations>`         | ``10``                                              |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`min_distance<class_SkeletonIK3D_property_min_distance>`             | ``0.01``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` | ``true``                                            |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`root_bone<class_SkeletonIK3D_property_root_bone>`                   | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`target<class_SkeletonIK3D_property_target>`                         | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`       | :ref:`target_node<class_SkeletonIK3D_property_target_node>`               | ``NodePath("")``                                    |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`StringName<class_StringName>`   | :ref:`tip_bone<class_SkeletonIK3D_property_tip_bone>`                     | ``&""``                                             |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`use_magnet<class_SkeletonIK3D_property_use_magnet>`                 | ``false``                                           |
   +---------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_parent_skeleton<class_SkeletonIK3D_method_get_parent_skeleton>`\ (\ ) |const|         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_running<class_SkeletonIK3D_method_is_running>`\ (\ )                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`start<class_SkeletonIK3D_method_start>`\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`stop<class_SkeletonIK3D_method_stop>`\ (\ )                                               |
   +-------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonIK3D_property_interpolation:

.. rst-class:: classref-property

:ref:`float<class_float>` **interpolation** :ref:`🔗<class_SkeletonIK3D_property_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interpolation**\ (\ )

**Obsolète :** Use :ref:`SkeletonModifier3D.influence<class_SkeletonModifier3D_property_influence>` instead.

Valeur de l'interpolation indiquant de combien les résultats de l'IK sont appliqués à la chaîne d'os du squelette actuelle. Une valeur de ``1.0`` écrasera toutes les transformations d'os du squelette complètement alors qu'une valeur de ``0.0`` désactivera visuellement le SkeletonIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_magnet:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **magnet** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_magnet_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_magnet_position**\ (\ )

Secondary target position (first is :ref:`target<class_SkeletonIK3D_property_target>` property or :ref:`target_node<class_SkeletonIK3D_property_target_node>`) for the IK chain. Use magnet position (pole target) to control the bending of the IK chain. Only works if the bone chain has more than 2 bones. The middle chain bone position will be linearly interpolated with the magnet position.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_max_iterations:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_iterations** = ``10`` :ref:`🔗<class_SkeletonIK3D_property_max_iterations>`

.. rst-class:: classref-property-setget

- |void| **set_max_iterations**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_iterations**\ (\ )

Nombre de boucles d'itération utilisées par le résolveur IK pour produire des résultats de chaîne d'os plus précis (et élégants).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_min_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_distance** = ``0.01`` :ref:`🔗<class_SkeletonIK3D_property_min_distance>`

.. rst-class:: classref-property-setget

- |void| **set_min_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_distance**\ (\ )

La distance minimale entre l'os et la cible. Si la distance est en dessous de cette valeur, le solveur IK arrête les itérations.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_override_tip_basis:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_tip_basis** = ``true`` :ref:`🔗<class_SkeletonIK3D_property_override_tip_basis>`

.. rst-class:: classref-property-setget

- |void| **set_override_tip_basis**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_override_tip_basis**\ (\ )

Si ``true``, écrase la rotation de l'os du bout avec la rotation de la cible :ref:`target<class_SkeletonIK3D_property_target>` (ou le nœud cible :ref:`target_node<class_SkeletonIK3D_property_target_node>` si il est définie).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_root_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **root_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_root_bone>`

.. rst-class:: classref-property-setget

- |void| **set_root_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_root_bone**\ (\ )

Le nom de l'os racine actuel, le premier os de la chaîne IK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **target** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_SkeletonIK3D_property_target>`

.. rst-class:: classref-property-setget

- |void| **set_target_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_target_transform**\ (\ )

The first target of the IK chain where the tip bone is placed and, if :ref:`override_tip_basis<class_SkeletonIK3D_property_override_tip_basis>` is ``true``, how the tip bone is rotated. If :ref:`target_node<class_SkeletonIK3D_property_target_node>` points to a valid node, that node's transform is used instead and this property is ignored.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_target_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonIK3D_property_target_node>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

:ref:`NodePath<class_NodePath>` du nœud cible pour la chaîne IK. Si disponible, la :ref:`Transform3D<class_Transform3D>` actuelle du nœud est utilisée au lieu de la propriété :ref:`target<class_SkeletonIK3D_property_target>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_tip_bone:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tip_bone** = ``&""`` :ref:`🔗<class_SkeletonIK3D_property_tip_bone>`

.. rst-class:: classref-property-setget

- |void| **set_tip_bone**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tip_bone**\ (\ )

Le nom de l'os du bout actuel, le dernier os de la chaîne d'IK placé à la transformation :ref:`target<class_SkeletonIK3D_property_target>` (ou :ref:`target_node<class_SkeletonIK3D_property_target_node>` si défini).

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_property_use_magnet:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_magnet** = ``false`` :ref:`🔗<class_SkeletonIK3D_property_use_magnet>`

.. rst-class:: classref-property-setget

- |void| **set_use_magnet**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_magnet**\ (\ )

Si ``true``, ordonne au solveur IK de considérer la cible magnétique secondaire (cible du pôle) lors du calcul de la chaîne d'os. Utilisez la position de l'aimant (cible du pôle) pour contrôler la flexion de la chaîne IK.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonIK3D_method_get_parent_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_parent_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonIK3D_method_get_parent_skeleton>`

Renvoie le nœud parent :ref:`Skeleton3D<class_Skeleton3D>` qui était présent lorsque SkeletonIK est entré dans l'arbre de scène. Renvoie ``null`` si le nœud parent n'était pas un nœud :ref:`Skeleton3D<class_Skeleton3D>` lorsque SkeletonIK3D est entré dans l'arbre de scène.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_is_running:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_running**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_is_running>`

Renvoie ``true`` si SkeletonIK applique les effets d'IK sur des trames continues aux os :ref:`Skeleton3D<class_Skeleton3D>`. Renvoie ``false`` si SkeletonIK est arrêté ou :ref:`start()<class_SkeletonIK3D_method_start>` a été utilisé avec le paramètre ``one_time`` défini à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ one_time\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SkeletonIK3D_method_start>`

Commence à appliquer des effets d'IK sur chaque trame aux os :ref:`Skeleton3D<class_Skeleton3D>` mais ne prendra effet que sur la prochaine trame. Si ``one_time`` vaut ``true``, cela prendra effet immédiatement, mais aussi sera réinitialisé sur la prochaine trame.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonIK3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SkeletonIK3D_method_stop>`

Arrête d'appliquer les effets d'IK à chaque trame aux os :ref:`Skeleton3D<class_Skeleton3D>` et appelle également :ref:`Skeleton3D.clear_bones_global_pose_override()<class_Skeleton3D_method_clear_bones_global_pose_override>` pour supprimer les redéfinitions existantes sur tous les os.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
