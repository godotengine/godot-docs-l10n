:github_url: hide

.. _class_PhysicsDirectSpaceState2D:

PhysicsDirectSpaceState2D
=========================

**Hérite de :** :ref:`Object<class_Object>`

**Hérité par :** :ref:`PhysicsDirectSpaceState2DExtension<class_PhysicsDirectSpaceState2DExtension>`

Fournit un accès direct à un espace physique dans le :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Fournit un accès direct à un espace physique dans le :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Il est utilisé principalement pour faire des requêtes contre des objets et des zones résidant dans un espace donné.

\ **Note :** Cette classe n'est pas destinée à être instanciée. Utilisez :ref:`World2D.direct_space_state<class_World2D_property_direct_space_state>` pour obtenir l'état de l'espace 2D physique du monde.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

- :doc:`Lancer de rayons <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState2D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`cast_motion_into<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>`\ )                 |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState2D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`collide_shape_into<class_PhysicsDirectSpaceState2D_method_collide_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>`\ )         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState2D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ )                                                                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_rest_info_into<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>`\ )           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState2D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_point_into<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, result\: :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState2D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ )                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_ray_into<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, result\: :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>`\ )             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState2D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ )                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`intersect_shape_into<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>`\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PhysicsDirectSpaceState2D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion>`

Vérifie jusqu'où une :ref:`Shape2D<class_Shape2D>` peut se déplacer sans entrer en collision. Tous les paramètres de la requête, y compris la forme et le mouvement, sont fournis par un objet :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`.

Renvoie un tableau avec les proportions sûres et dangereuses (entre 0 et 1) du mouvement. La proportion sûre est la fraction maximale du mouvement qui peut être effectué sans collision. La proportion dangereuse est la fraction minimale de la distance dont l'objet doit se déplacer pour entrer en collision. Si aucune collision n'est détectée, un résultat de ``[1.0, 1.0]`` sera renvoyé.

\ **Note :** Toute :ref:`Shape2D<class_Shape2D>` avec laquelle la forme est déjà en collision, par exemple à l'intérieur, sera ignorée. Utilisez :ref:`collide_shape()<class_PhysicsDirectSpaceState2D_method_collide_shape>` pour déterminer les :ref:`Shape2D<class_Shape2D>`\ s avec lesquelles la forme est déjà en collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_cast_motion_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **cast_motion_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_cast_motion_into>`

Checks how far a :ref:`Shape2D<class_Shape2D>` can move without colliding. All the parameters for the query, including the shape and the motion, are supplied through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object.

If the query is successful, this method returns ``true`` and writes the motion results into the :ref:`PhysicsCastMotionResult2D<class_PhysicsCastMotionResult2D>` object passed in ``result``. If no collision occurs, it returns ``false``.

\ **Note:** Any :ref:`Shape2D<class_Shape2D>`\ s that the shape is already colliding with e.g. inside of, will be ignored. Use :ref:`collide_shape_into()<class_PhysicsDirectSpaceState2D_method_collide_shape_into>` to determine the :ref:`Shape2D<class_Shape2D>`\ s that the shape is already colliding with.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2<class_Vector2>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape>`

Vérifie les intersections d'une forme, donnée à travers un objet :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, contre l'espace. Le tableau résultant contient une liste de points où la forme en intersecte une autre. Comme avec :ref:`intersect_shape()<class_PhysicsDirectSpaceState2D_method_intersect_shape>`, le nombre de résultats renvoyés peut être limité pour gagner du temps de traitement.

Les points renvoyés sont une liste de paires de points de contact. Pour chaque paire, la premier est dans la forme passée dans l'objet :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, le deuxième est dans la forme en collision de l'espace physique.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_collide_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **collide_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_collide_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If intersections are found, this method returns ``true`` and writes the collision points into the :ref:`PhysicsCollideShapeResult2D<class_PhysicsCollideShapeResult2D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of returned results can be limited using :ref:`PhysicsCollideShapeResult2D.max_collisions<class_PhysicsCollideShapeResult2D_property_max_collisions>`, to reduce the processing time.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info>`

Vérifie les intersections d'une forme, donnée avec un objet :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, contre l'espace. Si elle entre en collision avec plus d'une forme, la plus proche est sélectionnée. L'objet renvoyé est un dictionnaire contenant les champs suivants :

\ ``collider_id``\  : L'identifiant de l'objet en collision.

\ ``linear_velocity``\  : La vitesse de l'objet en collision en tant que :ref:`Vector2<class_Vector2>`. Si l'objet est une :ref:`Area2D<class_Area2D>`, le résultat est ``(0, 0)``.

\ ``normal``\  : La normale de collision de la forme de la requête au point d'intersection, pointant hors de l'objet en intersection.

\ ``point``\  : Le point d'intersection.

\ ``rid``\  : Le :ref:`RID<class_RID>` de l’objet en intersection.

\ ``shape``\  : L'indice de forme de la forme en collision.

Si la forme n'intersecte rien, alors un dictionnaire vide est renvoyé à la place.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_get_rest_info_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_rest_info_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If the shape collides with one or more shapes, this method returns ``true`` and writes the nearest collision information into the :ref:`PhysicsGetRestInfoResult2D<class_PhysicsGetRestInfoResult2D>` object passed in ``result``. If no collisions occur, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point>`

Vérifie si un point est à l'intérieur d'au moins une forme solide. La position et les autres paramètres sont définis par :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`. Les formes dans lesquelles se trouve le point sont renvoyées dans un tableau contenant des dictionnaires avec les champs suivants :

\ ``collider``\  : L'objet en collision.

\ ``collider_id``\  : L'ID de l'objet en collision.

\ ``rid``\  : Le :ref:`RID<class_RID>` de l'objet en intersection.

\ ``shape``\  : L'indice de forme de la forme en collision.

Le nombre d'intersections peut être limité avec le paramètre ``max_results``, pour réduire le temps de traitement.

\ **Note :** Les :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`\ s et les :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`\ s dans le mode de construction ``Segments`` ne sont pas des formes solides. Par conséquent, elles ne seront pas détectées.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_point_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_point_into**\ (\ parameters\: :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`, result\: :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`

Checks whether a point is inside any solid shape. Position and other parameters are defined through :ref:`PhysicsPointQueryParameters2D<class_PhysicsPointQueryParameters2D>`.

If one or more shapes overlap the point, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectPointResult2D<class_PhysicsIntersectPointResult2D>` object passed in ``result``. If no intersections are found, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectPointResult2D.max_intersections<class_PhysicsIntersectPointResult2D_property_max_intersections>`, to reduce the processing time.

\ **Note:** :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`\ s and :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`\ s in ``Segments`` build mode are not solid shapes. Therefore, they will not be detected.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray>`

Intersecte un rayon dans un espace donné. La position du rayon et les autres paramètres sont définis par :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`. L'objet renvoyé est un dictionnaire avec les champs suivants :

\ ``collider``\  : L'objet en collision.

\ ``collider_id``\  : L'ID de l'objet en collision.

\ ``normal``\  : La normale de surface de l'objet au point d'intersection, ou ``Vector2(0, 0)`` si le rayon commence à l'intérieur de la forme et :ref:`PhysicsRayQueryParameters2D.hit_from_inside<class_PhysicsRayQueryParameters2D_property_hit_from_inside>` vaut ``true``.

\ ``position``\  : Le point intersectant.

\ ``rid``\  : Le :ref:`RID<class_RID>` de l'objet intersectant.

\ ``shape``\  : L'indice de forme de la forme en collision.

Si le rayon n'a rien intersecté, un dictionnaire vide est renvoyé à la place.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_ray_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_ray_into**\ (\ parameters\: :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`, result\: :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`

Intersects a ray in a given space. Ray position and other parameters are defined through :ref:`PhysicsRayQueryParameters2D<class_PhysicsRayQueryParameters2D>`.

If the ray hits a shape, this method returns ``true`` and writes the intersection information into the :ref:`PhysicsIntersectRayResult2D<class_PhysicsIntersectRayResult2D>` object passed in ``result``. If nothing is hit, it returns ``false``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape>`

Vérifie les intersections d'une forme, donnée avec un objet :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, contre l'espace. Les formes intersectées sont renvoyées dans un tableau contenant des dictionnaires avec les champs suivants :

\ ``collider``\  : L'objet en collision.

\ ``collider_id``\  : L'ID de l'objet en collision.

\ ``rid``\  : Le :ref:`RID<class_RID>` de l'objet en intersection.

\ ``shape``\  : L'indice de forme de la forme en collision.

Le nombre d'intersections peut être limité avec le paramètre ``max_results``, pour réduire le temps de traitement.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState2D_method_intersect_shape_into:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersect_shape_into**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>`, result\: :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`

Checks the intersections of a shape, given through a :ref:`PhysicsShapeQueryParameters2D<class_PhysicsShapeQueryParameters2D>` object, against the space.

If one or more shapes are found to intersect, this method returns ``true`` and writes the intersection data into the :ref:`PhysicsIntersectShapeResult2D<class_PhysicsIntersectShapeResult2D>` object passed in ``result``. If no shapes are found to intersect, it returns ``false``.

The number of intersections can be limited using :ref:`PhysicsIntersectShapeResult2D.max_intersections<class_PhysicsIntersectShapeResult2D_property_max_intersections>`, to reduce the processing time.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
