:github_url: hide

.. _class_PolygonPathFinder:

PolygonPathFinder
=================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	There is currently no description for this class. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`find_path<class_PolygonPathFinder_method_find_path>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ )                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`get_bounds<class_PolygonPathFinder_method_get_bounds>`\ (\ ) |const|                                                                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_point<class_PolygonPathFinder_method_get_closest_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_intersections<class_PolygonPathFinder_method_get_intersections>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) |const|                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_penalty<class_PolygonPathFinder_method_get_point_penalty>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_point_inside<class_PolygonPathFinder_method_is_point_inside>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_penalty<class_PolygonPathFinder_method_set_point_penalty>`\ (\ idx\: :ref:`int<class_int>`, penalty\: :ref:`float<class_float>`\ )                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`setup<class_PolygonPathFinder_method_setup>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`, connections\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PolygonPathFinder_method_find_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **find_path**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PolygonPathFinder_method_find_path>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_bounds>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_closest_point>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_intersections:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_intersections**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_intersections>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_point_penalty:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_penalty**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_point_penalty>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_is_point_inside:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_inside**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_is_point_inside>`

Renvoie ``true`` si ``point`` tombe dans la zone du polygone.


.. tabs::

 .. code-tab:: gdscript

    var polygon_path_finder = PolygonPathFinder.new()
    var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
    var connections = [0, 1, 1, 2, 2, 0]
    polygon_path_finder.setup(points, connections)
    print(polygon_path_finder.is_point_inside(Vector2(0.2, 0.2))) # Prints true
    print(polygon_path_finder.is_point_inside(Vector2(1.0, 1.0))) # Prints false

 .. code-tab:: csharp

    var polygonPathFinder = new PolygonPathFinder();
    Vector2[] points =
    [
        new Vector2(0.0f, 0.0f),
        new Vector2(1.0f, 0.0f),
        new Vector2(0.0f, 1.0f)
    ];
    int[] connections = [0, 1, 1, 2, 2, 0];
    polygonPathFinder.Setup(points, connections);
    GD.Print(polygonPathFinder.IsPointInside(new Vector2(0.2f, 0.2f))); // Prints True
    GD.Print(polygonPathFinder.IsPointInside(new Vector2(1.0f, 1.0f))); // Prints False



.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_set_point_penalty:

.. rst-class:: classref-method

|void| **set_point_penalty**\ (\ idx\: :ref:`int<class_int>`, penalty\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PolygonPathFinder_method_set_point_penalty>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`, connections\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_PolygonPathFinder_method_setup>`

Configure **PolygonPathFinder** avec un tableau de points qui définissent les sommets du polygone, et un tableau d'indices qui déterminent les bords du polygone.

La longueur des ``connections`` doit être paire, renvoie une erreur si impaire.


.. tabs::

 .. code-tab:: gdscript

    var polygon_path_finder = PolygonPathFinder.new()
    var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
    var connections = [0, 1, 1, 2, 2, 0]
    polygon_path_finder.setup(points, connections)

 .. code-tab:: csharp

    var polygonPathFinder = new PolygonPathFinder();
    Vector2[] points =
    [
        new Vector2(0.0f, 0.0f),
        new Vector2(1.0f, 0.0f),
        new Vector2(0.0f, 1.0f)
    ];
    int[] connections = [0, 1, 1, 2, 2, 0];
    polygonPathFinder.Setup(points, connections);



.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
