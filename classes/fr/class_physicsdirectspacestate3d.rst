:github_url: hide

.. _class_PhysicsDirectSpaceState3D:

PhysicsDirectSpaceState3D
=========================

**Hérite de :** :ref:`Object<class_Object>`

**Hérité par :** :ref:`PhysicsDirectSpaceState3DExtension<class_PhysicsDirectSpaceState3DExtension>`

Fournit un accès direct à un espace physique dans le :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Fournit un accès direct à un espace physique dans le :ref:`PhysicsServer3D<class_PhysicsServer3D>`. Il est utilisé principalement pour faire des requêtes sur des objets et des zones résidant dans un espace donné.

\ **Note :** Cette classe n'est pas destinée à être instanciée directement. Utilisez :ref:`World3D.direct_space_state<class_World3D_property_direct_space_state>` pour obtenir l'état de l'espace 3D physique du monde.

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

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`              | :ref:`cast_motion<class_PhysicsDirectSpaceState3D_method_cast_motion>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3<class_Vector3>`\]       | :ref:`collide_shape<class_PhysicsDirectSpaceState3D_method_collide_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ )     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`get_rest_info<class_PhysicsDirectSpaceState3D_method_get_rest_info>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ )                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_point<class_PhysicsDirectSpaceState3D_method_intersect_point>`\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`intersect_ray<class_PhysicsDirectSpaceState3D_method_intersect_ray>`\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`\ )                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`intersect_shape<class_PhysicsDirectSpaceState3D_method_intersect_shape>`\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PhysicsDirectSpaceState3D_method_cast_motion:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **cast_motion**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_cast_motion>`

Vérifie jusqu'où un :ref:`Shape3D<class_Shape3D>` peut se déplacer sans entrer en collision. Tous les paramètres de la requête, y compris la forme et le mouvement, sont fournis par un objet :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`.

Renvoie un tableau avec les proportions sûres et dangereuses (entre 0 et 1) du mouvement. La proportion sûre est la fraction maximale du mouvement qui peut être effectué sans collision. La proportion dangereuse est la fraction minimale de la distance dont l'objet doit se déplacer pour entrer en collision. Si aucune collision n'est détectée, un résultat de ``[1.0, 1.0]`` sera renvoyé.

\ **Note :** Toute :ref:`Shape3D<class_Shape3D>` avec laquelle la forme est déjà en collision, par exemple à l'intérieur, sera ignorée. Utilisez :ref:`collide_shape()<class_PhysicsDirectSpaceState3D_method_collide_shape>` pour déterminer les :ref:`Shape3D<class_Shape3D>`\ s avec lesquelles la forme est déjà en collision.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_collide_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3<class_Vector3>`\] **collide_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_collide_shape>`

Vérifie les intersections d'une forme, donné par un objet :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, contre l'espace. Le tableau résultant contient une liste de points où la forme intersecte avec une autre. Comme avec :ref:`intersect_shape()<class_PhysicsDirectSpaceState3D_method_intersect_shape>`, le nombre de résultats renvoyés peut être limité pour gagner du temps de traitement.

Les points renvoyés sont une liste de paires de points de contact. Pour chaque paire, le premier est dans la forme passée dans l'objet :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, le second est dans la forme en collision de l'espace physique.

\ **Note :** Cette méthode ne tient pas compte de la propriété ``motion`` de l'objet.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_get_rest_info:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_rest_info**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_get_rest_info>`

Vérifie les intersections d'une forme, donnée avec un objet :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, contre l'espace. Si elle entre en collision avec plus d'une forme, la plus proche est sélectionnée. L'objet renvoyé est un dictionnaire contenant les champs suivants :

\ ``collider_id``\  : L'identifiant de l'objet en collision.

\ ``linear_velocity``\  : La vitesse de l'objet en collision en tant que :ref:`Vector3<class_Vector3>`. Si l'objet est une :ref:`Area3D<class_Area3D>`, le résultat est ``(0, 0, 0)``.

\ ``normal``\  : La normale de collision de la forme de la requête au point d'intersection, pointant hors de l'objet en intersection.

\ ``point``\  : Le point d'intersection.

\ ``rid``\  : Le :ref:`RID<class_RID>` de l’objet en intersection.

\ ``shape``\  : L'indice de forme de la forme en collision.

Si la forme n'intersecte rien, alors un dictionnaire vide est renvoyé à la place.

\ **Note :** Cette méthode ne tient pas compte de la propriété ``motion`` de l'objet.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_point:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_point**\ (\ parameters\: :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_point>`

Vérifie si un point est à l'intérieur d'au moins une forme solide. La position et les autres paramètres sont définis par :ref:`PhysicsPointQueryParameters3D<class_PhysicsPointQueryParameters3D>`. Les formes dans lesquelles se trouve le point sont renvoyées dans un tableau contenant des dictionnaires avec les champs suivants :

\ ``collider``\  : L'objet en collision.

\ ``collider_id``\  : L'ID de l'objet en collision.

\ ``rid``\  : Le :ref:`RID<class_RID>` de l'objet en intersection.

\ ``shape``\  : L'indice de forme de la forme en collision.

Le nombre d'intersections peut être limité avec le paramètre ``max_results``, pour réduire le temps de traitement.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ parameters\: :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_ray>`

Intersecte un rayon dans un espace donné. La position du rayon et les autres paramètres sont définis par :ref:`PhysicsRayQueryParameters3D<class_PhysicsRayQueryParameters3D>`. L'objet renvoyé est un dictionnaire avec les champs suivants :

\ ``collider``\  : L'objet en collision.

\ ``collider_id``\  : L'ID de l'objet en collision.

\ ``normal``\  : La normale de surface de l'objet au point d'intersection, ou ``Vector3(0, 0, 0)`` si le rayon commence à l'intérieur de la forme et :ref:`PhysicsRayQueryParameters3D.hit_from_inside<class_PhysicsRayQueryParameters3D_property_hit_from_inside>` vaut ``true``.

\ ``position``\  : Le point intersectant.

\ ``face_index``\  : L'index de face au point d'intersection.

\ **Note :** Renvoie un nombre valide seulement si la forme intersectée est un :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`. Sinon, ``-1`` est renvoyé.

\ ``rid``\  : Le :ref:`RID<class_RID>` de l'objet intersectant.

\ ``shape``\  : L'indice de forme de la forme en collision.

Si le rayon n'a rien intersecté, un dictionnaire vide est renvoyé à la place.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectSpaceState3D_method_intersect_shape:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **intersect_shape**\ (\ parameters\: :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, max_results\: :ref:`int<class_int>` = 32\ ) :ref:`🔗<class_PhysicsDirectSpaceState3D_method_intersect_shape>`

Vérifie les intersections d'une forme, données avec un objet :ref:`PhysicsShapeQueryParameters3D<class_PhysicsShapeQueryParameters3D>`, contre l'espace. Les formes intersectées sont renvoyées dans un tableau contenant des dictionnaires avec les champs suivants :

\ ``collider``\  : L'objet en collision.

\ ``collider_id``\  : L'ID de l'objet en collision.

\ ``rid``\  : Le :ref:`RID<class_RID>` de l'objet en intersection.

\ ``shape``\  : L'indice de forme de la forme en collision.

Le nombre d'intersections peut être limité avec le paramètre ``max_results``, pour réduire le temps de traitement.

\ **Note :** Cette méthode ne tient pas compte de la propriété ``motion`` de l'objet.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
