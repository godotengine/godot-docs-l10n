:github_url: hide

.. _class_BoneConstraint3D:

BoneConstraint3D
================

**Hérite de :** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AimModifier3D<class_AimModifier3D>`, :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`, :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>`

Un nœud qui peut modifier un os d'un Skeleton3D en associant deux os.

.. rst-class:: classref-introduction-group

Description
-----------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` that modifies the bone set in :ref:`set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` based on the transform of the bone retrieved by :ref:`get_reference_bone()<class_BoneConstraint3D_method_get_reference_bone>`.

\ **Note:** Most methods in this class take an ``index`` parameter. This parameter specifies which setting list entry to return if the IK has multiple entries (e.g. ``settings/<index>/amount``).

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`clear_setting<class_BoneConstraint3D_method_clear_setting>`\ (\ )                                                                                                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`get_amount<class_BoneConstraint3D_method_get_amount>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_apply_bone<class_BoneConstraint3D_method_get_apply_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`get_apply_bone_name<class_BoneConstraint3D_method_get_apply_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_reference_bone<class_BoneConstraint3D_method_get_reference_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`get_reference_bone_name<class_BoneConstraint3D_method_get_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                           | :ref:`get_reference_node<class_BoneConstraint3D_method_get_reference_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` | :ref:`get_reference_type<class_BoneConstraint3D_method_get_reference_type>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_setting_count<class_BoneConstraint3D_method_get_setting_count>`\ (\ ) |const|                                                                                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_amount<class_BoneConstraint3D_method_set_amount>`\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ )                                               |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_apply_bone<class_BoneConstraint3D_method_set_apply_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_apply_bone_name<class_BoneConstraint3D_method_set_apply_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_bone<class_BoneConstraint3D_method_set_reference_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                     |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_bone_name<class_BoneConstraint3D_method_set_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_node<class_BoneConstraint3D_method_set_reference_node>`\ (\ index\: :ref:`int<class_int>`, node\: :ref:`NodePath<class_NodePath>`\ )                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_type<class_BoneConstraint3D_method_set_reference_type>`\ (\ index\: :ref:`int<class_int>`, type\: :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_setting_count<class_BoneConstraint3D_method_set_setting_count>`\ (\ count\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_BoneConstraint3D_ReferenceType:

.. rst-class:: classref-enumeration

enum **ReferenceType**: :ref:`🔗<enum_BoneConstraint3D_ReferenceType>`

.. _class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE:

.. rst-class:: classref-enumeration-constant

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **REFERENCE_TYPE_BONE** = ``0``

The reference target is a bone. In this case, the reference target spaces is local space.

.. _class_BoneConstraint3D_constant_REFERENCE_TYPE_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **REFERENCE_TYPE_NODE** = ``1``

The reference target is a :ref:`Node3D<class_Node3D>`. In this case, the reference target spaces is model space.

In other words, the reference target's coordinates are treated as if it were placed directly under :ref:`Skeleton3D<class_Skeleton3D>` which parent of the **BoneConstraint3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_BoneConstraint3D_method_clear_setting:

.. rst-class:: classref-method

|void| **clear_setting**\ (\ ) :ref:`🔗<class_BoneConstraint3D_method_clear_setting>`

Efface tous les paramètres.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_amount**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_amount>`

Renvoie le montant d'application du paramètre à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_apply_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone>`

Renvoie l'os d'application du paramètre à l'index ``index``. Cet os sera modifié.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_apply_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone_name>`

Renvoie le nom de l'os d'application du paramètre à l'index ``index``. Cet os sera modifié.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone>`

Renvoie l'os de référence du paramètre à l'index ``index``.

Cet os sera uniquement référencé et non modifié par ce modificateur.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone_name>`

Renvoie le nom de l'os de référence du paramètre à l'index ``index``.

Cet os sera uniquement référencé et non modifié par ce modificateur.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_reference_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_node>`

Renvoie le chemin du nœud de référence du paramètre à l'index ``index``.

Ce nœud sera uniquement référencé et non modifié par ce modificateur.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_type:

.. rst-class:: classref-method

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **get_reference_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_type>`

Renvoie le type de cible de référence du réglage à ``index``. Voir aussi :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_setting_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_setting_count**\ (\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_setting_count>`

Renvoie le nombre de paramètres dans le modificateur.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_amount:

.. rst-class:: classref-method

|void| **set_amount**\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_amount>`

Définit le montant d'application du paramètre à l'index ``index`` au montant ``amount``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone:

.. rst-class:: classref-method

|void| **set_apply_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone>`

Définit l'os d'application du paramètre à l'index ``index`` à l'os ``bone``. Cet os sera modifié.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone_name:

.. rst-class:: classref-method

|void| **set_apply_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone_name>`

Définit l'os d'application du paramètre à l'index ``index`` à l'os ayant pour nom ``bone_name``. Cet os sera modifié.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone:

.. rst-class:: classref-method

|void| **set_reference_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone>`

Définit l'os de référence du paramètre à l'index ``index`` à l'os ``bone``.

Cet os sera uniquement référencé et non modifié par ce modificateur.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone_name:

.. rst-class:: classref-method

|void| **set_reference_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone_name>`

Définit l'os de référence du paramètre à l'index ``index`` à l'os ayant pour nom ``bone_name``.

Cet os sera uniquement référencé et non modifié par ce modificateur.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_node:

.. rst-class:: classref-method

|void| **set_reference_node**\ (\ index\: :ref:`int<class_int>`, node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_node>`

Définit le chemin du nœud de référence du paramètre à l'index ``index`` au nœud ``node``.

Ce nœud sera uniquement référencé et non modifié par ce modificateur.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_type:

.. rst-class:: classref-method

|void| **set_reference_type**\ (\ index\: :ref:`int<class_int>`, type\: :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_type>`

Définit le type de cible de référence du réglage à ``index`` à ``type``. Voir aussi :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_setting_count:

.. rst-class:: classref-method

|void| **set_setting_count**\ (\ count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_setting_count>`

Définit le nombre de paramètres dans le modificateur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
