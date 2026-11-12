:github_url: hide

.. _class_Polygon2D:

Polygon2D
=========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un polygone 2D.

.. rst-class:: classref-introduction-group

Description
-----------

Un Polygon2D est défini par un ensemble de points. Chaque point est connecté au suivant, le point final étant relié au premier, ce qui résulte en un polygone fermé. Les Polygon2Ds peuvent être remplis avec de la couleur (solide ou gradient) ou une texture donnée.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`antialiased<class_Polygon2D_property_antialiased>`                     | ``false``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`color<class_Polygon2D_property_color>`                                 | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`internal_vertex_count<class_Polygon2D_property_internal_vertex_count>` | ``0``                    |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`invert_border<class_Polygon2D_property_invert_border>`                 | ``100.0``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`invert_enabled<class_Polygon2D_property_invert_enabled>`               | ``false``                |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`offset<class_Polygon2D_property_offset>`                               | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_Polygon2D_property_polygon>`                             | ``PackedVector2Array()`` |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`                           | :ref:`polygons<class_Polygon2D_property_polygons>`                           | ``[]``                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`skeleton<class_Polygon2D_property_skeleton>`                           | ``NodePath("")``         |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`texture<class_Polygon2D_property_texture>`                             |                          |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`texture_offset<class_Polygon2D_property_texture_offset>`               | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`texture_rotation<class_Polygon2D_property_texture_rotation>`           | ``0.0``                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`texture_scale<class_Polygon2D_property_texture_scale>`                 | ``Vector2(1, 1)``        |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`uv<class_Polygon2D_property_uv>`                                       | ``PackedVector2Array()`` |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`     | :ref:`vertex_colors<class_Polygon2D_property_vertex_colors>`                 | ``PackedColorArray()``   |
   +-----------------------------------------------------+------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_bone<class_Polygon2D_method_add_bone>`\ (\ path\: :ref:`NodePath<class_NodePath>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_bones<class_Polygon2D_method_clear_bones>`\ (\ )                                                                                                         |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`erase_bone<class_Polygon2D_method_erase_bone>`\ (\ index\: :ref:`int<class_int>`\ )                                                                            |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_bone_count<class_Polygon2D_method_get_bone_count>`\ (\ ) |const|                                                                                           |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                     | :ref:`get_bone_path<class_Polygon2D_method_get_bone_path>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_bone_weights<class_Polygon2D_method_get_bone_weights>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_bone_path<class_Polygon2D_method_set_bone_path>`\ (\ index\: :ref:`int<class_int>`, path\: :ref:`NodePath<class_NodePath>`\ )                              |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_bone_weights<class_Polygon2D_method_set_bone_weights>`\ (\ index\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Polygon2D_property_antialiased:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **antialiased** = ``false`` :ref:`🔗<class_Polygon2D_property_antialiased>`

.. rst-class:: classref-property-setget

- |void| **set_antialiased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_antialiased**\ (\ )

Si ``true``, les bords du polygone seront anti-crénelés.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Polygon2D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

La couleur de remplissage du polygone. Si :ref:`texture<class_Polygon2D_property_texture>` est définie, elle sera multipliée par cette couleur. Elle sera également la couleur par défaut pour les sommets non définis dans :ref:`vertex_colors<class_Polygon2D_property_vertex_colors>`.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_internal_vertex_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **internal_vertex_count** = ``0`` :ref:`🔗<class_Polygon2D_property_internal_vertex_count>`

.. rst-class:: classref-property-setget

- |void| **set_internal_vertex_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_internal_vertex_count**\ (\ )

Nombre de sommets internes, utilisé pour l'UV mapping.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_invert_border:

.. rst-class:: classref-property

:ref:`float<class_float>` **invert_border** = ``100.0`` :ref:`🔗<class_Polygon2D_property_invert_border>`

.. rst-class:: classref-property-setget

- |void| **set_invert_border**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_invert_border**\ (\ )

Padding ajouté, appliqué à la boîte délimitante lorsque :ref:`invert_enabled<class_Polygon2D_property_invert_enabled>` est défini à ``true``. Définir cette valeur trop faiblement peut entraîner une erreur "Bad Polygon" (Mauvais polygone).

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_invert_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **invert_enabled** = ``false`` :ref:`🔗<class_Polygon2D_property_invert_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_invert_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_invert_enabled**\ (\ )

Si ``true``, le polygone sera inversé, contenant la zone en dehors des points définis et s'étendant à :ref:`invert_border<class_Polygon2D_property_invert_border>`.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Polygon2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Le décalage appliqué à chaque sommet.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_Polygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

La liste des sommets du polygone. Le dernier point sera connecté au premier.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_polygons:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **polygons** = ``[]`` :ref:`🔗<class_Polygon2D_property_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_polygons**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_polygons**\ (\ )

La liste des polygones, au cas où plus d'un est représenté. Chaque polygone individuel est stocké en tant que :ref:`PackedInt32Array<class_PackedInt32Array>` où chaque :ref:`int<class_int>` est un index vers un point dans :ref:`polygon<class_Polygon2D_property_polygon>`. Si vide, cette propriété sera ignorée, et le polygone unique résultant sera composé de tous les points dans :ref:`polygon<class_Polygon2D_property_polygon>`, en utilisant l'ordre dans lequel ils sont stockés.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **skeleton** = ``NodePath("")`` :ref:`🔗<class_Polygon2D_property_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_skeleton**\ (\ )

Chemin vers un nœud :ref:`Skeleton2D<class_Skeleton2D>` utilisé pour les déformations basées sur le squelette de ce polygone. Si vide ou invalide, les déformations de squelette ne seront pas utilisées.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Polygon2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La texture de remplissage du polygone. Utilisez :ref:`uv<class_Polygon2D_property_uv>` pour définir les coordonnées de texture.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Polygon2D_property_texture_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_offset**\ (\ )

Décalage de la :ref:`texture<class_Polygon2D_property_texture>` du polygone. Si définie à ``Vector2(0, 0)``, l'origine de la texture (son coin supérieur gauche) sera placée à la position du polygone.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_rotation** = ``0.0`` :ref:`🔗<class_Polygon2D_property_texture_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_texture_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_rotation**\ (\ )

La rotation de la texture en radians.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_texture_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Polygon2D_property_texture_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texture_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_scale**\ (\ )

Montant pour multiplier les coordonnées :ref:`uv<class_Polygon2D_property_uv>` lors de l'utilisation d'une :ref:`texture<class_Polygon2D_property_texture>`. Les valeurs plus grandes rendent la texture plus petite, et vice versa.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_uv:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **uv** = ``PackedVector2Array()`` :ref:`🔗<class_Polygon2D_property_uv>`

.. rst-class:: classref-property-setget

- |void| **set_uv**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_uv**\ (\ )

Coordonnées de texture pour chaque sommet du polygone. Il devrait y avoir une valeur UV par sommet du polygone. S'il y en a moins, les sommets indéfinis utiliseront ``Vector2(0, 0)``.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_property_vertex_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **vertex_colors** = ``PackedColorArray()`` :ref:`🔗<class_Polygon2D_property_vertex_colors>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_vertex_colors**\ (\ )

Couleur pour chaque sommet. Les couleurs sont interpolées entre les sommets, résultant en des gradients lisses. Il devrait y en avoir une par sommet du polygone. S'il y en a moins, les sommets indéfinis utiliseront :ref:`color<class_Polygon2D_property_color>`.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Polygon2D_method_add_bone:

.. rst-class:: classref-method

|void| **add_bone**\ (\ path\: :ref:`NodePath<class_NodePath>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_Polygon2D_method_add_bone>`

Ajoute un os avec le chemin ``path`` et les poids ``weights`` spécifiés.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_clear_bones:

.. rst-class:: classref-method

|void| **clear_bones**\ (\ ) :ref:`🔗<class_Polygon2D_method_clear_bones>`

Retire tous les os pour ce **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_erase_bone:

.. rst-class:: classref-method

|void| **erase_bone**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Polygon2D_method_erase_bone>`

Retire les os spécifiés de ce **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_count>`

Renvoie le nombre d'os dans ce **Polygon2D**.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_bone_path**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_path>`

Renvoie le chemin d’accès au nœud associé à l’os spécifié.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_get_bone_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_bone_weights**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Polygon2D_method_get_bone_weights>`

Renvoie les valeurs de poids de l'os spécifié.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_set_bone_path:

.. rst-class:: classref-method

|void| **set_bone_path**\ (\ index\: :ref:`int<class_int>`, path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Polygon2D_method_set_bone_path>`

Définit le chemin du nœud associé avec l'os spécifié.

.. rst-class:: classref-item-separator

----

.. _class_Polygon2D_method_set_bone_weights:

.. rst-class:: classref-method

|void| **set_bone_weights**\ (\ index\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_Polygon2D_method_set_bone_weights>`

Définit les valeurs de poids pour l'os spécifié.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
