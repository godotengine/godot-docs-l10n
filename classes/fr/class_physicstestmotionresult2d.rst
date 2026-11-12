:github_url: hide

.. _class_PhysicsTestMotionResult2D:

PhysicsTestMotionResult2D
=========================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Décrit le mouvement et la collision résultant de :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

.. rst-class:: classref-introduction-group

Description
-----------

Describes the motion and collision result from :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_PhysicsTestMotionResult2D_method_get_collider>`\ (\ ) |const|                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_PhysicsTestMotionResult2D_method_get_collider_id>`\ (\ ) |const|                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_PhysicsTestMotionResult2D_method_get_collider_rid>`\ (\ ) |const|                           |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_PhysicsTestMotionResult2D_method_get_collider_shape>`\ (\ ) |const|                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collider_velocity<class_PhysicsTestMotionResult2D_method_get_collider_velocity>`\ (\ ) |const|                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_depth<class_PhysicsTestMotionResult2D_method_get_collision_depth>`\ (\ ) |const|                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_local_shape<class_PhysicsTestMotionResult2D_method_get_collision_local_shape>`\ (\ ) |const|         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_PhysicsTestMotionResult2D_method_get_collision_normal>`\ (\ ) |const|                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_PhysicsTestMotionResult2D_method_get_collision_point>`\ (\ ) |const|                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_safe_fraction<class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction>`\ (\ ) |const|     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_unsafe_fraction<class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction>`\ (\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_remainder<class_PhysicsTestMotionResult2D_method_get_remainder>`\ (\ ) |const|                                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_travel<class_PhysicsTestMotionResult2D_method_get_travel>`\ (\ ) |const|                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PhysicsTestMotionResult2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider>`

Renvoie l':ref:`Object<class_Object>` attaché au corps en collision, si une collision s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_id>`

Renvoie l'identifiant d'instance unique de l':ref:`Object<class_Object>` attaché au corps en collision, si une collision s'est produite. Voir :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_rid>`

Renvoie le :ref:`RID<class_RID>` du corps en collision utilisé par le :ref:`PhysicsServer2D<class_PhysicsServer2D>`, si une collision s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_shape>`

Renvoie l'indice de forme du corps en collision, si une collision s'est produite. Voir :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_velocity>`

Renvoie la vélocité du corps en collision, si une collision s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_depth**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_depth>`

Renvoie la longueur du chevauchement le long de la normale de collision, si une collision s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_local_shape**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_local_shape>`

Renvoie la forme de l'objet en collision en mouvement, si une collision s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_normal>`

Renvoie la normale à la forme du corps en collision au point de collision, si une collision s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_point>`

Renvoie le point de collision dans les coordonnées globales, si une collision s'est produite.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction>`

Renvoie la fraction maximale du mouvement qui peut se produire sans collision, entre ``0`` et ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction>`

Renvoie la fraction minimale du mouvement nécessaire pour entrer en collision, si une collision s'est produite, entre ``0`` et ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_remainder>`

Renvoie le vecteur de mouvement restant de l'objet mobile.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_travel**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_travel>`

Returns the moving object's travel before collision.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
