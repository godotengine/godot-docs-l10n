:github_url: hide

.. _class_AStarGrid2D:

AStarGrid2D
===========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une implémentation de A\* pour trouver le chemin le plus court entre deux points sur une grille 2D.

.. rst-class:: classref-introduction-group

Description
-----------

**AStarGrid2D** est une variante de :ref:`AStar2D<class_AStar2D>` spécialisée dans les grilles 2D partielles. Elle est plus simple à utiliser parce qu'elle ne vous oblige pas à créer manuellement des points et à les connecter ensemble. Cette classe prend également en charge plusieurs types d'heuristiques, de modes de mouvement diagonal, et un mode de saut pour accélérer les calculs.

Pour utiliser **AStarGrid2D**, vous n'avez qu'à définir la :ref:`region<class_AStarGrid2D_property_region>` de la grille, définir optionnellement la taille de cellule :ref:`cell_size<class_AStarGrid2D_property_cell_size>`, puis appeler la méthode :ref:`update()<class_AStarGrid2D_method_update>`\  :


.. tabs::

 .. code-tab:: gdscript

    var grille_astar = AStarGrid2D.new()
    grille_astar.region = Rect2i(0, 0, 32, 32)
    grille_astar.cell_size = Vector2(16, 16)
    grille_astar.update()
    print(grille_astar.get_id_path(Vector2i(0, 0), Vector2i(3, 4))) # Affiche [(0, 0), (1, 1), (2, 2), (3, 3), (3, 4)]
    print(grille_astar.get_point_path(Vector2i(0, 0), Vector2i(3, 4))) # Affiche [(0, 0), (16, 16), (32, 32), (48, 48), (48, 64)]

 .. code-tab:: csharp

    AStarGrid2D grilleAstar = new AStarGrid2D();
    grilleAstar.Region = new Rect2I(0, 0, 32, 32);
    grilleAstar.CellSize = new Vector2I(16, 16);
    grilleAstar.Update();
    GD.Print(grilleAstar.GetIdPath(Vector2I.Zero, new Vector2I(3, 4))); // Affiche [(0, 0), (1, 1), (2, 2), (3, 3), (3, 4)]
    GD.Print(grilleAstar.GetPointPath(Vector2I.Zero, new Vector2I(3, 4))); // Affiche [(0, 0), (16, 16), (32, 32), (48, 48), (48, 64)]



Pour supprimer un point de la grille de recherche de chemin, il doit être défini comme "solide" avec :ref:`set_point_solid()<class_AStarGrid2D_method_set_point_solid>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de navigation sur une grille avec AStarGrid2D <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`CellShape<enum_AStarGrid2D_CellShape>`       | :ref:`cell_shape<class_AStarGrid2D_property_cell_shape>`                                 | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`cell_size<class_AStarGrid2D_property_cell_size>`                                   | ``Vector2(1, 1)``      |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`       | :ref:`default_compute_heuristic<class_AStarGrid2D_property_default_compute_heuristic>`   | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`       | :ref:`default_estimate_heuristic<class_AStarGrid2D_property_default_estimate_heuristic>` | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` | :ref:`diagonal_mode<class_AStarGrid2D_property_diagonal_mode>`                           | ``0``                  |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`jumping_enabled<class_AStarGrid2D_property_jumping_enabled>`                       | ``false``              |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`offset<class_AStarGrid2D_property_offset>`                                         | ``Vector2(0, 0)``      |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Rect2i<class_Rect2i>`                        | :ref:`region<class_AStarGrid2D_property_region>`                                         | ``Rect2i(0, 0, 0, 0)`` |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+
   | :ref:`Vector2i<class_Vector2i>`                    | :ref:`size<class_AStarGrid2D_property_size>`                                             | ``Vector2i(0, 0)``     |
   +----------------------------------------------------+------------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_compute_cost<class_AStarGrid2D_private_method__compute_cost>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const|                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_estimate_cost<class_AStarGrid2D_private_method__estimate_cost>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, end_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const|                            |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear<class_AStarGrid2D_method_clear>`\ (\ )                                                                                                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`fill_solid_region<class_AStarGrid2D_method_fill_solid_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`, solid\: :ref:`bool<class_bool>` = true\ )                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`fill_weight_scale_region<class_AStarGrid2D_method_fill_weight_scale_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`, weight_scale\: :ref:`float<class_float>`\ )                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]     | :ref:`get_id_path<class_AStarGrid2D_method_get_id_path>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_point_data_in_region<class_AStarGrid2D_method_get_point_data_in_region>`\ (\ region\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`              | :ref:`get_point_path<class_AStarGrid2D_method_get_point_path>`\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_point_position<class_AStarGrid2D_method_get_point_position>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_point_weight_scale<class_AStarGrid2D_method_get_point_weight_scale>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_dirty<class_AStarGrid2D_method_is_dirty>`\ (\ ) |const|                                                                                                                                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_in_bounds<class_AStarGrid2D_method_is_in_bounds>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const|                                                                                 |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_in_boundsv<class_AStarGrid2D_method_is_in_boundsv>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                               |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_point_solid<class_AStarGrid2D_method_is_point_solid>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_point_solid<class_AStarGrid2D_method_set_point_solid>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`, solid\: :ref:`bool<class_bool>` = true\ )                                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_point_weight_scale<class_AStarGrid2D_method_set_point_weight_scale>`\ (\ id\: :ref:`Vector2i<class_Vector2i>`, weight_scale\: :ref:`float<class_float>`\ )                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`update<class_AStarGrid2D_method_update>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AStarGrid2D_Heuristic:

.. rst-class:: classref-enumeration

enum **Heuristic**: :ref:`🔗<enum_AStarGrid2D_Heuristic>`

.. _class_AStarGrid2D_constant_HEURISTIC_EUCLIDEAN:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_EUCLIDEAN** = ``0``

L'`heuristique Euclidienne <https://fr.wikipedia.org/wiki/Distance_euclidienne>`__ à utiliser pour la recherche de chemin utilisant la formule suivante :

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    resultat = sqrt(dx * dx + dy * dy)

\ **Note :** C'est aussi l'heuristique interne utilisé par défaut dans :ref:`AStar3D<class_AStar3D>` et :ref:`AStar2D<class_AStar2D>` (avec l'inclusion d'une éventuelle coordonnée sur l'axe Z).

.. _class_AStarGrid2D_constant_HEURISTIC_MANHATTAN:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_MANHATTAN** = ``1``

L'`heuristique de Manhattan <https://fr.wikipedia.org/wiki/Distance_de_Manhattan>`__ à utiliser pour la recherche de chemin utilisant la formule suivante :

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    resultat = dx + dy

\ **Note :** Cette heuristique est destinée à être utilisé avec des mouvements orthogonaux à 4 côtés, fournis en définissant :ref:`diagonal_mode<class_AStarGrid2D_property_diagonal_mode>` à :ref:`DIAGONAL_MODE_NEVER<class_AStarGrid2D_constant_DIAGONAL_MODE_NEVER>`.

.. _class_AStarGrid2D_constant_HEURISTIC_OCTILE:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_OCTILE** = ``2``

L'heuristique Octile à utiliser pour la recherche de chemin utilisant la formule suivante :

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    f = sqrt(2) - 1
    resultat = (dx < dy) ? f * dx + dy : f * dy + dx;

.. _class_AStarGrid2D_constant_HEURISTIC_CHEBYSHEV:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_CHEBYSHEV** = ``3``

L'`heuristique de Chebyshev <https://fr.wikipedia.org/wiki/Distance_de_Tchebychev>`__ à utiliser pour la recherche de chemin utilisant la formule suivante :

::

    dx = abs(to_id.x - from_id.x)
    dy = abs(to_id.y - from_id.y)
    resultat = max(dx, dy)

.. _class_AStarGrid2D_constant_HEURISTIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **HEURISTIC_MAX** = ``4``

Représente la taille de l'énumération :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`.

.. rst-class:: classref-item-separator

----

.. _enum_AStarGrid2D_DiagonalMode:

.. rst-class:: classref-enumeration

enum **DiagonalMode**: :ref:`🔗<enum_AStarGrid2D_DiagonalMode>`

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_ALWAYS** = ``0``

L'algorithme de recherche de chemin ignorera les voisins solides autour de la cellule cible et permettra de passer en utilisant des diagonales.

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_NEVER** = ``1``

L'algorithme de recherche de chemin ignorera toutes les diagonales et le chemin sera toujours orthogonal.

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE** = ``2``

L'algorithme de recherche de chemin évitera d'utiliser des diagonales si au moins deux obstacles ont été placés autour des cellules voisines du segment de chemin spécifique.

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES** = ``3``

L'algorithme de recherche de chemin évitera d'utiliser des diagonales si un obstacle a été placé autour des cellules voisines du segment de chemin spécifique.

.. _class_AStarGrid2D_constant_DIAGONAL_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **DIAGONAL_MODE_MAX** = ``4``

Représente la taille de l'énumération :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_AStarGrid2D_CellShape:

.. rst-class:: classref-enumeration

enum **CellShape**: :ref:`🔗<enum_AStarGrid2D_CellShape>`

.. _class_AStarGrid2D_constant_CELL_SHAPE_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_SQUARE** = ``0``

Forme de cellule rectangulaire.

.. _class_AStarGrid2D_constant_CELL_SHAPE_ISOMETRIC_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_ISOMETRIC_RIGHT** = ``1``

Forme de cellule en diamant (pour un style isométrique). Disposition de coordonnées de cellule où l'axe horizontal va en haut à droite, et l'axe vertical va en bas à droite.

.. _class_AStarGrid2D_constant_CELL_SHAPE_ISOMETRIC_DOWN:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_ISOMETRIC_DOWN** = ``2``

Forme de cellule en diamant (pour un style isométrique). Disposition de coordonnées de cellule où l'axe horizontal va en bas à droite, et l'axe vertical va en bas à gauche.

.. _class_AStarGrid2D_constant_CELL_SHAPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **CELL_SHAPE_MAX** = ``3``

Représente la taille de l'énumération :ref:`CellShape<enum_AStarGrid2D_CellShape>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AStarGrid2D_property_cell_shape:

.. rst-class:: classref-property

:ref:`CellShape<enum_AStarGrid2D_CellShape>` **cell_shape** = ``0`` :ref:`🔗<class_AStarGrid2D_property_cell_shape>`

.. rst-class:: classref-property-setget

- |void| **set_cell_shape**\ (\ value\: :ref:`CellShape<enum_AStarGrid2D_CellShape>`\ )
- :ref:`CellShape<enum_AStarGrid2D_CellShape>` **get_cell_shape**\ (\ )

La forme de la cellule. Affecte comment les positions sont placées dans le réseau. Si elle est modifiée, :ref:`update()<class_AStarGrid2D_method_update>` doit être appelée avant de chercher le chemin suivant.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **cell_size** = ``Vector2(1, 1)`` :ref:`🔗<class_AStarGrid2D_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_cell_size**\ (\ )

La taille de la cellule de point qui sera appliquée pour calculer la position des points résultants renvoyés par :ref:`get_point_path()<class_AStarGrid2D_method_get_point_path>`. Si elle est modifiée, :ref:`update()<class_AStarGrid2D_method_update>` doit être appelée avant de chercher le chemin suivant.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_default_compute_heuristic:

.. rst-class:: classref-property

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **default_compute_heuristic** = ``0`` :ref:`🔗<class_AStarGrid2D_property_default_compute_heuristic>`

.. rst-class:: classref-property-setget

- |void| **set_default_compute_heuristic**\ (\ value\: :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ )
- :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **get_default_compute_heuristic**\ (\ )

L'heuristique par défaut :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` qui sera utilisée pour calculer le coût entre deux points si :ref:`_compute_cost()<class_AStarGrid2D_private_method__compute_cost>` n'a pas été redéfinie.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_default_estimate_heuristic:

.. rst-class:: classref-property

:ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **default_estimate_heuristic** = ``0`` :ref:`🔗<class_AStarGrid2D_property_default_estimate_heuristic>`

.. rst-class:: classref-property-setget

- |void| **set_default_estimate_heuristic**\ (\ value\: :ref:`Heuristic<enum_AStarGrid2D_Heuristic>`\ )
- :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` **get_default_estimate_heuristic**\ (\ )

La valeur :ref:`Heuristic<enum_AStarGrid2D_Heuristic>` par défaut qui sera utilisée pour calculer le coût entre le point et le point final si :ref:`_estimate_cost()<class_AStarGrid2D_private_method__estimate_cost>` n'a pas été redéfinie.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_diagonal_mode:

.. rst-class:: classref-property

:ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **diagonal_mode** = ``0`` :ref:`🔗<class_AStarGrid2D_property_diagonal_mode>`

.. rst-class:: classref-property-setget

- |void| **set_diagonal_mode**\ (\ value\: :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>`\ )
- :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` **get_diagonal_mode**\ (\ )

Un mode spécifique :ref:`DiagonalMode<enum_AStarGrid2D_DiagonalMode>` qui forcera le chemin à éviter ou accepter les diagonales spécifiées.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_jumping_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **jumping_enabled** = ``false`` :ref:`🔗<class_AStarGrid2D_property_jumping_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_jumping_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_jumping_enabled**\ (\ )

Active ou désactive le saut pour ignorer les points intermédiaires et accélère l'algorithme de recherche.

\ **Note :** À l'heure actuelle, l'activer désactive la prise en compte du facteur de poids dans la recherche de chemin.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AStarGrid2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Le décalage de la grille qui sera appliqué pour calculer la position des points résultants renvoyés par :ref:`get_point_path()<class_AStarGrid2D_method_get_point_path>`. Si il est modifié, :ref:`update()<class_AStarGrid2D_method_update>` doit être appelée avant de chercher le chemin suivant.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_AStarGrid2D_property_region>`

.. rst-class:: classref-property-setget

- |void| **set_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_region**\ (\ )

La région des cellules de la grille disponibles pour la recherche de chemin. Si elle est modifiée, :ref:`update()<class_AStarGrid2D_method_update>` doit être appelée avant de trouver le chemin suivant.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_AStarGrid2D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

**Obsolète :** Use :ref:`region<class_AStarGrid2D_property_region>` instead.

La taille de la grille (le nombre de cellule de taille :ref:`cell_size<class_AStarGrid2D_property_cell_size>` sur chaque axe). Si elle est modifiée, :ref:`update()<class_AStarGrid2D_method_update>` doit être appelée avant de chercher le chemin suivant.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AStarGrid2D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const| :ref:`🔗<class_AStarGrid2D_private_method__compute_cost>`

Appelée lors du calcul du coût entre deux points connectés.

À noter que cette fonction est cachée dans la classe **AStarGrid2D** par défaut.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, end_id\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| |const| :ref:`🔗<class_AStarGrid2D_private_method__estimate_cost>`

Appelée lors du calcul du coût entre un point et le point final du chemin.

À noter que cette fonction est cachée dans la classe **AStarGrid2D** par défaut.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStarGrid2D_method_clear>`

Efface la grille et fixe la :ref:`region<class_AStarGrid2D_property_region>` à ``Rect2i(0, 0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_fill_solid_region:

.. rst-class:: classref-method

|void| **fill_solid_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`, solid\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStarGrid2D_method_fill_solid_region>`

Remplit la ``region`` donnée sur la grille avec la valeur spécifiée pour le drapeau solide.

\ **Note :** L'appel à :ref:`update()<class_AStarGrid2D_method_update>` n'est pas nécessaire après l'appel de cette fonction.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_fill_weight_scale_region:

.. rst-class:: classref-method

|void| **fill_weight_scale_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStarGrid2D_method_fill_weight_scale_region>`

Remplit la ``region`` donnée sur la grille avec la valeur spécifiée pour le facteur de poids.

\ **Note :** L'appel à :ref:`update()<class_AStarGrid2D_method_update>` n'est pas nécessaire après l'appel de cette fonction.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_id_path:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_id_path**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStarGrid2D_method_get_id_path>`

Renvoie un tableau avec les points qui sont dans le chemin trouvé par AStar2D entre les points donnés. Le tableau est trié du point de départ au point final du chemin.

Si le point ``from_id`` est désactivé, renvoie un tableau vide (même si ``from_id == to_id``).

Si le point ``from_id`` n'est pas désactivé, qu'il n'y a pas de chemin valide vers la cible, et que ``allow_partial_path`` vaut ``true``, renvoie un chemin vers le point le plus proche de la cible qui peut être atteint.

\ **Note :** Lorsque ``allow_partial_path`` vaut ``true`` et que ``to_id`` est solide, la recherche peut prendre un temps inhabituellement long pour se terminer.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_data_in_region:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_point_data_in_region**\ (\ region\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_data_in_region>`

Renvoie un tableau de dictionnaires avec les données des points (``id``\  : :ref:`Vector2i<class_Vector2i>`, ``position``\  : :ref:`Vector2<class_Vector2>`, ``solid``\  : :ref:`bool<class_bool>`, ``weight_scale``\  : :ref:`float<class_float>`) dans une ``region``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_point_path**\ (\ from_id\: :ref:`Vector2i<class_Vector2i>`, to_id\: :ref:`Vector2i<class_Vector2i>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStarGrid2D_method_get_point_path>`

Renvoie un tableau avec les points qui sont dans le chemin trouvé par **AStarGrid2D** entre les points donnés. Le tableau est trié du point de départ au point final du chemin.

Si ``from_id`` point est désactivé, retourne un tableau vide (même si ``from_id == to_id``).

Si ``from_id`` point n'est pas désactivé, qu'il n'y a pas de chemin valide vers la cible, et que ``allow_partial_path`` vaut ``true``, renvoie un chemin vers le point le plus proche de la cible qui peut être atteint.

\ **Note :** Cette méthode n'est pas thread-safe, elle ne peut être utilisée qu'à partir d'un seul :ref:`Thread<class_Thread>` à un moment donné. Envisagez d'utiliser :ref:`Mutex<class_Mutex>` pour garantir un accès exclusif à un thread pour éviter les race conditions.

De plus, lorsque ``allow_partial_path`` vaut ``true`` et que ``to_id`` est solide, la recherche peut prendre un temps inhabituellement long pour se terminer.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_point_position**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_position>`

Renvoie la position du point associé à l'identifiant ``id`` donné.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_get_point_weight_scale>`

Renvoie le facteur de poids du point associé à l'identifiant ``id`` donné.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_dirty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_dirty**\ (\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_dirty>`

Indique que les paramètres de la grille ont été changés et que :ref:`update()<class_AStarGrid2D_method_update>` doit être appelée.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_in_bounds:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_bounds**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_in_bounds>`

Renvoie ``true`` si ``x`` et ``y`` sont une coordonnée de grille valide (id), c'est-à-dire si elle est à l'intérieur de la :ref:`region<class_AStarGrid2D_property_region>`. Équivalent à ``region.has_point(Vector2i(x, y))``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_in_boundsv:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_boundsv**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_in_boundsv>`

Renvoie ``true`` si le vecteur ``id`` est une coordonnée de grille valide, c'est-à-dire si il est à l'intérieur de :ref:`region<class_AStarGrid2D_property_region>`. Équivalent à ``region.has_point(id)``.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_is_point_solid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_solid**\ (\ id\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_AStarGrid2D_method_is_point_solid>`

Renvoie ``true`` si un point est désactivé pour le calcul du chemin. Par défaut, tous les points sont activés.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_set_point_solid:

.. rst-class:: classref-method

|void| **set_point_solid**\ (\ id\: :ref:`Vector2i<class_Vector2i>`, solid\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStarGrid2D_method_set_point_solid>`

Désactive ou active le point spécifié pour la recherche de chemin. Utile pour faire un obstacle. Par défaut, tous les points sont activés.

\ **Note :** L'appel à :ref:`update()<class_AStarGrid2D_method_update>` n'est pas nécessaire après l'appel de cette fonction.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`Vector2i<class_Vector2i>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStarGrid2D_method_set_point_weight_scale>`

Définit le facteur de poids ``weight_scale`` pour le point avec l'identifiant ``id`` donné. Le facteur de poids ``weight_scale`` est multiplié par le résultat de :ref:`_compute_cost()<class_AStarGrid2D_private_method__compute_cost>` pour déterminer le coût global de voyage le long d'un segment d'un point voisin à ce point.

\ **Note :** L'appel à :ref:`update()<class_AStarGrid2D_method_update>` n'est pas nécessaire après l'appel de cette fonction.

.. rst-class:: classref-item-separator

----

.. _class_AStarGrid2D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ ) :ref:`🔗<class_AStarGrid2D_method_update>`

Met à jour de l'état interne de la grille selon les paramètres pour la préparer à la recherche du chemin. Il convient d'appeler cette méthode si des paramètres comme :ref:`region<class_AStarGrid2D_property_region>`, :ref:`cell_size<class_AStarGrid2D_property_cell_size>` ou :ref:`offset<class_AStarGrid2D_property_offset>` sont changés. :ref:`is_dirty()<class_AStarGrid2D_method_is_dirty>` renverra ``true`` si c'est le cas et que ceci doit être appelé.

\ **Note :** Toutes les données de point (solidité et facteur de poids) seront effacées.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
