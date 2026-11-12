:github_url: hide

.. _class_PhysicsTestMotionParameters2D:

PhysicsTestMotionParameters2D
=============================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit des paramètres pour :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

.. rst-class:: classref-introduction-group

Description
-----------

By changing various properties of this object, such as the motion, you can configure the parameters for :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_separation_ray<class_PhysicsTestMotionParameters2D_property_collide_separation_ray>` | ``false``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude_bodies<class_PhysicsTestMotionParameters2D_property_exclude_bodies>`                 | ``[]``                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] | :ref:`exclude_objects<class_PhysicsTestMotionParameters2D_property_exclude_objects>`               | ``[]``                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>`              | :ref:`from<class_PhysicsTestMotionParameters2D_property_from>`                                     | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsTestMotionParameters2D_property_margin>`                                 | ``0.08``                          |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`motion<class_PhysicsTestMotionParameters2D_property_motion>`                                 | ``Vector2(0, 0)``                 |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`recovery_as_collision<class_PhysicsTestMotionParameters2D_property_recovery_as_collision>`   | ``false``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PhysicsTestMotionParameters2D_property_collide_separation_ray:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_separation_ray** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_collide_separation_ray>`

.. rst-class:: classref-property-setget

- |void| **set_collide_separation_ray_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_separation_ray_enabled**\ (\ )

Si défini à ``true``, les formes du type :ref:`PhysicsServer2D.SHAPE_SEPARATION_RAY<class_PhysicsServer2D_constant_SHAPE_SEPARATION_RAY>` sont utilisés pour détecter les collisions et peuvent arrêter le mouvement. Peut être utile lors de l'aimantation au sol.

Si défini à ``false``, les formes du type :ref:`PhysicsServer2D.SHAPE_SEPARATION_RAY<class_PhysicsServer2D_constant_SHAPE_SEPARATION_RAY>` ne sont utilisées que pour la séparation lors du chevauchement avec d'autres corps. C'est l'usage principal des formes de rayons de séparation.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_exclude_bodies:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude_bodies** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_exclude_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_bodies**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude_bodies**\ (\ )

Tableau facultatif de :ref:`RID<class_RID>`\ s de corps à exclure de la collision. Utilisez :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>` pour obtenir le :ref:`RID<class_RID>` associé à un nœud dérivé de :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_exclude_objects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **exclude_objects** = ``[]`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_exclude_objects>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_objects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_exclude_objects**\ (\ )

Tableau optionnel d'identifiants d'instance uniques à exclure de la collision. Voir :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_from:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **from** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_from>`

.. rst-class:: classref-property-setget

- |void| **set_from**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_from**\ (\ )

Transformation dans l'espace global où le mouvement devrait commencer. Habituellement défini à :ref:`Node2D.global_transform<class_Node2D_property_global_transform>` pour la transformation du corps actuel.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.08`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Augmente la taille des formes impliquées dans la détection de collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_motion:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion**\ (\ )

Vecteur de mouvement pour définir la longueur et la direction du mouvement à tester.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionParameters2D_property_recovery_as_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recovery_as_collision** = ``false`` :ref:`🔗<class_PhysicsTestMotionParameters2D_property_recovery_as_collision>`

.. rst-class:: classref-property-setget

- |void| **set_recovery_as_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recovery_as_collision_enabled**\ (\ )

S'il est défini à ``true``, toute dé-pénétration de la phase de redressement est rapportées comme une collision, ceci est par exemple utilisé par :ref:`CharacterBody2D<class_CharacterBody2D>` pour améliorer la détection du sol lors de l'aimantation au sol.

S'il est défini à ``false``, seules les collisions résultant du mouvement sont rapportées, ce qui est généralement le comportement souhaité.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
