:github_url: hide

.. _class_CSGPolygon3D:

CSGPolygon3D
============

**Hérite de :** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Extrude une forme de polygone 2D pour créer un maillage 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Un tableau de points 2D est extrudé pour créer rapidement et facilement une variété de maillages 3D. Voir aussi :ref:`CSGMesh3D<class_CSGMesh3D>` pour l'utilisation des maillages 3D comme nœuds CSG.

\ **Note : ** Les nœuds CSG sont destinés à être utilisés pour le prototypage de niveau. Créer des nœuds CSG a un coût CPU important comparé à la création d'un :ref:`MeshInstance3D<class_MeshInstance3D>` avec un :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Déplacer un nœud CSG dans un autre nœud CSG a également un coût CPU important, ceci devrait donc être évité pendant le gameplay.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Prototyper des niveaux avec CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`depth<class_CSGPolygon3D_property_depth>`                                   | ``1.0``                                        |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`Material<class_Material>`                             | :ref:`material<class_CSGPolygon3D_property_material>`                             |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`Mode<enum_CSGPolygon3D_Mode>`                         | :ref:`mode<class_CSGPolygon3D_property_mode>`                                     | ``0``                                          |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_continuous_u<class_CSGPolygon3D_property_path_continuous_u>`           |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_interval<class_CSGPolygon3D_property_path_interval>`                   |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` | :ref:`path_interval_type<class_CSGPolygon3D_property_path_interval_type>`         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_joined<class_CSGPolygon3D_property_path_joined>`                       |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_local<class_CSGPolygon3D_property_path_local>`                         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`path_node<class_CSGPolygon3D_property_path_node>`                           |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`         | :ref:`path_rotation<class_CSGPolygon3D_property_path_rotation>`                   |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_rotation_accurate<class_CSGPolygon3D_property_path_rotation_accurate>` |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_simplify_angle<class_CSGPolygon3D_property_path_simplify_angle>`       |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_u_distance<class_CSGPolygon3D_property_path_u_distance>`               |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`         | :ref:`polygon<class_CSGPolygon3D_property_polygon>`                               | ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`smooth_faces<class_CSGPolygon3D_property_smooth_faces>`                     | ``false``                                      |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`spin_degrees<class_CSGPolygon3D_property_spin_degrees>`                     |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`spin_sides<class_CSGPolygon3D_property_spin_sides>`                         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_CSGPolygon3D_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_CSGPolygon3D_Mode>`

.. _class_CSGPolygon3D_constant_MODE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_DEPTH** = ``0``

La forme :ref:`polygon<class_CSGPolygon3D_property_polygon>` est extrudée le long de l'axe Z négatif.

.. _class_CSGPolygon3D_constant_MODE_SPIN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_SPIN** = ``1``

La forme :ref:`polygon<class_CSGPolygon3D_property_polygon>` est extrudée en la faisant pivoter autour de l'axe Y.

.. _class_CSGPolygon3D_constant_MODE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_PATH** = ``2``

La forme :ref:`polygon<class_CSGPolygon3D_property_polygon>` est extrudée le long du :ref:`Path3D<class_Path3D>` spécifié par :ref:`path_node<class_CSGPolygon3D_property_path_node>`.

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathRotation:

.. rst-class:: classref-enumeration

enum **PathRotation**: :ref:`🔗<enum_CSGPolygon3D_PathRotation>`

.. _class_CSGPolygon3D_constant_PATH_ROTATION_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_POLYGON** = ``0``

La forme :ref:`polygon<class_CSGPolygon3D_property_polygon>` n'est pas tournée.

\ **Note :** Nécessite que les coordonnées Z du chemin diminuent en continu pour assurer des formes viables.

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH** = ``1``

La forme :ref:`polygon<class_CSGPolygon3D_property_polygon>` est tournée le long du chemin, mais elle n'est pas tournée autour de l'axe du chemin.

\ **Note :** Nécessite que les coordonnées Z du chemin diminuent en continu pour assurer des formes viables.

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH_FOLLOW:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH_FOLLOW** = ``2``

La forme :ref:`polygon<class_CSGPolygon3D_property_polygon>` suit le chemin et pivote autour de l'axe du chemin.

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathIntervalType:

.. rst-class:: classref-enumeration

enum **PathIntervalType**: :ref:`🔗<enum_CSGPolygon3D_PathIntervalType>`

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_DISTANCE** = ``0``

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` est défini à :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` déterminera la distance, en mètres, entre chaque intervalle où le chemin s'extrudera.

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_SUBDIVIDE** = ``1``

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` est défini :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` divisera les polygones le long du chemin.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CSGPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CSGPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Quand :ref:`mode<class_CSGPolygon3D_property_mode>` est :ref:`MODE_DEPTH<class_CSGPolygon3D_constant_MODE_DEPTH>`, la profondeur de l'extrusion.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGPolygon3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Matériau à utiliser pour le maillage résultant. Les UV associent la partie supérieure du matériau à la forme extrudée (U le long de la longueur des extrusions et V autour du contour du :ref:`polygon<class_CSGPolygon3D_property_polygon>`), le quart inférieur gauche à la face de fin avant, et le quart inférieur droit à la face de fin arrière.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_CSGPolygon3D_Mode>` **mode** = ``0`` :ref:`🔗<class_CSGPolygon3D_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_CSGPolygon3D_Mode>`\ )
- :ref:`Mode<enum_CSGPolygon3D_Mode>` **get_mode**\ (\ )

Le :ref:`mode<class_CSGPolygon3D_property_mode>` utilisé pour extruder le :ref:`polygon<class_CSGPolygon3D_property_polygon>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_continuous_u:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_continuous_u** :ref:`🔗<class_CSGPolygon3D_property_path_continuous_u>`

.. rst-class:: classref-property-setget

- |void| **set_path_continuous_u**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_continuous_u**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` est :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, par défaut, la moitié supérieure du :ref:`material<class_CSGPolygon3D_property_material>` est étirée sur toute la longueur de la forme extrudée. Si ``false`` la partie supérieure du matériau est répétée à chaque étape de l'extrusion.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_interval** :ref:`🔗<class_CSGPolygon3D_property_path_interval>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_interval**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` est :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, l'intervalle de chemin ou le rapport de chemin pointe vers les extrusions.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval_type:

.. rst-class:: classref-property

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **path_interval_type** :ref:`🔗<class_CSGPolygon3D_property_path_interval_type>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval_type**\ (\ value\: :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>`\ )
- :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **get_path_interval_type**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` est :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, cela déterminera si l'intervalle doit être suivant la distance (:ref:`PATH_INTERVAL_DISTANCE<class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE>`) ou suivant une fraction des sous-divisions (:ref:`PATH_INTERVAL_SUBDIVIDE<class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE>`).

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_joined:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_joined** :ref:`🔗<class_CSGPolygon3D_property_path_joined>`

.. rst-class:: classref-property-setget

- |void| **set_path_joined**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_joined**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` est :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, si ``true`` les extrémités du chemin sont jointes, en ajoutant une extrusion entre le dernier et le premier points du chemin.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_local** :ref:`🔗<class_CSGPolygon3D_property_path_local>`

.. rst-class:: classref-property-setget

- |void| **set_path_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_local**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` vaut :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, si ``true`` la :ref:`Transform3D<class_Transform3D>` du **CSGPolygon3D** est utilisée comme point de départ pour les extrusions, et non pas la :ref:`Transform3D<class_Transform3D>` du :ref:`path_node<class_CSGPolygon3D_property_path_node>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **path_node** :ref:`🔗<class_CSGPolygon3D_property_path_node>`

.. rst-class:: classref-property-setget

- |void| **set_path_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_path_node**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` vaut :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, l'emplacement de l'objet :ref:`Path3D<class_Path3D>` est utilisé pour extruder le :ref:`polygon<class_CSGPolygon3D_property_polygon>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation:

.. rst-class:: classref-property

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **path_rotation** :ref:`🔗<class_CSGPolygon3D_property_path_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation**\ (\ value\: :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`\ )
- :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **get_path_rotation**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` vaut :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, la méthode de rotation du chemin est utilisée pour faire pivoter le :ref:`polygon<class_CSGPolygon3D_property_polygon>` durant son extrusion.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation_accurate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_rotation_accurate** :ref:`🔗<class_CSGPolygon3D_property_path_rotation_accurate>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation_accurate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_path_rotation_accurate**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` vaut :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, si ``true``, le polygone sera tourné selon la tangente au chemin exacte aux points échantillonnés. Si ``false`` une approximation est utilisée, ce qui diminue en précision lorsque le nombre de sous-divisions diminue.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_simplify_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_simplify_angle** :ref:`🔗<class_CSGPolygon3D_property_path_simplify_angle>`

.. rst-class:: classref-property-setget

- |void| **set_path_simplify_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_simplify_angle**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` est :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, les extrusions qui sont inférieures à cet angle seront fusionnés pour réduire le nombre de polygones.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_u_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_u_distance** :ref:`🔗<class_CSGPolygon3D_property_path_u_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_u_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_u_distance**\ (\ )

Lorsque :ref:`mode<class_CSGPolygon3D_property_mode>` est :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, c'est la distance le long du chemin, en mètres, que les coordonnées de texture seront répétées. Quand à 0, les coordonnées de texture correspondront exactement à la géométrie sans répétition.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` :ref:`🔗<class_CSGPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Le tableau de points qui définit le polygone 2D extrudé. Cela peut être un polygone convexe ou concave avec 3 points ou plus. Le polygone ne doit *pas* avoir de bords qui sont des intersections. Sinon, la triangulation échouera et aucun maillage ne sera généré.

\ **Note :** Si seulement 1 ou 2 points sont définis dans :ref:`polygon<class_CSGPolygon3D_property_polygon>`, aucun maillage ne sera généré.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``false`` :ref:`🔗<class_CSGPolygon3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

Si ``true``, applique un ombrage lisse aux extrusions.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **spin_degrees** :ref:`🔗<class_CSGPolygon3D_property_spin_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_spin_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spin_degrees**\ (\ )

Quand :ref:`mode<class_CSGPolygon3D_property_mode>` vaut :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>`, le nombre total de degrés dont le polygone :ref:`polygon<class_CSGPolygon3D_property_polygon>` est tourné lors de l'extrusion.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **spin_sides** :ref:`🔗<class_CSGPolygon3D_property_spin_sides>`

.. rst-class:: classref-property-setget

- |void| **set_spin_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spin_sides**\ (\ )

Quand :ref:`mode<class_CSGPolygon3D_property_mode>` est :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>`, le nombre d'extrusions faites.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
