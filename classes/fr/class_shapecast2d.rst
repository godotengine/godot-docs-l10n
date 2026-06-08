:github_url: hide

.. _class_ShapeCast2D:

ShapeCast2D
===========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une forme 2D qui balaye une région de l'espace pour détecter des :ref:`CollisionObject2D<class_CollisionObject2D>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

Le shape casting permet de détecter des objets en collision en balayant sa forme :ref:`shape<class_ShapeCast2D_property_shape>` le long de la direction du cast déterminée par la position cible :ref:`target_position<class_ShapeCast2D_property_target_position>`. Ceci est similaire à :ref:`RayCast2D<class_RayCast2D>`, mais il permet de balayer une région de l'espace, plutôt qu'une ligne droite. **ShapeCast2D** peut détecter plusieurs objets en collision. Il est utile pour des choses comme de larges faisceaux laser ou de magnétiser une forme simple à un sol.

Les chevauchements de collision immédiats peuvent être faits avec :ref:`target_position<class_ShapeCast2D_property_target_position>` défini à ``Vector2(0, 0)`` et en appelant :ref:`force_shapecast_update()<class_ShapeCast2D_method_force_shapecast_update>` dans le même trame physique. Cela aide à surmonter certaines limites de :ref:`Area2D<class_Area2D>` lorsqu'elle est utilisée comme zone de détection instantanée, car les informations sur la collision ne lui sont pas immédiatement disponibles.

\ **Note :** Le shape casting est plus coûteux que le ray casting.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_ShapeCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_ShapeCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Array<class_Array>`     | :ref:`collision_result<class_ShapeCast2D_property_collision_result>`       | ``[]``             |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_ShapeCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_ShapeCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`     | :ref:`margin<class_ShapeCast2D_property_margin>`                           | ``0.0``            |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`max_results<class_ShapeCast2D_property_max_results>`                 | ``32``             |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Shape2D<class_Shape2D>` | :ref:`shape<class_ShapeCast2D_property_shape>`                             |                    |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_ShapeCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+----------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_ShapeCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_ShapeCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_ShapeCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_shapecast_update<class_ShapeCast2D_method_force_shapecast_update>`\ (\ )                                                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_safe_fraction<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_unsafe_fraction<class_ShapeCast2D_method_get_closest_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_ShapeCast2D_method_get_collider>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_ShapeCast2D_method_get_collider_rid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_ShapeCast2D_method_get_collider_shape>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_ShapeCast2D_method_get_collision_count>`\ (\ ) |const|                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_ShapeCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_ShapeCast2D_method_get_collision_normal>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_ShapeCast2D_method_get_collision_point>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_ShapeCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_ShapeCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_ShapeCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_ShapeCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ShapeCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_ShapeCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si ``true``, les collisions avec les :ref:`Area2D<class_Area2D>`\ s seront rapportées.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_ShapeCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si ``true``, les collisions avec les :ref:`PhysicsBody2D<class_PhysicsBody2D>`\ s seront rapportées.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_ShapeCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Le masque de collision de la forme. Seuls les objets dans au moins une couche de collision activée dans le masque seront détectés. Voir `Niveaux et masques de collisions <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_collision_result:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **collision_result** = ``[]`` :ref:`🔗<class_ShapeCast2D_property_collision_result>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_collision_result**\ (\ )

Renvoie l'information de collision complète du balayage des collisions. Les données renvoyées sont les mêmes que dans la méthode :ref:`PhysicsDirectSpaceState2D.get_rest_info()<class_PhysicsDirectSpaceState2D_method_get_rest_info>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_ShapeCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si ``true``, les collisions seront signalées.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_ShapeCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Si ``true``, le nœud parent sera exclu lors de la détection des collisions.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_ShapeCast2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

La marge de collision pour la forme. Une marge plus grande permet de détecter les collisions de manière plus consistante, au coût de la précision.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_max_results:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_results** = ``32`` :ref:`🔗<class_ShapeCast2D_property_max_results>`

.. rst-class:: classref-property-setget

- |void| **set_max_results**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_results**\ (\ )

Le nombre d'intersections peut être limité avec ce paramètre, pour réduire le temps de traitement.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_ShapeCast2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

La forme à utiliser pour les requêtes de collision.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_ShapeCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

Le point de destination de la forme, relatif à la :ref:`Node2D.position<class_Node2D_property_position>` de ce nœud.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ShapeCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_ShapeCast2D_method_add_exception>`

Ajoute une exception de collision pour que la forme ne signale pas les collisions avec le nœud spécifié.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast2D_method_add_exception_rid>`

Ajoute une exception de collision pour que la forme ne signale pas les collisions avec le :ref:`RID<class_RID>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_ShapeCast2D_method_clear_exceptions>`

Supprime toutes les exceptions de collision pour cette forme.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_force_shapecast_update:

.. rst-class:: classref-method

|void| **force_shapecast_update**\ (\ ) :ref:`🔗<class_ShapeCast2D_method_force_shapecast_update>`

Met à jour les informations de collision pour la forme immédiatement, sans attendre le prochain appel de ``_physics_process``. Utilisez cette méthode, par exemple, lorsque la forme ou son parent a changé d'état.

\ **Note : ** Définir :ref:`enabled<class_ShapeCast2D_property_enabled>` sur ``true`` n'est pas nécessaire pour que cela fonctionne.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_closest_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`

Renvoie la fraction de la distance depuis l'origine de ce cast à sa position cible :ref:`target_position<class_ShapeCast2D_property_target_position>` de combien la forme peut se déplacer sans déclencher une collision, en tant que valeur entre ``0.0`` et ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_closest_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_closest_collision_unsafe_fraction>`

Renvoie la fraction de la distance depuis l'origine de ce cast à sa position cible :ref:`target_position<class_ShapeCast2D_property_target_position>` de combien la forme peut se déplacer sans déclencher une collision, en tant que valeur entre ``0.0`` et ``1.0``.

Dans des conditions idéales, ce serait la même que :ref:`get_closest_collision_safe_fraction()<class_ShapeCast2D_method_get_closest_collision_safe_fraction>`, mais le shapecasting est calculé avec des étapes discrètes, ce qui fait que le point précis de collision peut se produire entre deux positions calculées.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider>`

Renvoie l'objet :ref:`Object<class_Object>` en collision d'une des multiples collisions à ``index``, ou ``null`` si aucun objet n'intersecte la forme (i.e. :ref:`is_colliding()<class_ShapeCast2D_method_is_colliding>` renvoie ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider_rid>`

Returns the :ref:`RID<class_RID>` of the collided object of one of the multiple collisions at ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collider_shape>`

Renvoie l'ID de forme de la forme en collision d'une des multiples collisions à ``index``, ou ``0`` si aucun objet n'intersecte la forme (i.e. :ref:`is_colliding()<class_ShapeCast2D_method_is_colliding>` renvoie ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_count>`

Le nombre de collisions détectées au point d'impact. Utilisez ceci pour itérer sur plusieurs collisions telles que fournies par les méthodes :ref:`get_collider()<class_ShapeCast2D_method_get_collider>`, :ref:`get_collider_shape()<class_ShapeCast2D_method_get_collider_shape>`, :ref:`get_collision_point()<class_ShapeCast2D_method_get_collision_point>`, et :ref:`get_collision_normal()<class_ShapeCast2D_method_get_collision_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_mask_value>`

Renvoie si la couche spécifiée du :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_normal>`

Renvoie la normale d'une des multiples collisions à ``index`` de l'objet intersectant.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast2D_method_get_collision_point>`

Renvoie le point de collision d'une des multiples collisions à ``index`` où la forme intersecte l'objet en collision.

\ **Note :** Ce point est dans le système de coordonnées **global**.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_ShapeCast2D_method_is_colliding>`

Renvoie si un objet intersecte avec le vecteur de la forme (en considérant la longueur du vecteur).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_ShapeCast2D_method_remove_exception>`

Supprime une exception de collision pour que la forme signale les collisions avec le nœud spécifié.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast2D_method_remove_exception_rid>`

Supprime une exception de collision pour que la forme signale les collisions avec le :ref:`RID<class_RID>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ShapeCast2D_method_set_collision_mask_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le :ref:`collision_mask<class_ShapeCast2D_property_collision_mask>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
